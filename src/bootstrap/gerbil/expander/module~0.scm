(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1713044316)
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
      (lambda _%$args127358%_
        (apply make-instance gx#module-import::t _%$args127358%_)))
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
      (lambda _%$args127355%_
        (apply make-instance gx#module-export::t _%$args127355%_)))
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
      (lambda _%$args127352%_
        (apply make-instance gx#import-set::t _%$args127352%_)))
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
      (lambda _%$args127349%_
        (apply make-instance gx#export-set::t _%$args127349%_)))
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
      (lambda _%$args127346%_
        (apply make-instance gx#import-expander::t _%$args127346%_)))
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
      (lambda _%$args127343%_
        (apply make-instance gx#export-expander::t _%$args127343%_)))
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
      (lambda _%$args127340%_
        (apply make-instance gx#import-export-expander::t _%$args127340%_)))
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
      (lambda (_%path127337%_ _%fun127338%_)
        (call-with-input-file
         (cons 'path: (cons _%path127337%_ gx#source-file-settings))
         _%fun127338%_)))
    (define gx#module-context:::init!
      (lambda (_%self123789127318%_
               _%id127320%_
               _%super127321%_
               _%ns127322%_
               _%path127323%_)
        (let* ((_%self127325%_ _%self123789127318%_)
               (_%self127327%_ _%self127325%_))
          (if (##fx< '11 (##structure-length _%self127327%_))
              (begin
                (##unchecked-structure-set!
                 _%self127327%_
                 _%id127320%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127327%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127327%_
                 _%super127321%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self127327%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self127327%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self127327%_
                 _%ns127322%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127327%_
                 _%path127323%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self127327%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self127327%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self127327%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self127327%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self127327%_
                     '11
                     (##vector-length _%self127327%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self123790127149%_ _%ctx127151%_ _%root127152%_)
        (let* ((_%self127154%_ _%self123790127149%_)
               (_%self127156%_ _%self127154%_)
               (_%super127172%_
                (let ((_%$e127166%_ _%root127152%_))
                  (if _%$e127166%_
                      _%$e127166%_
                      (let ((_%$e127169%_ (gx#core-context-root__0)))
                        (if _%$e127169%_
                            _%$e127169%_
                            (let ((__obj127402
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor127403
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj127402
                                      ':init!)))
                                (if __constructor127403
                                    (__constructor127403 __obj127402)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj127402)))))))
          (if _%ctx127151%_
              (let ((_%id127175%_
                     (##structure-ref
                      _%ctx127151%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path127176%_
                     (##structure-ref
                      _%ctx127151%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in127177%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx127151%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e127178%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx127151%_)))))
                (if (##fx< '8 (##structure-length _%self127156%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self127156%_
                       _%id127175%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127156%_
                       (make-hash-table-eq 'size: (##length _%in127177%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127156%_
                       _%super127172%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127156%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127156%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127156%_
                       _%path127176%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127156%_
                       _%in127177%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127156%_
                       _%e127178%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self127156%_
                           '8
                           (##vector-length _%self127156%_)))
                (##for-each
                 (lambda (_%g127179127181%_)
                   (gx#core-bind-weak-import!__%
                    _%g127179127181%_
                    _%self127156%_))
                 _%in127177%_))
              (if (##fx< '8 (##structure-length _%self127156%_))
                  (begin
                    (##unchecked-structure-set! _%self127156%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self127156%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self127156%_
                     _%super127172%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self127156%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self127156%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self127156%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self127156%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self127156%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self127156%_
                         '8
                         (##vector-length _%self127156%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self123790127187%_ _%ctx127188%_)
        (let ((_%root127190%_ '#f))
          (gx#prelude-context:::init!__%
           _%self123790127187%_
           _%ctx127188%_
           _%root127190%_))))
    (define gx#prelude-context:::init!
      (lambda _g127409_
        (let ((_g127408_ (##length _g127409_)))
          (cond ((##fx= _g127408_ 2)
                 (apply gx#prelude-context:::init!__0 _g127409_))
                ((##fx= _g127408_ 3)
                 (apply gx#prelude-context:::init!__% _g127409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g127409_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self127023%_ _%e127024%_)
        (if (##fx< '3 (##structure-length _%self127023%_))
            (begin
              (##unchecked-structure-set!
               _%self127023%_
               _%e127024%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self127023%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self127023%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self127023%_
                   '3
                   (##vector-length _%self127023%_)))))
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
      (lambda (_%g126649126652%_ _%g126650126654%_)
        (gx#core-apply-user-expander__%
         _%g126649126652%_
         _%g126650126654%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g126520126523%_ _%g126521126525%_)
        (gx#core-apply-user-expander__%
         _%g126520126523%_
         _%g126521126525%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx126391%_)
        (let* ((_%path126393%_
                (##structure-ref _%ctx126391%_ '7 gx#module-context::t '#f))
               (_%path126395%_
                (if (pair? _%path126393%_)
                    (##last _%path126393%_)
                    _%path126393%_)))
          (if (string? _%path126395%_) _%path126395%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path126367%_ _%reload?126368%_ _%eval?126369%_)
        (let ((_%ctx126371%_
               ((gx#current-expander-module-import)
                _%path126367%_
                _%reload?126368%_)))
          (if (and _%ctx126371%_ _%eval?126369%_)
              (gx#eval-module _%ctx126371%_)
              '#!void)
          _%ctx126371%_)))
    (define gx#import-module__0
      (lambda (_%path126376%_)
        (let* ((_%reload?126378%_ '#f) (_%eval?126380%_ '#f))
          (gx#import-module__%
           _%path126376%_
           _%reload?126378%_
           _%eval?126380%_))))
    (define gx#import-module__1
      (lambda (_%path126382%_ _%reload?126383%_)
        (let ((_%eval?126385%_ '#f))
          (gx#import-module__%
           _%path126382%_
           _%reload?126383%_
           _%eval?126385%_))))
    (define gx#import-module
      (lambda _g127411_
        (let ((_g127410_ (##length _g127411_)))
          (cond ((##fx= _g127410_ 1) (apply gx#import-module__0 _g127411_))
                ((##fx= _g127410_ 2) (apply gx#import-module__1 _g127411_))
                ((##fx= _g127410_ 3) (apply gx#import-module__% _g127411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g127411_))))))
    (define gx#eval-module
      (lambda (_%mod126364%_)
        ((gx#current-expander-module-eval) _%mod126364%_)))
    (define gx#core-eval-module
      (lambda (_%obj126344%_)
        (letrec ((_%force-e126346%_
                  (lambda (_%getf126360%_ _%e126361%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf126360%_ _%e126361%_)))
                     gx#current-expander-context
                     _%e126361%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur126348%_ ((_%e126350%_ _%obj126344%_))
            (if (##structure-instance-of? _%e126350%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e126353%_
                         (gx#core-context-prelude__% _%e126350%_)))
                    (if _%$e126353%_ (_%recur126348%_ _%$e126353%_) '#!void))
                  (_%force-e126346%_ gx#module-context-e _%e126350%_))
                (if (##structure-instance-of?
                     _%e126350%_
                     'gx#prelude-context::t)
                    (_%force-e126346%_ gx#prelude-context-e _%e126350%_)
                    (if (gx#stx-string? _%e126350%_)
                        (_%recur126348%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e126350%_)))
                        (if (gx#core-library-module-path? _%e126350%_)
                            (_%recur126348%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e126350%_)))
                            (error '"cannot eval module" _%obj126344%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx126324%_)
        (let _%lp126326%_ ((_%e126328%_ _%ctx126324%_))
          (if (or (##structure-instance-of? _%e126328%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e126328%_ 'gx#local-context::t))
              (_%lp126326%_ (##unchecked-structure-ref _%e126328%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e126328%_ 'gx#prelude-context::t)
                  _%e126328%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx126340%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx126340%_))))
    (define gx#core-context-prelude
      (lambda _g127413_
        (let ((_g127412_ (##length _g127413_)))
          (cond ((##fx= _g127412_ 0)
                 (apply gx#core-context-prelude__0 _g127413_))
                ((##fx= _g127412_ 1)
                 (apply gx#core-context-prelude__% _g127413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g127413_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx126315%_)
        (let ((_%$e126317%_ (__hash-get gx#__module-registry _%ctx126315%_)))
          (if _%$e126317%_
              _%$e126317%_
              (let ((_%pre126321%_
                     (let ((__obj127404
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
                        __obj127404
                        _%ctx126315%_)
                       __obj127404)))
                (__hash-put! gx#__module-registry _%ctx126315%_ _%pre126321%_)
                _%pre126321%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath126187%_ _%reload?126188%_)
        (letrec ((_%import-source126190%_
                  (lambda (_%path126279%_)
                    (if (member _%path126279%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path126279%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g127414_ (gx#core-read-module _%path126279%_)))
                         (begin
                           (let ((_g127415_
                                  (if (##values? _g127414_)
                                      (##vector-length _g127414_)
                                      1)))
                             (if (not (##fx= _g127415_ 4))
                                 (error "Context expects 4 values" _g127415_)))
                           (let ((_%pre126282%_ (##vector-ref _g127414_ 0))
                                 (_%id126283%_ (##vector-ref _g127414_ 1))
                                 (_%ns126284%_ (##vector-ref _g127414_ 2))
                                 (_%body126285%_ (##vector-ref _g127414_ 3)))
                             (let* ((_%prelude126295%_
                                     (if (##structure-instance-of?
                                          _%pre126282%_
                                          'gx#prelude-context::t)
                                         _%pre126282%_
                                         (if (##structure-instance-of?
                                              _%pre126282%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre126282%_)
                                             (if (string? _%pre126282%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre126282%_))
                                                 (if (not _%pre126282%_)
                                                     (let ((_%$e126291%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e126291%_
                                                           _%$e126291%_
                                                           (let ((__obj127405
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
                     (gx#prelude-context:::init!__0 __obj127405 '#f)
                     __obj127405)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath126187%_
                                                            _%pre126282%_))))))
                                    (_%ctx126297%_
                                     (let ((__obj127406
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
                                        __obj127406
                                        _%id126283%_
                                        _%prelude126295%_
                                        _%ns126284%_
                                        _%path126279%_)
                                       __obj127406))
                                    (_%body126299%_
                                     (gx#core-expand-module-begin
                                      _%body126285%_
                                      _%ctx126297%_))
                                    (_%body126301%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body126299%_)
                                      _%path126279%_
                                      _%ctx126297%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx126297%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body126301%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx126297%_
                                _%body126301%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path126279%_
                                _%ctx126297%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id126283%_
                                _%ctx126297%_)
                               _%ctx126297%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path126279%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule126191%_
                  (lambda (_%rpath126207%_)
                    (let* ((_%rpath126208126215%_ _%rpath126207%_)
                           (_%E126210126219%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath126208126215%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K126211126267%_
                            (lambda (_%refs126222%_ _%origin126223%_)
                              (let ((_%ctx126225%_
                                     (if _%origin126223%_
                                         (gx#core-import-module__%
                                          _%origin126223%_
                                          _%reload?126188%_)
                                         (gx#current-expander-context))))
                                (let _%lp126227%_ ((_%rest126229%_
                                                    _%refs126222%_)
                                                   (_%ctx126230%_
                                                    _%ctx126225%_))
                                  (let* ((_%rest126231126239%_ _%rest126229%_)
                                         (_%else126233126247%_
                                          (lambda () _%ctx126230%_))
                                         (_%K126235126255%_
                                          (lambda (_%rest126250%_ _%id126251%_)
                                            (let ((_%bind126253%_
                                                   (gx#resolve-identifier__%
                                                    _%id126251%_
                                                    '0
                                                    _%ctx126230%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind126253%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind126253%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp126227%_
                                                   _%rest126250%_
                                                   (##unchecked-structure-ref
                                                    _%bind126253%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath126207%_
                                                         _%id126251%_
                                                         _%bind126253%_))))))
                                    (if (##pair? _%rest126231126239%_)
                                        (let ((_%hd126236126258%_
                                               (##car _%rest126231126239%_))
                                              (_%tl126237126260%_
                                               (##cdr _%rest126231126239%_)))
                                          (let* ((_%id126263%_
                                                  _%hd126236126258%_)
                                                 (_%rest126265%_
                                                  _%tl126237126260%_))
                                            (_%K126235126255%_
                                             _%rest126265%_
                                             _%id126263%_)))
                                        (_%else126233126247%_))))))))
                      (if (##pair? _%rpath126208126215%_)
                          (let ((_%hd126212126270%_
                                 (##car _%rpath126208126215%_))
                                (_%tl126213126272%_
                                 (##cdr _%rpath126208126215%_)))
                            (let* ((_%origin126275%_ _%hd126212126270%_)
                                   (_%refs126277%_ _%tl126213126272%_))
                              (_%K126211126267%_
                               _%refs126277%_
                               _%origin126275%_)))
                          (_%E126210126219%_))))))
          (let ((_%$e126193%_
                 (if (not _%reload?126188%_)
                     (__hash-get gx#__module-registry _%rpath126187%_)
                     '#f)))
            (if _%$e126193%_
                _%$e126193%_
                (if (list? _%rpath126187%_)
                    (_%import-submodule126191%_ _%rpath126187%_)
                    (if (gx#core-library-module-path? _%rpath126187%_)
                        (let ((_%ctx126198%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath126187%_)
                                _%reload?126188%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath126187%_
                           _%ctx126198%_)
                          _%ctx126198%_)
                        (let* ((_%npath126201%_
                                (path-normalize _%rpath126187%_))
                               (_%$e126203%_
                                (if (not _%reload?126188%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath126201%_)
                                    '#f)))
                          (if _%$e126203%_
                              _%$e126203%_
                              (_%import-source126190%_
                               _%npath126201%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath126308%_)
        (let ((_%reload?126310%_ '#f))
          (gx#core-import-module__% _%rpath126308%_ _%reload?126310%_))))
    (define gx#core-import-module
      (lambda _g127417_
        (let ((_g127416_ (##length _g127417_)))
          (cond ((##fx= _g127416_ 1)
                 (apply gx#core-import-module__0 _g127417_))
                ((##fx= _g127416_ 2)
                 (apply gx#core-import-module__% _g127417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g127417_))))))
    (define gx#core-read-module
      (lambda (_%path126176%_)
        (__with-catch
         (lambda (_%exn126178%_)
           (if (and (datum-parsing-exception? _%exn126178%_)
                    (eq? (datum-parsing-exception-filepos _%exn126178%_) '0))
               (gx#core-read-module/lang _%path126176%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path126176%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g126180126182%_)
                      (display-exception__% _%exn126178%_ _%g126180126182%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path126176%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path126028%_)
        (let _%lp126030%_ ((_%body126032%_
                            (read-syntax-from-file _%path126028%_))
                           (_%pre126033%_ '#f)
                           (_%ns126034%_ '#f)
                           (_%pkg126035%_ '#f))
          (let* ((_%e126036126060%_ _%body126032%_)
                 (_%E126052126086%_
                  (lambda ()
                    (let ((_g127418_
                           (if _%pkg126035%_
                               (values _%pre126033%_
                                       _%ns126034%_
                                       _%pkg126035%_)
                               (gx#core-read-module-package
                                _%path126028%_
                                _%pre126033%_
                                _%ns126034%_))))
                      (begin
                        (let ((_g127419_
                               (if (##values? _g127418_)
                                   (##vector-length _g127418_)
                                   1)))
                          (if (not (##fx= _g127419_ 3))
                              (error "Context expects 3 values" _g127419_)))
                        (let ((_%pre126064%_ (##vector-ref _g127418_ 0))
                              (_%ns126065%_ (##vector-ref _g127418_ 1))
                              (_%pkg126066%_ (##vector-ref _g127418_ 2)))
                          (let* ((_%prelude126072%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre126064%_)
                                      (gx#syntax-local-e__0 _%pre126064%_)
                                      (if (gx#core-library-module-path?
                                           _%pre126064%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre126064%_)
                                          (if (gx#stx-string? _%pre126064%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre126064%_
                                               _%path126028%_)
                                              (gx#stx-e _%pre126064%_)))))
                                 (_%path-id126074%_
                                  (gx#core-module-path->namespace
                                   _%path126028%_))
                                 (_%pkg-id126076%_
                                  (if _%pkg126066%_
                                      (##string-append
                                       _%pkg126066%_
                                       '"/"
                                       _%path-id126074%_)
                                      _%path-id126074%_))
                                 (_%module-id126078%_
                                  (##string->symbol _%pkg-id126076%_))
                                 (_%module-ns126083%_
                                  (if (eq? _%ns126065%_ '#!void)
                                      '#f
                                      (let ((_%$e126080%_ _%ns126065%_))
                                        (if _%$e126080%_
                                            _%$e126080%_
                                            _%pkg-id126076%_)))))
                            (values _%prelude126072%_
                                    _%module-id126078%_
                                    _%module-ns126083%_
                                    _%body126032%_)))))))
                 (_%E126045126118%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126036126060%_)
                        (let ((_%e126053126090%_
                               (gx#syntax-e _%e126036126060%_)))
                          (let ((_%hd126054126093%_ (##car _%e126053126090%_))
                                (_%tl126055126095%_ (##cdr _%e126053126090%_)))
                            (if (eq? (gx#stx-e _%hd126054126093%_) 'package:)
                                (if (gx#stx-pair? _%tl126055126095%_)
                                    (let ((_%e126056126098%_
                                           (gx#syntax-e _%tl126055126095%_)))
                                      (let ((_%hd126057126101%_
                                             (##car _%e126056126098%_))
                                            (_%tl126058126103%_
                                             (##cdr _%e126056126098%_)))
                                        (let* ((_%pkg126106%_
                                                _%hd126057126101%_)
                                               (_%rest126108%_
                                                _%tl126058126103%_)
                                               (_%pkg126116%_
                                                (if (gx#identifier?
                                                     _%pkg126106%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg126106%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg126106%_)
                                                            (gx#stx-false?
                                                             _%pkg126106%_))
                                                        (gx#stx-e
                                                         _%pkg126106%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg126106%_)))))
                                          (_%lp126030%_
                                           _%rest126108%_
                                           _%pre126033%_
                                           _%ns126034%_
                                           _%pkg126116%_))))
                                    (_%E126052126086%_))
                                (_%E126052126086%_))))
                        (_%E126052126086%_))))
                 (_%E126038126148%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126036126060%_)
                        (let ((_%e126046126122%_
                               (gx#syntax-e _%e126036126060%_)))
                          (let ((_%hd126047126125%_ (##car _%e126046126122%_))
                                (_%tl126048126127%_ (##cdr _%e126046126122%_)))
                            (if (eq? (gx#stx-e _%hd126047126125%_) 'namespace:)
                                (if (gx#stx-pair? _%tl126048126127%_)
                                    (let ((_%e126049126130%_
                                           (gx#syntax-e _%tl126048126127%_)))
                                      (let ((_%hd126050126133%_
                                             (##car _%e126049126130%_))
                                            (_%tl126051126135%_
                                             (##cdr _%e126049126130%_)))
                                        (let* ((_%ns126138%_
                                                _%hd126050126133%_)
                                               (_%rest126140%_
                                                _%tl126051126135%_)
                                               (_%ns126146%_
                                                (if (gx#identifier?
                                                     _%ns126138%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns126138%_))
                                                    (if (gx#stx-string?
                                                         _%ns126138%_)
                                                        (gx#stx-e _%ns126138%_)
                                                        (if (gx#stx-false?
                                                             _%ns126138%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns126138%_))))))
                                          (_%lp126030%_
                                           _%rest126140%_
                                           _%pre126033%_
                                           _%ns126146%_
                                           _%pkg126035%_))))
                                    (_%E126045126118%_))
                                (_%E126045126118%_))))
                        (_%E126045126118%_))))
                 (_%E126037126172%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126036126060%_)
                        (let ((_%e126039126152%_
                               (gx#syntax-e _%e126036126060%_)))
                          (let ((_%hd126040126155%_ (##car _%e126039126152%_))
                                (_%tl126041126157%_ (##cdr _%e126039126152%_)))
                            (if (eq? (gx#stx-e _%hd126040126155%_) 'prelude:)
                                (if (gx#stx-pair? _%tl126041126157%_)
                                    (let ((_%e126042126160%_
                                           (gx#syntax-e _%tl126041126157%_)))
                                      (let ((_%hd126043126163%_
                                             (##car _%e126042126160%_))
                                            (_%tl126044126165%_
                                             (##cdr _%e126042126160%_)))
                                        (let* ((_%prelude126168%_
                                                _%hd126043126163%_)
                                               (_%rest126170%_
                                                _%tl126044126165%_))
                                          (_%lp126030%_
                                           _%rest126170%_
                                           _%prelude126168%_
                                           _%ns126034%_
                                           _%pkg126035%_))))
                                    (_%E126038126148%_))
                                (_%E126038126148%_))))
                        (_%E126038126148%_)))))
            (_%E126037126172%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path125850%_)
        (letrec ((_%default-read-module-body125852%_
                  (lambda (_%inp126020%_)
                    (let _%lp126022%_ ((_%body126024%_ '()))
                      (let ((_%next126026%_ (read-syntax__% _%inp126020%_)))
                        (if (eof-object? _%next126026%_)
                            (reverse _%body126024%_)
                            (_%lp126022%_
                             (cons _%next126026%_ _%body126024%_)))))))
                 (_%read-body125853%_
                  (lambda (_%inp125938%_
                           _%pre125939%_
                           _%ns125940%_
                           _%pkg125941%_
                           _%args125942%_)
                    (let ((_g127420_
                           (if _%pkg125941%_
                               (values _%pre125939%_
                                       _%ns125940%_
                                       _%pkg125941%_)
                               (gx#core-read-module-package
                                _%path125850%_
                                _%pre125939%_
                                _%ns125940%_))))
                      (begin
                        (let ((_g127421_
                               (if (##values? _g127420_)
                                   (##vector-length _g127420_)
                                   1)))
                          (if (not (##fx= _g127421_ 3))
                              (error "Context expects 3 values" _g127421_)))
                        (let ((_%pre125944%_ (##vector-ref _g127420_ 0))
                              (_%ns125945%_ (##vector-ref _g127420_ 1))
                              (_%pkg125946%_ (##vector-ref _g127420_ 2)))
                          (let* ((_%prelude125948%_
                                  (gx#import-module__0 _%pre125944%_))
                                 (_%read-module-body126003%_
                                  (let ((_%$e125994%_
                                         (__find (lambda (_%e125949125951%_)
                                                   (let* ((_%g125953125963%_
                                                           _%e125949125951%_)
                                                          (_%else125955125971%_
                                                           (lambda () '#f))
                                                          (_%K125957125975%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g125953125963%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e125958125978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g125953125963%_
                          '1
                          '#f
                          '#f))
                        (_%e125959125981%_
                         (##unchecked-structure-ref
                          _%g125953125963%_
                          '2
                          '#f
                          '#f))
                        (_%e125960125984%_
                         (##unchecked-structure-ref
                          _%g125953125963%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e125960125984%_ '1)
                       (let ((_%e125961125987%_
                              (##unchecked-structure-ref
                               _%g125953125963%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g125989125991%_)
                                (eq? _%g125989125991%_ 'read-module-body))
                              _%e125961125987%_)
                             (_%K125957125975%_)
                             (_%else125955125971%_)))
                       (_%else125955125971%_)))
                 (_%else125955125971%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude125948%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e125994%_
                                        ((lambda (_%xport125997%_)
                                           (let ((_%proc126000%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport125997%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc126000%_)
                                                 _%proc126000%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path125850%_
                                                  _%pre125944%_
                                                  _%proc126000%_))))
                                         _%$e125994%_)
                                        _%default-read-module-body125852%_)))
                                 (_%path-id126005%_
                                  (gx#core-module-path->namespace
                                   _%path125850%_))
                                 (_%pkg-id126007%_
                                  (if _%pkg125946%_
                                      (##string-append
                                       _%pkg125946%_
                                       '"/"
                                       _%path-id126005%_)
                                      _%path-id126005%_))
                                 (_%module-id126009%_
                                  (##string->symbol _%pkg-id126007%_))
                                 (_%module-ns126014%_
                                  (let ((_%$e126011%_ _%ns125945%_))
                                    (if _%$e126011%_
                                        _%$e126011%_
                                        _%pkg-id126007%_)))
                                 (_%body126017%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body126003%_
                                      _%inp125938%_))
                                   gx#current-module-reader-path
                                   _%path125850%_
                                   gx#current-module-reader-args
                                   _%args125942%_)))
                            (values _%prelude125948%_
                                    _%module-id126009%_
                                    _%module-ns126014%_
                                    _%body126017%_)))))))
                 (_%string-e125854%_
                  (lambda (_%obj125932%_ _%what125933%_)
                    (if (string? _%obj125932%_)
                        _%obj125932%_
                        (if (symbol? _%obj125932%_)
                            (##symbol->string _%obj125932%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what125933%_)
                             _%path125850%_
                             _%obj125932%_)))))
                 (_%read-lang-args125855%_
                  (lambda (_%inp125887%_ _%args125888%_)
                    (let* ((_%args125889125897%_ _%args125888%_)
                           (_%else125891125905%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path125850%_)))
                           (_%K125893125920%_
                            (lambda (_%args125908%_ _%prelude125909%_)
                              (let* ((_%pkg125911%_
                                      (pgetq__0 'package: _%args125908%_))
                                     (_%pkg125913%_
                                      (if _%pkg125911%_
                                          (_%string-e125854%_
                                           _%pkg125911%_
                                           '"package")
                                          '#f))
                                     (_%ns125915%_
                                      (pgetq__0 'namespace: _%args125908%_))
                                     (_%ns125917%_
                                      (if _%ns125915%_
                                          (_%string-e125854%_
                                           _%ns125915%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body125853%_
                                 _%inp125887%_
                                 _%prelude125909%_
                                 _%ns125917%_
                                 _%pkg125913%_
                                 _%args125908%_)))))
                      (if (##pair? _%args125889125897%_)
                          (let ((_%hd125894125923%_
                                 (##car _%args125889125897%_))
                                (_%tl125895125925%_
                                 (##cdr _%args125889125897%_)))
                            (let* ((_%prelude125928%_ _%hd125894125923%_)
                                   (_%args125930%_ _%tl125895125925%_))
                              (_%K125893125920%_
                               _%args125930%_
                               _%prelude125928%_)))
                          (_%else125891125905%_)))))
                 (_%read-lang125856%_
                  (lambda (_%inp125861%_)
                    (let* ((_%head125863%_ (read-line _%inp125861%_))
                           (_%$e125865%_
                            (string-index__0 _%head125863%_ '#\space)))
                      (if _%$e125865%_
                          ((lambda (_%ix125868%_)
                             (let ((_%lang125870%_
                                    (substring
                                     _%head125863%_
                                     '0
                                     _%ix125868%_)))
                               (if (equal? _%lang125870%_ '"#lang")
                                   (let* ((_%rest125872%_
                                           (substring
                                            _%head125863%_
                                            (##fx+ _%ix125868%_ '1)
                                            (string-length _%head125863%_)))
                                          (_%args125883%_
                                           (__with-catch
                                            (lambda (_%g125873125875%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path125850%_
                                               _%g125873125875%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest125872%_
                                               (lambda (_%g125878125880%_)
                                                 (read-all
                                                  _%g125878125880%_
                                                  read)))))))
                                     (_%read-lang-args125855%_
                                      _%inp125861%_
                                      _%args125883%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path125850%_))))
                           _%$e125865%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path125850%_)))))
                 (_%read-e125857%_
                  (lambda (_%inp125859%_)
                    (if (eq? (peek-char _%inp125859%_) '#\#)
                        (_%read-lang125856%_ _%inp125859%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path125850%_)))))
          (gx#call-with-input-source-file _%path125850%_ _%read-e125857%_))))
    (define gx#core-read-module-package
      (lambda (_%path125798%_ _%pre125799%_ _%ns125800%_)
        (letrec ((_%string-e125802%_
                  (lambda (_%e125845%_)
                    (if (symbol? _%e125845%_)
                        (##symbol->string _%e125845%_)
                        (if (string? _%e125845%_)
                            _%e125845%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e125845%_))))))
          (let _%lp125804%_ ((_%dir125806%_ (path-directory _%path125798%_))
                             (_%pkg-path125807%_ '()))
            (let ((_%gerbil.pkg125809%_
                   (path-expand '"gerbil.pkg" _%dir125806%_)))
              (if (##file-exists? _%gerbil.pkg125809%_)
                  (let ((_%plist125811%_
                         (gx#core-library-package-plist__% _%dir125806%_ '#t)))
                    (if (null? _%plist125811%_)
                        (let ((_%pkg125814%_
                               (if (null? _%pkg-path125807%_)
                                   '#f
                                   (string-join _%pkg-path125807%_ '"/"))))
                          (values _%pre125799%_ _%ns125800%_ _%pkg125814%_))
                        (if (list? _%plist125811%_)
                            (let* ((_%root125817%_
                                    (pgetq__0 'package: _%plist125811%_))
                                   (_%pkg125821%_
                                    (let ((_%pkg-path125819%_
                                           (if _%root125817%_
                                               (cons (_%string-e125802%_
                                                      _%root125817%_)
                                                     _%pkg-path125807%_)
                                               _%pkg-path125807%_)))
                                      (if (null? _%pkg-path125819%_)
                                          '#f
                                          (string-join
                                           _%pkg-path125819%_
                                           '"/"))))
                                   (_%ns125828%_
                                    (let ((_%ns125826%_
                                           (let ((_%$e125823%_ _%ns125800%_))
                                             (if _%$e125823%_
                                                 _%$e125823%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist125811%_)))))
                                      (if _%ns125826%_
                                          (_%string-e125802%_ _%ns125826%_)
                                          '#f)))
                                   (_%pre125833%_
                                    (let ((_%$e125830%_ _%pre125799%_))
                                      (if _%$e125830%_
                                          _%$e125830%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist125811%_)))))
                              (values _%pre125833%_
                                      _%ns125828%_
                                      _%pkg125821%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist125811%_))))
                  (let ((_%dir*125837%_
                         (path-strip-trailing-directory-separator
                          _%dir125806%_)))
                    (if (or (__string-empty? _%dir*125837%_)
                            (equal? _%dir125806%_ _%dir*125837%_))
                        (values _%pre125799%_ _%ns125800%_ '#f)
                        (let ((_%xpath125842%_
                               (path-strip-directory _%dir*125837%_))
                              (_%xdir125843%_ (path-directory _%dir*125837%_)))
                          (_%lp125804%_
                           _%xdir125843%_
                           (cons _%xpath125842%_ _%pkg-path125807%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path125796%_)
        (path-strip-extension (path-strip-directory _%path125796%_))))
    (define gx#core-module-path->id
      (lambda (_%path125794%_)
        (##string->symbol (gx#core-module-path->namespace _%path125794%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path125773%_ _%rel125774%_)
        (let* ((_%path125776%_ (gx#stx-e _%stx-path125773%_))
               (_%path125778%_
                (if (__string-empty? (path-extension _%path125776%_))
                    (##string-append _%path125776%_ '".ss")
                    _%path125776%_)))
          (gx#core-resolve-path__%
           _%path125778%_
           (let ((_%$e125781%_ (gx#stx-source _%stx-path125773%_)))
             (if _%$e125781%_ _%$e125781%_ _%rel125774%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path125787%_)
        (let ((_%rel125789%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path125787%_ _%rel125789%_))))
    (define gx#core-resolve-module-path
      (lambda _g127423_
        (let ((_g127422_ (##length _g127423_)))
          (cond ((##fx= _g127422_ 1)
                 (apply gx#core-resolve-module-path__0 _g127423_))
                ((##fx= _g127422_ 2)
                 (apply gx#core-resolve-module-path__% _g127423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g127423_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath125658%_)
        (let* ((_%spath125660%_ (symbol->string (gx#stx-e _%libpath125658%_)))
               (_%spath125662%_
                (substring
                 _%spath125660%_
                 '1
                 (##string-length _%spath125660%_)))
               (_%ext125664%_ (path-extension _%spath125662%_))
               (_%ssi125666%_
                (if (__string-empty? _%ext125664%_)
                    (##string-append _%spath125662%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath125662%_)
                     '".ssi")))
               (_%srcs125670%_
                (if (__string-empty? _%ext125664%_)
                    (##map (lambda (_%ext125668%_)
                             (string-append _%spath125662%_ _%ext125668%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath125662%_ '()))))
          (let _%lp125673%_ ((_%rest125675%_ (load-path)))
            (let* ((_%rest125676125685%_ _%rest125675%_)
                   (_%E125679125689%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest125676125685%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K125681125760%_
                     (lambda (_%rest125700%_ _%dir125701%_)
                       (letrec ((_%resolve125703%_
                                 (lambda (_%ssi125716%_ _%srcs125717%_)
                                   (let ((_%compiled-path125719%_
                                          (path-expand
                                           _%ssi125716%_
                                           _%dir125701%_)))
                                     (if (##file-exists?
                                          _%compiled-path125719%_)
                                         (path-normalize
                                          _%compiled-path125719%_)
                                         (let _%lpr125721%_ ((_%rest-src125723%_
                                                              _%srcs125717%_))
                                           (let* ((_%rest-src125724125732%_
                                                   _%rest-src125723%_)
                                                  (_%else125726125740%_
                                                   (lambda ()
                                                     (_%lp125673%_
                                                      _%rest125700%_)))
                                                  (_%K125728125748%_
                                                   (lambda (_%rest-src125743%_
                                                            _%src125744%_)
                                                     (let ((_%src-path125746%_
                                                            (path-expand
                                                             _%src125744%_
                                                             _%dir125701%_)))
                                                       (if (##file-exists?
                                                            _%src-path125746%_)
                                                           (path-normalize
                                                            _%src-path125746%_)
                                                           (_%lpr125721%_
                                                            _%rest-src125743%_))))))
                                             (if (##pair? _%rest-src125724125732%_)
                                                 (let ((_%hd125729125751%_
                                                        (##car _%rest-src125724125732%_))
                                                       (_%tl125730125753%_
                                                        (##cdr _%rest-src125724125732%_)))
                                                   (let* ((_%src125756%_
                                                           _%hd125729125751%_)
                                                          (_%rest-src125758%_
                                                           _%tl125730125753%_))
                                                     (_%K125728125748%_
                                                      _%rest-src125758%_
                                                      _%src125756%_)))
                                                 (_%else125726125740%_)))))))))
                         (let ((_%$e125705%_
                                (gx#core-library-package-path-prefix
                                 _%dir125701%_)))
                           (if _%$e125705%_
                               ((lambda (_%prefix125708%_)
                                  (if (string-prefix?
                                       _%prefix125708%_
                                       _%spath125662%_)
                                      (let ((_%ssi125712%_
                                             (substring
                                              _%ssi125666%_
                                              (string-length _%prefix125708%_)
                                              (##string-length _%ssi125666%_)))
                                            (_%srcs125713%_
                                             (##map (lambda (_%src125710%_)
                                                      (substring
                                                       _%src125710%_
                                                       (string-length
                                                        _%prefix125708%_)
                                                       (string-length
                                                        _%src125710%_)))
                                                    _%srcs125670%_)))
                                        (_%resolve125703%_
                                         _%ssi125712%_
                                         _%srcs125713%_))
                                      (_%lp125673%_ _%rest125700%_)))
                                _%$e125705%_)
                               (_%resolve125703%_
                                _%ssi125666%_
                                _%srcs125670%_))))))
                    (_%K125680125694%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath125658%_))))
                (let ((_%try-match125678125697%_
                       (lambda ()
                         (if (##null? _%rest125676125685%_)
                             (_%K125680125694%_)
                             (_%E125679125689%_)))))
                  (if (##pair? _%rest125676125685%_)
                      (let ((_%tl125683125765%_ (##cdr _%rest125676125685%_))
                            (_%hd125682125763%_ (##car _%rest125676125685%_)))
                        (let ((_%dir125768%_ _%hd125682125763%_)
                              (_%rest125770%_ _%tl125683125765%_))
                          (_%K125681125760%_ _%rest125770%_ _%dir125768%_)))
                      (_%try-match125678125697%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath125626%_)
        (letrec ((_%resolve125628%_
                  (lambda (_%path125649%_ _%base125650%_)
                    (let ((_%$e125652%_
                           (string-rindex__0 _%base125650%_ '#\/)))
                      (if _%$e125652%_
                          ((lambda (_%idx125655%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base125650%_ '0 _%idx125655%_)
                                '"/"
                                _%path125649%_))))
                           _%$e125652%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path125649%_))))))))
          (let ((_%spath125630%_ (symbol->string (gx#stx-e _%modpath125626%_)))
                (_%mod125631%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod125631%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath125626%_))
            (let ((_%mpath125633%_
                   (symbol->string
                    (##structure-ref
                     _%mod125631%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp125635%_ ((_%spath125637%_ _%spath125630%_)
                                 (_%mpath125638%_ _%mpath125633%_))
                (if (string-prefix? '"../" _%spath125637%_)
                    (let ((_%$e125641%_
                           (string-rindex__0 _%mpath125638%_ '#\/)))
                      (if _%$e125641%_
                          ((lambda (_%idx125644%_)
                             (_%lp125635%_
                              (substring
                               _%spath125637%_
                               '3
                               (string-length _%spath125637%_))
                              (substring _%mpath125638%_ '0 _%idx125644%_)))
                           _%$e125641%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath125626%_)))
                    (if (string-prefix? '"./" _%spath125637%_)
                        (_%lp125635%_
                         (substring
                          _%spath125637%_
                          '2
                          (string-length _%spath125637%_))
                         _%mpath125638%_)
                        (_%resolve125628%_
                         _%spath125637%_
                         _%mpath125638%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir125618%_)
        (let ((_%$e125620%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir125618%_))))
          (if _%$e125620%_
              ((lambda (_%pkg125623%_)
                 (##string-append (symbol->string _%pkg125623%_) '"/"))
               _%$e125620%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir125588%_ _%exists?125589%_)
        (let ((_%$e125591%_ (__hash-get gx#__module-pkg-cache _%dir125588%_)))
          (if _%$e125591%_
              _%$e125591%_
              (let* ((_%gerbil.pkg125595%_
                      (path-expand '"gerbil.pkg" _%dir125588%_))
                     (_%plist125605%_
                      (if (or _%exists?125589%_
                              (##file-exists? _%gerbil.pkg125595%_))
                          (let ((_%e125600%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg125595%_
                                  read)))
                            (if (eof-object? _%e125600%_)
                                '()
                                (if (list? _%e125600%_)
                                    _%e125600%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg125595%_
                                     _%e125600%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir125588%_
                 _%plist125605%_)
                _%plist125605%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir125611%_)
        (let ((_%exists?125613%_ '#f))
          (gx#core-library-package-plist__% _%dir125611%_ _%exists?125613%_))))
    (define gx#core-library-package-plist
      (lambda _g127425_
        (let ((_g127424_ (##length _g127425_)))
          (cond ((##fx= _g127424_ 1)
                 (apply gx#core-library-package-plist__0 _g127425_))
                ((##fx= _g127424_ 2)
                 (apply gx#core-library-package-plist__% _g127425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g127425_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx125585%_)
        (gx#core-special-module-path? _%stx125585%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx125583%_)
        (gx#core-special-module-path? _%stx125583%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx125578%_ _%char125579%_)
        (if (gx#identifier? _%stx125578%_)
            (if (interned-symbol? (gx#stx-e _%stx125578%_))
                (let ((_%str125581%_
                       (symbol->string (gx#stx-e _%stx125578%_))))
                  (if (##fx> (##string-length _%str125581%_) '1)
                      (eq? (string-ref _%str125581%_ '0) _%char125579%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx125572%_)
        (gx#core-bound-identifier?__%
         _%stx125572%_
         (lambda (_%g125573125575%_)
           (gx#expander-binding?__% _%g125573125575%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx125566%_)
        (gx#core-bound-identifier?__%
         _%stx125566%_
         (lambda (_%g125567125569%_)
           (gx#expander-binding?__% _%g125567125569%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx125553%_)
        (letrec ((_%module-prelude?125555%_
                  (lambda (_%e125561%_)
                    (let ((_%$e125563%_
                           (##structure-instance-of?
                            _%e125561%_
                            'gx#module-context::t)))
                      (if _%$e125563%_
                          _%$e125563%_
                          (##structure-instance-of?
                           _%e125561%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx125553%_
           (lambda (_%g125556125558%_)
             (gx#expander-binding?__%
              _%g125556125558%_
              _%module-prelude?125555%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in125483%_ _%ctx125484%_ _%force-weak?125485%_)
        (let* ((_%in125486125495%_ _%in125483%_)
               (_%E125488125499%_
                (lambda ()
                  (error '"No clause matching"
                         _%in125486125495%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K125489125512%_
                (lambda (_%weak?125502%_
                         _%phi125503%_
                         _%key125504%_
                         _%source125505%_)
                  (gx#core-bind!__%
                   _%key125504%_
                   (let ((_%e125507%_
                          (gx#core-resolve-module-export _%source125505%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e125507%_ '1 '#f '#f)
                      _%key125504%_
                      _%phi125503%_
                      _%e125507%_
                      (##unchecked-structure-ref _%source125505%_ '1 '#f '#f)
                      (let ((_%$e125509%_ _%force-weak?125485%_))
                        (if _%$e125509%_ _%$e125509%_ _%weak?125502%_))))
                   gx#core-context-rebind?
                   _%phi125503%_
                   _%ctx125484%_))))
          (if (##structure-direct-instance-of?
               _%in125486125495%_
               'gx#module-import::t)
              (let* ((_%e125490125515%_
                      (##unchecked-structure-ref
                       _%in125486125495%_
                       '1
                       '#f
                       '#f))
                     (_%source125518%_ _%e125490125515%_)
                     (_%e125491125520%_
                      (##unchecked-structure-ref
                       _%in125486125495%_
                       '2
                       '#f
                       '#f))
                     (_%key125523%_ _%e125491125520%_)
                     (_%e125492125525%_
                      (##unchecked-structure-ref
                       _%in125486125495%_
                       '3
                       '#f
                       '#f))
                     (_%phi125528%_ _%e125492125525%_)
                     (_%e125493125530%_
                      (##unchecked-structure-ref
                       _%in125486125495%_
                       '4
                       '#f
                       '#f))
                     (_%weak?125533%_ _%e125493125530%_))
                (_%K125489125512%_
                 _%weak?125533%_
                 _%phi125528%_
                 _%key125523%_
                 _%source125518%_))
              (_%E125488125499%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in125538%_)
        (let* ((_%ctx125540%_ (gx#current-expander-context))
               (_%force-weak?125542%_ '#f))
          (gx#core-bind-import!__%
           _%in125538%_
           _%ctx125540%_
           _%force-weak?125542%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in125544%_ _%ctx125545%_)
        (let ((_%force-weak?125547%_ '#f))
          (gx#core-bind-import!__%
           _%in125544%_
           _%ctx125545%_
           _%force-weak?125547%_))))
    (define gx#core-bind-import!
      (lambda _g127427_
        (let ((_g127426_ (##length _g127427_)))
          (cond ((##fx= _g127426_ 1) (apply gx#core-bind-import!__0 _g127427_))
                ((##fx= _g127426_ 2) (apply gx#core-bind-import!__1 _g127427_))
                ((##fx= _g127426_ 3) (apply gx#core-bind-import!__% _g127427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g127427_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in125469%_ _%ctx125470%_)
        (gx#core-bind-import!__% _%in125469%_ _%ctx125470%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in125475%_)
        (let ((_%ctx125477%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in125475%_ _%ctx125477%_))))
    (define gx#core-bind-weak-import!
      (lambda _g127429_
        (let ((_g127428_ (##length _g127429_)))
          (cond ((##fx= _g127428_ 1)
                 (apply gx#core-bind-weak-import!__0 _g127429_))
                ((##fx= _g127428_ 2)
                 (apply gx#core-bind-weak-import!__% _g127429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g127429_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out125360%_)
        (letrec ((_%subst125362%_
                  (lambda (_%key125408%_)
                    (let* ((_%key125409125417%_ _%key125408%_)
                           (_%else125411125425%_ (lambda () _%key125408%_))
                           (_%K125413125456%_
                            (lambda (_%mark125428%_ _%id125429%_)
                              (let* ((_%mark125430125436%_ _%mark125428%_)
                                     (_%E125432125440%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark125430125436%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K125433125448%_
                                      (lambda (_%subst125443%_)
                                        (let ((_%$e125445%_
                                               (if _%subst125443%_
                                                   (hash-get
                                                    _%subst125443%_
                                                    _%id125429%_)
                                                   '#f)))
                                          (if _%$e125445%_
                                              _%$e125445%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key125408%_))))))
                                (if (##structure-instance-of?
                                     _%mark125430125436%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e125434125451%_
                                            (##unchecked-structure-ref
                                             _%mark125430125436%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst125454%_ _%e125434125451%_))
                                      (_%K125433125448%_ _%subst125454%_))
                                    (_%E125432125440%_))))))
                      (if (##pair? _%key125409125417%_)
                          (let ((_%hd125414125459%_
                                 (##car _%key125409125417%_))
                                (_%tl125415125461%_
                                 (##cdr _%key125409125417%_)))
                            (let* ((_%id125464%_ _%hd125414125459%_)
                                   (_%mark125466%_ _%tl125415125461%_))
                              (_%K125413125456%_ _%mark125466%_ _%id125464%_)))
                          (_%else125411125425%_))))))
          (let* ((_%out125363125373%_ _%out125360%_)
                 (_%E125365125377%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out125363125373%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K125366125384%_
                  (lambda (_%phi125380%_ _%key125381%_ _%ctx125382%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx125382%_ _%phi125380%_)
                     (_%subst125362%_ _%key125381%_)))))
            (if (##structure-direct-instance-of?
                 _%out125363125373%_
                 'gx#module-export::t)
                (let* ((_%e125367125387%_
                        (##unchecked-structure-ref
                         _%out125363125373%_
                         '1
                         '#f
                         '#f))
                       (_%ctx125390%_ _%e125367125387%_)
                       (_%e125368125392%_
                        (##unchecked-structure-ref
                         _%out125363125373%_
                         '2
                         '#f
                         '#f))
                       (_%key125395%_ _%e125368125392%_)
                       (_%e125369125397%_
                        (##unchecked-structure-ref
                         _%out125363125373%_
                         '3
                         '#f
                         '#f))
                       (_%phi125400%_ _%e125369125397%_)
                       (_%e125370125402%_
                        (##unchecked-structure-ref
                         _%out125363125373%_
                         '4
                         '#f
                         '#f))
                       (_%e125371125405%_
                        (##unchecked-structure-ref
                         _%out125363125373%_
                         '5
                         '#f
                         '#f)))
                  (_%K125366125384%_
                   _%phi125400%_
                   _%key125395%_
                   _%ctx125390%_))
                (_%E125365125377%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out125285%_ _%rename125286%_ _%dphi125287%_)
        (let* ((_%out125288125298%_ _%out125285%_)
               (_%E125290125302%_
                (lambda ()
                  (error '"No clause matching"
                         _%out125288125298%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K125291125314%_
                (lambda (_%weak?125305%_
                         _%name125306%_
                         _%phi125307%_
                         _%key125308%_
                         _%ctx125309%_)
                  (##structure
                   gx#module-import::t
                   _%out125285%_
                   (let ((_%$e125311%_ _%rename125286%_))
                     (if _%$e125311%_ _%$e125311%_ _%name125306%_))
                   (fx+ _%phi125307%_ _%dphi125287%_)
                   _%weak?125305%_))))
          (if (##structure-direct-instance-of?
               _%out125288125298%_
               'gx#module-export::t)
              (let* ((_%e125292125317%_
                      (##unchecked-structure-ref
                       _%out125288125298%_
                       '1
                       '#f
                       '#f))
                     (_%ctx125320%_ _%e125292125317%_)
                     (_%e125293125322%_
                      (##unchecked-structure-ref
                       _%out125288125298%_
                       '2
                       '#f
                       '#f))
                     (_%key125325%_ _%e125293125322%_)
                     (_%e125294125327%_
                      (##unchecked-structure-ref
                       _%out125288125298%_
                       '3
                       '#f
                       '#f))
                     (_%phi125330%_ _%e125294125327%_)
                     (_%e125295125332%_
                      (##unchecked-structure-ref
                       _%out125288125298%_
                       '4
                       '#f
                       '#f))
                     (_%name125335%_ _%e125295125332%_)
                     (_%e125296125337%_
                      (##unchecked-structure-ref
                       _%out125288125298%_
                       '5
                       '#f
                       '#f))
                     (_%weak?125340%_ _%e125296125337%_))
                (_%K125291125314%_
                 _%weak?125340%_
                 _%name125335%_
                 _%phi125330%_
                 _%key125325%_
                 _%ctx125320%_))
              (_%E125290125302%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out125345%_)
        (let* ((_%rename125347%_ '#f) (_%dphi125349%_ '0))
          (gx#core-module-export->import__%
           _%out125345%_
           _%rename125347%_
           _%dphi125349%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out125351%_ _%rename125352%_)
        (let ((_%dphi125354%_ '0))
          (gx#core-module-export->import__%
           _%out125351%_
           _%rename125352%_
           _%dphi125354%_))))
    (define gx#core-module-export->import
      (lambda _g127431_
        (let ((_g127430_ (##length _g127431_)))
          (cond ((##fx= _g127430_ 1)
                 (apply gx#core-module-export->import__0 _g127431_))
                ((##fx= _g127430_ 2)
                 (apply gx#core-module-export->import__1 _g127431_))
                ((##fx= _g127430_ 3)
                 (apply gx#core-module-export->import__% _g127431_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g127431_))))))
    (define gx#core-expand-module%
      (lambda (_%stx125184%_)
        (letrec ((_%make-context125186%_
                  (lambda (_%id125263%_)
                    (let* ((_%super125265%_ (gx#current-expander-context))
                           (_%bind-id125267%_ (gx#stx-e _%id125263%_))
                           (_%mod-id125269%_
                            (if (##structure-instance-of?
                                 _%super125265%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super125265%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id125267%_)
                                _%bind-id125267%_))
                           (_%ns125271%_ (symbol->string _%mod-id125269%_))
                           (_%path125281%_
                            (if (##structure-instance-of?
                                 _%super125265%_
                                 'gx#module-context::t)
                                (let ((_%path125273%_
                                       (##unchecked-structure-ref
                                        _%super125265%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path125273%_)
                                          (null? _%path125273%_))
                                      (cons _%bind-id125267%_ _%path125273%_)
                                      (if (not _%path125273%_)
                                          _%bind-id125267%_
                                          (cons _%bind-id125267%_
                                                (cons _%path125273%_ '())))))
                                _%bind-id125267%_))
                           (__obj127407
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
                       __obj127407
                       _%mod-id125269%_
                       _%super125265%_
                       _%ns125271%_
                       _%path125281%_)
                      __obj127407)))
                 (_%valid-module-id?125187%_
                  (lambda (_%id125238%_)
                    (let* ((_%str125240%_ (symbol->string _%id125238%_))
                           (_%len125242%_ (##string-length _%str125240%_)))
                      (if (##fx>= _%len125242%_ '1)
                          (let _%loop125245%_ ((_%index125247%_
                                                (##fx- (##string-length
                                                        _%str125240%_)
                                                       '1)))
                            (if (##fx>= _%index125247%_ '0)
                                (let ((_%c125249%_
                                       (string-ref
                                        _%str125240%_
                                        _%index125247%_)))
                                  (if (or (and (##char>=? _%c125249%_ '#\a)
                                               (##char<=? _%c125249%_ '#\z))
                                          (and (##char>=? _%c125249%_ '#\A)
                                               (##char<=? _%c125249%_ '#\Z))
                                          (and (##char>=? _%c125249%_ '#\0)
                                               (##char<=? _%c125249%_ '#\9))
                                          (##char=? _%c125249%_ '#\_)
                                          (##char=? _%c125249%_ '#\-))
                                      (_%loop125245%_
                                       (##fx- _%index125247%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e125188125198%_ _%stx125184%_)
                 (_%E125190125202%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e125188125198%_)))
                 (_%E125189125234%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125188125198%_)
                        (let ((_%e125191125206%_
                               (gx#syntax-e _%e125188125198%_)))
                          (let ((_%hd125192125209%_ (##car _%e125191125206%_))
                                (_%tl125193125211%_ (##cdr _%e125191125206%_)))
                            (if (gx#stx-pair? _%tl125193125211%_)
                                (let ((_%e125194125214%_
                                       (gx#syntax-e _%tl125193125211%_)))
                                  (let ((_%hd125195125217%_
                                         (##car _%e125194125214%_))
                                        (_%tl125196125219%_
                                         (##cdr _%e125194125214%_)))
                                    (let* ((_%id125222%_ _%hd125195125217%_)
                                           (_%body125224%_ _%tl125196125219%_))
                                      (if (and (gx#identifier? _%id125222%_)
                                               (gx#stx-list? _%body125224%_))
                                          (if (_%valid-module-id?125187%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx125226%_
                                                      (_%make-context125186%_
                                                       _%id125222%_))
                                                     (_%body125228%_
                                                      (gx#core-expand-module-begin
                                                       _%body125224%_
                                                       _%ctx125226%_))
                                                     (_%body125230%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body125228%_)
                                                       (gx#stx-source
                                                        _%stx125184%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx125226%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body125230%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx125226%_
                                                 _%body125230%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id125222%_
                                                 _%ctx125226%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id125222%_)
                                                  _%body125230%_)
                                                 (gx#stx-source
                                                  _%stx125184%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx125184%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E125190125202%_)))))
                                (_%E125190125202%_))))
                        (_%E125190125202%_)))))
            (_%E125189125234%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body125150%_ _%ctx125151%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx125154%_
                   (gx#core-expand-head (cons '%%begin-module _%body125150%_)))
                  (_%e125155125162%_ _%stx125154%_)
                  (_%E125157125166%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx125154%_)))
                  (_%E125156125180%_
                   (lambda ()
                     (if (gx#stx-pair? _%e125155125162%_)
                         (let ((_%e125158125170%_
                                (gx#syntax-e _%e125155125162%_)))
                           (let ((_%hd125159125173%_ (##car _%e125158125170%_))
                                 (_%tl125160125175%_
                                  (##cdr _%e125158125170%_)))
                             (if (and (gx#identifier? _%hd125159125173%_)
                                      (gx#core-identifier=?
                                       _%hd125159125173%_
                                       '%#begin-module))
                                 (let ((_%body125178%_ _%tl125160125175%_))
                                   (if (gx#sealed-syntax? _%stx125154%_)
                                       _%body125178%_
                                       (gx#core-expand-module-body
                                        _%body125178%_)))
                                 (_%E125157125166%_))))
                         (_%E125157125166%_)))))
             (_%E125156125180%_)))
         gx#current-expander-context
         _%ctx125151%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body124946%_)
        (letrec ((_%expand-special124948%_
                  (lambda (_%hd125077%_ _%K125078%_ _%rest125079%_ _%r125080%_)
                    (let* ((_%e125081125098%_ _%hd125077%_)
                           (_%E125093125102%_
                            (lambda ()
                              (_%K125078%_
                               _%rest125079%_
                               (cons (gx#core-expand-top _%hd125077%_)
                                     _%r125080%_))))
                           (_%E125083125114%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125081125098%_)
                                  (let ((_%e125094125106%_
                                         (gx#syntax-e _%e125081125098%_)))
                                    (let ((_%hd125095125109%_
                                           (##car _%e125094125106%_))
                                          (_%tl125096125111%_
                                           (##cdr _%e125094125106%_)))
                                      (if (and (gx#identifier?
                                                _%hd125095125109%_)
                                               (gx#core-identifier=?
                                                _%hd125095125109%_
                                                '%#export))
                                          (_%K125078%_
                                           _%rest125079%_
                                           (cons _%hd125077%_ _%r125080%_))
                                          (_%E125093125102%_))))
                                  (_%E125093125102%_))))
                           (_%E125082125146%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125081125098%_)
                                  (let ((_%e125084125118%_
                                         (gx#syntax-e _%e125081125098%_)))
                                    (let ((_%hd125085125121%_
                                           (##car _%e125084125118%_))
                                          (_%tl125086125123%_
                                           (##cdr _%e125084125118%_)))
                                      (if (and (gx#identifier?
                                                _%hd125085125121%_)
                                               (gx#core-identifier=?
                                                _%hd125085125121%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125086125123%_)
                                              (let ((_%e125087125126%_
                                                     (gx#syntax-e
                                                      _%tl125086125123%_)))
                                                (let ((_%hd125088125129%_
                                                       (##car _%e125087125126%_))
                                                      (_%tl125089125131%_
                                                       (##cdr _%e125087125126%_)))
                                                  (let ((_%hd-bind125134%_
                                                         _%hd125088125129%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125089125131%_)
                                                        (let ((_%e125090125136%_
                                                               (gx#syntax-e
                                                                _%tl125089125131%_)))
                                                          (let ((_%hd125091125139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125090125136%_))
                        (_%tl125092125141%_ (##cdr _%e125090125136%_)))
                    (let ((_%expr125144%_ _%hd125091125139%_))
                      (if (gx#stx-null? _%tl125092125141%_)
                          (if (gx#core-bind-values? _%hd-bind125134%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind125134%_)
                                (_%K125078%_
                                 _%rest125079%_
                                 (cons _%hd125077%_ _%r125080%_)))
                              (_%E125083125114%_))
                          (_%E125083125114%_)))))
                (_%E125083125114%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125083125114%_))
                                          (_%E125083125114%_))))
                                  (_%E125083125114%_)))))
                      (_%E125082125146%_))))
                 (_%expand-body124949%_
                  (lambda (_%rbody124951%_)
                    (let _%lp124953%_ ((_%rest124955%_ _%rbody124951%_)
                                       (_%body124956%_ '()))
                      (let* ((_%rest124957124965%_ _%rest124955%_)
                             (_%else124959124973%_ (lambda () _%body124956%_))
                             (_%K124961125065%_
                              (lambda (_%rest124976%_ _%hd124977%_)
                                (let* ((_%e124978124999%_ _%hd124977%_)
                                       (_%E124994125003%_
                                        (lambda ()
                                          (_%lp124953%_
                                           _%rest124976%_
                                           (cons (gx#core-expand-expression
                                                  _%hd124977%_)
                                                 _%body124956%_))))
                                       (_%E124990125017%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124978124999%_)
                                              (let ((_%e124995125007%_
                                                     (gx#syntax-e
                                                      _%e124978124999%_)))
                                                (let ((_%hd124996125010%_
                                                       (##car _%e124995125007%_))
                                                      (_%tl124997125012%_
                                                       (##cdr _%e124995125007%_)))
                                                  (let ((_%form125015%_
                                                         _%hd124996125010%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form125015%_
                                                         gx#special-form-binding?)
                                                        (_%lp124953%_
                                                         _%rest124976%_
                                                         (cons _%hd124977%_
                                                               _%body124956%_))
                                                        (_%E124994125003%_)))))
                                              (_%E124994125003%_))))
                                       (_%E124980125029%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124978124999%_)
                                              (let ((_%e124991125021%_
                                                     (gx#syntax-e
                                                      _%e124978124999%_)))
                                                (let ((_%hd124992125024%_
                                                       (##car _%e124991125021%_))
                                                      (_%tl124993125026%_
                                                       (##cdr _%e124991125021%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124992125024%_)
                                                           (gx#core-identifier=?
                                                            _%hd124992125024%_
                                                            '%#export))
                                                      (_%lp124953%_
                                                       _%rest124976%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd124977%_)
                                                             _%body124956%_))
                                                      (_%E124990125017%_))))
                                              (_%E124990125017%_))))
                                       (_%E124979125061%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124978124999%_)
                                              (let ((_%e124981125033%_
                                                     (gx#syntax-e
                                                      _%e124978124999%_)))
                                                (let ((_%hd124982125036%_
                                                       (##car _%e124981125033%_))
                                                      (_%tl124983125038%_
                                                       (##cdr _%e124981125033%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124982125036%_)
                                                           (gx#core-identifier=?
                                                            _%hd124982125036%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl124983125038%_)
                                                          (let ((_%e124984125041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl124983125038%_)))
                    (let ((_%hd124985125044%_ (##car _%e124984125041%_))
                          (_%tl124986125046%_ (##cdr _%e124984125041%_)))
                      (let ((_%hd-bind125049%_ _%hd124985125044%_))
                        (if (gx#stx-pair? _%tl124986125046%_)
                            (let ((_%e124987125051%_
                                   (gx#syntax-e _%tl124986125046%_)))
                              (let ((_%hd124988125054%_
                                     (##car _%e124987125051%_))
                                    (_%tl124989125056%_
                                     (##cdr _%e124987125051%_)))
                                (let ((_%expr125059%_ _%hd124988125054%_))
                                  (if (gx#stx-null? _%tl124989125056%_)
                                      (_%lp124953%_
                                       _%rest124976%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind125049%_)
                                               (gx#core-expand-expression
                                                _%expr125059%_))
                                              (gx#stx-source _%hd124977%_))
                                             _%body124956%_))
                                      (_%E124980125029%_)))))
                            (_%E124980125029%_)))))
                  (_%E124980125029%_))
              (_%E124980125029%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124980125029%_)))))
                                  (_%E124979125061%_)))))
                        (if (##pair? _%rest124957124965%_)
                            (let ((_%hd124962125068%_
                                   (##car _%rest124957124965%_))
                                  (_%tl124963125070%_
                                   (##cdr _%rest124957124965%_)))
                              (let* ((_%hd125073%_ _%hd124962125068%_)
                                     (_%rest125075%_ _%tl124963125070%_))
                                (_%K124961125065%_
                                 _%rest125075%_
                                 _%hd125073%_)))
                            (_%else124959124973%_)))))))
          (_%expand-body124949%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body124946%_)
            _%expand-special124948%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx124787%_
               _%expanded?124788%_
               _%method124789%_
               _%current-phi124790%_
               _%expand1124791%_)
        (letrec ((_%K124793%_
                  (lambda (_%rest124913%_ _%r124914%_)
                    (let* ((_%e124915124922%_ _%rest124913%_)
                           (_%E124917124926%_ (lambda () _%r124914%_))
                           (_%E124916124942%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124915124922%_)
                                  (let ((_%e124918124930%_
                                         (gx#syntax-e _%e124915124922%_)))
                                    (let ((_%hd124919124933%_
                                           (##car _%e124918124930%_))
                                          (_%tl124920124935%_
                                           (##cdr _%e124918124930%_)))
                                      (let* ((_%hd124938%_ _%hd124919124933%_)
                                             (_%rest124940%_
                                              _%tl124920124935%_))
                                        (_%step124794%_
                                         _%hd124938%_
                                         _%rest124940%_
                                         _%r124914%_))))
                                  (_%E124917124926%_)))))
                      (_%E124916124942%_))))
                 (_%step124794%_
                  (lambda (_%hd124827%_ _%rest124828%_ _%r124829%_)
                    (let* ((_%e124830124848%_ _%hd124827%_)
                           (_%E124843124852%_
                            (lambda ()
                              (if (_%expanded?124788%_ (gx#stx-e _%hd124827%_))
                                  (_%K124793%_
                                   _%rest124828%_
                                   (cons (gx#stx-e _%hd124827%_) _%r124829%_))
                                  (_%expand1124791%_
                                   _%hd124827%_
                                   _%K124793%_
                                   _%rest124828%_
                                   _%r124829%_))))
                           (_%E124839124868%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124830124848%_)
                                  (let ((_%e124844124856%_
                                         (gx#syntax-e _%e124830124848%_)))
                                    (let ((_%hd124845124859%_
                                           (##car _%e124844124856%_))
                                          (_%tl124846124861%_
                                           (##cdr _%e124844124856%_)))
                                      (let* ((_%macro124864%_
                                              _%hd124845124859%_)
                                             (_%body124866%_
                                              _%tl124846124861%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro124864%_
                                             gx#syntax-binding?)
                                            (_%K124793%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro124864%_)
                                                    _%hd124827%_
                                                    _%method124789%_)
                                                   _%rest124828%_)
                                             _%r124829%_)
                                            (_%E124843124852%_)))))
                                  (_%E124843124852%_))))
                           (_%E124832124882%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124830124848%_)
                                  (let ((_%e124840124872%_
                                         (gx#syntax-e _%e124830124848%_)))
                                    (let ((_%hd124841124875%_
                                           (##car _%e124840124872%_))
                                          (_%tl124842124877%_
                                           (##cdr _%e124840124872%_)))
                                      (if (eq? (gx#stx-e _%hd124841124875%_)
                                               'begin:)
                                          (let ((_%body124880%_
                                                 _%tl124842124877%_))
                                            (_%K124793%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest124828%_
                                              _%body124880%_)
                                             _%r124829%_))
                                          (_%E124839124868%_))))
                                  (_%E124839124868%_))))
                           (_%E124831124909%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124830124848%_)
                                  (let ((_%e124833124886%_
                                         (gx#syntax-e _%e124830124848%_)))
                                    (let ((_%hd124834124889%_
                                           (##car _%e124833124886%_))
                                          (_%tl124835124891%_
                                           (##cdr _%e124833124886%_)))
                                      (if (eq? (gx#stx-e _%hd124834124889%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl124835124891%_)
                                              (let ((_%e124836124894%_
                                                     (gx#syntax-e
                                                      _%tl124835124891%_)))
                                                (let ((_%hd124837124897%_
                                                       (##car _%e124836124894%_))
                                                      (_%tl124838124899%_
                                                       (##cdr _%e124836124894%_)))
                                                  (let* ((_%dphi124902%_
                                                          _%hd124837124897%_)
                                                         (_%body124904%_
                                                          _%tl124838124899%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi124902%_)
                                                        (let ((_%rbody124907%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K124793%_ _%body124904%_ '()))
                        _%current-phi124790%_
                        (fx+ (gx#stx-e _%dphi124902%_)
                             (_%current-phi124790%_)))))
                  (_%K124793%_
                   _%rest124828%_
                   (__foldr1 cons _%r124829%_ _%rbody124907%_)))
                (_%E124832124882%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124832124882%_))
                                          (_%E124832124882%_))))
                                  (_%E124832124882%_)))))
                      (_%E124831124909%_)))))
          (let* ((_%e124795124802%_ _%stx124787%_)
                 (_%E124797124806%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124795124802%_)))
                 (_%E124796124823%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124795124802%_)
                        (let ((_%e124798124810%_
                               (gx#syntax-e _%e124795124802%_)))
                          (let ((_%hd124799124813%_ (##car _%e124798124810%_))
                                (_%tl124800124815%_ (##cdr _%e124798124810%_)))
                            (let ((_%body124818%_ _%tl124800124815%_))
                              (if (_%current-phi124790%_)
                                  (_%K124793%_ _%body124818%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K124793%_ _%body124818%_ '()))
                                   _%current-phi124790%_
                                   (gx#current-expander-phi))))))
                        (_%E124797124806%_)))))
            (_%E124796124823%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx124441%_ _%internal-expand?124442%_)
        (letrec ((_%expand1124444%_
                  (lambda (_%hd124759%_ _%K124760%_ _%rest124761%_ _%r124762%_)
                    (if (gx#core-bound-module? _%hd124759%_)
                        (_%import1124445%_
                         (gx#syntax-local-e__0 _%hd124759%_)
                         _%K124760%_
                         _%rest124761%_
                         _%r124762%_)
                        (if (gx#core-library-module-path? _%hd124759%_)
                            (_%import1124445%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd124759%_))
                             _%K124760%_
                             _%rest124761%_
                             _%r124762%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd124759%_)
                                (_%import1124445%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd124759%_))
                                 _%K124760%_
                                 _%rest124761%_
                                 _%r124762%_)
                                (let ((_%e124768%_ (gx#stx-e _%hd124759%_)))
                                  (if (pair? _%e124768%_)
                                      (let ((_%$e124771%_
                                             (gx#stx-e (##car _%e124768%_))))
                                        (if (eq? 'spec: _%$e124771%_)
                                            (_%import-spec124448%_
                                             _%hd124759%_
                                             _%K124760%_
                                             _%rest124761%_
                                             _%r124762%_)
                                            (if (eq? 'in: _%$e124771%_)
                                                (_%import-submodule124446%_
                                                 _%hd124759%_
                                                 _%K124760%_
                                                 _%rest124761%_
                                                 _%r124762%_)
                                                (if (eq? 'runtime:
                                                         _%$e124771%_)
                                                    (_%import-runtime124447%_
                                                     _%hd124759%_
                                                     _%K124760%_
                                                     _%rest124761%_
                                                     _%r124762%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx124441%_
                                                     _%hd124759%_)))))
                                      (if (string? _%e124768%_)
                                          (_%import1124445%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd124759%_
                                             (gx#stx-source _%stx124441%_)))
                                           _%K124760%_
                                           _%rest124761%_
                                           _%r124762%_)
                                          (if (##structure-instance-of?
                                               _%e124768%_
                                               'gx#module-context::t)
                                              (_%K124760%_
                                               _%rest124761%_
                                               (cons _%e124768%_ _%r124762%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx124441%_
                                               _%hd124759%_))))))))))
                 (_%import1124445%_
                  (lambda (_%ctx124748%_
                           _%K124749%_
                           _%rest124750%_
                           _%r124751%_)
                    (let ((_%dphi124753%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K124749%_
                       _%rest124750%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx124748%_
                              _%dphi124753%_
                              (map (lambda (_%g124754124756%_)
                                     (gx#core-module-export->import__%
                                      _%g124754124756%_
                                      '#f
                                      _%dphi124753%_))
                                   (##unchecked-structure-ref
                                    _%ctx124748%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r124751%_)))))
                 (_%import-submodule124446%_
                  (lambda (_%hd124715%_ _%K124716%_ _%rest124717%_ _%r124718%_)
                    (let* ((_%e124719124726%_ _%hd124715%_)
                           (_%E124721124730%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124719124726%_)))
                           (_%E124720124744%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124719124726%_)
                                  (let ((_%e124722124734%_
                                         (gx#syntax-e _%e124719124726%_)))
                                    (let ((_%hd124723124737%_
                                           (##car _%e124722124734%_))
                                          (_%tl124724124739%_
                                           (##cdr _%e124722124734%_)))
                                      (let ((_%spath124742%_
                                             _%tl124724124739%_))
                                        (_%import1124445%_
                                         (_%import-spec-source124449%_
                                          _%spath124742%_)
                                         _%K124716%_
                                         _%rest124717%_
                                         _%r124718%_))))
                                  (_%E124721124730%_)))))
                      (_%E124720124744%_))))
                 (_%import-runtime124447%_
                  (lambda (_%hd124682%_ _%K124683%_ _%rest124684%_ _%r124685%_)
                    (let* ((_%e124686124693%_ _%hd124682%_)
                           (_%E124688124697%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124686124693%_)))
                           (_%E124687124711%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124686124693%_)
                                  (let ((_%e124689124701%_
                                         (gx#syntax-e _%e124686124693%_)))
                                    (let ((_%hd124690124704%_
                                           (##car _%e124689124701%_))
                                          (_%tl124691124706%_
                                           (##cdr _%e124689124701%_)))
                                      (let ((_%spath124709%_
                                             _%tl124691124706%_))
                                        (_%K124683%_
                                         _%rest124684%_
                                         (cons (_%import-spec-source124449%_
                                                _%spath124709%_)
                                               _%r124685%_)))))
                                  (_%E124688124697%_)))))
                      (_%E124687124711%_))))
                 (_%import-spec124448%_
                  (lambda (_%hd124520%_ _%K124521%_ _%rest124522%_ _%r124523%_)
                    (let* ((_%e124524124541%_ _%hd124520%_)
                           (_%E124533124545%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124524124541%_)))
                           (_%E124526124656%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124524124541%_)
                                  (let ((_%e124534124549%_
                                         (gx#syntax-e _%e124524124541%_)))
                                    (let ((_%hd124535124552%_
                                           (##car _%e124534124549%_))
                                          (_%tl124536124554%_
                                           (##cdr _%e124534124549%_)))
                                      (if (gx#stx-pair? _%tl124536124554%_)
                                          (let ((_%e124537124557%_
                                                 (gx#syntax-e
                                                  _%tl124536124554%_)))
                                            (let ((_%hd124538124560%_
                                                   (##car _%e124537124557%_))
                                                  (_%tl124539124562%_
                                                   (##cdr _%e124537124557%_)))
                                              (let* ((_%path124565%_
                                                      _%hd124538124560%_)
                                                     (_%specs124567%_
                                                      _%tl124539124562%_))
                                                (let ((_%src-ctx124569%_
                                                       (_%import-spec-source124449%_
                                                        _%path124565%_))
                                                      (_%exports124570%_
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
                                                      (_%specs124571%_
                                                       (gx#syntax->list
                                                        _%specs124567%_)))
                                                  (for-each
                                                   (lambda (_%out124573%_)
                                                     (__hash-put!
                                                      _%exports124570%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out124573%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out124573%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out124573%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx124569%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K124521%_
                                                   _%rest124522%_
                                                   (__foldl1
                                                    (lambda (_%spec124575%_
                                                             _%r124576%_)
                                                      (let* ((_%e124577124593%_
                                                              _%spec124575%_)
                                                             (_%E124579124597%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e124577124593%_)))
                     (_%E124578124652%_
                      (lambda ()
                        (if (gx#stx-pair? _%e124577124593%_)
                            (let ((_%e124580124601%_
                                   (gx#syntax-e _%e124577124593%_)))
                              (let ((_%hd124581124604%_
                                     (##car _%e124580124601%_))
                                    (_%tl124582124606%_
                                     (##cdr _%e124580124601%_)))
                                (let ((_%phi124609%_ _%hd124581124604%_))
                                  (if (gx#stx-pair? _%tl124582124606%_)
                                      (let ((_%e124583124611%_
                                             (gx#syntax-e _%tl124582124606%_)))
                                        (let ((_%hd124584124614%_
                                               (##car _%e124583124611%_))
                                              (_%tl124585124616%_
                                               (##cdr _%e124583124611%_)))
                                          (let ((_%name124619%_
                                                 _%hd124584124614%_))
                                            (if (gx#stx-pair?
                                                 _%tl124585124616%_)
                                                (let ((_%e124586124621%_
                                                       (gx#syntax-e
                                                        _%tl124585124616%_)))
                                                  (let ((_%hd124587124624%_
                                                         (##car _%e124586124621%_))
                                                        (_%tl124588124626%_
                                                         (##cdr _%e124586124621%_)))
                                                    (let ((_%src-phi124629%_
                                                           _%hd124587124624%_))
                                                      (if (gx#stx-pair?
                                                           _%tl124588124626%_)
                                                          (let ((_%e124589124631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl124588124626%_)))
                    (let ((_%hd124590124634%_ (##car _%e124589124631%_))
                          (_%tl124591124636%_ (##cdr _%e124589124631%_)))
                      (let ((_%src-name124639%_ _%hd124590124634%_))
                        (if (gx#stx-null? _%tl124591124636%_)
                            (if (and (gx#stx-fixnum? _%src-phi124629%_)
                                     (gx#identifier? _%src-name124639%_)
                                     (gx#stx-fixnum? _%phi124609%_)
                                     (gx#identifier? _%name124619%_))
                                (let ((_%src-phi124641%_
                                       (gx#stx-e _%src-phi124629%_))
                                      (_%src-name124642%_
                                       (gx#core-identifier-key
                                        _%src-name124639%_))
                                      (_%phi124643%_ (gx#stx-e _%phi124609%_))
                                      (_%name124644%_
                                       (gx#core-identifier-key
                                        _%name124619%_)))
                                  (let ((_%$e124646%_
                                         (__hash-get
                                          _%exports124570%_
                                          (cons _%src-phi124641%_
                                                _%src-name124642%_))))
                                    (if _%$e124646%_
                                        ((lambda (_%out124649%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out124649%_
                                                  _%name124644%_
                                                  (fx- _%phi124643%_
                                                       _%src-phi124641%_))
                                                 _%r124576%_))
                                         _%$e124646%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx124441%_
                                         _%hd124520%_))))
                                (_%E124579124597%_))
                            (_%E124579124597%_)))))
                  (_%E124579124597%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124579124597%_)))))
                                      (_%E124579124597%_)))))
                            (_%E124579124597%_)))))
                (_%E124578124652%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r124523%_
                                                    _%specs124571%_))))))
                                          (_%E124533124545%_))))
                                  (_%E124533124545%_))))
                           (_%E124525124678%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124524124541%_)
                                  (let ((_%e124527124660%_
                                         (gx#syntax-e _%e124524124541%_)))
                                    (let ((_%hd124528124663%_
                                           (##car _%e124527124660%_))
                                          (_%tl124529124665%_
                                           (##cdr _%e124527124660%_)))
                                      (if (gx#stx-pair? _%tl124529124665%_)
                                          (let ((_%e124530124668%_
                                                 (gx#syntax-e
                                                  _%tl124529124665%_)))
                                            (let ((_%hd124531124671%_
                                                   (##car _%e124530124668%_))
                                                  (_%tl124532124673%_
                                                   (##cdr _%e124530124668%_)))
                                              (let ((_%path124676%_
                                                     _%hd124531124671%_))
                                                (if (gx#stx-null?
                                                     _%tl124532124673%_)
                                                    (_%K124521%_
                                                     _%rest124522%_
                                                     (cons (_%import-spec-source124449%_
                                                            _%path124676%_)
                                                           _%r124523%_))
                                                    (_%E124526124656%_)))))
                                          (_%E124526124656%_))))
                                  (_%E124526124656%_)))))
                      (_%E124525124678%_))))
                 (_%import-spec-source124449%_
                  (lambda (_%spath124518%_)
                    (gx#core-import-nested-module
                     _%spath124518%_
                     _%stx124441%_)))
                 (_%import!124450%_
                  (lambda (_%rbody124463%_)
                    (letrec* ((_%current-ctx124465%_
                               (gx#current-expander-context))
                              (_%deps124466%_ (make-hash-table-eq))
                              (_%bind!124467%_
                               (lambda (_%hd124516%_)
                                 (gx#core-bind-import!__1
                                  _%hd124516%_
                                  _%current-ctx124465%_))))
                      (let _%lp124469%_ ((_%rest124471%_ _%rbody124463%_)
                                         (_%body124472%_ '()))
                        (let* ((_%rest124473124481%_ _%rest124471%_)
                               (_%else124475124492%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx124465%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx124465%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx124465%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body124472%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx124489%_ _%_124490%_)
                                     (gx#eval-module _%ctx124489%_))
                                   _%deps124466%_)
                                  _%body124472%_))
                               (_%K124477124504%_
                                (lambda (_%rest124495%_ _%hd124496%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd124496%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!124467%_ _%hd124496%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd124496%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd124496%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps124466%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd124496%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd124496%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!124467%_
                                             (##unchecked-structure-ref
                                              _%hd124496%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd124496%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps124466%_
                                                 (##unchecked-structure-ref
                                                  _%hd124496%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e124500%_
                                                 (##structure-instance-of?
                                                  _%hd124496%_
                                                  'gx#module-context::t)))
                                            (if _%$e124500%_
                                                _%$e124500%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx124441%_
                                                 _%hd124496%_)))))
                                  (_%lp124469%_
                                   _%rest124495%_
                                   (cons _%hd124496%_ _%body124472%_)))))
                          (if (##pair? _%rest124473124481%_)
                              (let ((_%hd124478124507%_
                                     (##car _%rest124473124481%_))
                                    (_%tl124479124509%_
                                     (##cdr _%rest124473124481%_)))
                                (let* ((_%hd124512%_ _%hd124478124507%_)
                                       (_%rest124514%_ _%tl124479124509%_))
                                  (_%K124477124504%_
                                   _%rest124514%_
                                   _%hd124512%_)))
                              (_%else124475124492%_)))))))
                 (_%expanded-import?124451%_
                  (lambda (_%e124455%_)
                    (let ((_%$e124457%_
                           (##structure-direct-instance-of?
                            _%e124455%_
                            'gx#import-set::t)))
                      (if _%$e124457%_
                          _%$e124457%_
                          (let ((_%$e124460%_
                                 (##structure-direct-instance-of?
                                  _%e124455%_
                                  'gx#module-import::t)))
                            (if _%$e124460%_
                                _%$e124460%_
                                (##structure-instance-of?
                                 _%e124455%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody124453%_
                 (gx#core-expand-import/export
                  _%stx124441%_
                  _%expanded-import?124451%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1124444%_)))
            (if _%internal-expand?124442%_
                (reverse _%rbody124453%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!124450%_ _%rbody124453%_))
                 (gx#stx-source _%stx124441%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx124780%_)
        (let ((_%internal-expand?124782%_ '#f))
          (gx#core-expand-import%__%
           _%stx124780%_
           _%internal-expand?124782%_))))
    (define gx#core-expand-import%
      (lambda _g127433_
        (let ((_g127432_ (##length _g127433_)))
          (cond ((##fx= _g127432_ 1)
                 (apply gx#core-expand-import%__0 _g127433_))
                ((##fx= _g127432_ 2)
                 (apply gx#core-expand-import%__% _g127433_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g127433_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath124368%_ _%where124369%_)
        (let* ((_%e124370124377%_ _%spath124368%_)
               (_%E124372124381%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124370124377%_)))
               (_%E124371124436%_
                (lambda ()
                  (if (gx#stx-pair? _%e124370124377%_)
                      (let ((_%e124373124385%_
                             (gx#syntax-e _%e124370124377%_)))
                        (let ((_%hd124374124388%_ (##car _%e124373124385%_))
                              (_%tl124375124390%_ (##cdr _%e124373124385%_)))
                          (let* ((_%origin124393%_ _%hd124374124388%_)
                                 (_%sub124395%_ _%tl124375124390%_)
                                 (_%origin-ctx124397%_
                                  (if (gx#stx-false? _%origin124393%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin124393%_))))
                            (let _%lp124399%_ ((_%rest124401%_ _%sub124395%_)
                                               (_%ctx124402%_
                                                _%origin-ctx124397%_))
                              (let* ((_%e124403124410%_ _%rest124401%_)
                                     (_%E124405124414%_
                                      (lambda () _%ctx124402%_))
                                     (_%E124404124432%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e124403124410%_)
                                            (let ((_%e124406124418%_
                                                   (gx#syntax-e
                                                    _%e124403124410%_)))
                                              (let ((_%hd124407124421%_
                                                     (##car _%e124406124418%_))
                                                    (_%tl124408124423%_
                                                     (##cdr _%e124406124418%_)))
                                                (let* ((_%id124426%_
                                                        _%hd124407124421%_)
                                                       (_%rest124428%_
                                                        _%tl124408124423%_)
                                                       (_%bind124430%_
                                                        (gx#resolve-identifier__%
                                                         _%id124426%_
                                                         '0
                                                         _%ctx124402%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind124430%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind124430%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where124369%_
                                                       _%spath124368%_
                                                       _%id124426%_))
                                                  (_%lp124399%_
                                                   _%rest124428%_
                                                   (##unchecked-structure-ref
                                                    _%bind124430%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E124405124414%_)))))
                                (_%E124404124432%_))))))
                      (_%E124372124381%_)))))
          (_%E124371124436%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd124366%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd124366%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx123860%_ _%internal-expand?123861%_)
        (letrec* ((_%make-export__127361127362%_
                   (lambda (_%bind124314%_
                            _%phi124315%_
                            _%ctx124316%_
                            _%name124317%_)
                     (let* ((_%key124319%_
                             (##unchecked-structure-ref
                              _%bind124314%_
                              '2
                              '#f
                              '#f))
                            (_%export-key124321%_
                             (if _%name124317%_
                                 (gx#core-identifier-key _%name124317%_)
                                 _%key124319%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx124316%_
                        _%key124319%_
                        _%phi124315%_
                        _%export-key124321%_
                        (let ((_%$e124324%_
                               (##structure-instance-of?
                                _%bind124314%_
                                'gx#extern-binding::t)))
                          (if _%$e124324%_
                              _%$e124324%_
                              (##structure-direct-instance-of?
                               _%bind124314%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__127363127366%_
                   (lambda (_%bind124330%_)
                     (let* ((_%phi124332%_ (gx#current-export-expander-phi))
                            (_%ctx124334%_ (gx#current-expander-context))
                            (_%name124336%_ '#f))
                       (_%make-export__127361127362%_
                        _%bind124330%_
                        _%phi124332%_
                        _%ctx124334%_
                        _%name124336%_))))
                  (_%make-export__1__127364127367%_
                   (lambda (_%bind124338%_ _%phi124339%_)
                     (let* ((_%ctx124341%_ (gx#current-expander-context))
                            (_%name124343%_ '#f))
                       (_%make-export__127361127362%_
                        _%bind124338%_
                        _%phi124339%_
                        _%ctx124341%_
                        _%name124343%_))))
                  (_%make-export__2__127365127368%_
                   (lambda (_%bind124345%_ _%phi124346%_ _%ctx124347%_)
                     (let ((_%name124349%_ '#f))
                       (_%make-export__127361127362%_
                        _%bind124345%_
                        _%phi124346%_
                        _%ctx124347%_
                        _%name124349%_))))
                  (_%make-export123863%_
                   (lambda _g127435_
                     (let ((_g127434_ (##length _g127435_)))
                       (cond ((##fx= _g127434_ 1)
                              (apply _%make-export__0__127363127366%_
                                     _g127435_))
                             ((##fx= _g127434_ 2)
                              (apply _%make-export__1__127364127367%_
                                     _g127435_))
                             ((##fx= _g127434_ 3)
                              (apply _%make-export__2__127365127368%_
                                     _g127435_))
                             ((##fx= _g127434_ 4)
                              (apply _%make-export__127361127362%_ _g127435_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g127435_))))))
                  (_%expand1123864%_
                   (lambda (_%hd124019%_
                            _%K124020%_
                            _%rest124021%_
                            _%r124022%_)
                     (let* ((_%e124023124055%_ _%hd124019%_)
                            (_%E124050124059%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx123860%_
                                _%hd124019%_)))
                            (_%E124040124143%_
                             (lambda ()
                               (if (gx#stx-pair? _%e124023124055%_)
                                   (let ((_%e124051124063%_
                                          (gx#syntax-e _%e124023124055%_)))
                                     (let ((_%hd124052124066%_
                                            (##car _%e124051124063%_))
                                           (_%tl124053124068%_
                                            (##cdr _%e124051124063%_)))
                                       (if (eq? (gx#stx-e _%hd124052124066%_)
                                                'import:)
                                           (let ((_%in124071%_
                                                  _%tl124053124068%_))
                                             (if (gx#stx-list? _%in124071%_)
                                                 (let _%lp124073%_ ((_%in-rest124075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in124071%_)
                            (_%r124076%_ _%r124022%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e124077124084%_
                                                           _%in-rest124075%_)
                                                          (_%E124079124088%_
                                                           (lambda ()
                                                             (_%K124020%_
                                                              _%rest124021%_
                                                              _%r124076%_)))
                                                          (_%E124078124139%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e124077124084%_)
                         (let ((_%e124080124092%_
                                (gx#syntax-e _%e124077124084%_)))
                           (let ((_%hd124081124095%_ (##car _%e124080124092%_))
                                 (_%tl124082124097%_
                                  (##cdr _%e124080124092%_)))
                             (let* ((_%hd124100%_ _%hd124081124095%_)
                                    (_%in-rest124102%_ _%tl124082124097%_)
                                    (_%src124137%_
                                     (if (gx#core-bound-module? _%hd124100%_)
                                         (gx#syntax-local-e__0 _%hd124100%_)
                                         (if (gx#core-library-module-path?
                                              _%hd124100%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd124100%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd124100%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd124100%_))
                                                 (if (gx#stx-string?
                                                      _%hd124100%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd124100%_
                                                       (gx#stx-source
                                                        _%stx123860%_)))
                                                     (let* ((_%e124108124115%_
                                                             _%hd124100%_)
                                                            (_%E124110124119%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx123860%_
                                                                _%hd124100%_)))
                                                            (_%E124109124133%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e124108124115%_)
                           (let ((_%e124111124123%_
                                  (gx#syntax-e _%e124108124115%_)))
                             (let ((_%hd124112124126%_
                                    (##car _%e124111124123%_))
                                   (_%tl124113124128%_
                                    (##cdr _%e124111124123%_)))
                               (if (eq? (gx#stx-e _%hd124112124126%_) 'in:)
                                   (let ((_%spath124131%_ _%tl124113124128%_))
                                     (gx#core-import-nested-module
                                      _%spath124131%_
                                      _%stx123860%_))
                                   (_%E124110124119%_))))
                           (_%E124110124119%_)))))
               (_%E124109124133%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp124073%_
                                _%in-rest124102%_
                                (_%export-imports123865%_
                                 _%src124137%_
                                 _%r124076%_)))))
                         (_%E124079124088%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E124078124139%_)))
                                                 (_%E124050124059%_)))
                                           (_%E124050124059%_))))
                                   (_%E124050124059%_))))
                            (_%E124027124183%_
                             (lambda ()
                               (if (gx#stx-pair? _%e124023124055%_)
                                   (let ((_%e124041124147%_
                                          (gx#syntax-e _%e124023124055%_)))
                                     (let ((_%hd124042124150%_
                                            (##car _%e124041124147%_))
                                           (_%tl124043124152%_
                                            (##cdr _%e124041124147%_)))
                                       (if (eq? (gx#stx-e _%hd124042124150%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl124043124152%_)
                                               (let ((_%e124044124155%_
                                                      (gx#syntax-e
                                                       _%tl124043124152%_)))
                                                 (let ((_%hd124045124158%_
                                                        (##car _%e124044124155%_))
                                                       (_%tl124046124160%_
                                                        (##cdr _%e124044124155%_)))
                                                   (let ((_%id124163%_
                                                          _%hd124045124158%_))
                                                     (if (gx#stx-pair?
                                                          _%tl124046124160%_)
                                                         (let ((_%e124047124165%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl124046124160%_)))
                   (let ((_%hd124048124168%_ (##car _%e124047124165%_))
                         (_%tl124049124170%_ (##cdr _%e124047124165%_)))
                     (let ((_%name124173%_ _%hd124048124168%_))
                       (if (gx#stx-null? _%tl124049124170%_)
                           (let* ((_%phi124175%_
                                   (gx#current-export-expander-phi))
                                  (_%$e124177%_
                                   (gx#core-resolve-identifier__1
                                    _%id124163%_
                                    _%phi124175%_)))
                             (if _%$e124177%_
                                 ((lambda (_%bind124180%_)
                                    (_%K124020%_
                                     _%rest124021%_
                                     (cons (_%make-export__127361127362%_
                                            _%bind124180%_
                                            _%phi124175%_
                                            (gx#current-expander-context)
                                            _%name124173%_)
                                           _%r124022%_)))
                                  _%$e124177%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx123860%_
                                  _%hd124019%_
                                  _%id124163%_)))
                           (_%E124040124143%_)))))
                 (_%E124040124143%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124040124143%_))
                                           (_%E124040124143%_))))
                                   (_%E124040124143%_))))
                            (_%E124026124233%_
                             (lambda ()
                               (if (gx#stx-pair? _%e124023124055%_)
                                   (let ((_%e124028124187%_
                                          (gx#syntax-e _%e124023124055%_)))
                                     (let ((_%hd124029124190%_
                                            (##car _%e124028124187%_))
                                           (_%tl124030124192%_
                                            (##cdr _%e124028124187%_)))
                                       (if (eq? (gx#stx-e _%hd124029124190%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl124030124192%_)
                                               (let ((_%e124031124195%_
                                                      (gx#syntax-e
                                                       _%tl124030124192%_)))
                                                 (let ((_%hd124032124198%_
                                                        (##car _%e124031124195%_))
                                                       (_%tl124033124200%_
                                                        (##cdr _%e124031124195%_)))
                                                   (let ((_%phi124203%_
                                                          _%hd124032124198%_))
                                                     (if (gx#stx-pair?
                                                          _%tl124033124200%_)
                                                         (let ((_%e124034124205%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl124033124200%_)))
                   (let ((_%hd124035124208%_ (##car _%e124034124205%_))
                         (_%tl124036124210%_ (##cdr _%e124034124205%_)))
                     (let ((_%id124213%_ _%hd124035124208%_))
                       (if (gx#stx-pair? _%tl124036124210%_)
                           (let ((_%e124037124215%_
                                  (gx#syntax-e _%tl124036124210%_)))
                             (let ((_%hd124038124218%_
                                    (##car _%e124037124215%_))
                                   (_%tl124039124220%_
                                    (##cdr _%e124037124215%_)))
                               (let ((_%name124223%_ _%hd124038124218%_))
                                 (if (gx#stx-null? _%tl124039124220%_)
                                     (if (and (gx#stx-fixnum? _%phi124203%_)
                                              (gx#identifier? _%id124213%_)
                                              (gx#identifier? _%name124223%_))
                                         (let* ((_%phi124225%_
                                                 (gx#stx-e _%phi124203%_))
                                                (_%$e124227%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id124213%_
                                                  _%phi124225%_)))
                                           (if _%$e124227%_
                                               ((lambda (_%bind124230%_)
                                                  (_%K124020%_
                                                   _%rest124021%_
                                                   (cons (_%make-export__127361127362%_
                                                          _%bind124230%_
                                                          _%phi124225%_
                                                          (gx#current-expander-context)
                                                          _%name124223%_)
                                                         _%r124022%_)))
                                                _%$e124227%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx123860%_
                                                _%hd124019%_
                                                _%id124213%_)))
                                         (_%E124027124183%_))
                                     (_%E124027124183%_)))))
                           (_%E124027124183%_)))))
                 (_%E124027124183%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124027124183%_))
                                           (_%E124027124183%_))))
                                   (_%E124027124183%_))))
                            (_%E124025124245%_
                             (lambda ()
                               (let ((_%id124237%_ _%e124023124055%_))
                                 (if (gx#identifier? _%id124237%_)
                                     (let ((_%$e124239%_
                                            (gx#core-resolve-identifier__1
                                             _%id124237%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e124239%_
                                           ((lambda (_%bind124242%_)
                                              (_%K124020%_
                                               _%rest124021%_
                                               (cons (_%make-export__0__127363127366%_
                                                      _%bind124242%_)
                                                     _%r124022%_)))
                                            _%$e124239%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx123860%_
                                            _%hd124019%_)))
                                     (_%E124026124233%_)))))
                            (_%E124024124309%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e124023124055%_) '#t)
                                   (let* ((_%current-ctx124249%_
                                           (gx#current-expander-context))
                                          (_%current-phi124251%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx124253%_
                                           (gx#core-context-shift
                                            _%current-ctx124249%_
                                            _%current-phi124251%_))
                                          (_%phi-bind124255%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx124253%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp124258%_ ((_%bind-rest124260%_
                                                         _%phi-bind124255%_)
                                                        (_%set124261%_ '()))
                                       (let* ((_%bind-rest124262124272%_
                                               _%bind-rest124260%_)
                                              (_%else124264124280%_
                                               (lambda ()
                                                 (_%K124020%_
                                                  _%rest124021%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi124251%_
                                                         _%set124261%_)
                                                        _%r124022%_))))
                                              (_%K124266124290%_
                                               (lambda (_%bind-rest124283%_
                                                        _%bind124284%_
                                                        _%key124285%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind124284%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind124284%_))
                                                     (_%lp124258%_
                                                      _%bind-rest124283%_
                                                      _%set124261%_)
                                                     (_%lp124258%_
                                                      _%bind-rest124283%_
                                                      (cons (_%make-export__2__127365127368%_
                                                             _%bind124284%_
                                                             _%current-phi124251%_
                                                             _%current-ctx124249%_)
                                                            _%set124261%_))))))
                                         (if (##pair? _%bind-rest124262124272%_)
                                             (let ((_%hd124267124293%_
                                                    (##car _%bind-rest124262124272%_))
                                                   (_%tl124268124295%_
                                                    (##cdr _%bind-rest124262124272%_)))
                                               (if (##pair? _%hd124267124293%_)
                                                   (let ((_%hd124269124298%_
                                                          (##car _%hd124267124293%_))
                                                         (_%tl124270124300%_
                                                          (##cdr _%hd124267124293%_)))
                                                     (let* ((_%key124303%_
                                                             _%hd124269124298%_)
                                                            (_%bind124305%_
                                                             _%tl124270124300%_)
                                                            (_%bind-rest124307%_
                                                             _%tl124268124295%_))
                                                       (_%K124266124290%_
                                                        _%bind-rest124307%_
                                                        _%bind124305%_
                                                        _%key124303%_)))
                                                   (_%else124264124280%_)))
                                             (_%else124264124280%_)))))
                                   (_%E124025124245%_)))))
                       (_%E124024124309%_))))
                  (_%export-imports123865%_
                   (lambda (_%src123895%_ _%r123896%_)
                     (letrec* ((_%current-ctx123898%_
                                (gx#current-expander-context))
                               (_%current-phi123899%_
                                (gx#current-export-expander-phi))
                               (_%import->export123900%_
                                (lambda (_%in123981%_)
                                  (let* ((_%in123982123990%_ _%in123981%_)
                                         (_%E123984123994%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in123982123990%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K123985124001%_
                                          (lambda (_%phi123997%_
                                                   _%key123998%_
                                                   _%out123999%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx123898%_
                                             _%key123998%_
                                             _%phi123997%_
                                             _%key123998%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in123982123990%_
                                         'gx#module-import::t)
                                        (let* ((_%e123986124004%_
                                                (##unchecked-structure-ref
                                                 _%in123982123990%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out124007%_
                                                _%e123986124004%_)
                                               (_%e123987124009%_
                                                (##unchecked-structure-ref
                                                 _%in123982123990%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key124012%_
                                                _%e123987124009%_)
                                               (_%e123988124014%_
                                                (##unchecked-structure-ref
                                                 _%in123982123990%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi124017%_
                                                _%e123988124014%_))
                                          (_%K123985124001%_
                                           _%phi124017%_
                                           _%key124012%_
                                           _%out124007%_))
                                        (_%E123984123994%_)))))
                               (_%fold-e123901%_
                                (lambda (_%in123903%_ _%r123904%_)
                                  (let* ((_%in123905123919%_ _%in123903%_)
                                         (_%else123908123927%_
                                          (lambda () _%r123904%_)))
                                    (let ((_%K123914123963%_
                                           (lambda (_%phi123959%_
                                                    _%key123960%_
                                                    _%out123961%_)
                                             (if (and (fx= _%phi123959%_
                                                           _%current-phi123899%_)
                                                      (eq? _%src123895%_
                                                           (##unchecked-structure-ref
                                                            _%out123961%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export123900%_
                                                        _%in123903%_)
                                                       _%r123904%_)
                                                 _%r123904%_)))
                                          (_%K123910123938%_
                                           (lambda (_%imports123931%_
                                                    _%phi123932%_
                                                    _%ctx123933%_)
                                             (if (and (fx= _%phi123932%_
                                                           _%current-phi123899%_)
                                                      (eq? _%src123895%_
                                                           _%ctx123933%_))
                                                 (__foldl1
                                                  (lambda (_%in123935%_
                                                           _%r123936%_)
                                                    (cons (_%import->export123900%_
                                                           _%in123935%_)
                                                          _%r123936%_))
                                                  _%r123904%_
                                                  _%imports123931%_)
                                                 _%r123904%_))))
                                      (let ((_%try-match123907123956%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in123905123919%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e123911123941%_
                                                           (##unchecked-structure-ref
                                                            _%in123905123919%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e123912123946%_
                                                           (##unchecked-structure-ref
                                                            _%in123905123919%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e123913123951%_
                                                           (##unchecked-structure-ref
                                                            _%in123905123919%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx123944%_
                                                            _%e123911123941%_)
                                                           (_%phi123949%_
                                                            _%e123912123946%_)
                                                           (_%imports123954%_
                                                            _%e123913123951%_))
                                                       (_%K123910123938%_
                                                        _%imports123954%_
                                                        _%phi123949%_
                                                        _%ctx123944%_)))
                                                   (_%else123908123927%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in123905123919%_
                                             'gx#module-import::t)
                                            (let* ((_%e123915123966%_
                                                    (##unchecked-structure-ref
                                                     _%in123905123919%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e123916123971%_
                                                    (##unchecked-structure-ref
                                                     _%in123905123919%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e123917123976%_
                                                    (##unchecked-structure-ref
                                                     _%in123905123919%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out123969%_
                                                     _%e123915123966%_)
                                                    (_%key123974%_
                                                     _%e123916123971%_)
                                                    (_%phi123979%_
                                                     _%e123917123976%_))
                                                (_%K123914123963%_
                                                 _%phi123979%_
                                                 _%key123974%_
                                                 _%out123969%_)))
                                            (_%try-match123907123956%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src123895%_
                              _%current-phi123899%_
                              (__foldl1
                               _%fold-e123901%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx123898%_
                                '8
                                '#f
                                '#f)))
                             _%r123896%_))))
                  (_%export!123866%_
                   (lambda (_%rbody123882%_)
                     (letrec* ((_%current-ctx123884%_
                                (gx#current-expander-context))
                               (_%fold-e123885%_
                                (lambda (_%out123889%_ _%r123890%_)
                                  (if (##structure-direct-instance-of?
                                       _%out123889%_
                                       'gx#module-export::t)
                                      (cons _%out123889%_ _%r123890%_)
                                      (if (##structure-direct-instance-of?
                                           _%out123889%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r123890%_
                                           (##unchecked-structure-ref
                                            _%out123889%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r123890%_)))))
                       (let ((_%body123887%_ (reverse _%rbody123882%_)))
                         (##unchecked-structure-set!
                          _%current-ctx123884%_
                          (__foldl1
                           _%fold-e123885%_
                           (##unchecked-structure-ref
                            _%current-ctx123884%_
                            '9
                            '#f
                            '#f)
                           _%body123887%_)
                          '9
                          '#f
                          '#f)
                         _%body123887%_))))
                  (_%expanded-export?123867%_
                   (lambda (_%e123877%_)
                     (let ((_%$e123879%_
                            (##structure-direct-instance-of?
                             _%e123877%_
                             'gx#module-export::t)))
                       (if _%$e123879%_
                           _%$e123879%_
                           (##structure-direct-instance-of?
                            _%e123877%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?123861%_)
              (let ((_%rbody123873%_
                     (gx#core-expand-import/export
                      _%stx123860%_
                      _%expanded-export?123867%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1123864%_)))
                (if _%internal-expand?123861%_
                    (reverse _%rbody123873%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!123866%_ _%rbody123873%_))
                     (gx#stx-source _%stx123860%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx123860%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx123860%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx124359%_)
        (let ((_%internal-expand?124361%_ '#f))
          (gx#core-expand-export%__%
           _%stx124359%_
           _%internal-expand?124361%_))))
    (define gx#core-expand-export%
      (lambda _g127437_
        (let ((_g127436_ (##length _g127437_)))
          (cond ((##fx= _g127436_ 1)
                 (apply gx#core-expand-export%__0 _g127437_))
                ((##fx= _g127436_ 2)
                 (apply gx#core-expand-export%__% _g127437_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g127437_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd123857%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd123857%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx123827%_)
        (let* ((_%e123828123835%_ _%stx123827%_)
               (_%E123830123839%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123828123835%_)))
               (_%E123829123853%_
                (lambda ()
                  (if (gx#stx-pair? _%e123828123835%_)
                      (let ((_%e123831123843%_
                             (gx#syntax-e _%e123828123835%_)))
                        (let ((_%hd123832123846%_ (##car _%e123831123843%_))
                              (_%tl123833123848%_ (##cdr _%e123831123843%_)))
                          (let ((_%body123851%_ _%tl123833123848%_))
                            (if (gx#identifier-list? _%body123851%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body123851%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body123851%_))
                                   (gx#stx-source _%stx123827%_)))
                                (_%E123830123839%_)))))
                      (_%E123830123839%_)))))
          (_%E123829123853%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id123793%_ _%private?123794%_ _%phi123795%_ _%ctx123796%_)
        (gx#core-bind-syntax!__%
         _%id123793%_
         ((if _%private?123794%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id123793%_))
         _%private?123794%_
         _%phi123795%_
         _%ctx123796%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id123801%_)
        (let* ((_%private?123803%_ '#f)
               (_%phi123805%_ (gx#current-expander-phi))
               (_%ctx123807%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123801%_
           _%private?123803%_
           _%phi123805%_
           _%ctx123807%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id123809%_ _%private?123810%_)
        (let* ((_%phi123812%_ (gx#current-expander-phi))
               (_%ctx123814%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123809%_
           _%private?123810%_
           _%phi123812%_
           _%ctx123814%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id123816%_ _%private?123817%_ _%phi123818%_)
        (let ((_%ctx123820%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123816%_
           _%private?123817%_
           _%phi123818%_
           _%ctx123820%_))))
    (define gx#core-bind-feature!
      (lambda _g127439_
        (let ((_g127438_ (##length _g127439_)))
          (cond ((##fx= _g127438_ 1)
                 (apply gx#core-bind-feature!__0 _g127439_))
                ((##fx= _g127438_ 2)
                 (apply gx#core-bind-feature!__1 _g127439_))
                ((##fx= _g127438_ 3)
                 (apply gx#core-bind-feature!__2 _g127439_))
                ((##fx= _g127438_ 4)
                 (apply gx#core-bind-feature!__% _g127439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g127439_))))))))
