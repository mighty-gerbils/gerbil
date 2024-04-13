(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712991652)
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
      (lambda _%$args127012%_
        (apply make-instance gx#module-import::t _%$args127012%_)))
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
      (lambda _%$args127009%_
        (apply make-instance gx#module-export::t _%$args127009%_)))
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
      (lambda _%$args127006%_
        (apply make-instance gx#import-set::t _%$args127006%_)))
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
      (lambda _%$args127003%_
        (apply make-instance gx#export-set::t _%$args127003%_)))
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
      (lambda _%$args127000%_
        (apply make-instance gx#import-expander::t _%$args127000%_)))
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
      (lambda _%$args126997%_
        (apply make-instance gx#export-expander::t _%$args126997%_)))
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
      (lambda _%$args126994%_
        (apply make-instance gx#import-export-expander::t _%$args126994%_)))
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
      (lambda (_%path126991%_ _%fun126992%_)
        (call-with-input-file
         (cons 'path: (cons _%path126991%_ gx#source-file-settings))
         _%fun126992%_)))
    (define gx#module-context:::init!
      (lambda (_%self123443126972%_
               _%id126974%_
               _%super126975%_
               _%ns126976%_
               _%path126977%_)
        (let* ((_%self126979%_ _%self123443126972%_)
               (_%self126981%_ _%self126979%_))
          (if (##fx< '11 (##structure-length _%self126981%_))
              (begin
                (##unchecked-structure-set!
                 _%self126981%_
                 _%id126974%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self126981%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self126981%_
                 _%super126975%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self126981%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self126981%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self126981%_
                 _%ns126976%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self126981%_
                 _%path126977%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self126981%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self126981%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self126981%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self126981%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self126981%_
                     '11
                     (##vector-length _%self126981%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self123444126803%_ _%ctx126805%_ _%root126806%_)
        (let* ((_%self126808%_ _%self123444126803%_)
               (_%self126810%_ _%self126808%_)
               (_%super126826%_
                (let ((_%$e126820%_ _%root126806%_))
                  (if _%$e126820%_
                      _%$e126820%_
                      (let ((_%$e126823%_ (gx#core-context-root__0)))
                        (if _%$e126823%_
                            _%$e126823%_
                            (let ((__obj127056
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor127057
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj127056
                                      ':init!)))
                                (if __constructor127057
                                    (__constructor127057 __obj127056)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj127056)))))))
          (if _%ctx126805%_
              (let ((_%id126829%_
                     (##structure-ref
                      _%ctx126805%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path126830%_
                     (##structure-ref
                      _%ctx126805%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in126831%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx126805%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e126832%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx126805%_)))))
                (if (##fx< '8 (##structure-length _%self126810%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self126810%_
                       _%id126829%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126810%_
                       (make-hash-table-eq 'size: (##length _%in126831%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126810%_
                       _%super126826%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126810%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126810%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126810%_
                       _%path126830%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126810%_
                       _%in126831%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126810%_
                       _%e126832%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self126810%_
                           '8
                           (##vector-length _%self126810%_)))
                (##for-each
                 (lambda (_%g126833126835%_)
                   (gx#core-bind-weak-import!__%
                    _%g126833126835%_
                    _%self126810%_))
                 _%in126831%_))
              (if (##fx< '8 (##structure-length _%self126810%_))
                  (begin
                    (##unchecked-structure-set! _%self126810%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self126810%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self126810%_
                     _%super126826%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self126810%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self126810%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self126810%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self126810%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self126810%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self126810%_
                         '8
                         (##vector-length _%self126810%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self123444126841%_ _%ctx126842%_)
        (let ((_%root126844%_ '#f))
          (gx#prelude-context:::init!__%
           _%self123444126841%_
           _%ctx126842%_
           _%root126844%_))))
    (define gx#prelude-context:::init!
      (lambda _g127063_
        (let ((_g127062_ (##length _g127063_)))
          (cond ((##fx= _g127062_ 2)
                 (apply gx#prelude-context:::init!__0 _g127063_))
                ((##fx= _g127062_ 3)
                 (apply gx#prelude-context:::init!__% _g127063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g127063_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self126677%_ _%e126678%_)
        (if (##fx< '3 (##structure-length _%self126677%_))
            (begin
              (##unchecked-structure-set!
               _%self126677%_
               _%e126678%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self126677%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self126677%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self126677%_
                   '3
                   (##vector-length _%self126677%_)))))
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
      (lambda (_%g126303126306%_ _%g126304126308%_)
        (gx#core-apply-user-expander__%
         _%g126303126306%_
         _%g126304126308%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g126174126177%_ _%g126175126179%_)
        (gx#core-apply-user-expander__%
         _%g126174126177%_
         _%g126175126179%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx126045%_)
        (let* ((_%path126047%_
                (##structure-ref _%ctx126045%_ '7 gx#module-context::t '#f))
               (_%path126049%_
                (if (pair? _%path126047%_)
                    (##last _%path126047%_)
                    _%path126047%_)))
          (if (string? _%path126049%_) _%path126049%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path126021%_ _%reload?126022%_ _%eval?126023%_)
        (let ((_%ctx126025%_
               ((gx#current-expander-module-import)
                _%path126021%_
                _%reload?126022%_)))
          (if (and _%ctx126025%_ _%eval?126023%_)
              (gx#eval-module _%ctx126025%_)
              '#!void)
          _%ctx126025%_)))
    (define gx#import-module__0
      (lambda (_%path126030%_)
        (let* ((_%reload?126032%_ '#f) (_%eval?126034%_ '#f))
          (gx#import-module__%
           _%path126030%_
           _%reload?126032%_
           _%eval?126034%_))))
    (define gx#import-module__1
      (lambda (_%path126036%_ _%reload?126037%_)
        (let ((_%eval?126039%_ '#f))
          (gx#import-module__%
           _%path126036%_
           _%reload?126037%_
           _%eval?126039%_))))
    (define gx#import-module
      (lambda _g127065_
        (let ((_g127064_ (##length _g127065_)))
          (cond ((##fx= _g127064_ 1) (apply gx#import-module__0 _g127065_))
                ((##fx= _g127064_ 2) (apply gx#import-module__1 _g127065_))
                ((##fx= _g127064_ 3) (apply gx#import-module__% _g127065_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g127065_))))))
    (define gx#eval-module
      (lambda (_%mod126018%_)
        ((gx#current-expander-module-eval) _%mod126018%_)))
    (define gx#core-eval-module
      (lambda (_%obj125998%_)
        (letrec ((_%force-e126000%_
                  (lambda (_%getf126014%_ _%e126015%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf126014%_ _%e126015%_)))
                     gx#current-expander-context
                     _%e126015%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur126002%_ ((_%e126004%_ _%obj125998%_))
            (if (##structure-instance-of? _%e126004%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e126007%_
                         (gx#core-context-prelude__% _%e126004%_)))
                    (if _%$e126007%_ (_%recur126002%_ _%$e126007%_) '#!void))
                  (_%force-e126000%_ gx#module-context-e _%e126004%_))
                (if (##structure-instance-of?
                     _%e126004%_
                     'gx#prelude-context::t)
                    (_%force-e126000%_ gx#prelude-context-e _%e126004%_)
                    (if (gx#stx-string? _%e126004%_)
                        (_%recur126002%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e126004%_)))
                        (if (gx#core-library-module-path? _%e126004%_)
                            (_%recur126002%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e126004%_)))
                            (error '"cannot eval module" _%obj125998%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx125978%_)
        (let _%lp125980%_ ((_%e125982%_ _%ctx125978%_))
          (if (or (##structure-instance-of? _%e125982%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e125982%_ 'gx#local-context::t))
              (_%lp125980%_ (##unchecked-structure-ref _%e125982%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e125982%_ 'gx#prelude-context::t)
                  _%e125982%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx125994%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx125994%_))))
    (define gx#core-context-prelude
      (lambda _g127067_
        (let ((_g127066_ (##length _g127067_)))
          (cond ((##fx= _g127066_ 0)
                 (apply gx#core-context-prelude__0 _g127067_))
                ((##fx= _g127066_ 1)
                 (apply gx#core-context-prelude__% _g127067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g127067_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx125969%_)
        (let ((_%$e125971%_ (__hash-get gx#__module-registry _%ctx125969%_)))
          (if _%$e125971%_
              _%$e125971%_
              (let ((_%pre125975%_
                     (let ((__obj127058
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
                        __obj127058
                        _%ctx125969%_)
                       __obj127058)))
                (__hash-put! gx#__module-registry _%ctx125969%_ _%pre125975%_)
                _%pre125975%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath125841%_ _%reload?125842%_)
        (letrec ((_%import-source125844%_
                  (lambda (_%path125933%_)
                    (if (member _%path125933%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path125933%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g127068_ (gx#core-read-module _%path125933%_)))
                         (begin
                           (let ((_g127069_
                                  (if (##values? _g127068_)
                                      (##vector-length _g127068_)
                                      1)))
                             (if (not (##fx= _g127069_ 4))
                                 (error "Context expects 4 values" _g127069_)))
                           (let ((_%pre125936%_ (##vector-ref _g127068_ 0))
                                 (_%id125937%_ (##vector-ref _g127068_ 1))
                                 (_%ns125938%_ (##vector-ref _g127068_ 2))
                                 (_%body125939%_ (##vector-ref _g127068_ 3)))
                             (let* ((_%prelude125949%_
                                     (if (##structure-instance-of?
                                          _%pre125936%_
                                          'gx#prelude-context::t)
                                         _%pre125936%_
                                         (if (##structure-instance-of?
                                              _%pre125936%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre125936%_)
                                             (if (string? _%pre125936%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre125936%_))
                                                 (if (not _%pre125936%_)
                                                     (let ((_%$e125945%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e125945%_
                                                           _%$e125945%_
                                                           (let ((__obj127059
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
                     (gx#prelude-context:::init!__0 __obj127059 '#f)
                     __obj127059)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath125841%_
                                                            _%pre125936%_))))))
                                    (_%ctx125951%_
                                     (let ((__obj127060
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
                                        __obj127060
                                        _%id125937%_
                                        _%prelude125949%_
                                        _%ns125938%_
                                        _%path125933%_)
                                       __obj127060))
                                    (_%body125953%_
                                     (gx#core-expand-module-begin
                                      _%body125939%_
                                      _%ctx125951%_))
                                    (_%body125955%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body125953%_)
                                      _%path125933%_
                                      _%ctx125951%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx125951%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body125955%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx125951%_
                                _%body125955%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path125933%_
                                _%ctx125951%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id125937%_
                                _%ctx125951%_)
                               _%ctx125951%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path125933%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule125845%_
                  (lambda (_%rpath125861%_)
                    (let* ((_%rpath125862125869%_ _%rpath125861%_)
                           (_%E125864125873%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath125862125869%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K125865125921%_
                            (lambda (_%refs125876%_ _%origin125877%_)
                              (let ((_%ctx125879%_
                                     (if _%origin125877%_
                                         (gx#core-import-module__%
                                          _%origin125877%_
                                          _%reload?125842%_)
                                         (gx#current-expander-context))))
                                (let _%lp125881%_ ((_%rest125883%_
                                                    _%refs125876%_)
                                                   (_%ctx125884%_
                                                    _%ctx125879%_))
                                  (let* ((_%rest125885125893%_ _%rest125883%_)
                                         (_%else125887125901%_
                                          (lambda () _%ctx125884%_))
                                         (_%K125889125909%_
                                          (lambda (_%rest125904%_ _%id125905%_)
                                            (let ((_%bind125907%_
                                                   (gx#resolve-identifier__%
                                                    _%id125905%_
                                                    '0
                                                    _%ctx125884%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind125907%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind125907%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp125881%_
                                                   _%rest125904%_
                                                   (##unchecked-structure-ref
                                                    _%bind125907%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath125861%_
                                                         _%id125905%_
                                                         _%bind125907%_))))))
                                    (if (##pair? _%rest125885125893%_)
                                        (let ((_%hd125890125912%_
                                               (##car _%rest125885125893%_))
                                              (_%tl125891125914%_
                                               (##cdr _%rest125885125893%_)))
                                          (let* ((_%id125917%_
                                                  _%hd125890125912%_)
                                                 (_%rest125919%_
                                                  _%tl125891125914%_))
                                            (_%K125889125909%_
                                             _%rest125919%_
                                             _%id125917%_)))
                                        (_%else125887125901%_))))))))
                      (if (##pair? _%rpath125862125869%_)
                          (let ((_%hd125866125924%_
                                 (##car _%rpath125862125869%_))
                                (_%tl125867125926%_
                                 (##cdr _%rpath125862125869%_)))
                            (let* ((_%origin125929%_ _%hd125866125924%_)
                                   (_%refs125931%_ _%tl125867125926%_))
                              (_%K125865125921%_
                               _%refs125931%_
                               _%origin125929%_)))
                          (_%E125864125873%_))))))
          (let ((_%$e125847%_
                 (if (not _%reload?125842%_)
                     (__hash-get gx#__module-registry _%rpath125841%_)
                     '#f)))
            (if _%$e125847%_
                _%$e125847%_
                (if (list? _%rpath125841%_)
                    (_%import-submodule125845%_ _%rpath125841%_)
                    (if (gx#core-library-module-path? _%rpath125841%_)
                        (let ((_%ctx125852%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath125841%_)
                                _%reload?125842%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath125841%_
                           _%ctx125852%_)
                          _%ctx125852%_)
                        (let* ((_%npath125855%_
                                (path-normalize _%rpath125841%_))
                               (_%$e125857%_
                                (if (not _%reload?125842%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath125855%_)
                                    '#f)))
                          (if _%$e125857%_
                              _%$e125857%_
                              (_%import-source125844%_
                               _%npath125855%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath125962%_)
        (let ((_%reload?125964%_ '#f))
          (gx#core-import-module__% _%rpath125962%_ _%reload?125964%_))))
    (define gx#core-import-module
      (lambda _g127071_
        (let ((_g127070_ (##length _g127071_)))
          (cond ((##fx= _g127070_ 1)
                 (apply gx#core-import-module__0 _g127071_))
                ((##fx= _g127070_ 2)
                 (apply gx#core-import-module__% _g127071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g127071_))))))
    (define gx#core-read-module
      (lambda (_%path125830%_)
        (__with-catch
         (lambda (_%exn125832%_)
           (if (and (datum-parsing-exception? _%exn125832%_)
                    (eq? (datum-parsing-exception-filepos _%exn125832%_) '0))
               (gx#core-read-module/lang _%path125830%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path125830%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g125834125836%_)
                      (display-exception__% _%exn125832%_ _%g125834125836%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path125830%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path125682%_)
        (let _%lp125684%_ ((_%body125686%_
                            (read-syntax-from-file _%path125682%_))
                           (_%pre125687%_ '#f)
                           (_%ns125688%_ '#f)
                           (_%pkg125689%_ '#f))
          (let* ((_%e125690125714%_ _%body125686%_)
                 (_%E125706125740%_
                  (lambda ()
                    (let ((_g127072_
                           (if _%pkg125689%_
                               (values _%pre125687%_
                                       _%ns125688%_
                                       _%pkg125689%_)
                               (gx#core-read-module-package
                                _%path125682%_
                                _%pre125687%_
                                _%ns125688%_))))
                      (begin
                        (let ((_g127073_
                               (if (##values? _g127072_)
                                   (##vector-length _g127072_)
                                   1)))
                          (if (not (##fx= _g127073_ 3))
                              (error "Context expects 3 values" _g127073_)))
                        (let ((_%pre125718%_ (##vector-ref _g127072_ 0))
                              (_%ns125719%_ (##vector-ref _g127072_ 1))
                              (_%pkg125720%_ (##vector-ref _g127072_ 2)))
                          (let* ((_%prelude125726%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre125718%_)
                                      (gx#syntax-local-e__0 _%pre125718%_)
                                      (if (gx#core-library-module-path?
                                           _%pre125718%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre125718%_)
                                          (if (gx#stx-string? _%pre125718%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre125718%_
                                               _%path125682%_)
                                              (gx#stx-e _%pre125718%_)))))
                                 (_%path-id125728%_
                                  (gx#core-module-path->namespace
                                   _%path125682%_))
                                 (_%pkg-id125730%_
                                  (if _%pkg125720%_
                                      (##string-append
                                       _%pkg125720%_
                                       '"/"
                                       _%path-id125728%_)
                                      _%path-id125728%_))
                                 (_%module-id125732%_
                                  (##string->symbol _%pkg-id125730%_))
                                 (_%module-ns125737%_
                                  (if (eq? _%ns125719%_ '#!void)
                                      '#f
                                      (let ((_%$e125734%_ _%ns125719%_))
                                        (if _%$e125734%_
                                            _%$e125734%_
                                            _%pkg-id125730%_)))))
                            (values _%prelude125726%_
                                    _%module-id125732%_
                                    _%module-ns125737%_
                                    _%body125686%_)))))))
                 (_%E125699125772%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125690125714%_)
                        (let ((_%e125707125744%_
                               (gx#syntax-e _%e125690125714%_)))
                          (let ((_%hd125708125747%_ (##car _%e125707125744%_))
                                (_%tl125709125749%_ (##cdr _%e125707125744%_)))
                            (if (eq? (gx#stx-e _%hd125708125747%_) 'package:)
                                (if (gx#stx-pair? _%tl125709125749%_)
                                    (let ((_%e125710125752%_
                                           (gx#syntax-e _%tl125709125749%_)))
                                      (let ((_%hd125711125755%_
                                             (##car _%e125710125752%_))
                                            (_%tl125712125757%_
                                             (##cdr _%e125710125752%_)))
                                        (let* ((_%pkg125760%_
                                                _%hd125711125755%_)
                                               (_%rest125762%_
                                                _%tl125712125757%_)
                                               (_%pkg125770%_
                                                (if (gx#identifier?
                                                     _%pkg125760%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg125760%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg125760%_)
                                                            (gx#stx-false?
                                                             _%pkg125760%_))
                                                        (gx#stx-e
                                                         _%pkg125760%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg125760%_)))))
                                          (_%lp125684%_
                                           _%rest125762%_
                                           _%pre125687%_
                                           _%ns125688%_
                                           _%pkg125770%_))))
                                    (_%E125706125740%_))
                                (_%E125706125740%_))))
                        (_%E125706125740%_))))
                 (_%E125692125802%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125690125714%_)
                        (let ((_%e125700125776%_
                               (gx#syntax-e _%e125690125714%_)))
                          (let ((_%hd125701125779%_ (##car _%e125700125776%_))
                                (_%tl125702125781%_ (##cdr _%e125700125776%_)))
                            (if (eq? (gx#stx-e _%hd125701125779%_) 'namespace:)
                                (if (gx#stx-pair? _%tl125702125781%_)
                                    (let ((_%e125703125784%_
                                           (gx#syntax-e _%tl125702125781%_)))
                                      (let ((_%hd125704125787%_
                                             (##car _%e125703125784%_))
                                            (_%tl125705125789%_
                                             (##cdr _%e125703125784%_)))
                                        (let* ((_%ns125792%_
                                                _%hd125704125787%_)
                                               (_%rest125794%_
                                                _%tl125705125789%_)
                                               (_%ns125800%_
                                                (if (gx#identifier?
                                                     _%ns125792%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns125792%_))
                                                    (if (gx#stx-string?
                                                         _%ns125792%_)
                                                        (gx#stx-e _%ns125792%_)
                                                        (if (gx#stx-false?
                                                             _%ns125792%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns125792%_))))))
                                          (_%lp125684%_
                                           _%rest125794%_
                                           _%pre125687%_
                                           _%ns125800%_
                                           _%pkg125689%_))))
                                    (_%E125699125772%_))
                                (_%E125699125772%_))))
                        (_%E125699125772%_))))
                 (_%E125691125826%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125690125714%_)
                        (let ((_%e125693125806%_
                               (gx#syntax-e _%e125690125714%_)))
                          (let ((_%hd125694125809%_ (##car _%e125693125806%_))
                                (_%tl125695125811%_ (##cdr _%e125693125806%_)))
                            (if (eq? (gx#stx-e _%hd125694125809%_) 'prelude:)
                                (if (gx#stx-pair? _%tl125695125811%_)
                                    (let ((_%e125696125814%_
                                           (gx#syntax-e _%tl125695125811%_)))
                                      (let ((_%hd125697125817%_
                                             (##car _%e125696125814%_))
                                            (_%tl125698125819%_
                                             (##cdr _%e125696125814%_)))
                                        (let* ((_%prelude125822%_
                                                _%hd125697125817%_)
                                               (_%rest125824%_
                                                _%tl125698125819%_))
                                          (_%lp125684%_
                                           _%rest125824%_
                                           _%prelude125822%_
                                           _%ns125688%_
                                           _%pkg125689%_))))
                                    (_%E125692125802%_))
                                (_%E125692125802%_))))
                        (_%E125692125802%_)))))
            (_%E125691125826%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path125504%_)
        (letrec ((_%default-read-module-body125506%_
                  (lambda (_%inp125674%_)
                    (let _%lp125676%_ ((_%body125678%_ '()))
                      (let ((_%next125680%_ (read-syntax__% _%inp125674%_)))
                        (if (eof-object? _%next125680%_)
                            (reverse _%body125678%_)
                            (_%lp125676%_
                             (cons _%next125680%_ _%body125678%_)))))))
                 (_%read-body125507%_
                  (lambda (_%inp125592%_
                           _%pre125593%_
                           _%ns125594%_
                           _%pkg125595%_
                           _%args125596%_)
                    (let ((_g127074_
                           (if _%pkg125595%_
                               (values _%pre125593%_
                                       _%ns125594%_
                                       _%pkg125595%_)
                               (gx#core-read-module-package
                                _%path125504%_
                                _%pre125593%_
                                _%ns125594%_))))
                      (begin
                        (let ((_g127075_
                               (if (##values? _g127074_)
                                   (##vector-length _g127074_)
                                   1)))
                          (if (not (##fx= _g127075_ 3))
                              (error "Context expects 3 values" _g127075_)))
                        (let ((_%pre125598%_ (##vector-ref _g127074_ 0))
                              (_%ns125599%_ (##vector-ref _g127074_ 1))
                              (_%pkg125600%_ (##vector-ref _g127074_ 2)))
                          (let* ((_%prelude125602%_
                                  (gx#import-module__0 _%pre125598%_))
                                 (_%read-module-body125657%_
                                  (let ((_%$e125648%_
                                         (__find (lambda (_%e125603125605%_)
                                                   (let* ((_%g125607125617%_
                                                           _%e125603125605%_)
                                                          (_%else125609125625%_
                                                           (lambda () '#f))
                                                          (_%K125611125629%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g125607125617%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e125612125632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g125607125617%_
                          '1
                          '#f
                          '#f))
                        (_%e125613125635%_
                         (##unchecked-structure-ref
                          _%g125607125617%_
                          '2
                          '#f
                          '#f))
                        (_%e125614125638%_
                         (##unchecked-structure-ref
                          _%g125607125617%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e125614125638%_ '1)
                       (let ((_%e125615125641%_
                              (##unchecked-structure-ref
                               _%g125607125617%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g125643125645%_)
                                (eq? _%g125643125645%_ 'read-module-body))
                              _%e125615125641%_)
                             (_%K125611125629%_)
                             (_%else125609125625%_)))
                       (_%else125609125625%_)))
                 (_%else125609125625%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude125602%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e125648%_
                                        ((lambda (_%xport125651%_)
                                           (let ((_%proc125654%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport125651%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc125654%_)
                                                 _%proc125654%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path125504%_
                                                  _%pre125598%_
                                                  _%proc125654%_))))
                                         _%$e125648%_)
                                        _%default-read-module-body125506%_)))
                                 (_%path-id125659%_
                                  (gx#core-module-path->namespace
                                   _%path125504%_))
                                 (_%pkg-id125661%_
                                  (if _%pkg125600%_
                                      (##string-append
                                       _%pkg125600%_
                                       '"/"
                                       _%path-id125659%_)
                                      _%path-id125659%_))
                                 (_%module-id125663%_
                                  (##string->symbol _%pkg-id125661%_))
                                 (_%module-ns125668%_
                                  (let ((_%$e125665%_ _%ns125599%_))
                                    (if _%$e125665%_
                                        _%$e125665%_
                                        _%pkg-id125661%_)))
                                 (_%body125671%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body125657%_
                                      _%inp125592%_))
                                   gx#current-module-reader-path
                                   _%path125504%_
                                   gx#current-module-reader-args
                                   _%args125596%_)))
                            (values _%prelude125602%_
                                    _%module-id125663%_
                                    _%module-ns125668%_
                                    _%body125671%_)))))))
                 (_%string-e125508%_
                  (lambda (_%obj125586%_ _%what125587%_)
                    (if (string? _%obj125586%_)
                        _%obj125586%_
                        (if (symbol? _%obj125586%_)
                            (##symbol->string _%obj125586%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what125587%_)
                             _%path125504%_
                             _%obj125586%_)))))
                 (_%read-lang-args125509%_
                  (lambda (_%inp125541%_ _%args125542%_)
                    (let* ((_%args125543125551%_ _%args125542%_)
                           (_%else125545125559%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path125504%_)))
                           (_%K125547125574%_
                            (lambda (_%args125562%_ _%prelude125563%_)
                              (let* ((_%pkg125565%_
                                      (pgetq__0 'package: _%args125562%_))
                                     (_%pkg125567%_
                                      (if _%pkg125565%_
                                          (_%string-e125508%_
                                           _%pkg125565%_
                                           '"package")
                                          '#f))
                                     (_%ns125569%_
                                      (pgetq__0 'namespace: _%args125562%_))
                                     (_%ns125571%_
                                      (if _%ns125569%_
                                          (_%string-e125508%_
                                           _%ns125569%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body125507%_
                                 _%inp125541%_
                                 _%prelude125563%_
                                 _%ns125571%_
                                 _%pkg125567%_
                                 _%args125562%_)))))
                      (if (##pair? _%args125543125551%_)
                          (let ((_%hd125548125577%_
                                 (##car _%args125543125551%_))
                                (_%tl125549125579%_
                                 (##cdr _%args125543125551%_)))
                            (let* ((_%prelude125582%_ _%hd125548125577%_)
                                   (_%args125584%_ _%tl125549125579%_))
                              (_%K125547125574%_
                               _%args125584%_
                               _%prelude125582%_)))
                          (_%else125545125559%_)))))
                 (_%read-lang125510%_
                  (lambda (_%inp125515%_)
                    (let* ((_%head125517%_ (read-line _%inp125515%_))
                           (_%$e125519%_
                            (string-index__0 _%head125517%_ '#\space)))
                      (if _%$e125519%_
                          ((lambda (_%ix125522%_)
                             (let ((_%lang125524%_
                                    (substring
                                     _%head125517%_
                                     '0
                                     _%ix125522%_)))
                               (if (equal? _%lang125524%_ '"#lang")
                                   (let* ((_%rest125526%_
                                           (substring
                                            _%head125517%_
                                            (##fx+ _%ix125522%_ '1)
                                            (string-length _%head125517%_)))
                                          (_%args125537%_
                                           (__with-catch
                                            (lambda (_%g125527125529%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path125504%_
                                               _%g125527125529%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest125526%_
                                               (lambda (_%g125532125534%_)
                                                 (read-all
                                                  _%g125532125534%_
                                                  read)))))))
                                     (_%read-lang-args125509%_
                                      _%inp125515%_
                                      _%args125537%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path125504%_))))
                           _%$e125519%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path125504%_)))))
                 (_%read-e125511%_
                  (lambda (_%inp125513%_)
                    (if (eq? (peek-char _%inp125513%_) '#\#)
                        (_%read-lang125510%_ _%inp125513%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path125504%_)))))
          (gx#call-with-input-source-file _%path125504%_ _%read-e125511%_))))
    (define gx#core-read-module-package
      (lambda (_%path125452%_ _%pre125453%_ _%ns125454%_)
        (letrec ((_%string-e125456%_
                  (lambda (_%e125499%_)
                    (if (symbol? _%e125499%_)
                        (##symbol->string _%e125499%_)
                        (if (string? _%e125499%_)
                            _%e125499%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e125499%_))))))
          (let _%lp125458%_ ((_%dir125460%_ (path-directory _%path125452%_))
                             (_%pkg-path125461%_ '()))
            (let ((_%gerbil.pkg125463%_
                   (path-expand '"gerbil.pkg" _%dir125460%_)))
              (if (##file-exists? _%gerbil.pkg125463%_)
                  (let ((_%plist125465%_
                         (gx#core-library-package-plist__% _%dir125460%_ '#t)))
                    (if (null? _%plist125465%_)
                        (let ((_%pkg125468%_
                               (if (null? _%pkg-path125461%_)
                                   '#f
                                   (string-join _%pkg-path125461%_ '"/"))))
                          (values _%pre125453%_ _%ns125454%_ _%pkg125468%_))
                        (if (list? _%plist125465%_)
                            (let* ((_%root125471%_
                                    (pgetq__0 'package: _%plist125465%_))
                                   (_%pkg125475%_
                                    (let ((_%pkg-path125473%_
                                           (if _%root125471%_
                                               (cons (_%string-e125456%_
                                                      _%root125471%_)
                                                     _%pkg-path125461%_)
                                               _%pkg-path125461%_)))
                                      (if (null? _%pkg-path125473%_)
                                          '#f
                                          (string-join
                                           _%pkg-path125473%_
                                           '"/"))))
                                   (_%ns125482%_
                                    (let ((_%ns125480%_
                                           (let ((_%$e125477%_ _%ns125454%_))
                                             (if _%$e125477%_
                                                 _%$e125477%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist125465%_)))))
                                      (if _%ns125480%_
                                          (_%string-e125456%_ _%ns125480%_)
                                          '#f)))
                                   (_%pre125487%_
                                    (let ((_%$e125484%_ _%pre125453%_))
                                      (if _%$e125484%_
                                          _%$e125484%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist125465%_)))))
                              (values _%pre125487%_
                                      _%ns125482%_
                                      _%pkg125475%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist125465%_))))
                  (let ((_%dir*125491%_
                         (path-strip-trailing-directory-separator
                          _%dir125460%_)))
                    (if (or (__string-empty? _%dir*125491%_)
                            (equal? _%dir125460%_ _%dir*125491%_))
                        (values _%pre125453%_ _%ns125454%_ '#f)
                        (let ((_%xpath125496%_
                               (path-strip-directory _%dir*125491%_))
                              (_%xdir125497%_ (path-directory _%dir*125491%_)))
                          (_%lp125458%_
                           _%xdir125497%_
                           (cons _%xpath125496%_ _%pkg-path125461%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path125450%_)
        (path-strip-extension (path-strip-directory _%path125450%_))))
    (define gx#core-module-path->id
      (lambda (_%path125448%_)
        (##string->symbol (gx#core-module-path->namespace _%path125448%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path125427%_ _%rel125428%_)
        (let* ((_%path125430%_ (gx#stx-e _%stx-path125427%_))
               (_%path125432%_
                (if (__string-empty? (path-extension _%path125430%_))
                    (##string-append _%path125430%_ '".ss")
                    _%path125430%_)))
          (gx#core-resolve-path__%
           _%path125432%_
           (let ((_%$e125435%_ (gx#stx-source _%stx-path125427%_)))
             (if _%$e125435%_ _%$e125435%_ _%rel125428%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path125441%_)
        (let ((_%rel125443%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path125441%_ _%rel125443%_))))
    (define gx#core-resolve-module-path
      (lambda _g127077_
        (let ((_g127076_ (##length _g127077_)))
          (cond ((##fx= _g127076_ 1)
                 (apply gx#core-resolve-module-path__0 _g127077_))
                ((##fx= _g127076_ 2)
                 (apply gx#core-resolve-module-path__% _g127077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g127077_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath125312%_)
        (let* ((_%spath125314%_ (symbol->string (gx#stx-e _%libpath125312%_)))
               (_%spath125316%_
                (substring
                 _%spath125314%_
                 '1
                 (##string-length _%spath125314%_)))
               (_%ext125318%_ (path-extension _%spath125316%_))
               (_%ssi125320%_
                (if (__string-empty? _%ext125318%_)
                    (##string-append _%spath125316%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath125316%_)
                     '".ssi")))
               (_%srcs125324%_
                (if (__string-empty? _%ext125318%_)
                    (##map (lambda (_%ext125322%_)
                             (string-append _%spath125316%_ _%ext125322%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath125316%_ '()))))
          (let _%lp125327%_ ((_%rest125329%_ (load-path)))
            (let* ((_%rest125330125339%_ _%rest125329%_)
                   (_%E125333125343%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest125330125339%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K125335125414%_
                     (lambda (_%rest125354%_ _%dir125355%_)
                       (letrec ((_%resolve125357%_
                                 (lambda (_%ssi125370%_ _%srcs125371%_)
                                   (let ((_%compiled-path125373%_
                                          (path-expand
                                           _%ssi125370%_
                                           _%dir125355%_)))
                                     (if (##file-exists?
                                          _%compiled-path125373%_)
                                         (path-normalize
                                          _%compiled-path125373%_)
                                         (let _%lpr125375%_ ((_%rest-src125377%_
                                                              _%srcs125371%_))
                                           (let* ((_%rest-src125378125386%_
                                                   _%rest-src125377%_)
                                                  (_%else125380125394%_
                                                   (lambda ()
                                                     (_%lp125327%_
                                                      _%rest125354%_)))
                                                  (_%K125382125402%_
                                                   (lambda (_%rest-src125397%_
                                                            _%src125398%_)
                                                     (let ((_%src-path125400%_
                                                            (path-expand
                                                             _%src125398%_
                                                             _%dir125355%_)))
                                                       (if (##file-exists?
                                                            _%src-path125400%_)
                                                           (path-normalize
                                                            _%src-path125400%_)
                                                           (_%lpr125375%_
                                                            _%rest-src125397%_))))))
                                             (if (##pair? _%rest-src125378125386%_)
                                                 (let ((_%hd125383125405%_
                                                        (##car _%rest-src125378125386%_))
                                                       (_%tl125384125407%_
                                                        (##cdr _%rest-src125378125386%_)))
                                                   (let* ((_%src125410%_
                                                           _%hd125383125405%_)
                                                          (_%rest-src125412%_
                                                           _%tl125384125407%_))
                                                     (_%K125382125402%_
                                                      _%rest-src125412%_
                                                      _%src125410%_)))
                                                 (_%else125380125394%_)))))))))
                         (let ((_%$e125359%_
                                (gx#core-library-package-path-prefix
                                 _%dir125355%_)))
                           (if _%$e125359%_
                               ((lambda (_%prefix125362%_)
                                  (if (string-prefix?
                                       _%prefix125362%_
                                       _%spath125316%_)
                                      (let ((_%ssi125366%_
                                             (substring
                                              _%ssi125320%_
                                              (string-length _%prefix125362%_)
                                              (##string-length _%ssi125320%_)))
                                            (_%srcs125367%_
                                             (##map (lambda (_%src125364%_)
                                                      (substring
                                                       _%src125364%_
                                                       (string-length
                                                        _%prefix125362%_)
                                                       (string-length
                                                        _%src125364%_)))
                                                    _%srcs125324%_)))
                                        (_%resolve125357%_
                                         _%ssi125366%_
                                         _%srcs125367%_))
                                      (_%lp125327%_ _%rest125354%_)))
                                _%$e125359%_)
                               (_%resolve125357%_
                                _%ssi125320%_
                                _%srcs125324%_))))))
                    (_%K125334125348%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath125312%_))))
                (let ((_%try-match125332125351%_
                       (lambda ()
                         (if (##null? _%rest125330125339%_)
                             (_%K125334125348%_)
                             (_%E125333125343%_)))))
                  (if (##pair? _%rest125330125339%_)
                      (let ((_%tl125337125419%_ (##cdr _%rest125330125339%_))
                            (_%hd125336125417%_ (##car _%rest125330125339%_)))
                        (let ((_%dir125422%_ _%hd125336125417%_)
                              (_%rest125424%_ _%tl125337125419%_))
                          (_%K125335125414%_ _%rest125424%_ _%dir125422%_)))
                      (_%try-match125332125351%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath125280%_)
        (letrec ((_%resolve125282%_
                  (lambda (_%path125303%_ _%base125304%_)
                    (let ((_%$e125306%_
                           (string-rindex__0 _%base125304%_ '#\/)))
                      (if _%$e125306%_
                          ((lambda (_%idx125309%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base125304%_ '0 _%idx125309%_)
                                '"/"
                                _%path125303%_))))
                           _%$e125306%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path125303%_))))))))
          (let ((_%spath125284%_ (symbol->string (gx#stx-e _%modpath125280%_)))
                (_%mod125285%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod125285%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath125280%_))
            (let ((_%mpath125287%_
                   (symbol->string
                    (##structure-ref
                     _%mod125285%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp125289%_ ((_%spath125291%_ _%spath125284%_)
                                 (_%mpath125292%_ _%mpath125287%_))
                (if (string-prefix? '"../" _%spath125291%_)
                    (let ((_%$e125295%_
                           (string-rindex__0 _%mpath125292%_ '#\/)))
                      (if _%$e125295%_
                          ((lambda (_%idx125298%_)
                             (_%lp125289%_
                              (substring
                               _%spath125291%_
                               '3
                               (string-length _%spath125291%_))
                              (substring _%mpath125292%_ '0 _%idx125298%_)))
                           _%$e125295%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath125280%_)))
                    (if (string-prefix? '"./" _%spath125291%_)
                        (_%lp125289%_
                         (substring
                          _%spath125291%_
                          '2
                          (string-length _%spath125291%_))
                         _%mpath125292%_)
                        (_%resolve125282%_
                         _%spath125291%_
                         _%mpath125292%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir125272%_)
        (let ((_%$e125274%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir125272%_))))
          (if _%$e125274%_
              ((lambda (_%pkg125277%_)
                 (##string-append (symbol->string _%pkg125277%_) '"/"))
               _%$e125274%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir125242%_ _%exists?125243%_)
        (let ((_%$e125245%_ (__hash-get gx#__module-pkg-cache _%dir125242%_)))
          (if _%$e125245%_
              _%$e125245%_
              (let* ((_%gerbil.pkg125249%_
                      (path-expand '"gerbil.pkg" _%dir125242%_))
                     (_%plist125259%_
                      (if (or _%exists?125243%_
                              (##file-exists? _%gerbil.pkg125249%_))
                          (let ((_%e125254%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg125249%_
                                  read)))
                            (if (eof-object? _%e125254%_)
                                '()
                                (if (list? _%e125254%_)
                                    _%e125254%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg125249%_
                                     _%e125254%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir125242%_
                 _%plist125259%_)
                _%plist125259%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir125265%_)
        (let ((_%exists?125267%_ '#f))
          (gx#core-library-package-plist__% _%dir125265%_ _%exists?125267%_))))
    (define gx#core-library-package-plist
      (lambda _g127079_
        (let ((_g127078_ (##length _g127079_)))
          (cond ((##fx= _g127078_ 1)
                 (apply gx#core-library-package-plist__0 _g127079_))
                ((##fx= _g127078_ 2)
                 (apply gx#core-library-package-plist__% _g127079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g127079_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx125239%_)
        (gx#core-special-module-path? _%stx125239%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx125237%_)
        (gx#core-special-module-path? _%stx125237%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx125232%_ _%char125233%_)
        (if (gx#identifier? _%stx125232%_)
            (if (interned-symbol? (gx#stx-e _%stx125232%_))
                (let ((_%str125235%_
                       (symbol->string (gx#stx-e _%stx125232%_))))
                  (if (##fx> (##string-length _%str125235%_) '1)
                      (eq? (string-ref _%str125235%_ '0) _%char125233%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx125226%_)
        (gx#core-bound-identifier?__%
         _%stx125226%_
         (lambda (_%g125227125229%_)
           (gx#expander-binding?__% _%g125227125229%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx125220%_)
        (gx#core-bound-identifier?__%
         _%stx125220%_
         (lambda (_%g125221125223%_)
           (gx#expander-binding?__% _%g125221125223%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx125207%_)
        (letrec ((_%module-prelude?125209%_
                  (lambda (_%e125215%_)
                    (let ((_%$e125217%_
                           (##structure-instance-of?
                            _%e125215%_
                            'gx#module-context::t)))
                      (if _%$e125217%_
                          _%$e125217%_
                          (##structure-instance-of?
                           _%e125215%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx125207%_
           (lambda (_%g125210125212%_)
             (gx#expander-binding?__%
              _%g125210125212%_
              _%module-prelude?125209%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in125137%_ _%ctx125138%_ _%force-weak?125139%_)
        (let* ((_%in125140125149%_ _%in125137%_)
               (_%E125142125153%_
                (lambda ()
                  (error '"No clause matching"
                         _%in125140125149%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K125143125166%_
                (lambda (_%weak?125156%_
                         _%phi125157%_
                         _%key125158%_
                         _%source125159%_)
                  (gx#core-bind!__%
                   _%key125158%_
                   (let ((_%e125161%_
                          (gx#core-resolve-module-export _%source125159%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e125161%_ '1 '#f '#f)
                      _%key125158%_
                      _%phi125157%_
                      _%e125161%_
                      (##unchecked-structure-ref _%source125159%_ '1 '#f '#f)
                      (let ((_%$e125163%_ _%force-weak?125139%_))
                        (if _%$e125163%_ _%$e125163%_ _%weak?125156%_))))
                   gx#core-context-rebind?
                   _%phi125157%_
                   _%ctx125138%_))))
          (if (##structure-direct-instance-of?
               _%in125140125149%_
               'gx#module-import::t)
              (let* ((_%e125144125169%_
                      (##unchecked-structure-ref
                       _%in125140125149%_
                       '1
                       '#f
                       '#f))
                     (_%source125172%_ _%e125144125169%_)
                     (_%e125145125174%_
                      (##unchecked-structure-ref
                       _%in125140125149%_
                       '2
                       '#f
                       '#f))
                     (_%key125177%_ _%e125145125174%_)
                     (_%e125146125179%_
                      (##unchecked-structure-ref
                       _%in125140125149%_
                       '3
                       '#f
                       '#f))
                     (_%phi125182%_ _%e125146125179%_)
                     (_%e125147125184%_
                      (##unchecked-structure-ref
                       _%in125140125149%_
                       '4
                       '#f
                       '#f))
                     (_%weak?125187%_ _%e125147125184%_))
                (_%K125143125166%_
                 _%weak?125187%_
                 _%phi125182%_
                 _%key125177%_
                 _%source125172%_))
              (_%E125142125153%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in125192%_)
        (let* ((_%ctx125194%_ (gx#current-expander-context))
               (_%force-weak?125196%_ '#f))
          (gx#core-bind-import!__%
           _%in125192%_
           _%ctx125194%_
           _%force-weak?125196%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in125198%_ _%ctx125199%_)
        (let ((_%force-weak?125201%_ '#f))
          (gx#core-bind-import!__%
           _%in125198%_
           _%ctx125199%_
           _%force-weak?125201%_))))
    (define gx#core-bind-import!
      (lambda _g127081_
        (let ((_g127080_ (##length _g127081_)))
          (cond ((##fx= _g127080_ 1) (apply gx#core-bind-import!__0 _g127081_))
                ((##fx= _g127080_ 2) (apply gx#core-bind-import!__1 _g127081_))
                ((##fx= _g127080_ 3) (apply gx#core-bind-import!__% _g127081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g127081_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in125123%_ _%ctx125124%_)
        (gx#core-bind-import!__% _%in125123%_ _%ctx125124%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in125129%_)
        (let ((_%ctx125131%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in125129%_ _%ctx125131%_))))
    (define gx#core-bind-weak-import!
      (lambda _g127083_
        (let ((_g127082_ (##length _g127083_)))
          (cond ((##fx= _g127082_ 1)
                 (apply gx#core-bind-weak-import!__0 _g127083_))
                ((##fx= _g127082_ 2)
                 (apply gx#core-bind-weak-import!__% _g127083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g127083_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out125014%_)
        (letrec ((_%subst125016%_
                  (lambda (_%key125062%_)
                    (let* ((_%key125063125071%_ _%key125062%_)
                           (_%else125065125079%_ (lambda () _%key125062%_))
                           (_%K125067125110%_
                            (lambda (_%mark125082%_ _%id125083%_)
                              (let* ((_%mark125084125090%_ _%mark125082%_)
                                     (_%E125086125094%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark125084125090%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K125087125102%_
                                      (lambda (_%subst125097%_)
                                        (let ((_%$e125099%_
                                               (if _%subst125097%_
                                                   (hash-get
                                                    _%subst125097%_
                                                    _%id125083%_)
                                                   '#f)))
                                          (if _%$e125099%_
                                              _%$e125099%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key125062%_))))))
                                (if (##structure-instance-of?
                                     _%mark125084125090%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e125088125105%_
                                            (##unchecked-structure-ref
                                             _%mark125084125090%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst125108%_ _%e125088125105%_))
                                      (_%K125087125102%_ _%subst125108%_))
                                    (_%E125086125094%_))))))
                      (if (##pair? _%key125063125071%_)
                          (let ((_%hd125068125113%_
                                 (##car _%key125063125071%_))
                                (_%tl125069125115%_
                                 (##cdr _%key125063125071%_)))
                            (let* ((_%id125118%_ _%hd125068125113%_)
                                   (_%mark125120%_ _%tl125069125115%_))
                              (_%K125067125110%_ _%mark125120%_ _%id125118%_)))
                          (_%else125065125079%_))))))
          (let* ((_%out125017125027%_ _%out125014%_)
                 (_%E125019125031%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out125017125027%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K125020125038%_
                  (lambda (_%phi125034%_ _%key125035%_ _%ctx125036%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx125036%_ _%phi125034%_)
                     (_%subst125016%_ _%key125035%_)))))
            (if (##structure-direct-instance-of?
                 _%out125017125027%_
                 'gx#module-export::t)
                (let* ((_%e125021125041%_
                        (##unchecked-structure-ref
                         _%out125017125027%_
                         '1
                         '#f
                         '#f))
                       (_%ctx125044%_ _%e125021125041%_)
                       (_%e125022125046%_
                        (##unchecked-structure-ref
                         _%out125017125027%_
                         '2
                         '#f
                         '#f))
                       (_%key125049%_ _%e125022125046%_)
                       (_%e125023125051%_
                        (##unchecked-structure-ref
                         _%out125017125027%_
                         '3
                         '#f
                         '#f))
                       (_%phi125054%_ _%e125023125051%_)
                       (_%e125024125056%_
                        (##unchecked-structure-ref
                         _%out125017125027%_
                         '4
                         '#f
                         '#f))
                       (_%e125025125059%_
                        (##unchecked-structure-ref
                         _%out125017125027%_
                         '5
                         '#f
                         '#f)))
                  (_%K125020125038%_
                   _%phi125054%_
                   _%key125049%_
                   _%ctx125044%_))
                (_%E125019125031%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out124939%_ _%rename124940%_ _%dphi124941%_)
        (let* ((_%out124942124952%_ _%out124939%_)
               (_%E124944124956%_
                (lambda ()
                  (error '"No clause matching"
                         _%out124942124952%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K124945124968%_
                (lambda (_%weak?124959%_
                         _%name124960%_
                         _%phi124961%_
                         _%key124962%_
                         _%ctx124963%_)
                  (##structure
                   gx#module-import::t
                   _%out124939%_
                   (let ((_%$e124965%_ _%rename124940%_))
                     (if _%$e124965%_ _%$e124965%_ _%name124960%_))
                   (fx+ _%phi124961%_ _%dphi124941%_)
                   _%weak?124959%_))))
          (if (##structure-direct-instance-of?
               _%out124942124952%_
               'gx#module-export::t)
              (let* ((_%e124946124971%_
                      (##unchecked-structure-ref
                       _%out124942124952%_
                       '1
                       '#f
                       '#f))
                     (_%ctx124974%_ _%e124946124971%_)
                     (_%e124947124976%_
                      (##unchecked-structure-ref
                       _%out124942124952%_
                       '2
                       '#f
                       '#f))
                     (_%key124979%_ _%e124947124976%_)
                     (_%e124948124981%_
                      (##unchecked-structure-ref
                       _%out124942124952%_
                       '3
                       '#f
                       '#f))
                     (_%phi124984%_ _%e124948124981%_)
                     (_%e124949124986%_
                      (##unchecked-structure-ref
                       _%out124942124952%_
                       '4
                       '#f
                       '#f))
                     (_%name124989%_ _%e124949124986%_)
                     (_%e124950124991%_
                      (##unchecked-structure-ref
                       _%out124942124952%_
                       '5
                       '#f
                       '#f))
                     (_%weak?124994%_ _%e124950124991%_))
                (_%K124945124968%_
                 _%weak?124994%_
                 _%name124989%_
                 _%phi124984%_
                 _%key124979%_
                 _%ctx124974%_))
              (_%E124944124956%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out124999%_)
        (let* ((_%rename125001%_ '#f) (_%dphi125003%_ '0))
          (gx#core-module-export->import__%
           _%out124999%_
           _%rename125001%_
           _%dphi125003%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out125005%_ _%rename125006%_)
        (let ((_%dphi125008%_ '0))
          (gx#core-module-export->import__%
           _%out125005%_
           _%rename125006%_
           _%dphi125008%_))))
    (define gx#core-module-export->import
      (lambda _g127085_
        (let ((_g127084_ (##length _g127085_)))
          (cond ((##fx= _g127084_ 1)
                 (apply gx#core-module-export->import__0 _g127085_))
                ((##fx= _g127084_ 2)
                 (apply gx#core-module-export->import__1 _g127085_))
                ((##fx= _g127084_ 3)
                 (apply gx#core-module-export->import__% _g127085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g127085_))))))
    (define gx#core-expand-module%
      (lambda (_%stx124838%_)
        (letrec ((_%make-context124840%_
                  (lambda (_%id124917%_)
                    (let* ((_%super124919%_ (gx#current-expander-context))
                           (_%bind-id124921%_ (gx#stx-e _%id124917%_))
                           (_%mod-id124923%_
                            (if (##structure-instance-of?
                                 _%super124919%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super124919%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id124921%_)
                                _%bind-id124921%_))
                           (_%ns124925%_ (symbol->string _%mod-id124923%_))
                           (_%path124935%_
                            (if (##structure-instance-of?
                                 _%super124919%_
                                 'gx#module-context::t)
                                (let ((_%path124927%_
                                       (##unchecked-structure-ref
                                        _%super124919%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path124927%_)
                                          (null? _%path124927%_))
                                      (cons _%bind-id124921%_ _%path124927%_)
                                      (if (not _%path124927%_)
                                          _%bind-id124921%_
                                          (cons _%bind-id124921%_
                                                (cons _%path124927%_ '())))))
                                _%bind-id124921%_))
                           (__obj127061
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
                       __obj127061
                       _%mod-id124923%_
                       _%super124919%_
                       _%ns124925%_
                       _%path124935%_)
                      __obj127061)))
                 (_%valid-module-id?124841%_
                  (lambda (_%id124892%_)
                    (let* ((_%str124894%_ (symbol->string _%id124892%_))
                           (_%len124896%_ (##string-length _%str124894%_)))
                      (if (##fx>= _%len124896%_ '1)
                          (let _%loop124899%_ ((_%index124901%_
                                                (##fx- (##string-length
                                                        _%str124894%_)
                                                       '1)))
                            (if (##fx>= _%index124901%_ '0)
                                (let ((_%c124903%_
                                       (string-ref
                                        _%str124894%_
                                        _%index124901%_)))
                                  (if (or (and (##char>=? _%c124903%_ '#\a)
                                               (##char<=? _%c124903%_ '#\z))
                                          (and (##char>=? _%c124903%_ '#\A)
                                               (##char<=? _%c124903%_ '#\Z))
                                          (and (##char>=? _%c124903%_ '#\0)
                                               (##char<=? _%c124903%_ '#\9))
                                          (##char=? _%c124903%_ '#\_)
                                          (##char=? _%c124903%_ '#\-))
                                      (_%loop124899%_
                                       (##fx- _%index124901%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e124842124852%_ _%stx124838%_)
                 (_%E124844124856%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124842124852%_)))
                 (_%E124843124888%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124842124852%_)
                        (let ((_%e124845124860%_
                               (gx#syntax-e _%e124842124852%_)))
                          (let ((_%hd124846124863%_ (##car _%e124845124860%_))
                                (_%tl124847124865%_ (##cdr _%e124845124860%_)))
                            (if (gx#stx-pair? _%tl124847124865%_)
                                (let ((_%e124848124868%_
                                       (gx#syntax-e _%tl124847124865%_)))
                                  (let ((_%hd124849124871%_
                                         (##car _%e124848124868%_))
                                        (_%tl124850124873%_
                                         (##cdr _%e124848124868%_)))
                                    (let* ((_%id124876%_ _%hd124849124871%_)
                                           (_%body124878%_ _%tl124850124873%_))
                                      (if (and (gx#identifier? _%id124876%_)
                                               (gx#stx-list? _%body124878%_))
                                          (if (_%valid-module-id?124841%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx124880%_
                                                      (_%make-context124840%_
                                                       _%id124876%_))
                                                     (_%body124882%_
                                                      (gx#core-expand-module-begin
                                                       _%body124878%_
                                                       _%ctx124880%_))
                                                     (_%body124884%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body124882%_)
                                                       (gx#stx-source
                                                        _%stx124838%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx124880%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body124884%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx124880%_
                                                 _%body124884%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id124876%_
                                                 _%ctx124880%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id124876%_)
                                                  _%body124884%_)
                                                 (gx#stx-source
                                                  _%stx124838%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx124838%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E124844124856%_)))))
                                (_%E124844124856%_))))
                        (_%E124844124856%_)))))
            (_%E124843124888%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body124804%_ _%ctx124805%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx124808%_
                   (gx#core-expand-head (cons '%%begin-module _%body124804%_)))
                  (_%e124809124816%_ _%stx124808%_)
                  (_%E124811124820%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx124808%_)))
                  (_%E124810124834%_
                   (lambda ()
                     (if (gx#stx-pair? _%e124809124816%_)
                         (let ((_%e124812124824%_
                                (gx#syntax-e _%e124809124816%_)))
                           (let ((_%hd124813124827%_ (##car _%e124812124824%_))
                                 (_%tl124814124829%_
                                  (##cdr _%e124812124824%_)))
                             (if (and (gx#identifier? _%hd124813124827%_)
                                      (gx#core-identifier=?
                                       _%hd124813124827%_
                                       '%#begin-module))
                                 (let ((_%body124832%_ _%tl124814124829%_))
                                   (if (gx#sealed-syntax? _%stx124808%_)
                                       _%body124832%_
                                       (gx#core-expand-module-body
                                        _%body124832%_)))
                                 (_%E124811124820%_))))
                         (_%E124811124820%_)))))
             (_%E124810124834%_)))
         gx#current-expander-context
         _%ctx124805%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body124600%_)
        (letrec ((_%expand-special124602%_
                  (lambda (_%hd124731%_ _%K124732%_ _%rest124733%_ _%r124734%_)
                    (let* ((_%e124735124752%_ _%hd124731%_)
                           (_%E124747124756%_
                            (lambda ()
                              (_%K124732%_
                               _%rest124733%_
                               (cons (gx#core-expand-top _%hd124731%_)
                                     _%r124734%_))))
                           (_%E124737124768%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124735124752%_)
                                  (let ((_%e124748124760%_
                                         (gx#syntax-e _%e124735124752%_)))
                                    (let ((_%hd124749124763%_
                                           (##car _%e124748124760%_))
                                          (_%tl124750124765%_
                                           (##cdr _%e124748124760%_)))
                                      (if (and (gx#identifier?
                                                _%hd124749124763%_)
                                               (gx#core-identifier=?
                                                _%hd124749124763%_
                                                '%#export))
                                          (_%K124732%_
                                           _%rest124733%_
                                           (cons _%hd124731%_ _%r124734%_))
                                          (_%E124747124756%_))))
                                  (_%E124747124756%_))))
                           (_%E124736124800%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124735124752%_)
                                  (let ((_%e124738124772%_
                                         (gx#syntax-e _%e124735124752%_)))
                                    (let ((_%hd124739124775%_
                                           (##car _%e124738124772%_))
                                          (_%tl124740124777%_
                                           (##cdr _%e124738124772%_)))
                                      (if (and (gx#identifier?
                                                _%hd124739124775%_)
                                               (gx#core-identifier=?
                                                _%hd124739124775%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl124740124777%_)
                                              (let ((_%e124741124780%_
                                                     (gx#syntax-e
                                                      _%tl124740124777%_)))
                                                (let ((_%hd124742124783%_
                                                       (##car _%e124741124780%_))
                                                      (_%tl124743124785%_
                                                       (##cdr _%e124741124780%_)))
                                                  (let ((_%hd-bind124788%_
                                                         _%hd124742124783%_))
                                                    (if (gx#stx-pair?
                                                         _%tl124743124785%_)
                                                        (let ((_%e124744124790%_
                                                               (gx#syntax-e
                                                                _%tl124743124785%_)))
                                                          (let ((_%hd124745124793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e124744124790%_))
                        (_%tl124746124795%_ (##cdr _%e124744124790%_)))
                    (let ((_%expr124798%_ _%hd124745124793%_))
                      (if (gx#stx-null? _%tl124746124795%_)
                          (if (gx#core-bind-values? _%hd-bind124788%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind124788%_)
                                (_%K124732%_
                                 _%rest124733%_
                                 (cons _%hd124731%_ _%r124734%_)))
                              (_%E124737124768%_))
                          (_%E124737124768%_)))))
                (_%E124737124768%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124737124768%_))
                                          (_%E124737124768%_))))
                                  (_%E124737124768%_)))))
                      (_%E124736124800%_))))
                 (_%expand-body124603%_
                  (lambda (_%rbody124605%_)
                    (let _%lp124607%_ ((_%rest124609%_ _%rbody124605%_)
                                       (_%body124610%_ '()))
                      (let* ((_%rest124611124619%_ _%rest124609%_)
                             (_%else124613124627%_ (lambda () _%body124610%_))
                             (_%K124615124719%_
                              (lambda (_%rest124630%_ _%hd124631%_)
                                (let* ((_%e124632124653%_ _%hd124631%_)
                                       (_%E124648124657%_
                                        (lambda ()
                                          (_%lp124607%_
                                           _%rest124630%_
                                           (cons (gx#core-expand-expression
                                                  _%hd124631%_)
                                                 _%body124610%_))))
                                       (_%E124644124671%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124632124653%_)
                                              (let ((_%e124649124661%_
                                                     (gx#syntax-e
                                                      _%e124632124653%_)))
                                                (let ((_%hd124650124664%_
                                                       (##car _%e124649124661%_))
                                                      (_%tl124651124666%_
                                                       (##cdr _%e124649124661%_)))
                                                  (let ((_%form124669%_
                                                         _%hd124650124664%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form124669%_
                                                         gx#special-form-binding?)
                                                        (_%lp124607%_
                                                         _%rest124630%_
                                                         (cons _%hd124631%_
                                                               _%body124610%_))
                                                        (_%E124648124657%_)))))
                                              (_%E124648124657%_))))
                                       (_%E124634124683%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124632124653%_)
                                              (let ((_%e124645124675%_
                                                     (gx#syntax-e
                                                      _%e124632124653%_)))
                                                (let ((_%hd124646124678%_
                                                       (##car _%e124645124675%_))
                                                      (_%tl124647124680%_
                                                       (##cdr _%e124645124675%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124646124678%_)
                                                           (gx#core-identifier=?
                                                            _%hd124646124678%_
                                                            '%#export))
                                                      (_%lp124607%_
                                                       _%rest124630%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd124631%_)
                                                             _%body124610%_))
                                                      (_%E124644124671%_))))
                                              (_%E124644124671%_))))
                                       (_%E124633124715%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124632124653%_)
                                              (let ((_%e124635124687%_
                                                     (gx#syntax-e
                                                      _%e124632124653%_)))
                                                (let ((_%hd124636124690%_
                                                       (##car _%e124635124687%_))
                                                      (_%tl124637124692%_
                                                       (##cdr _%e124635124687%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124636124690%_)
                                                           (gx#core-identifier=?
                                                            _%hd124636124690%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl124637124692%_)
                                                          (let ((_%e124638124695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl124637124692%_)))
                    (let ((_%hd124639124698%_ (##car _%e124638124695%_))
                          (_%tl124640124700%_ (##cdr _%e124638124695%_)))
                      (let ((_%hd-bind124703%_ _%hd124639124698%_))
                        (if (gx#stx-pair? _%tl124640124700%_)
                            (let ((_%e124641124705%_
                                   (gx#syntax-e _%tl124640124700%_)))
                              (let ((_%hd124642124708%_
                                     (##car _%e124641124705%_))
                                    (_%tl124643124710%_
                                     (##cdr _%e124641124705%_)))
                                (let ((_%expr124713%_ _%hd124642124708%_))
                                  (if (gx#stx-null? _%tl124643124710%_)
                                      (_%lp124607%_
                                       _%rest124630%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind124703%_)
                                               (gx#core-expand-expression
                                                _%expr124713%_))
                                              (gx#stx-source _%hd124631%_))
                                             _%body124610%_))
                                      (_%E124634124683%_)))))
                            (_%E124634124683%_)))))
                  (_%E124634124683%_))
              (_%E124634124683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124634124683%_)))))
                                  (_%E124633124715%_)))))
                        (if (##pair? _%rest124611124619%_)
                            (let ((_%hd124616124722%_
                                   (##car _%rest124611124619%_))
                                  (_%tl124617124724%_
                                   (##cdr _%rest124611124619%_)))
                              (let* ((_%hd124727%_ _%hd124616124722%_)
                                     (_%rest124729%_ _%tl124617124724%_))
                                (_%K124615124719%_
                                 _%rest124729%_
                                 _%hd124727%_)))
                            (_%else124613124627%_)))))))
          (_%expand-body124603%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body124600%_)
            _%expand-special124602%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx124441%_
               _%expanded?124442%_
               _%method124443%_
               _%current-phi124444%_
               _%expand1124445%_)
        (letrec ((_%K124447%_
                  (lambda (_%rest124567%_ _%r124568%_)
                    (let* ((_%e124569124576%_ _%rest124567%_)
                           (_%E124571124580%_ (lambda () _%r124568%_))
                           (_%E124570124596%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124569124576%_)
                                  (let ((_%e124572124584%_
                                         (gx#syntax-e _%e124569124576%_)))
                                    (let ((_%hd124573124587%_
                                           (##car _%e124572124584%_))
                                          (_%tl124574124589%_
                                           (##cdr _%e124572124584%_)))
                                      (let* ((_%hd124592%_ _%hd124573124587%_)
                                             (_%rest124594%_
                                              _%tl124574124589%_))
                                        (_%step124448%_
                                         _%hd124592%_
                                         _%rest124594%_
                                         _%r124568%_))))
                                  (_%E124571124580%_)))))
                      (_%E124570124596%_))))
                 (_%step124448%_
                  (lambda (_%hd124481%_ _%rest124482%_ _%r124483%_)
                    (let* ((_%e124484124502%_ _%hd124481%_)
                           (_%E124497124506%_
                            (lambda ()
                              (if (_%expanded?124442%_ (gx#stx-e _%hd124481%_))
                                  (_%K124447%_
                                   _%rest124482%_
                                   (cons (gx#stx-e _%hd124481%_) _%r124483%_))
                                  (_%expand1124445%_
                                   _%hd124481%_
                                   _%K124447%_
                                   _%rest124482%_
                                   _%r124483%_))))
                           (_%E124493124522%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124484124502%_)
                                  (let ((_%e124498124510%_
                                         (gx#syntax-e _%e124484124502%_)))
                                    (let ((_%hd124499124513%_
                                           (##car _%e124498124510%_))
                                          (_%tl124500124515%_
                                           (##cdr _%e124498124510%_)))
                                      (let* ((_%macro124518%_
                                              _%hd124499124513%_)
                                             (_%body124520%_
                                              _%tl124500124515%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro124518%_
                                             gx#syntax-binding?)
                                            (_%K124447%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro124518%_)
                                                    _%hd124481%_
                                                    _%method124443%_)
                                                   _%rest124482%_)
                                             _%r124483%_)
                                            (_%E124497124506%_)))))
                                  (_%E124497124506%_))))
                           (_%E124486124536%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124484124502%_)
                                  (let ((_%e124494124526%_
                                         (gx#syntax-e _%e124484124502%_)))
                                    (let ((_%hd124495124529%_
                                           (##car _%e124494124526%_))
                                          (_%tl124496124531%_
                                           (##cdr _%e124494124526%_)))
                                      (if (eq? (gx#stx-e _%hd124495124529%_)
                                               'begin:)
                                          (let ((_%body124534%_
                                                 _%tl124496124531%_))
                                            (_%K124447%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest124482%_
                                              _%body124534%_)
                                             _%r124483%_))
                                          (_%E124493124522%_))))
                                  (_%E124493124522%_))))
                           (_%E124485124563%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124484124502%_)
                                  (let ((_%e124487124540%_
                                         (gx#syntax-e _%e124484124502%_)))
                                    (let ((_%hd124488124543%_
                                           (##car _%e124487124540%_))
                                          (_%tl124489124545%_
                                           (##cdr _%e124487124540%_)))
                                      (if (eq? (gx#stx-e _%hd124488124543%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl124489124545%_)
                                              (let ((_%e124490124548%_
                                                     (gx#syntax-e
                                                      _%tl124489124545%_)))
                                                (let ((_%hd124491124551%_
                                                       (##car _%e124490124548%_))
                                                      (_%tl124492124553%_
                                                       (##cdr _%e124490124548%_)))
                                                  (let* ((_%dphi124556%_
                                                          _%hd124491124551%_)
                                                         (_%body124558%_
                                                          _%tl124492124553%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi124556%_)
                                                        (let ((_%rbody124561%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K124447%_ _%body124558%_ '()))
                        _%current-phi124444%_
                        (fx+ (gx#stx-e _%dphi124556%_)
                             (_%current-phi124444%_)))))
                  (_%K124447%_
                   _%rest124482%_
                   (__foldr1 cons _%r124483%_ _%rbody124561%_)))
                (_%E124486124536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124486124536%_))
                                          (_%E124486124536%_))))
                                  (_%E124486124536%_)))))
                      (_%E124485124563%_)))))
          (let* ((_%e124449124456%_ _%stx124441%_)
                 (_%E124451124460%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124449124456%_)))
                 (_%E124450124477%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124449124456%_)
                        (let ((_%e124452124464%_
                               (gx#syntax-e _%e124449124456%_)))
                          (let ((_%hd124453124467%_ (##car _%e124452124464%_))
                                (_%tl124454124469%_ (##cdr _%e124452124464%_)))
                            (let ((_%body124472%_ _%tl124454124469%_))
                              (if (_%current-phi124444%_)
                                  (_%K124447%_ _%body124472%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K124447%_ _%body124472%_ '()))
                                   _%current-phi124444%_
                                   (gx#current-expander-phi))))))
                        (_%E124451124460%_)))))
            (_%E124450124477%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx124095%_ _%internal-expand?124096%_)
        (letrec ((_%expand1124098%_
                  (lambda (_%hd124413%_ _%K124414%_ _%rest124415%_ _%r124416%_)
                    (if (gx#core-bound-module? _%hd124413%_)
                        (_%import1124099%_
                         (gx#syntax-local-e__0 _%hd124413%_)
                         _%K124414%_
                         _%rest124415%_
                         _%r124416%_)
                        (if (gx#core-library-module-path? _%hd124413%_)
                            (_%import1124099%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd124413%_))
                             _%K124414%_
                             _%rest124415%_
                             _%r124416%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd124413%_)
                                (_%import1124099%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd124413%_))
                                 _%K124414%_
                                 _%rest124415%_
                                 _%r124416%_)
                                (let ((_%e124422%_ (gx#stx-e _%hd124413%_)))
                                  (if (pair? _%e124422%_)
                                      (let ((_%$e124425%_
                                             (gx#stx-e (##car _%e124422%_))))
                                        (if (eq? 'spec: _%$e124425%_)
                                            (_%import-spec124102%_
                                             _%hd124413%_
                                             _%K124414%_
                                             _%rest124415%_
                                             _%r124416%_)
                                            (if (eq? 'in: _%$e124425%_)
                                                (_%import-submodule124100%_
                                                 _%hd124413%_
                                                 _%K124414%_
                                                 _%rest124415%_
                                                 _%r124416%_)
                                                (if (eq? 'runtime:
                                                         _%$e124425%_)
                                                    (_%import-runtime124101%_
                                                     _%hd124413%_
                                                     _%K124414%_
                                                     _%rest124415%_
                                                     _%r124416%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx124095%_
                                                     _%hd124413%_)))))
                                      (if (string? _%e124422%_)
                                          (_%import1124099%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd124413%_
                                             (gx#stx-source _%stx124095%_)))
                                           _%K124414%_
                                           _%rest124415%_
                                           _%r124416%_)
                                          (if (##structure-instance-of?
                                               _%e124422%_
                                               'gx#module-context::t)
                                              (_%K124414%_
                                               _%rest124415%_
                                               (cons _%e124422%_ _%r124416%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx124095%_
                                               _%hd124413%_))))))))))
                 (_%import1124099%_
                  (lambda (_%ctx124402%_
                           _%K124403%_
                           _%rest124404%_
                           _%r124405%_)
                    (let ((_%dphi124407%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K124403%_
                       _%rest124404%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx124402%_
                              _%dphi124407%_
                              (map (lambda (_%g124408124410%_)
                                     (gx#core-module-export->import__%
                                      _%g124408124410%_
                                      '#f
                                      _%dphi124407%_))
                                   (##unchecked-structure-ref
                                    _%ctx124402%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r124405%_)))))
                 (_%import-submodule124100%_
                  (lambda (_%hd124369%_ _%K124370%_ _%rest124371%_ _%r124372%_)
                    (let* ((_%e124373124380%_ _%hd124369%_)
                           (_%E124375124384%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124373124380%_)))
                           (_%E124374124398%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124373124380%_)
                                  (let ((_%e124376124388%_
                                         (gx#syntax-e _%e124373124380%_)))
                                    (let ((_%hd124377124391%_
                                           (##car _%e124376124388%_))
                                          (_%tl124378124393%_
                                           (##cdr _%e124376124388%_)))
                                      (let ((_%spath124396%_
                                             _%tl124378124393%_))
                                        (_%import1124099%_
                                         (_%import-spec-source124103%_
                                          _%spath124396%_)
                                         _%K124370%_
                                         _%rest124371%_
                                         _%r124372%_))))
                                  (_%E124375124384%_)))))
                      (_%E124374124398%_))))
                 (_%import-runtime124101%_
                  (lambda (_%hd124336%_ _%K124337%_ _%rest124338%_ _%r124339%_)
                    (let* ((_%e124340124347%_ _%hd124336%_)
                           (_%E124342124351%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124340124347%_)))
                           (_%E124341124365%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124340124347%_)
                                  (let ((_%e124343124355%_
                                         (gx#syntax-e _%e124340124347%_)))
                                    (let ((_%hd124344124358%_
                                           (##car _%e124343124355%_))
                                          (_%tl124345124360%_
                                           (##cdr _%e124343124355%_)))
                                      (let ((_%spath124363%_
                                             _%tl124345124360%_))
                                        (_%K124337%_
                                         _%rest124338%_
                                         (cons (_%import-spec-source124103%_
                                                _%spath124363%_)
                                               _%r124339%_)))))
                                  (_%E124342124351%_)))))
                      (_%E124341124365%_))))
                 (_%import-spec124102%_
                  (lambda (_%hd124174%_ _%K124175%_ _%rest124176%_ _%r124177%_)
                    (let* ((_%e124178124195%_ _%hd124174%_)
                           (_%E124187124199%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124178124195%_)))
                           (_%E124180124310%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124178124195%_)
                                  (let ((_%e124188124203%_
                                         (gx#syntax-e _%e124178124195%_)))
                                    (let ((_%hd124189124206%_
                                           (##car _%e124188124203%_))
                                          (_%tl124190124208%_
                                           (##cdr _%e124188124203%_)))
                                      (if (gx#stx-pair? _%tl124190124208%_)
                                          (let ((_%e124191124211%_
                                                 (gx#syntax-e
                                                  _%tl124190124208%_)))
                                            (let ((_%hd124192124214%_
                                                   (##car _%e124191124211%_))
                                                  (_%tl124193124216%_
                                                   (##cdr _%e124191124211%_)))
                                              (let* ((_%path124219%_
                                                      _%hd124192124214%_)
                                                     (_%specs124221%_
                                                      _%tl124193124216%_))
                                                (let ((_%src-ctx124223%_
                                                       (_%import-spec-source124103%_
                                                        _%path124219%_))
                                                      (_%exports124224%_
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
                                                      (_%specs124225%_
                                                       (gx#syntax->list
                                                        _%specs124221%_)))
                                                  (for-each
                                                   (lambda (_%out124227%_)
                                                     (__hash-put!
                                                      _%exports124224%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out124227%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out124227%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out124227%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx124223%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K124175%_
                                                   _%rest124176%_
                                                   (__foldl1
                                                    (lambda (_%spec124229%_
                                                             _%r124230%_)
                                                      (let* ((_%e124231124247%_
                                                              _%spec124229%_)
                                                             (_%E124233124251%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e124231124247%_)))
                     (_%E124232124306%_
                      (lambda ()
                        (if (gx#stx-pair? _%e124231124247%_)
                            (let ((_%e124234124255%_
                                   (gx#syntax-e _%e124231124247%_)))
                              (let ((_%hd124235124258%_
                                     (##car _%e124234124255%_))
                                    (_%tl124236124260%_
                                     (##cdr _%e124234124255%_)))
                                (let ((_%phi124263%_ _%hd124235124258%_))
                                  (if (gx#stx-pair? _%tl124236124260%_)
                                      (let ((_%e124237124265%_
                                             (gx#syntax-e _%tl124236124260%_)))
                                        (let ((_%hd124238124268%_
                                               (##car _%e124237124265%_))
                                              (_%tl124239124270%_
                                               (##cdr _%e124237124265%_)))
                                          (let ((_%name124273%_
                                                 _%hd124238124268%_))
                                            (if (gx#stx-pair?
                                                 _%tl124239124270%_)
                                                (let ((_%e124240124275%_
                                                       (gx#syntax-e
                                                        _%tl124239124270%_)))
                                                  (let ((_%hd124241124278%_
                                                         (##car _%e124240124275%_))
                                                        (_%tl124242124280%_
                                                         (##cdr _%e124240124275%_)))
                                                    (let ((_%src-phi124283%_
                                                           _%hd124241124278%_))
                                                      (if (gx#stx-pair?
                                                           _%tl124242124280%_)
                                                          (let ((_%e124243124285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl124242124280%_)))
                    (let ((_%hd124244124288%_ (##car _%e124243124285%_))
                          (_%tl124245124290%_ (##cdr _%e124243124285%_)))
                      (let ((_%src-name124293%_ _%hd124244124288%_))
                        (if (gx#stx-null? _%tl124245124290%_)
                            (if (and (gx#stx-fixnum? _%src-phi124283%_)
                                     (gx#identifier? _%src-name124293%_)
                                     (gx#stx-fixnum? _%phi124263%_)
                                     (gx#identifier? _%name124273%_))
                                (let ((_%src-phi124295%_
                                       (gx#stx-e _%src-phi124283%_))
                                      (_%src-name124296%_
                                       (gx#core-identifier-key
                                        _%src-name124293%_))
                                      (_%phi124297%_ (gx#stx-e _%phi124263%_))
                                      (_%name124298%_
                                       (gx#core-identifier-key
                                        _%name124273%_)))
                                  (let ((_%$e124300%_
                                         (__hash-get
                                          _%exports124224%_
                                          (cons _%src-phi124295%_
                                                _%src-name124296%_))))
                                    (if _%$e124300%_
                                        ((lambda (_%out124303%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out124303%_
                                                  _%name124298%_
                                                  (fx- _%phi124297%_
                                                       _%src-phi124295%_))
                                                 _%r124230%_))
                                         _%$e124300%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx124095%_
                                         _%hd124174%_))))
                                (_%E124233124251%_))
                            (_%E124233124251%_)))))
                  (_%E124233124251%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124233124251%_)))))
                                      (_%E124233124251%_)))))
                            (_%E124233124251%_)))))
                (_%E124232124306%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r124177%_
                                                    _%specs124225%_))))))
                                          (_%E124187124199%_))))
                                  (_%E124187124199%_))))
                           (_%E124179124332%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124178124195%_)
                                  (let ((_%e124181124314%_
                                         (gx#syntax-e _%e124178124195%_)))
                                    (let ((_%hd124182124317%_
                                           (##car _%e124181124314%_))
                                          (_%tl124183124319%_
                                           (##cdr _%e124181124314%_)))
                                      (if (gx#stx-pair? _%tl124183124319%_)
                                          (let ((_%e124184124322%_
                                                 (gx#syntax-e
                                                  _%tl124183124319%_)))
                                            (let ((_%hd124185124325%_
                                                   (##car _%e124184124322%_))
                                                  (_%tl124186124327%_
                                                   (##cdr _%e124184124322%_)))
                                              (let ((_%path124330%_
                                                     _%hd124185124325%_))
                                                (if (gx#stx-null?
                                                     _%tl124186124327%_)
                                                    (_%K124175%_
                                                     _%rest124176%_
                                                     (cons (_%import-spec-source124103%_
                                                            _%path124330%_)
                                                           _%r124177%_))
                                                    (_%E124180124310%_)))))
                                          (_%E124180124310%_))))
                                  (_%E124180124310%_)))))
                      (_%E124179124332%_))))
                 (_%import-spec-source124103%_
                  (lambda (_%spath124172%_)
                    (gx#core-import-nested-module
                     _%spath124172%_
                     _%stx124095%_)))
                 (_%import!124104%_
                  (lambda (_%rbody124117%_)
                    (letrec* ((_%current-ctx124119%_
                               (gx#current-expander-context))
                              (_%deps124120%_ (make-hash-table-eq))
                              (_%bind!124121%_
                               (lambda (_%hd124170%_)
                                 (gx#core-bind-import!__1
                                  _%hd124170%_
                                  _%current-ctx124119%_))))
                      (let _%lp124123%_ ((_%rest124125%_ _%rbody124117%_)
                                         (_%body124126%_ '()))
                        (let* ((_%rest124127124135%_ _%rest124125%_)
                               (_%else124129124146%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx124119%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx124119%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx124119%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body124126%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx124143%_ _%_124144%_)
                                     (gx#eval-module _%ctx124143%_))
                                   _%deps124120%_)
                                  _%body124126%_))
                               (_%K124131124158%_
                                (lambda (_%rest124149%_ _%hd124150%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd124150%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!124121%_ _%hd124150%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd124150%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd124150%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps124120%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd124150%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd124150%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!124121%_
                                             (##unchecked-structure-ref
                                              _%hd124150%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd124150%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps124120%_
                                                 (##unchecked-structure-ref
                                                  _%hd124150%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e124154%_
                                                 (##structure-instance-of?
                                                  _%hd124150%_
                                                  'gx#module-context::t)))
                                            (if _%$e124154%_
                                                _%$e124154%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx124095%_
                                                 _%hd124150%_)))))
                                  (_%lp124123%_
                                   _%rest124149%_
                                   (cons _%hd124150%_ _%body124126%_)))))
                          (if (##pair? _%rest124127124135%_)
                              (let ((_%hd124132124161%_
                                     (##car _%rest124127124135%_))
                                    (_%tl124133124163%_
                                     (##cdr _%rest124127124135%_)))
                                (let* ((_%hd124166%_ _%hd124132124161%_)
                                       (_%rest124168%_ _%tl124133124163%_))
                                  (_%K124131124158%_
                                   _%rest124168%_
                                   _%hd124166%_)))
                              (_%else124129124146%_)))))))
                 (_%expanded-import?124105%_
                  (lambda (_%e124109%_)
                    (let ((_%$e124111%_
                           (##structure-direct-instance-of?
                            _%e124109%_
                            'gx#import-set::t)))
                      (if _%$e124111%_
                          _%$e124111%_
                          (let ((_%$e124114%_
                                 (##structure-direct-instance-of?
                                  _%e124109%_
                                  'gx#module-import::t)))
                            (if _%$e124114%_
                                _%$e124114%_
                                (##structure-instance-of?
                                 _%e124109%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody124107%_
                 (gx#core-expand-import/export
                  _%stx124095%_
                  _%expanded-import?124105%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1124098%_)))
            (if _%internal-expand?124096%_
                (reverse _%rbody124107%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!124104%_ _%rbody124107%_))
                 (gx#stx-source _%stx124095%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx124434%_)
        (let ((_%internal-expand?124436%_ '#f))
          (gx#core-expand-import%__%
           _%stx124434%_
           _%internal-expand?124436%_))))
    (define gx#core-expand-import%
      (lambda _g127087_
        (let ((_g127086_ (##length _g127087_)))
          (cond ((##fx= _g127086_ 1)
                 (apply gx#core-expand-import%__0 _g127087_))
                ((##fx= _g127086_ 2)
                 (apply gx#core-expand-import%__% _g127087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g127087_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath124022%_ _%where124023%_)
        (let* ((_%e124024124031%_ _%spath124022%_)
               (_%E124026124035%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124024124031%_)))
               (_%E124025124090%_
                (lambda ()
                  (if (gx#stx-pair? _%e124024124031%_)
                      (let ((_%e124027124039%_
                             (gx#syntax-e _%e124024124031%_)))
                        (let ((_%hd124028124042%_ (##car _%e124027124039%_))
                              (_%tl124029124044%_ (##cdr _%e124027124039%_)))
                          (let* ((_%origin124047%_ _%hd124028124042%_)
                                 (_%sub124049%_ _%tl124029124044%_)
                                 (_%origin-ctx124051%_
                                  (if (gx#stx-false? _%origin124047%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin124047%_))))
                            (let _%lp124053%_ ((_%rest124055%_ _%sub124049%_)
                                               (_%ctx124056%_
                                                _%origin-ctx124051%_))
                              (let* ((_%e124057124064%_ _%rest124055%_)
                                     (_%E124059124068%_
                                      (lambda () _%ctx124056%_))
                                     (_%E124058124086%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e124057124064%_)
                                            (let ((_%e124060124072%_
                                                   (gx#syntax-e
                                                    _%e124057124064%_)))
                                              (let ((_%hd124061124075%_
                                                     (##car _%e124060124072%_))
                                                    (_%tl124062124077%_
                                                     (##cdr _%e124060124072%_)))
                                                (let* ((_%id124080%_
                                                        _%hd124061124075%_)
                                                       (_%rest124082%_
                                                        _%tl124062124077%_)
                                                       (_%bind124084%_
                                                        (gx#resolve-identifier__%
                                                         _%id124080%_
                                                         '0
                                                         _%ctx124056%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind124084%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind124084%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where124023%_
                                                       _%spath124022%_
                                                       _%id124080%_))
                                                  (_%lp124053%_
                                                   _%rest124082%_
                                                   (##unchecked-structure-ref
                                                    _%bind124084%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E124059124068%_)))))
                                (_%E124058124086%_))))))
                      (_%E124026124035%_)))))
          (_%E124025124090%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd124020%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd124020%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx123514%_ _%internal-expand?123515%_)
        (letrec* ((_%make-export__127015127016%_
                   (lambda (_%bind123968%_
                            _%phi123969%_
                            _%ctx123970%_
                            _%name123971%_)
                     (let* ((_%key123973%_
                             (##unchecked-structure-ref
                              _%bind123968%_
                              '2
                              '#f
                              '#f))
                            (_%export-key123975%_
                             (if _%name123971%_
                                 (gx#core-identifier-key _%name123971%_)
                                 _%key123973%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx123970%_
                        _%key123973%_
                        _%phi123969%_
                        _%export-key123975%_
                        (let ((_%$e123978%_
                               (##structure-instance-of?
                                _%bind123968%_
                                'gx#extern-binding::t)))
                          (if _%$e123978%_
                              _%$e123978%_
                              (##structure-direct-instance-of?
                               _%bind123968%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__127017127020%_
                   (lambda (_%bind123984%_)
                     (let* ((_%phi123986%_ (gx#current-export-expander-phi))
                            (_%ctx123988%_ (gx#current-expander-context))
                            (_%name123990%_ '#f))
                       (_%make-export__127015127016%_
                        _%bind123984%_
                        _%phi123986%_
                        _%ctx123988%_
                        _%name123990%_))))
                  (_%make-export__1__127018127021%_
                   (lambda (_%bind123992%_ _%phi123993%_)
                     (let* ((_%ctx123995%_ (gx#current-expander-context))
                            (_%name123997%_ '#f))
                       (_%make-export__127015127016%_
                        _%bind123992%_
                        _%phi123993%_
                        _%ctx123995%_
                        _%name123997%_))))
                  (_%make-export__2__127019127022%_
                   (lambda (_%bind123999%_ _%phi124000%_ _%ctx124001%_)
                     (let ((_%name124003%_ '#f))
                       (_%make-export__127015127016%_
                        _%bind123999%_
                        _%phi124000%_
                        _%ctx124001%_
                        _%name124003%_))))
                  (_%make-export123517%_
                   (lambda _g127089_
                     (let ((_g127088_ (##length _g127089_)))
                       (cond ((##fx= _g127088_ 1)
                              (apply _%make-export__0__127017127020%_
                                     _g127089_))
                             ((##fx= _g127088_ 2)
                              (apply _%make-export__1__127018127021%_
                                     _g127089_))
                             ((##fx= _g127088_ 3)
                              (apply _%make-export__2__127019127022%_
                                     _g127089_))
                             ((##fx= _g127088_ 4)
                              (apply _%make-export__127015127016%_ _g127089_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g127089_))))))
                  (_%expand1123518%_
                   (lambda (_%hd123673%_
                            _%K123674%_
                            _%rest123675%_
                            _%r123676%_)
                     (let* ((_%e123677123709%_ _%hd123673%_)
                            (_%E123704123713%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx123514%_
                                _%hd123673%_)))
                            (_%E123694123797%_
                             (lambda ()
                               (if (gx#stx-pair? _%e123677123709%_)
                                   (let ((_%e123705123717%_
                                          (gx#syntax-e _%e123677123709%_)))
                                     (let ((_%hd123706123720%_
                                            (##car _%e123705123717%_))
                                           (_%tl123707123722%_
                                            (##cdr _%e123705123717%_)))
                                       (if (eq? (gx#stx-e _%hd123706123720%_)
                                                'import:)
                                           (let ((_%in123725%_
                                                  _%tl123707123722%_))
                                             (if (gx#stx-list? _%in123725%_)
                                                 (let _%lp123727%_ ((_%in-rest123729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in123725%_)
                            (_%r123730%_ _%r123676%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e123731123738%_
                                                           _%in-rest123729%_)
                                                          (_%E123733123742%_
                                                           (lambda ()
                                                             (_%K123674%_
                                                              _%rest123675%_
                                                              _%r123730%_)))
                                                          (_%E123732123793%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e123731123738%_)
                         (let ((_%e123734123746%_
                                (gx#syntax-e _%e123731123738%_)))
                           (let ((_%hd123735123749%_ (##car _%e123734123746%_))
                                 (_%tl123736123751%_
                                  (##cdr _%e123734123746%_)))
                             (let* ((_%hd123754%_ _%hd123735123749%_)
                                    (_%in-rest123756%_ _%tl123736123751%_)
                                    (_%src123791%_
                                     (if (gx#core-bound-module? _%hd123754%_)
                                         (gx#syntax-local-e__0 _%hd123754%_)
                                         (if (gx#core-library-module-path?
                                              _%hd123754%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd123754%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd123754%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd123754%_))
                                                 (if (gx#stx-string?
                                                      _%hd123754%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd123754%_
                                                       (gx#stx-source
                                                        _%stx123514%_)))
                                                     (let* ((_%e123762123769%_
                                                             _%hd123754%_)
                                                            (_%E123764123773%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx123514%_
                                                                _%hd123754%_)))
                                                            (_%E123763123787%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e123762123769%_)
                           (let ((_%e123765123777%_
                                  (gx#syntax-e _%e123762123769%_)))
                             (let ((_%hd123766123780%_
                                    (##car _%e123765123777%_))
                                   (_%tl123767123782%_
                                    (##cdr _%e123765123777%_)))
                               (if (eq? (gx#stx-e _%hd123766123780%_) 'in:)
                                   (let ((_%spath123785%_ _%tl123767123782%_))
                                     (gx#core-import-nested-module
                                      _%spath123785%_
                                      _%stx123514%_))
                                   (_%E123764123773%_))))
                           (_%E123764123773%_)))))
               (_%E123763123787%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp123727%_
                                _%in-rest123756%_
                                (_%export-imports123519%_
                                 _%src123791%_
                                 _%r123730%_)))))
                         (_%E123733123742%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E123732123793%_)))
                                                 (_%E123704123713%_)))
                                           (_%E123704123713%_))))
                                   (_%E123704123713%_))))
                            (_%E123681123837%_
                             (lambda ()
                               (if (gx#stx-pair? _%e123677123709%_)
                                   (let ((_%e123695123801%_
                                          (gx#syntax-e _%e123677123709%_)))
                                     (let ((_%hd123696123804%_
                                            (##car _%e123695123801%_))
                                           (_%tl123697123806%_
                                            (##cdr _%e123695123801%_)))
                                       (if (eq? (gx#stx-e _%hd123696123804%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl123697123806%_)
                                               (let ((_%e123698123809%_
                                                      (gx#syntax-e
                                                       _%tl123697123806%_)))
                                                 (let ((_%hd123699123812%_
                                                        (##car _%e123698123809%_))
                                                       (_%tl123700123814%_
                                                        (##cdr _%e123698123809%_)))
                                                   (let ((_%id123817%_
                                                          _%hd123699123812%_))
                                                     (if (gx#stx-pair?
                                                          _%tl123700123814%_)
                                                         (let ((_%e123701123819%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl123700123814%_)))
                   (let ((_%hd123702123822%_ (##car _%e123701123819%_))
                         (_%tl123703123824%_ (##cdr _%e123701123819%_)))
                     (let ((_%name123827%_ _%hd123702123822%_))
                       (if (gx#stx-null? _%tl123703123824%_)
                           (let* ((_%phi123829%_
                                   (gx#current-export-expander-phi))
                                  (_%$e123831%_
                                   (gx#core-resolve-identifier__1
                                    _%id123817%_
                                    _%phi123829%_)))
                             (if _%$e123831%_
                                 ((lambda (_%bind123834%_)
                                    (_%K123674%_
                                     _%rest123675%_
                                     (cons (_%make-export__127015127016%_
                                            _%bind123834%_
                                            _%phi123829%_
                                            (gx#current-expander-context)
                                            _%name123827%_)
                                           _%r123676%_)))
                                  _%$e123831%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx123514%_
                                  _%hd123673%_
                                  _%id123817%_)))
                           (_%E123694123797%_)))))
                 (_%E123694123797%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123694123797%_))
                                           (_%E123694123797%_))))
                                   (_%E123694123797%_))))
                            (_%E123680123887%_
                             (lambda ()
                               (if (gx#stx-pair? _%e123677123709%_)
                                   (let ((_%e123682123841%_
                                          (gx#syntax-e _%e123677123709%_)))
                                     (let ((_%hd123683123844%_
                                            (##car _%e123682123841%_))
                                           (_%tl123684123846%_
                                            (##cdr _%e123682123841%_)))
                                       (if (eq? (gx#stx-e _%hd123683123844%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl123684123846%_)
                                               (let ((_%e123685123849%_
                                                      (gx#syntax-e
                                                       _%tl123684123846%_)))
                                                 (let ((_%hd123686123852%_
                                                        (##car _%e123685123849%_))
                                                       (_%tl123687123854%_
                                                        (##cdr _%e123685123849%_)))
                                                   (let ((_%phi123857%_
                                                          _%hd123686123852%_))
                                                     (if (gx#stx-pair?
                                                          _%tl123687123854%_)
                                                         (let ((_%e123688123859%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl123687123854%_)))
                   (let ((_%hd123689123862%_ (##car _%e123688123859%_))
                         (_%tl123690123864%_ (##cdr _%e123688123859%_)))
                     (let ((_%id123867%_ _%hd123689123862%_))
                       (if (gx#stx-pair? _%tl123690123864%_)
                           (let ((_%e123691123869%_
                                  (gx#syntax-e _%tl123690123864%_)))
                             (let ((_%hd123692123872%_
                                    (##car _%e123691123869%_))
                                   (_%tl123693123874%_
                                    (##cdr _%e123691123869%_)))
                               (let ((_%name123877%_ _%hd123692123872%_))
                                 (if (gx#stx-null? _%tl123693123874%_)
                                     (if (and (gx#stx-fixnum? _%phi123857%_)
                                              (gx#identifier? _%id123867%_)
                                              (gx#identifier? _%name123877%_))
                                         (let* ((_%phi123879%_
                                                 (gx#stx-e _%phi123857%_))
                                                (_%$e123881%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id123867%_
                                                  _%phi123879%_)))
                                           (if _%$e123881%_
                                               ((lambda (_%bind123884%_)
                                                  (_%K123674%_
                                                   _%rest123675%_
                                                   (cons (_%make-export__127015127016%_
                                                          _%bind123884%_
                                                          _%phi123879%_
                                                          (gx#current-expander-context)
                                                          _%name123877%_)
                                                         _%r123676%_)))
                                                _%$e123881%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx123514%_
                                                _%hd123673%_
                                                _%id123867%_)))
                                         (_%E123681123837%_))
                                     (_%E123681123837%_)))))
                           (_%E123681123837%_)))))
                 (_%E123681123837%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123681123837%_))
                                           (_%E123681123837%_))))
                                   (_%E123681123837%_))))
                            (_%E123679123899%_
                             (lambda ()
                               (let ((_%id123891%_ _%e123677123709%_))
                                 (if (gx#identifier? _%id123891%_)
                                     (let ((_%$e123893%_
                                            (gx#core-resolve-identifier__1
                                             _%id123891%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e123893%_
                                           ((lambda (_%bind123896%_)
                                              (_%K123674%_
                                               _%rest123675%_
                                               (cons (_%make-export__0__127017127020%_
                                                      _%bind123896%_)
                                                     _%r123676%_)))
                                            _%$e123893%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx123514%_
                                            _%hd123673%_)))
                                     (_%E123680123887%_)))))
                            (_%E123678123963%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e123677123709%_) '#t)
                                   (let* ((_%current-ctx123903%_
                                           (gx#current-expander-context))
                                          (_%current-phi123905%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx123907%_
                                           (gx#core-context-shift
                                            _%current-ctx123903%_
                                            _%current-phi123905%_))
                                          (_%phi-bind123909%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx123907%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp123912%_ ((_%bind-rest123914%_
                                                         _%phi-bind123909%_)
                                                        (_%set123915%_ '()))
                                       (let* ((_%bind-rest123916123926%_
                                               _%bind-rest123914%_)
                                              (_%else123918123934%_
                                               (lambda ()
                                                 (_%K123674%_
                                                  _%rest123675%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi123905%_
                                                         _%set123915%_)
                                                        _%r123676%_))))
                                              (_%K123920123944%_
                                               (lambda (_%bind-rest123937%_
                                                        _%bind123938%_
                                                        _%key123939%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind123938%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind123938%_))
                                                     (_%lp123912%_
                                                      _%bind-rest123937%_
                                                      _%set123915%_)
                                                     (_%lp123912%_
                                                      _%bind-rest123937%_
                                                      (cons (_%make-export__2__127019127022%_
                                                             _%bind123938%_
                                                             _%current-phi123905%_
                                                             _%current-ctx123903%_)
                                                            _%set123915%_))))))
                                         (if (##pair? _%bind-rest123916123926%_)
                                             (let ((_%hd123921123947%_
                                                    (##car _%bind-rest123916123926%_))
                                                   (_%tl123922123949%_
                                                    (##cdr _%bind-rest123916123926%_)))
                                               (if (##pair? _%hd123921123947%_)
                                                   (let ((_%hd123923123952%_
                                                          (##car _%hd123921123947%_))
                                                         (_%tl123924123954%_
                                                          (##cdr _%hd123921123947%_)))
                                                     (let* ((_%key123957%_
                                                             _%hd123923123952%_)
                                                            (_%bind123959%_
                                                             _%tl123924123954%_)
                                                            (_%bind-rest123961%_
                                                             _%tl123922123949%_))
                                                       (_%K123920123944%_
                                                        _%bind-rest123961%_
                                                        _%bind123959%_
                                                        _%key123957%_)))
                                                   (_%else123918123934%_)))
                                             (_%else123918123934%_)))))
                                   (_%E123679123899%_)))))
                       (_%E123678123963%_))))
                  (_%export-imports123519%_
                   (lambda (_%src123549%_ _%r123550%_)
                     (letrec* ((_%current-ctx123552%_
                                (gx#current-expander-context))
                               (_%current-phi123553%_
                                (gx#current-export-expander-phi))
                               (_%import->export123554%_
                                (lambda (_%in123635%_)
                                  (let* ((_%in123636123644%_ _%in123635%_)
                                         (_%E123638123648%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in123636123644%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K123639123655%_
                                          (lambda (_%phi123651%_
                                                   _%key123652%_
                                                   _%out123653%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx123552%_
                                             _%key123652%_
                                             _%phi123651%_
                                             _%key123652%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in123636123644%_
                                         'gx#module-import::t)
                                        (let* ((_%e123640123658%_
                                                (##unchecked-structure-ref
                                                 _%in123636123644%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out123661%_
                                                _%e123640123658%_)
                                               (_%e123641123663%_
                                                (##unchecked-structure-ref
                                                 _%in123636123644%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key123666%_
                                                _%e123641123663%_)
                                               (_%e123642123668%_
                                                (##unchecked-structure-ref
                                                 _%in123636123644%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi123671%_
                                                _%e123642123668%_))
                                          (_%K123639123655%_
                                           _%phi123671%_
                                           _%key123666%_
                                           _%out123661%_))
                                        (_%E123638123648%_)))))
                               (_%fold-e123555%_
                                (lambda (_%in123557%_ _%r123558%_)
                                  (let* ((_%in123559123573%_ _%in123557%_)
                                         (_%else123562123581%_
                                          (lambda () _%r123558%_)))
                                    (let ((_%K123568123617%_
                                           (lambda (_%phi123613%_
                                                    _%key123614%_
                                                    _%out123615%_)
                                             (if (and (fx= _%phi123613%_
                                                           _%current-phi123553%_)
                                                      (eq? _%src123549%_
                                                           (##unchecked-structure-ref
                                                            _%out123615%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export123554%_
                                                        _%in123557%_)
                                                       _%r123558%_)
                                                 _%r123558%_)))
                                          (_%K123564123592%_
                                           (lambda (_%imports123585%_
                                                    _%phi123586%_
                                                    _%ctx123587%_)
                                             (if (and (fx= _%phi123586%_
                                                           _%current-phi123553%_)
                                                      (eq? _%src123549%_
                                                           _%ctx123587%_))
                                                 (__foldl1
                                                  (lambda (_%in123589%_
                                                           _%r123590%_)
                                                    (cons (_%import->export123554%_
                                                           _%in123589%_)
                                                          _%r123590%_))
                                                  _%r123558%_
                                                  _%imports123585%_)
                                                 _%r123558%_))))
                                      (let ((_%try-match123561123610%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in123559123573%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e123565123595%_
                                                           (##unchecked-structure-ref
                                                            _%in123559123573%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e123566123600%_
                                                           (##unchecked-structure-ref
                                                            _%in123559123573%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e123567123605%_
                                                           (##unchecked-structure-ref
                                                            _%in123559123573%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx123598%_
                                                            _%e123565123595%_)
                                                           (_%phi123603%_
                                                            _%e123566123600%_)
                                                           (_%imports123608%_
                                                            _%e123567123605%_))
                                                       (_%K123564123592%_
                                                        _%imports123608%_
                                                        _%phi123603%_
                                                        _%ctx123598%_)))
                                                   (_%else123562123581%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in123559123573%_
                                             'gx#module-import::t)
                                            (let* ((_%e123569123620%_
                                                    (##unchecked-structure-ref
                                                     _%in123559123573%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e123570123625%_
                                                    (##unchecked-structure-ref
                                                     _%in123559123573%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e123571123630%_
                                                    (##unchecked-structure-ref
                                                     _%in123559123573%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out123623%_
                                                     _%e123569123620%_)
                                                    (_%key123628%_
                                                     _%e123570123625%_)
                                                    (_%phi123633%_
                                                     _%e123571123630%_))
                                                (_%K123568123617%_
                                                 _%phi123633%_
                                                 _%key123628%_
                                                 _%out123623%_)))
                                            (_%try-match123561123610%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src123549%_
                              _%current-phi123553%_
                              (__foldl1
                               _%fold-e123555%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx123552%_
                                '8
                                '#f
                                '#f)))
                             _%r123550%_))))
                  (_%export!123520%_
                   (lambda (_%rbody123536%_)
                     (letrec* ((_%current-ctx123538%_
                                (gx#current-expander-context))
                               (_%fold-e123539%_
                                (lambda (_%out123543%_ _%r123544%_)
                                  (if (##structure-direct-instance-of?
                                       _%out123543%_
                                       'gx#module-export::t)
                                      (cons _%out123543%_ _%r123544%_)
                                      (if (##structure-direct-instance-of?
                                           _%out123543%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r123544%_
                                           (##unchecked-structure-ref
                                            _%out123543%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r123544%_)))))
                       (let ((_%body123541%_ (reverse _%rbody123536%_)))
                         (##unchecked-structure-set!
                          _%current-ctx123538%_
                          (__foldl1
                           _%fold-e123539%_
                           (##unchecked-structure-ref
                            _%current-ctx123538%_
                            '9
                            '#f
                            '#f)
                           _%body123541%_)
                          '9
                          '#f
                          '#f)
                         _%body123541%_))))
                  (_%expanded-export?123521%_
                   (lambda (_%e123531%_)
                     (let ((_%$e123533%_
                            (##structure-direct-instance-of?
                             _%e123531%_
                             'gx#module-export::t)))
                       (if _%$e123533%_
                           _%$e123533%_
                           (##structure-direct-instance-of?
                            _%e123531%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?123515%_)
              (let ((_%rbody123527%_
                     (gx#core-expand-import/export
                      _%stx123514%_
                      _%expanded-export?123521%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1123518%_)))
                (if _%internal-expand?123515%_
                    (reverse _%rbody123527%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!123520%_ _%rbody123527%_))
                     (gx#stx-source _%stx123514%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx123514%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx123514%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx124013%_)
        (let ((_%internal-expand?124015%_ '#f))
          (gx#core-expand-export%__%
           _%stx124013%_
           _%internal-expand?124015%_))))
    (define gx#core-expand-export%
      (lambda _g127091_
        (let ((_g127090_ (##length _g127091_)))
          (cond ((##fx= _g127090_ 1)
                 (apply gx#core-expand-export%__0 _g127091_))
                ((##fx= _g127090_ 2)
                 (apply gx#core-expand-export%__% _g127091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g127091_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd123511%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd123511%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx123481%_)
        (let* ((_%e123482123489%_ _%stx123481%_)
               (_%E123484123493%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123482123489%_)))
               (_%E123483123507%_
                (lambda ()
                  (if (gx#stx-pair? _%e123482123489%_)
                      (let ((_%e123485123497%_
                             (gx#syntax-e _%e123482123489%_)))
                        (let ((_%hd123486123500%_ (##car _%e123485123497%_))
                              (_%tl123487123502%_ (##cdr _%e123485123497%_)))
                          (let ((_%body123505%_ _%tl123487123502%_))
                            (if (gx#identifier-list? _%body123505%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body123505%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body123505%_))
                                   (gx#stx-source _%stx123481%_)))
                                (_%E123484123493%_)))))
                      (_%E123484123493%_)))))
          (_%E123483123507%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id123447%_ _%private?123448%_ _%phi123449%_ _%ctx123450%_)
        (gx#core-bind-syntax!__%
         _%id123447%_
         ((if _%private?123448%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id123447%_))
         _%private?123448%_
         _%phi123449%_
         _%ctx123450%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id123455%_)
        (let* ((_%private?123457%_ '#f)
               (_%phi123459%_ (gx#current-expander-phi))
               (_%ctx123461%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123455%_
           _%private?123457%_
           _%phi123459%_
           _%ctx123461%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id123463%_ _%private?123464%_)
        (let* ((_%phi123466%_ (gx#current-expander-phi))
               (_%ctx123468%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123463%_
           _%private?123464%_
           _%phi123466%_
           _%ctx123468%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id123470%_ _%private?123471%_ _%phi123472%_)
        (let ((_%ctx123474%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123470%_
           _%private?123471%_
           _%phi123472%_
           _%ctx123474%_))))
    (define gx#core-bind-feature!
      (lambda _g127093_
        (let ((_g127092_ (##length _g127093_)))
          (cond ((##fx= _g127092_ 1)
                 (apply gx#core-bind-feature!__0 _g127093_))
                ((##fx= _g127092_ 2)
                 (apply gx#core-bind-feature!__1 _g127093_))
                ((##fx= _g127092_ 3)
                 (apply gx#core-bind-feature!__2 _g127093_))
                ((##fx= _g127092_ 4)
                 (apply gx#core-bind-feature!__% _g127093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g127093_))))))))
