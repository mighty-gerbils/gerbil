(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712697256)
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
      (lambda _%$args124916%_
        (apply make-instance gx#module-import::t _%$args124916%_)))
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
      (lambda _%$args124913%_
        (apply make-instance gx#module-export::t _%$args124913%_)))
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
      (lambda _%$args124910%_
        (apply make-instance gx#import-set::t _%$args124910%_)))
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
      (lambda _%$args124907%_
        (apply make-instance gx#export-set::t _%$args124907%_)))
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
      (lambda _%$args124904%_
        (apply make-instance gx#import-expander::t _%$args124904%_)))
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
      (lambda _%$args124901%_
        (apply make-instance gx#export-expander::t _%$args124901%_)))
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
      (lambda _%$args124898%_
        (apply make-instance gx#import-export-expander::t _%$args124898%_)))
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
      (lambda (_%path124895%_ _%fun124896%_)
        (call-with-input-file
         (cons 'path: (cons _%path124895%_ gx#source-file-settings))
         _%fun124896%_)))
    (define gx#module-context:::init!
      (lambda (_%self124878%_
               _%id124879%_
               _%super124880%_
               _%ns124881%_
               _%path124882%_)
        (let ((_%self124885%_ _%self124878%_))
          (if (##fx< '11 (##structure-length _%self124885%_))
              (begin
                (##unchecked-structure-set!
                 _%self124885%_
                 _%id124879%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self124885%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self124885%_
                 _%super124880%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self124885%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self124885%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self124885%_
                 _%ns124881%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self124885%_
                 _%path124882%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self124885%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self124885%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self124885%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self124885%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self124885%_
                     '11
                     (##vector-length _%self124885%_))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self124711%_ _%ctx124712%_ _%root124713%_)
        (let* ((_%self124716%_ _%self124711%_)
               (_%super124732%_
                (let ((_%$e124726%_ _%root124713%_))
                  (if _%$e124726%_
                      _%$e124726%_
                      (let ((_%$e124729%_ (gx#core-context-root__0)))
                        (if _%$e124729%_
                            _%$e124729%_
                            (let ((__obj124960
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor124961
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj124960
                                      ':init!)))
                                (if __constructor124961
                                    (__constructor124961 __obj124960)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj124960)))))))
          (if _%ctx124712%_
              (let ((_%id124735%_
                     (##structure-ref
                      _%ctx124712%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path124736%_
                     (##structure-ref
                      _%ctx124712%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in124737%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx124712%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e124738%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx124712%_)))))
                (if (##fx< '8 (##structure-length _%self124716%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self124716%_
                       _%id124735%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124716%_
                       (make-hash-table-eq 'size: (##length _%in124737%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124716%_
                       _%super124732%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124716%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124716%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124716%_
                       _%path124736%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124716%_
                       _%in124737%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124716%_
                       _%e124738%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self124716%_
                           '8
                           (##vector-length _%self124716%_)))
                (##for-each
                 (lambda (_%g124739124741%_)
                   (gx#core-bind-weak-import!__%
                    _%g124739124741%_
                    _%self124716%_))
                 _%in124737%_))
              (if (##fx< '8 (##structure-length _%self124716%_))
                  (begin
                    (##unchecked-structure-set! _%self124716%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self124716%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self124716%_
                     _%super124732%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self124716%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self124716%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self124716%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self124716%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self124716%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self124716%_
                         '8
                         (##vector-length _%self124716%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self124747%_ _%ctx124748%_)
        (let ((_%root124750%_ '#f))
          (gx#prelude-context:::init!__%
           _%self124747%_
           _%ctx124748%_
           _%root124750%_))))
    (define gx#prelude-context:::init!
      (lambda _g124967_
        (let ((_g124966_ (##length _g124967_)))
          (cond ((##fx= _g124966_ 2)
                 (apply gx#prelude-context:::init!__0 _g124967_))
                ((##fx= _g124966_ 3)
                 (apply gx#prelude-context:::init!__% _g124967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g124967_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self124585%_ _%e124586%_)
        (if (##fx< '3 (##structure-length _%self124585%_))
            (begin
              (##unchecked-structure-set!
               _%self124585%_
               _%e124586%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124585%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124585%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self124585%_
                   '3
                   (##vector-length _%self124585%_)))))
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
      (lambda (_%g124211124214%_ _%g124212124216%_)
        (gx#core-apply-user-expander__%
         _%g124211124214%_
         _%g124212124216%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124082124085%_ _%g124083124087%_)
        (gx#core-apply-user-expander__%
         _%g124082124085%_
         _%g124083124087%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx123953%_)
        (let* ((_%path123955%_
                (##structure-ref _%ctx123953%_ '7 gx#module-context::t '#f))
               (_%path123957%_
                (if (pair? _%path123955%_)
                    (last _%path123955%_)
                    _%path123955%_)))
          (if (string? _%path123957%_) _%path123957%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path123929%_ _%reload?123930%_ _%eval?123931%_)
        (let ((_%ctx123933%_
               ((gx#current-expander-module-import)
                _%path123929%_
                _%reload?123930%_)))
          (if (and _%ctx123933%_ _%eval?123931%_)
              (gx#eval-module _%ctx123933%_)
              '#!void)
          _%ctx123933%_)))
    (define gx#import-module__0
      (lambda (_%path123938%_)
        (let* ((_%reload?123940%_ '#f) (_%eval?123942%_ '#f))
          (gx#import-module__%
           _%path123938%_
           _%reload?123940%_
           _%eval?123942%_))))
    (define gx#import-module__1
      (lambda (_%path123944%_ _%reload?123945%_)
        (let ((_%eval?123947%_ '#f))
          (gx#import-module__%
           _%path123944%_
           _%reload?123945%_
           _%eval?123947%_))))
    (define gx#import-module
      (lambda _g124969_
        (let ((_g124968_ (##length _g124969_)))
          (cond ((##fx= _g124968_ 1) (apply gx#import-module__0 _g124969_))
                ((##fx= _g124968_ 2) (apply gx#import-module__1 _g124969_))
                ((##fx= _g124968_ 3) (apply gx#import-module__% _g124969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g124969_))))))
    (define gx#eval-module
      (lambda (_%mod123926%_)
        ((gx#current-expander-module-eval) _%mod123926%_)))
    (define gx#core-eval-module
      (lambda (_%obj123906%_)
        (letrec ((_%force-e123908%_
                  (lambda (_%getf123922%_ _%e123923%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf123922%_ _%e123923%_)))
                     gx#current-expander-context
                     _%e123923%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur123910%_ ((_%e123912%_ _%obj123906%_))
            (if (##structure-instance-of? _%e123912%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e123915%_
                         (gx#core-context-prelude__% _%e123912%_)))
                    (if _%$e123915%_ (_%recur123910%_ _%$e123915%_) '#!void))
                  (_%force-e123908%_ gx#module-context-e _%e123912%_))
                (if (##structure-instance-of?
                     _%e123912%_
                     'gx#prelude-context::t)
                    (_%force-e123908%_ gx#prelude-context-e _%e123912%_)
                    (if (gx#stx-string? _%e123912%_)
                        (_%recur123910%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e123912%_)))
                        (if (gx#core-library-module-path? _%e123912%_)
                            (_%recur123910%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e123912%_)))
                            (error '"cannot eval module" _%obj123906%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx123886%_)
        (let _%lp123888%_ ((_%e123890%_ _%ctx123886%_))
          (if (or (##structure-instance-of? _%e123890%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e123890%_ 'gx#local-context::t))
              (_%lp123888%_ (##unchecked-structure-ref _%e123890%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e123890%_ 'gx#prelude-context::t)
                  _%e123890%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx123902%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx123902%_))))
    (define gx#core-context-prelude
      (lambda _g124971_
        (let ((_g124970_ (##length _g124971_)))
          (cond ((##fx= _g124970_ 0)
                 (apply gx#core-context-prelude__0 _g124971_))
                ((##fx= _g124970_ 1)
                 (apply gx#core-context-prelude__% _g124971_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g124971_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx123877%_)
        (let ((_%$e123879%_ (hash-get gx#__module-registry _%ctx123877%_)))
          (if _%$e123879%_
              _%$e123879%_
              (let ((_%pre123883%_
                     (let ((__obj124962
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
                       (gx#prelude-context:::init! __obj124962 _%ctx123877%_)
                       __obj124962)))
                (hash-put! gx#__module-registry _%ctx123877%_ _%pre123883%_)
                _%pre123883%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath123749%_ _%reload?123750%_)
        (letrec ((_%import-source123752%_
                  (lambda (_%path123841%_)
                    (if (member _%path123841%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path123841%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g124972_ (gx#core-read-module _%path123841%_)))
                         (begin
                           (let ((_g124973_
                                  (if (##values? _g124972_)
                                      (##vector-length _g124972_)
                                      1)))
                             (if (not (##fx= _g124973_ 4))
                                 (error "Context expects 4 values" _g124973_)))
                           (let ((_%pre123844%_ (##vector-ref _g124972_ 0))
                                 (_%id123845%_ (##vector-ref _g124972_ 1))
                                 (_%ns123846%_ (##vector-ref _g124972_ 2))
                                 (_%body123847%_ (##vector-ref _g124972_ 3)))
                             (let* ((_%prelude123857%_
                                     (if (##structure-instance-of?
                                          _%pre123844%_
                                          'gx#prelude-context::t)
                                         _%pre123844%_
                                         (if (##structure-instance-of?
                                              _%pre123844%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre123844%_)
                                             (if (string? _%pre123844%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre123844%_))
                                                 (if (not _%pre123844%_)
                                                     (let ((_%$e123853%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e123853%_
                                                           _%$e123853%_
                                                           (let ((__obj124963
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
                     (gx#prelude-context:::init! __obj124963 '#f)
                     __obj124963)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath123749%_
                                                            _%pre123844%_))))))
                                    (_%ctx123859%_
                                     (let ((__obj124964
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
                                        __obj124964
                                        _%id123845%_
                                        _%prelude123857%_
                                        _%ns123846%_
                                        _%path123841%_)
                                       __obj124964))
                                    (_%body123861%_
                                     (gx#core-expand-module-begin
                                      _%body123847%_
                                      _%ctx123859%_))
                                    (_%body123863%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body123861%_)
                                      _%path123841%_
                                      _%ctx123859%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx123859%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body123863%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx123859%_
                                _%body123863%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path123841%_
                                _%ctx123859%_)
                               (hash-put!
                                gx#__module-registry
                                _%id123845%_
                                _%ctx123859%_)
                               _%ctx123859%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path123841%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule123753%_
                  (lambda (_%rpath123769%_)
                    (let* ((_%rpath123770123777%_ _%rpath123769%_)
                           (_%E123772123781%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath123770123777%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K123773123829%_
                            (lambda (_%refs123784%_ _%origin123785%_)
                              (let ((_%ctx123787%_
                                     (if _%origin123785%_
                                         (gx#core-import-module__%
                                          _%origin123785%_
                                          _%reload?123750%_)
                                         (gx#current-expander-context))))
                                (let _%lp123789%_ ((_%rest123791%_
                                                    _%refs123784%_)
                                                   (_%ctx123792%_
                                                    _%ctx123787%_))
                                  (let* ((_%rest123793123801%_ _%rest123791%_)
                                         (_%else123795123809%_
                                          (lambda () _%ctx123792%_))
                                         (_%K123797123817%_
                                          (lambda (_%rest123812%_ _%id123813%_)
                                            (let ((_%bind123815%_
                                                   (gx#resolve-identifier__%
                                                    _%id123813%_
                                                    '0
                                                    _%ctx123792%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind123815%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind123815%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp123789%_
                                                   _%rest123812%_
                                                   (##unchecked-structure-ref
                                                    _%bind123815%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath123769%_
                                                         _%id123813%_
                                                         _%bind123815%_))))))
                                    (if (##pair? _%rest123793123801%_)
                                        (let ((_%hd123798123820%_
                                               (##car _%rest123793123801%_))
                                              (_%tl123799123822%_
                                               (##cdr _%rest123793123801%_)))
                                          (let* ((_%id123825%_
                                                  _%hd123798123820%_)
                                                 (_%rest123827%_
                                                  _%tl123799123822%_))
                                            (_%K123797123817%_
                                             _%rest123827%_
                                             _%id123825%_)))
                                        (_%else123795123809%_))))))))
                      (if (##pair? _%rpath123770123777%_)
                          (let ((_%hd123774123832%_
                                 (##car _%rpath123770123777%_))
                                (_%tl123775123834%_
                                 (##cdr _%rpath123770123777%_)))
                            (let* ((_%origin123837%_ _%hd123774123832%_)
                                   (_%refs123839%_ _%tl123775123834%_))
                              (_%K123773123829%_
                               _%refs123839%_
                               _%origin123837%_)))
                          (_%E123772123781%_))))))
          (let ((_%$e123755%_
                 (if (not _%reload?123750%_)
                     (hash-get gx#__module-registry _%rpath123749%_)
                     '#f)))
            (if _%$e123755%_
                _%$e123755%_
                (if (list? _%rpath123749%_)
                    (_%import-submodule123753%_ _%rpath123749%_)
                    (if (gx#core-library-module-path? _%rpath123749%_)
                        (let ((_%ctx123760%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath123749%_)
                                _%reload?123750%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath123749%_
                           _%ctx123760%_)
                          _%ctx123760%_)
                        (let* ((_%npath123763%_
                                (path-normalize _%rpath123749%_))
                               (_%$e123765%_
                                (if (not _%reload?123750%_)
                                    (hash-get
                                     gx#__module-registry
                                     _%npath123763%_)
                                    '#f)))
                          (if _%$e123765%_
                              _%$e123765%_
                              (_%import-source123752%_
                               _%npath123763%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath123870%_)
        (let ((_%reload?123872%_ '#f))
          (gx#core-import-module__% _%rpath123870%_ _%reload?123872%_))))
    (define gx#core-import-module
      (lambda _g124975_
        (let ((_g124974_ (##length _g124975_)))
          (cond ((##fx= _g124974_ 1)
                 (apply gx#core-import-module__0 _g124975_))
                ((##fx= _g124974_ 2)
                 (apply gx#core-import-module__% _g124975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g124975_))))))
    (define gx#core-read-module
      (lambda (_%path123738%_)
        (__with-catch
         (lambda (_%exn123740%_)
           (if (and (datum-parsing-exception? _%exn123740%_)
                    (eq? (datum-parsing-exception-filepos _%exn123740%_) '0))
               (gx#core-read-module/lang _%path123738%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path123738%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g123742123744%_)
                      (display-exception _%exn123740%_ _%g123742123744%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path123738%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path123590%_)
        (let _%lp123592%_ ((_%body123594%_
                            (read-syntax-from-file _%path123590%_))
                           (_%pre123595%_ '#f)
                           (_%ns123596%_ '#f)
                           (_%pkg123597%_ '#f))
          (let* ((_%e123598123622%_ _%body123594%_)
                 (_%E123614123648%_
                  (lambda ()
                    (let ((_g124976_
                           (if _%pkg123597%_
                               (values _%pre123595%_
                                       _%ns123596%_
                                       _%pkg123597%_)
                               (gx#core-read-module-package
                                _%path123590%_
                                _%pre123595%_
                                _%ns123596%_))))
                      (begin
                        (let ((_g124977_
                               (if (##values? _g124976_)
                                   (##vector-length _g124976_)
                                   1)))
                          (if (not (##fx= _g124977_ 3))
                              (error "Context expects 3 values" _g124977_)))
                        (let ((_%pre123626%_ (##vector-ref _g124976_ 0))
                              (_%ns123627%_ (##vector-ref _g124976_ 1))
                              (_%pkg123628%_ (##vector-ref _g124976_ 2)))
                          (let* ((_%prelude123634%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre123626%_)
                                      (gx#syntax-local-e__0 _%pre123626%_)
                                      (if (gx#core-library-module-path?
                                           _%pre123626%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre123626%_)
                                          (if (gx#stx-string? _%pre123626%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre123626%_
                                               _%path123590%_)
                                              (gx#stx-e _%pre123626%_)))))
                                 (_%path-id123636%_
                                  (gx#core-module-path->namespace
                                   _%path123590%_))
                                 (_%pkg-id123638%_
                                  (if _%pkg123628%_
                                      (string-append
                                       _%pkg123628%_
                                       '"/"
                                       _%path-id123636%_)
                                      _%path-id123636%_))
                                 (_%module-id123640%_
                                  (string->symbol _%pkg-id123638%_))
                                 (_%module-ns123645%_
                                  (if (eq? _%ns123627%_ '#!void)
                                      '#f
                                      (let ((_%$e123642%_ _%ns123627%_))
                                        (if _%$e123642%_
                                            _%$e123642%_
                                            _%pkg-id123638%_)))))
                            (values _%prelude123634%_
                                    _%module-id123640%_
                                    _%module-ns123645%_
                                    _%body123594%_)))))))
                 (_%E123607123680%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123598123622%_)
                        (let ((_%e123615123652%_
                               (gx#syntax-e _%e123598123622%_)))
                          (let ((_%hd123616123655%_ (##car _%e123615123652%_))
                                (_%tl123617123657%_ (##cdr _%e123615123652%_)))
                            (if (eq? (gx#stx-e _%hd123616123655%_) 'package:)
                                (if (gx#stx-pair? _%tl123617123657%_)
                                    (let ((_%e123618123660%_
                                           (gx#syntax-e _%tl123617123657%_)))
                                      (let ((_%hd123619123663%_
                                             (##car _%e123618123660%_))
                                            (_%tl123620123665%_
                                             (##cdr _%e123618123660%_)))
                                        (let* ((_%pkg123668%_
                                                _%hd123619123663%_)
                                               (_%rest123670%_
                                                _%tl123620123665%_))
                                          (if '#t
                                              (let ((_%pkg123678%_
                                                     (if (gx#identifier?
                                                          _%pkg123668%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%pkg123668%_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg123668%_)
                         (gx#stx-false? _%pkg123668%_))
                     (gx#stx-e _%pkg123668%_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _%pkg123668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123592%_
                                                 _%rest123670%_
                                                 _%pre123595%_
                                                 _%ns123596%_
                                                 _%pkg123678%_))
                                              (_%E123614123648%_)))))
                                    (_%E123614123648%_))
                                (_%E123614123648%_))))
                        (_%E123614123648%_))))
                 (_%E123600123710%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123598123622%_)
                        (let ((_%e123608123684%_
                               (gx#syntax-e _%e123598123622%_)))
                          (let ((_%hd123609123687%_ (##car _%e123608123684%_))
                                (_%tl123610123689%_ (##cdr _%e123608123684%_)))
                            (if (eq? (gx#stx-e _%hd123609123687%_) 'namespace:)
                                (if (gx#stx-pair? _%tl123610123689%_)
                                    (let ((_%e123611123692%_
                                           (gx#syntax-e _%tl123610123689%_)))
                                      (let ((_%hd123612123695%_
                                             (##car _%e123611123692%_))
                                            (_%tl123613123697%_
                                             (##cdr _%e123611123692%_)))
                                        (let* ((_%ns123700%_
                                                _%hd123612123695%_)
                                               (_%rest123702%_
                                                _%tl123613123697%_))
                                          (if '#t
                                              (let ((_%ns123708%_
                                                     (if (gx#identifier?
                                                          _%ns123700%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%ns123700%_))
                                                         (if (gx#stx-string?
                                                              _%ns123700%_)
                                                             (gx#stx-e
                                                              _%ns123700%_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns123700%_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _%ns123700%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123592%_
                                                 _%rest123702%_
                                                 _%pre123595%_
                                                 _%ns123708%_
                                                 _%pkg123597%_))
                                              (_%E123607123680%_)))))
                                    (_%E123607123680%_))
                                (_%E123607123680%_))))
                        (_%E123607123680%_))))
                 (_%E123599123734%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123598123622%_)
                        (let ((_%e123601123714%_
                               (gx#syntax-e _%e123598123622%_)))
                          (let ((_%hd123602123717%_ (##car _%e123601123714%_))
                                (_%tl123603123719%_ (##cdr _%e123601123714%_)))
                            (if (eq? (gx#stx-e _%hd123602123717%_) 'prelude:)
                                (if (gx#stx-pair? _%tl123603123719%_)
                                    (let ((_%e123604123722%_
                                           (gx#syntax-e _%tl123603123719%_)))
                                      (let ((_%hd123605123725%_
                                             (##car _%e123604123722%_))
                                            (_%tl123606123727%_
                                             (##cdr _%e123604123722%_)))
                                        (let* ((_%prelude123730%_
                                                _%hd123605123725%_)
                                               (_%rest123732%_
                                                _%tl123606123727%_))
                                          (if '#t
                                              (_%lp123592%_
                                               _%rest123732%_
                                               _%prelude123730%_
                                               _%ns123596%_
                                               _%pkg123597%_)
                                              (_%E123600123710%_)))))
                                    (_%E123600123710%_))
                                (_%E123600123710%_))))
                        (_%E123600123710%_)))))
            (_%E123599123734%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path123412%_)
        (letrec ((_%default-read-module-body123414%_
                  (lambda (_%inp123582%_)
                    (let _%lp123584%_ ((_%body123586%_ '()))
                      (let ((_%next123588%_ (read-syntax__% _%inp123582%_)))
                        (if (eof-object? _%next123588%_)
                            (reverse _%body123586%_)
                            (_%lp123584%_
                             (cons _%next123588%_ _%body123586%_)))))))
                 (_%read-body123415%_
                  (lambda (_%inp123500%_
                           _%pre123501%_
                           _%ns123502%_
                           _%pkg123503%_
                           _%args123504%_)
                    (let ((_g124978_
                           (if _%pkg123503%_
                               (values _%pre123501%_
                                       _%ns123502%_
                                       _%pkg123503%_)
                               (gx#core-read-module-package
                                _%path123412%_
                                _%pre123501%_
                                _%ns123502%_))))
                      (begin
                        (let ((_g124979_
                               (if (##values? _g124978_)
                                   (##vector-length _g124978_)
                                   1)))
                          (if (not (##fx= _g124979_ 3))
                              (error "Context expects 3 values" _g124979_)))
                        (let ((_%pre123506%_ (##vector-ref _g124978_ 0))
                              (_%ns123507%_ (##vector-ref _g124978_ 1))
                              (_%pkg123508%_ (##vector-ref _g124978_ 2)))
                          (let* ((_%prelude123510%_
                                  (gx#import-module__0 _%pre123506%_))
                                 (_%read-module-body123565%_
                                  (let ((_%$e123556%_
                                         (__find (lambda (_%e123511123513%_)
                                                   (let* ((_%g123515123525%_
                                                           _%e123511123513%_)
                                                          (_%else123517123533%_
                                                           (lambda () '#f))
                                                          (_%K123519123537%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g123515123525%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e123520123540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g123515123525%_
                          '1
                          '#f
                          '#f))
                        (_%e123521123543%_
                         (##unchecked-structure-ref
                          _%g123515123525%_
                          '2
                          '#f
                          '#f))
                        (_%e123522123546%_
                         (##unchecked-structure-ref
                          _%g123515123525%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e123522123546%_ '1)
                       (let ((_%e123523123549%_
                              (##unchecked-structure-ref
                               _%g123515123525%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g123551123553%_)
                                (eq? _%g123551123553%_ 'read-module-body))
                              _%e123523123549%_)
                             (_%K123519123537%_)
                             (_%else123517123533%_)))
                       (_%else123517123533%_)))
                 (_%else123517123533%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude123510%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e123556%_
                                        ((lambda (_%xport123559%_)
                                           (let ((_%proc123562%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport123559%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc123562%_)
                                                 _%proc123562%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path123412%_
                                                  _%pre123506%_
                                                  _%proc123562%_))))
                                         _%$e123556%_)
                                        _%default-read-module-body123414%_)))
                                 (_%path-id123567%_
                                  (gx#core-module-path->namespace
                                   _%path123412%_))
                                 (_%pkg-id123569%_
                                  (if _%pkg123508%_
                                      (string-append
                                       _%pkg123508%_
                                       '"/"
                                       _%path-id123567%_)
                                      _%path-id123567%_))
                                 (_%module-id123571%_
                                  (string->symbol _%pkg-id123569%_))
                                 (_%module-ns123576%_
                                  (let ((_%$e123573%_ _%ns123507%_))
                                    (if _%$e123573%_
                                        _%$e123573%_
                                        _%pkg-id123569%_)))
                                 (_%body123579%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body123565%_
                                      _%inp123500%_))
                                   gx#current-module-reader-path
                                   _%path123412%_
                                   gx#current-module-reader-args
                                   _%args123504%_)))
                            (values _%prelude123510%_
                                    _%module-id123571%_
                                    _%module-ns123576%_
                                    _%body123579%_)))))))
                 (_%string-e123416%_
                  (lambda (_%obj123494%_ _%what123495%_)
                    (if (string? _%obj123494%_)
                        _%obj123494%_
                        (if (symbol? _%obj123494%_)
                            (symbol->string _%obj123494%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what123495%_)
                             _%path123412%_
                             _%obj123494%_)))))
                 (_%read-lang-args123417%_
                  (lambda (_%inp123449%_ _%args123450%_)
                    (let* ((_%args123451123459%_ _%args123450%_)
                           (_%else123453123467%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path123412%_)))
                           (_%K123455123482%_
                            (lambda (_%args123470%_ _%prelude123471%_)
                              (let* ((_%pkg123473%_
                                      (pgetq__0 'package: _%args123470%_))
                                     (_%pkg123475%_
                                      (if _%pkg123473%_
                                          (_%string-e123416%_
                                           _%pkg123473%_
                                           '"package")
                                          '#f))
                                     (_%ns123477%_
                                      (pgetq__0 'namespace: _%args123470%_))
                                     (_%ns123479%_
                                      (if _%ns123477%_
                                          (_%string-e123416%_
                                           _%ns123477%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body123415%_
                                 _%inp123449%_
                                 _%prelude123471%_
                                 _%ns123479%_
                                 _%pkg123475%_
                                 _%args123470%_)))))
                      (if (##pair? _%args123451123459%_)
                          (let ((_%hd123456123485%_
                                 (##car _%args123451123459%_))
                                (_%tl123457123487%_
                                 (##cdr _%args123451123459%_)))
                            (let* ((_%prelude123490%_ _%hd123456123485%_)
                                   (_%args123492%_ _%tl123457123487%_))
                              (_%K123455123482%_
                               _%args123492%_
                               _%prelude123490%_)))
                          (_%else123453123467%_)))))
                 (_%read-lang123418%_
                  (lambda (_%inp123423%_)
                    (let* ((_%head123425%_ (read-line _%inp123423%_))
                           (_%$e123427%_
                            (string-index__0 _%head123425%_ '#\space)))
                      (if _%$e123427%_
                          ((lambda (_%ix123430%_)
                             (let ((_%lang123432%_
                                    (substring
                                     _%head123425%_
                                     '0
                                     _%ix123430%_)))
                               (if (equal? _%lang123432%_ '"#lang")
                                   (let* ((_%rest123434%_
                                           (substring
                                            _%head123425%_
                                            (##fx+ _%ix123430%_ '1)
                                            (string-length _%head123425%_)))
                                          (_%args123445%_
                                           (__with-catch
                                            (lambda (_%g123435123437%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path123412%_
                                               _%g123435123437%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest123434%_
                                               (lambda (_%g123440123442%_)
                                                 (read-all
                                                  _%g123440123442%_
                                                  read)))))))
                                     (_%read-lang-args123417%_
                                      _%inp123423%_
                                      _%args123445%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path123412%_))))
                           _%$e123427%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path123412%_)))))
                 (_%read-e123419%_
                  (lambda (_%inp123421%_)
                    (if (eq? (peek-char _%inp123421%_) '#\#)
                        (_%read-lang123418%_ _%inp123421%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path123412%_)))))
          (gx#call-with-input-source-file _%path123412%_ _%read-e123419%_))))
    (define gx#core-read-module-package
      (lambda (_%path123360%_ _%pre123361%_ _%ns123362%_)
        (letrec ((_%string-e123364%_
                  (lambda (_%e123407%_)
                    (if (symbol? _%e123407%_)
                        (symbol->string _%e123407%_)
                        (if (string? _%e123407%_)
                            _%e123407%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e123407%_))))))
          (let _%lp123366%_ ((_%dir123368%_ (path-directory _%path123360%_))
                             (_%pkg-path123369%_ '()))
            (let ((_%gerbil.pkg123371%_
                   (path-expand '"gerbil.pkg" _%dir123368%_)))
              (if (##file-exists? _%gerbil.pkg123371%_)
                  (let ((_%plist123373%_
                         (gx#core-library-package-plist__% _%dir123368%_ '#t)))
                    (if (null? _%plist123373%_)
                        (let ((_%pkg123376%_
                               (if (not (null? _%pkg-path123369%_))
                                   (string-join _%pkg-path123369%_ '"/")
                                   '#f)))
                          (values _%pre123361%_ _%ns123362%_ _%pkg123376%_))
                        (if (list? _%plist123373%_)
                            (let* ((_%root123379%_
                                    (pgetq__0 'package: _%plist123373%_))
                                   (_%pkg123383%_
                                    (let ((_%pkg-path123381%_
                                           (if _%root123379%_
                                               (cons (_%string-e123364%_
                                                      _%root123379%_)
                                                     _%pkg-path123369%_)
                                               _%pkg-path123369%_)))
                                      (if (not (null? _%pkg-path123381%_))
                                          (string-join _%pkg-path123381%_ '"/")
                                          '#f)))
                                   (_%ns123390%_
                                    (let ((_%ns123388%_
                                           (let ((_%$e123385%_ _%ns123362%_))
                                             (if _%$e123385%_
                                                 _%$e123385%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist123373%_)))))
                                      (if _%ns123388%_
                                          (_%string-e123364%_ _%ns123388%_)
                                          '#f)))
                                   (_%pre123395%_
                                    (let ((_%$e123392%_ _%pre123361%_))
                                      (if _%$e123392%_
                                          _%$e123392%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist123373%_)))))
                              (values _%pre123395%_
                                      _%ns123390%_
                                      _%pkg123383%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist123373%_))))
                  (let ((_%dir*123399%_
                         (path-strip-trailing-directory-separator
                          _%dir123368%_)))
                    (if (or (__string-empty? _%dir*123399%_)
                            (equal? _%dir123368%_ _%dir*123399%_))
                        (values _%pre123361%_ _%ns123362%_ '#f)
                        (let ((_%xpath123404%_
                               (path-strip-directory _%dir*123399%_))
                              (_%xdir123405%_ (path-directory _%dir*123399%_)))
                          (_%lp123366%_
                           _%xdir123405%_
                           (cons _%xpath123404%_ _%pkg-path123369%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path123358%_)
        (path-strip-extension (path-strip-directory _%path123358%_))))
    (define gx#core-module-path->id
      (lambda (_%path123356%_)
        (##string->symbol (gx#core-module-path->namespace _%path123356%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path123335%_ _%rel123336%_)
        (let* ((_%path123338%_ (gx#stx-e _%stx-path123335%_))
               (_%path123340%_
                (if (__string-empty? (path-extension _%path123338%_))
                    (##string-append _%path123338%_ '".ss")
                    _%path123338%_)))
          (gx#core-resolve-path__%
           _%path123340%_
           (let ((_%$e123343%_ (gx#stx-source _%stx-path123335%_)))
             (if _%$e123343%_ _%$e123343%_ _%rel123336%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path123349%_)
        (let ((_%rel123351%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path123349%_ _%rel123351%_))))
    (define gx#core-resolve-module-path
      (lambda _g124981_
        (let ((_g124980_ (##length _g124981_)))
          (cond ((##fx= _g124980_ 1)
                 (apply gx#core-resolve-module-path__0 _g124981_))
                ((##fx= _g124980_ 2)
                 (apply gx#core-resolve-module-path__% _g124981_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g124981_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath123220%_)
        (let* ((_%spath123222%_ (symbol->string (gx#stx-e _%libpath123220%_)))
               (_%spath123224%_
                (substring
                 _%spath123222%_
                 '1
                 (##string-length _%spath123222%_)))
               (_%ext123226%_ (path-extension _%spath123224%_))
               (_%ssi123228%_
                (if (__string-empty? _%ext123226%_)
                    (##string-append _%spath123224%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath123224%_)
                     '".ssi")))
               (_%srcs123232%_
                (if (__string-empty? _%ext123226%_)
                    (##map (lambda (_%ext123230%_)
                             (string-append _%spath123224%_ _%ext123230%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath123224%_ '()))))
          (let _%lp123235%_ ((_%rest123237%_ (load-path)))
            (let* ((_%rest123238123247%_ _%rest123237%_)
                   (_%E123241123251%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest123238123247%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K123243123322%_
                     (lambda (_%rest123262%_ _%dir123263%_)
                       (letrec ((_%resolve123265%_
                                 (lambda (_%ssi123278%_ _%srcs123279%_)
                                   (let ((_%compiled-path123281%_
                                          (path-expand
                                           _%ssi123278%_
                                           _%dir123263%_)))
                                     (if (##file-exists?
                                          _%compiled-path123281%_)
                                         (path-normalize
                                          _%compiled-path123281%_)
                                         (let _%lpr123283%_ ((_%rest-src123285%_
                                                              _%srcs123279%_))
                                           (let* ((_%rest-src123286123294%_
                                                   _%rest-src123285%_)
                                                  (_%else123288123302%_
                                                   (lambda ()
                                                     (_%lp123235%_
                                                      _%rest123262%_)))
                                                  (_%K123290123310%_
                                                   (lambda (_%rest-src123305%_
                                                            _%src123306%_)
                                                     (let ((_%src-path123308%_
                                                            (path-expand
                                                             _%src123306%_
                                                             _%dir123263%_)))
                                                       (if (##file-exists?
                                                            _%src-path123308%_)
                                                           (path-normalize
                                                            _%src-path123308%_)
                                                           (_%lpr123283%_
                                                            _%rest-src123305%_))))))
                                             (if (##pair? _%rest-src123286123294%_)
                                                 (let ((_%hd123291123313%_
                                                        (##car _%rest-src123286123294%_))
                                                       (_%tl123292123315%_
                                                        (##cdr _%rest-src123286123294%_)))
                                                   (let* ((_%src123318%_
                                                           _%hd123291123313%_)
                                                          (_%rest-src123320%_
                                                           _%tl123292123315%_))
                                                     (_%K123290123310%_
                                                      _%rest-src123320%_
                                                      _%src123318%_)))
                                                 (_%else123288123302%_)))))))))
                         (let ((_%$e123267%_
                                (gx#core-library-package-path-prefix
                                 _%dir123263%_)))
                           (if _%$e123267%_
                               ((lambda (_%prefix123270%_)
                                  (if (string-prefix?
                                       _%prefix123270%_
                                       _%spath123224%_)
                                      (let ((_%ssi123274%_
                                             (substring
                                              _%ssi123228%_
                                              (string-length _%prefix123270%_)
                                              (##string-length _%ssi123228%_)))
                                            (_%srcs123275%_
                                             (##map (lambda (_%src123272%_)
                                                      (substring
                                                       _%src123272%_
                                                       (string-length
                                                        _%prefix123270%_)
                                                       (string-length
                                                        _%src123272%_)))
                                                    _%srcs123232%_)))
                                        (_%resolve123265%_
                                         _%ssi123274%_
                                         _%srcs123275%_))
                                      (_%lp123235%_ _%rest123262%_)))
                                _%$e123267%_)
                               (_%resolve123265%_
                                _%ssi123228%_
                                _%srcs123232%_))))))
                    (_%K123242123256%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath123220%_))))
                (let ((_%try-match123240123259%_
                       (lambda ()
                         (if (##null? _%rest123238123247%_)
                             (_%K123242123256%_)
                             (_%E123241123251%_)))))
                  (if (##pair? _%rest123238123247%_)
                      (let ((_%tl123245123327%_ (##cdr _%rest123238123247%_))
                            (_%hd123244123325%_ (##car _%rest123238123247%_)))
                        (let ((_%dir123330%_ _%hd123244123325%_)
                              (_%rest123332%_ _%tl123245123327%_))
                          (_%K123243123322%_ _%rest123332%_ _%dir123330%_)))
                      (_%try-match123240123259%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath123188%_)
        (letrec ((_%resolve123190%_
                  (lambda (_%path123211%_ _%base123212%_)
                    (let ((_%$e123214%_
                           (string-rindex__0 _%base123212%_ '#\/)))
                      (if _%$e123214%_
                          ((lambda (_%idx123217%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base123212%_ '0 _%idx123217%_)
                                '"/"
                                _%path123211%_))))
                           _%$e123214%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path123211%_))))))))
          (let ((_%spath123192%_ (symbol->string (gx#stx-e _%modpath123188%_)))
                (_%mod123193%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod123193%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath123188%_))
            (let ((_%mpath123195%_
                   (symbol->string
                    (##structure-ref
                     _%mod123193%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp123197%_ ((_%spath123199%_ _%spath123192%_)
                                 (_%mpath123200%_ _%mpath123195%_))
                (if (string-prefix? '"../" _%spath123199%_)
                    (let ((_%$e123203%_
                           (string-rindex__0 _%mpath123200%_ '#\/)))
                      (if _%$e123203%_
                          ((lambda (_%idx123206%_)
                             (_%lp123197%_
                              (substring
                               _%spath123199%_
                               '3
                               (string-length _%spath123199%_))
                              (substring _%mpath123200%_ '0 _%idx123206%_)))
                           _%$e123203%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath123188%_)))
                    (if (string-prefix? '"./" _%spath123199%_)
                        (_%lp123197%_
                         (substring
                          _%spath123199%_
                          '2
                          (string-length _%spath123199%_))
                         _%mpath123200%_)
                        (_%resolve123190%_
                         _%spath123199%_
                         _%mpath123200%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir123180%_)
        (let ((_%$e123182%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir123180%_))))
          (if _%$e123182%_
              ((lambda (_%pkg123185%_)
                 (##string-append (symbol->string _%pkg123185%_) '"/"))
               _%$e123182%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir123150%_ _%exists?123151%_)
        (let ((_%$e123153%_ (hash-get gx#__module-pkg-cache _%dir123150%_)))
          (if _%$e123153%_
              (values _%$e123153%_)
              (let* ((_%gerbil.pkg123157%_
                      (path-expand '"gerbil.pkg" _%dir123150%_))
                     (_%plist123167%_
                      (if (or _%exists?123151%_
                              (##file-exists? _%gerbil.pkg123157%_))
                          (let ((_%e123162%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg123157%_
                                  read)))
                            (if (eof-object? _%e123162%_)
                                '()
                                (if (list? _%e123162%_)
                                    _%e123162%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg123157%_
                                     _%e123162%_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _%dir123150%_ _%plist123167%_)
                _%plist123167%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir123173%_)
        (let ((_%exists?123175%_ '#f))
          (gx#core-library-package-plist__% _%dir123173%_ _%exists?123175%_))))
    (define gx#core-library-package-plist
      (lambda _g124983_
        (let ((_g124982_ (##length _g124983_)))
          (cond ((##fx= _g124982_ 1)
                 (apply gx#core-library-package-plist__0 _g124983_))
                ((##fx= _g124982_ 2)
                 (apply gx#core-library-package-plist__% _g124983_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g124983_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx123147%_)
        (gx#core-special-module-path? _%stx123147%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx123145%_)
        (gx#core-special-module-path? _%stx123145%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx123140%_ _%char123141%_)
        (if (gx#identifier? _%stx123140%_)
            (if (interned-symbol? (gx#stx-e _%stx123140%_))
                (let ((_%str123143%_
                       (symbol->string (gx#stx-e _%stx123140%_))))
                  (if (##fx> (##string-length _%str123143%_) '1)
                      (eq? (string-ref _%str123143%_ '0) _%char123141%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx123134%_)
        (gx#core-bound-identifier?__%
         _%stx123134%_
         (lambda (_%g123135123137%_)
           (gx#expander-binding?__% _%g123135123137%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx123128%_)
        (gx#core-bound-identifier?__%
         _%stx123128%_
         (lambda (_%g123129123131%_)
           (gx#expander-binding?__% _%g123129123131%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123115%_)
        (letrec ((_%module-prelude?123117%_
                  (lambda (_%e123123%_)
                    (let ((_%$e123125%_
                           (##structure-instance-of?
                            _%e123123%_
                            'gx#module-context::t)))
                      (if _%$e123125%_
                          _%$e123125%_
                          (##structure-instance-of?
                           _%e123123%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123115%_
           (lambda (_%g123118123120%_)
             (gx#expander-binding?__%
              _%g123118123120%_
              _%module-prelude?123117%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123045%_ _%ctx123046%_ _%force-weak?123047%_)
        (let* ((_%in123048123057%_ _%in123045%_)
               (_%E123050123061%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123048123057%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123051123074%_
                (lambda (_%weak?123064%_
                         _%phi123065%_
                         _%key123066%_
                         _%source123067%_)
                  (gx#core-bind!__%
                   _%key123066%_
                   (let ((_%e123069%_
                          (gx#core-resolve-module-export _%source123067%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123069%_ '1 '#f '#f)
                      _%key123066%_
                      _%phi123065%_
                      _%e123069%_
                      (##unchecked-structure-ref _%source123067%_ '1 '#f '#f)
                      (let ((_%$e123071%_ _%force-weak?123047%_))
                        (if _%$e123071%_ _%$e123071%_ _%weak?123064%_))))
                   gx#core-context-rebind?
                   _%phi123065%_
                   _%ctx123046%_))))
          (if (##structure-direct-instance-of?
               _%in123048123057%_
               'gx#module-import::t)
              (let* ((_%e123052123077%_
                      (##unchecked-structure-ref
                       _%in123048123057%_
                       '1
                       '#f
                       '#f))
                     (_%source123080%_ _%e123052123077%_)
                     (_%e123053123082%_
                      (##unchecked-structure-ref
                       _%in123048123057%_
                       '2
                       '#f
                       '#f))
                     (_%key123085%_ _%e123053123082%_)
                     (_%e123054123087%_
                      (##unchecked-structure-ref
                       _%in123048123057%_
                       '3
                       '#f
                       '#f))
                     (_%phi123090%_ _%e123054123087%_)
                     (_%e123055123092%_
                      (##unchecked-structure-ref
                       _%in123048123057%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123095%_ _%e123055123092%_))
                (_%K123051123074%_
                 _%weak?123095%_
                 _%phi123090%_
                 _%key123085%_
                 _%source123080%_))
              (_%E123050123061%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123100%_)
        (let* ((_%ctx123102%_ (gx#current-expander-context))
               (_%force-weak?123104%_ '#f))
          (gx#core-bind-import!__%
           _%in123100%_
           _%ctx123102%_
           _%force-weak?123104%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123106%_ _%ctx123107%_)
        (let ((_%force-weak?123109%_ '#f))
          (gx#core-bind-import!__%
           _%in123106%_
           _%ctx123107%_
           _%force-weak?123109%_))))
    (define gx#core-bind-import!
      (lambda _g124985_
        (let ((_g124984_ (##length _g124985_)))
          (cond ((##fx= _g124984_ 1) (apply gx#core-bind-import!__0 _g124985_))
                ((##fx= _g124984_ 2) (apply gx#core-bind-import!__1 _g124985_))
                ((##fx= _g124984_ 3) (apply gx#core-bind-import!__% _g124985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g124985_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123031%_ _%ctx123032%_)
        (gx#core-bind-import!__% _%in123031%_ _%ctx123032%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123037%_)
        (let ((_%ctx123039%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123037%_ _%ctx123039%_))))
    (define gx#core-bind-weak-import!
      (lambda _g124987_
        (let ((_g124986_ (##length _g124987_)))
          (cond ((##fx= _g124986_ 1)
                 (apply gx#core-bind-weak-import!__0 _g124987_))
                ((##fx= _g124986_ 2)
                 (apply gx#core-bind-weak-import!__% _g124987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g124987_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out122922%_)
        (letrec ((_%subst122924%_
                  (lambda (_%key122970%_)
                    (let* ((_%key122971122979%_ _%key122970%_)
                           (_%else122973122987%_ (lambda () _%key122970%_))
                           (_%K122975123018%_
                            (lambda (_%mark122990%_ _%id122991%_)
                              (let* ((_%mark122992122998%_ _%mark122990%_)
                                     (_%E122994123002%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark122992122998%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K122995123010%_
                                      (lambda (_%subst123005%_)
                                        (let ((_%$e123007%_
                                               (if _%subst123005%_
                                                   (hash-get
                                                    _%subst123005%_
                                                    _%id122991%_)
                                                   '#f)))
                                          (if _%$e123007%_
                                              _%$e123007%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key122970%_))))))
                                (if (##structure-instance-of?
                                     _%mark122992122998%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e122996123013%_
                                            (##unchecked-structure-ref
                                             _%mark122992122998%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123016%_ _%e122996123013%_))
                                      (_%K122995123010%_ _%subst123016%_))
                                    (_%E122994123002%_))))))
                      (if (##pair? _%key122971122979%_)
                          (let ((_%hd122976123021%_
                                 (##car _%key122971122979%_))
                                (_%tl122977123023%_
                                 (##cdr _%key122971122979%_)))
                            (let* ((_%id123026%_ _%hd122976123021%_)
                                   (_%mark123028%_ _%tl122977123023%_))
                              (_%K122975123018%_ _%mark123028%_ _%id123026%_)))
                          (_%else122973122987%_))))))
          (let* ((_%out122925122935%_ _%out122922%_)
                 (_%E122927122939%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out122925122935%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K122928122946%_
                  (lambda (_%phi122942%_ _%key122943%_ _%ctx122944%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx122944%_ _%phi122942%_)
                     (_%subst122924%_ _%key122943%_)))))
            (if (##structure-direct-instance-of?
                 _%out122925122935%_
                 'gx#module-export::t)
                (let* ((_%e122929122949%_
                        (##unchecked-structure-ref
                         _%out122925122935%_
                         '1
                         '#f
                         '#f))
                       (_%ctx122952%_ _%e122929122949%_)
                       (_%e122930122954%_
                        (##unchecked-structure-ref
                         _%out122925122935%_
                         '2
                         '#f
                         '#f))
                       (_%key122957%_ _%e122930122954%_)
                       (_%e122931122959%_
                        (##unchecked-structure-ref
                         _%out122925122935%_
                         '3
                         '#f
                         '#f))
                       (_%phi122962%_ _%e122931122959%_)
                       (_%e122932122964%_
                        (##unchecked-structure-ref
                         _%out122925122935%_
                         '4
                         '#f
                         '#f))
                       (_%e122933122967%_
                        (##unchecked-structure-ref
                         _%out122925122935%_
                         '5
                         '#f
                         '#f)))
                  (_%K122928122946%_
                   _%phi122962%_
                   _%key122957%_
                   _%ctx122952%_))
                (_%E122927122939%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out122847%_ _%rename122848%_ _%dphi122849%_)
        (let* ((_%out122850122860%_ _%out122847%_)
               (_%E122852122864%_
                (lambda ()
                  (error '"No clause matching"
                         _%out122850122860%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K122853122876%_
                (lambda (_%weak?122867%_
                         _%name122868%_
                         _%phi122869%_
                         _%key122870%_
                         _%ctx122871%_)
                  (##structure
                   gx#module-import::t
                   _%out122847%_
                   (let ((_%$e122873%_ _%rename122848%_))
                     (if _%$e122873%_ _%$e122873%_ _%name122868%_))
                   (fx+ _%phi122869%_ _%dphi122849%_)
                   _%weak?122867%_))))
          (if (##structure-direct-instance-of?
               _%out122850122860%_
               'gx#module-export::t)
              (let* ((_%e122854122879%_
                      (##unchecked-structure-ref
                       _%out122850122860%_
                       '1
                       '#f
                       '#f))
                     (_%ctx122882%_ _%e122854122879%_)
                     (_%e122855122884%_
                      (##unchecked-structure-ref
                       _%out122850122860%_
                       '2
                       '#f
                       '#f))
                     (_%key122887%_ _%e122855122884%_)
                     (_%e122856122889%_
                      (##unchecked-structure-ref
                       _%out122850122860%_
                       '3
                       '#f
                       '#f))
                     (_%phi122892%_ _%e122856122889%_)
                     (_%e122857122894%_
                      (##unchecked-structure-ref
                       _%out122850122860%_
                       '4
                       '#f
                       '#f))
                     (_%name122897%_ _%e122857122894%_)
                     (_%e122858122899%_
                      (##unchecked-structure-ref
                       _%out122850122860%_
                       '5
                       '#f
                       '#f))
                     (_%weak?122902%_ _%e122858122899%_))
                (_%K122853122876%_
                 _%weak?122902%_
                 _%name122897%_
                 _%phi122892%_
                 _%key122887%_
                 _%ctx122882%_))
              (_%E122852122864%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out122907%_)
        (let* ((_%rename122909%_ '#f) (_%dphi122911%_ '0))
          (gx#core-module-export->import__%
           _%out122907%_
           _%rename122909%_
           _%dphi122911%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out122913%_ _%rename122914%_)
        (let ((_%dphi122916%_ '0))
          (gx#core-module-export->import__%
           _%out122913%_
           _%rename122914%_
           _%dphi122916%_))))
    (define gx#core-module-export->import
      (lambda _g124989_
        (let ((_g124988_ (##length _g124989_)))
          (cond ((##fx= _g124988_ 1)
                 (apply gx#core-module-export->import__0 _g124989_))
                ((##fx= _g124988_ 2)
                 (apply gx#core-module-export->import__1 _g124989_))
                ((##fx= _g124988_ 3)
                 (apply gx#core-module-export->import__% _g124989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g124989_))))))
    (define gx#core-expand-module%
      (lambda (_%stx122746%_)
        (letrec ((_%make-context122748%_
                  (lambda (_%id122825%_)
                    (let* ((_%super122827%_ (gx#current-expander-context))
                           (_%bind-id122829%_ (gx#stx-e _%id122825%_))
                           (_%mod-id122831%_
                            (if (##structure-instance-of?
                                 _%super122827%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super122827%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id122829%_)
                                _%bind-id122829%_))
                           (_%ns122833%_ (symbol->string _%mod-id122831%_))
                           (_%path122843%_
                            (if (##structure-instance-of?
                                 _%super122827%_
                                 'gx#module-context::t)
                                (let ((_%path122835%_
                                       (##unchecked-structure-ref
                                        _%super122827%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path122835%_)
                                          (null? _%path122835%_))
                                      (cons _%bind-id122829%_ _%path122835%_)
                                      (if (not _%path122835%_)
                                          _%bind-id122829%_
                                          (cons _%bind-id122829%_
                                                (cons _%path122835%_ '())))))
                                _%bind-id122829%_))
                           (__obj124965
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
                       __obj124965
                       _%mod-id122831%_
                       _%super122827%_
                       _%ns122833%_
                       _%path122843%_)
                      __obj124965)))
                 (_%valid-module-id?122749%_
                  (lambda (_%id122800%_)
                    (let* ((_%str122802%_ (symbol->string _%id122800%_))
                           (_%len122804%_ (##string-length _%str122802%_)))
                      (if (##fx>= _%len122804%_ '1)
                          (let _%loop122807%_ ((_%index122809%_
                                                (##fx- (##string-length
                                                        _%str122802%_)
                                                       '1)))
                            (if (##fx>= _%index122809%_ '0)
                                (let ((_%c122811%_
                                       (string-ref
                                        _%str122802%_
                                        _%index122809%_)))
                                  (if (or (and (##char>=? _%c122811%_ '#\a)
                                               (##char<=? _%c122811%_ '#\z))
                                          (and (##char>=? _%c122811%_ '#\A)
                                               (##char<=? _%c122811%_ '#\Z))
                                          (and (##char>=? _%c122811%_ '#\0)
                                               (##char<=? _%c122811%_ '#\9))
                                          (##char=? _%c122811%_ '#\_)
                                          (##char=? _%c122811%_ '#\-))
                                      (_%loop122807%_
                                       (##fx- _%index122809%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e122750122760%_ _%stx122746%_)
                 (_%E122752122764%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122750122760%_)))
                 (_%E122751122796%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122750122760%_)
                        (let ((_%e122753122768%_
                               (gx#syntax-e _%e122750122760%_)))
                          (let ((_%hd122754122771%_ (##car _%e122753122768%_))
                                (_%tl122755122773%_ (##cdr _%e122753122768%_)))
                            (if (gx#stx-pair? _%tl122755122773%_)
                                (let ((_%e122756122776%_
                                       (gx#syntax-e _%tl122755122773%_)))
                                  (let ((_%hd122757122779%_
                                         (##car _%e122756122776%_))
                                        (_%tl122758122781%_
                                         (##cdr _%e122756122776%_)))
                                    (let* ((_%id122784%_ _%hd122757122779%_)
                                           (_%body122786%_ _%tl122758122781%_))
                                      (if (and (gx#identifier? _%id122784%_)
                                               (gx#stx-list? _%body122786%_))
                                          (if (_%valid-module-id?122749%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx122788%_
                                                      (_%make-context122748%_
                                                       _%id122784%_))
                                                     (_%body122790%_
                                                      (gx#core-expand-module-begin
                                                       _%body122786%_
                                                       _%ctx122788%_))
                                                     (_%body122792%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body122790%_)
                                                       (gx#stx-source
                                                        _%stx122746%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx122788%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body122792%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx122788%_
                                                 _%body122792%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id122784%_
                                                 _%ctx122788%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id122784%_)
                                                  _%body122792%_)
                                                 (gx#stx-source
                                                  _%stx122746%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx122746%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E122752122764%_)))))
                                (_%E122752122764%_))))
                        (_%E122752122764%_)))))
            (_%E122751122796%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body122712%_ _%ctx122713%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx122716%_
                   (gx#core-expand-head (cons '%%begin-module _%body122712%_)))
                  (_%e122717122724%_ _%stx122716%_)
                  (_%E122719122728%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx122716%_)))
                  (_%E122718122742%_
                   (lambda ()
                     (if (gx#stx-pair? _%e122717122724%_)
                         (let ((_%e122720122732%_
                                (gx#syntax-e _%e122717122724%_)))
                           (let ((_%hd122721122735%_ (##car _%e122720122732%_))
                                 (_%tl122722122737%_
                                  (##cdr _%e122720122732%_)))
                             (if (and (gx#identifier? _%hd122721122735%_)
                                      (gx#core-identifier=?
                                       _%hd122721122735%_
                                       '%#begin-module))
                                 (let ((_%body122740%_ _%tl122722122737%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx122716%_)
                                           _%body122740%_
                                           (gx#core-expand-module-body
                                            _%body122740%_))
                                       (_%E122719122728%_)))
                                 (_%E122719122728%_))))
                         (_%E122719122728%_)))))
             (_%E122718122742%_)))
         gx#current-expander-context
         _%ctx122713%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body122508%_)
        (letrec ((_%expand-special122510%_
                  (lambda (_%hd122639%_ _%K122640%_ _%rest122641%_ _%r122642%_)
                    (let* ((_%e122643122660%_ _%hd122639%_)
                           (_%E122655122664%_
                            (lambda ()
                              (_%K122640%_
                               _%rest122641%_
                               (cons (gx#core-expand-top _%hd122639%_)
                                     _%r122642%_))))
                           (_%E122645122676%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122643122660%_)
                                  (let ((_%e122656122668%_
                                         (gx#syntax-e _%e122643122660%_)))
                                    (let ((_%hd122657122671%_
                                           (##car _%e122656122668%_))
                                          (_%tl122658122673%_
                                           (##cdr _%e122656122668%_)))
                                      (if (and (gx#identifier?
                                                _%hd122657122671%_)
                                               (gx#core-identifier=?
                                                _%hd122657122671%_
                                                '%#export))
                                          (if '#t
                                              (_%K122640%_
                                               _%rest122641%_
                                               (cons _%hd122639%_ _%r122642%_))
                                              (_%E122655122664%_))
                                          (_%E122655122664%_))))
                                  (_%E122655122664%_))))
                           (_%E122644122708%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122643122660%_)
                                  (let ((_%e122646122680%_
                                         (gx#syntax-e _%e122643122660%_)))
                                    (let ((_%hd122647122683%_
                                           (##car _%e122646122680%_))
                                          (_%tl122648122685%_
                                           (##cdr _%e122646122680%_)))
                                      (if (and (gx#identifier?
                                                _%hd122647122683%_)
                                               (gx#core-identifier=?
                                                _%hd122647122683%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122648122685%_)
                                              (let ((_%e122649122688%_
                                                     (gx#syntax-e
                                                      _%tl122648122685%_)))
                                                (let ((_%hd122650122691%_
                                                       (##car _%e122649122688%_))
                                                      (_%tl122651122693%_
                                                       (##cdr _%e122649122688%_)))
                                                  (let ((_%hd-bind122696%_
                                                         _%hd122650122691%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122651122693%_)
                                                        (let ((_%e122652122698%_
                                                               (gx#syntax-e
                                                                _%tl122651122693%_)))
                                                          (let ((_%hd122653122701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122652122698%_))
                        (_%tl122654122703%_ (##cdr _%e122652122698%_)))
                    (let ((_%expr122706%_ _%hd122653122701%_))
                      (if (gx#stx-null? _%tl122654122703%_)
                          (if (gx#core-bind-values? _%hd-bind122696%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122696%_)
                                (_%K122640%_
                                 _%rest122641%_
                                 (cons _%hd122639%_ _%r122642%_)))
                              (_%E122645122676%_))
                          (_%E122645122676%_)))))
                (_%E122645122676%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122645122676%_))
                                          (_%E122645122676%_))))
                                  (_%E122645122676%_)))))
                      (_%E122644122708%_))))
                 (_%expand-body122511%_
                  (lambda (_%rbody122513%_)
                    (let _%lp122515%_ ((_%rest122517%_ _%rbody122513%_)
                                       (_%body122518%_ '()))
                      (let* ((_%rest122519122527%_ _%rest122517%_)
                             (_%else122521122535%_ (lambda () _%body122518%_))
                             (_%K122523122627%_
                              (lambda (_%rest122538%_ _%hd122539%_)
                                (let* ((_%e122540122561%_ _%hd122539%_)
                                       (_%E122556122565%_
                                        (lambda ()
                                          (_%lp122515%_
                                           _%rest122538%_
                                           (cons (gx#core-expand-expression
                                                  _%hd122539%_)
                                                 _%body122518%_))))
                                       (_%E122552122579%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122540122561%_)
                                              (let ((_%e122557122569%_
                                                     (gx#syntax-e
                                                      _%e122540122561%_)))
                                                (let ((_%hd122558122572%_
                                                       (##car _%e122557122569%_))
                                                      (_%tl122559122574%_
                                                       (##cdr _%e122557122569%_)))
                                                  (let ((_%form122577%_
                                                         _%hd122558122572%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form122577%_
                                                         gx#special-form-binding?)
                                                        (_%lp122515%_
                                                         _%rest122538%_
                                                         (cons _%hd122539%_
                                                               _%body122518%_))
                                                        (_%E122556122565%_)))))
                                              (_%E122556122565%_))))
                                       (_%E122542122591%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122540122561%_)
                                              (let ((_%e122553122583%_
                                                     (gx#syntax-e
                                                      _%e122540122561%_)))
                                                (let ((_%hd122554122586%_
                                                       (##car _%e122553122583%_))
                                                      (_%tl122555122588%_
                                                       (##cdr _%e122553122583%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122554122586%_)
                                                           (gx#core-identifier=?
                                                            _%hd122554122586%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp122515%_
                                                           _%rest122538%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd122539%_)
                         _%body122518%_))
                  (_%E122552122579%_))
              (_%E122552122579%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122552122579%_))))
                                       (_%E122541122623%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122540122561%_)
                                              (let ((_%e122543122595%_
                                                     (gx#syntax-e
                                                      _%e122540122561%_)))
                                                (let ((_%hd122544122598%_
                                                       (##car _%e122543122595%_))
                                                      (_%tl122545122600%_
                                                       (##cdr _%e122543122595%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122544122598%_)
                                                           (gx#core-identifier=?
                                                            _%hd122544122598%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl122545122600%_)
                                                          (let ((_%e122546122603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl122545122600%_)))
                    (let ((_%hd122547122606%_ (##car _%e122546122603%_))
                          (_%tl122548122608%_ (##cdr _%e122546122603%_)))
                      (let ((_%hd-bind122611%_ _%hd122547122606%_))
                        (if (gx#stx-pair? _%tl122548122608%_)
                            (let ((_%e122549122613%_
                                   (gx#syntax-e _%tl122548122608%_)))
                              (let ((_%hd122550122616%_
                                     (##car _%e122549122613%_))
                                    (_%tl122551122618%_
                                     (##cdr _%e122549122613%_)))
                                (let ((_%expr122621%_ _%hd122550122616%_))
                                  (if (gx#stx-null? _%tl122551122618%_)
                                      (if '#t
                                          (_%lp122515%_
                                           _%rest122538%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind122611%_)
                                                   (gx#core-expand-expression
                                                    _%expr122621%_))
                                                  (gx#stx-source _%hd122539%_))
                                                 _%body122518%_))
                                          (_%E122542122591%_))
                                      (_%E122542122591%_)))))
                            (_%E122542122591%_)))))
                  (_%E122542122591%_))
              (_%E122542122591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122542122591%_)))))
                                  (_%E122541122623%_)))))
                        (if (##pair? _%rest122519122527%_)
                            (let ((_%hd122524122630%_
                                   (##car _%rest122519122527%_))
                                  (_%tl122525122632%_
                                   (##cdr _%rest122519122527%_)))
                              (let* ((_%hd122635%_ _%hd122524122630%_)
                                     (_%rest122637%_ _%tl122525122632%_))
                                (_%K122523122627%_
                                 _%rest122637%_
                                 _%hd122635%_)))
                            (_%else122521122535%_)))))))
          (_%expand-body122511%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body122508%_)
            _%expand-special122510%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx122349%_
               _%expanded?122350%_
               _%method122351%_
               _%current-phi122352%_
               _%expand1122353%_)
        (letrec ((_%K122355%_
                  (lambda (_%rest122475%_ _%r122476%_)
                    (let* ((_%e122477122484%_ _%rest122475%_)
                           (_%E122479122488%_ (lambda () _%r122476%_))
                           (_%E122478122504%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122477122484%_)
                                  (let ((_%e122480122492%_
                                         (gx#syntax-e _%e122477122484%_)))
                                    (let ((_%hd122481122495%_
                                           (##car _%e122480122492%_))
                                          (_%tl122482122497%_
                                           (##cdr _%e122480122492%_)))
                                      (let* ((_%hd122500%_ _%hd122481122495%_)
                                             (_%rest122502%_
                                              _%tl122482122497%_))
                                        (if '#t
                                            (_%step122356%_
                                             _%hd122500%_
                                             _%rest122502%_
                                             _%r122476%_)
                                            (_%E122479122488%_)))))
                                  (_%E122479122488%_)))))
                      (_%E122478122504%_))))
                 (_%step122356%_
                  (lambda (_%hd122389%_ _%rest122390%_ _%r122391%_)
                    (let* ((_%e122392122410%_ _%hd122389%_)
                           (_%E122405122414%_
                            (lambda ()
                              (if (_%expanded?122350%_ (gx#stx-e _%hd122389%_))
                                  (_%K122355%_
                                   _%rest122390%_
                                   (cons (gx#stx-e _%hd122389%_) _%r122391%_))
                                  (_%expand1122353%_
                                   _%hd122389%_
                                   _%K122355%_
                                   _%rest122390%_
                                   _%r122391%_))))
                           (_%E122401122430%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122392122410%_)
                                  (let ((_%e122406122418%_
                                         (gx#syntax-e _%e122392122410%_)))
                                    (let ((_%hd122407122421%_
                                           (##car _%e122406122418%_))
                                          (_%tl122408122423%_
                                           (##cdr _%e122406122418%_)))
                                      (let* ((_%macro122426%_
                                              _%hd122407122421%_)
                                             (_%body122428%_
                                              _%tl122408122423%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro122426%_
                                             gx#syntax-binding?)
                                            (_%K122355%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro122426%_)
                                                    _%hd122389%_
                                                    _%method122351%_)
                                                   _%rest122390%_)
                                             _%r122391%_)
                                            (_%E122405122414%_)))))
                                  (_%E122405122414%_))))
                           (_%E122394122444%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122392122410%_)
                                  (let ((_%e122402122434%_
                                         (gx#syntax-e _%e122392122410%_)))
                                    (let ((_%hd122403122437%_
                                           (##car _%e122402122434%_))
                                          (_%tl122404122439%_
                                           (##cdr _%e122402122434%_)))
                                      (if (eq? (gx#stx-e _%hd122403122437%_)
                                               'begin:)
                                          (let ((_%body122442%_
                                                 _%tl122404122439%_))
                                            (if '#t
                                                (_%K122355%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest122390%_
                                                  _%body122442%_)
                                                 _%r122391%_)
                                                (_%E122401122430%_)))
                                          (_%E122401122430%_))))
                                  (_%E122401122430%_))))
                           (_%E122393122471%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122392122410%_)
                                  (let ((_%e122395122448%_
                                         (gx#syntax-e _%e122392122410%_)))
                                    (let ((_%hd122396122451%_
                                           (##car _%e122395122448%_))
                                          (_%tl122397122453%_
                                           (##cdr _%e122395122448%_)))
                                      (if (eq? (gx#stx-e _%hd122396122451%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl122397122453%_)
                                              (let ((_%e122398122456%_
                                                     (gx#syntax-e
                                                      _%tl122397122453%_)))
                                                (let ((_%hd122399122459%_
                                                       (##car _%e122398122456%_))
                                                      (_%tl122400122461%_
                                                       (##cdr _%e122398122456%_)))
                                                  (let* ((_%dphi122464%_
                                                          _%hd122399122459%_)
                                                         (_%body122466%_
                                                          _%tl122400122461%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi122464%_)
                                                        (let ((_%rbody122469%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K122355%_ _%body122466%_ '()))
                        _%current-phi122352%_
                        (fx+ (gx#stx-e _%dphi122464%_)
                             (_%current-phi122352%_)))))
                  (_%K122355%_
                   _%rest122390%_
                   (__foldr1 cons _%r122391%_ _%rbody122469%_)))
                (_%E122394122444%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122394122444%_))
                                          (_%E122394122444%_))))
                                  (_%E122394122444%_)))))
                      (_%E122393122471%_)))))
          (let* ((_%e122357122364%_ _%stx122349%_)
                 (_%E122359122368%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122357122364%_)))
                 (_%E122358122385%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122357122364%_)
                        (let ((_%e122360122372%_
                               (gx#syntax-e _%e122357122364%_)))
                          (let ((_%hd122361122375%_ (##car _%e122360122372%_))
                                (_%tl122362122377%_ (##cdr _%e122360122372%_)))
                            (let ((_%body122380%_ _%tl122362122377%_))
                              (if '#t
                                  (if (_%current-phi122352%_)
                                      (_%K122355%_ _%body122380%_ '())
                                      (__call-with-parameters
                                       (lambda ()
                                         (_%K122355%_ _%body122380%_ '()))
                                       _%current-phi122352%_
                                       (gx#current-expander-phi)))
                                  (_%E122359122368%_)))))
                        (_%E122359122368%_)))))
            (_%E122358122385%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx122003%_ _%internal-expand?122004%_)
        (letrec ((_%expand1122006%_
                  (lambda (_%hd122321%_ _%K122322%_ _%rest122323%_ _%r122324%_)
                    (if (gx#core-bound-module? _%hd122321%_)
                        (_%import1122007%_
                         (gx#syntax-local-e__0 _%hd122321%_)
                         _%K122322%_
                         _%rest122323%_
                         _%r122324%_)
                        (if (gx#core-library-module-path? _%hd122321%_)
                            (_%import1122007%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd122321%_))
                             _%K122322%_
                             _%rest122323%_
                             _%r122324%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd122321%_)
                                (_%import1122007%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd122321%_))
                                 _%K122322%_
                                 _%rest122323%_
                                 _%r122324%_)
                                (let ((_%e122330%_ (gx#stx-e _%hd122321%_)))
                                  (if (pair? _%e122330%_)
                                      (let ((_%$e122333%_
                                             (gx#stx-e (car _%e122330%_))))
                                        (if (eq? 'spec: _%$e122333%_)
                                            (_%import-spec122010%_
                                             _%hd122321%_
                                             _%K122322%_
                                             _%rest122323%_
                                             _%r122324%_)
                                            (if (eq? 'in: _%$e122333%_)
                                                (_%import-submodule122008%_
                                                 _%hd122321%_
                                                 _%K122322%_
                                                 _%rest122323%_
                                                 _%r122324%_)
                                                (if (eq? 'runtime:
                                                         _%$e122333%_)
                                                    (_%import-runtime122009%_
                                                     _%hd122321%_
                                                     _%K122322%_
                                                     _%rest122323%_
                                                     _%r122324%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx122003%_
                                                     _%hd122321%_)))))
                                      (if (string? _%e122330%_)
                                          (_%import1122007%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd122321%_
                                             (gx#stx-source _%stx122003%_)))
                                           _%K122322%_
                                           _%rest122323%_
                                           _%r122324%_)
                                          (if (##structure-instance-of?
                                               _%e122330%_
                                               'gx#module-context::t)
                                              (_%K122322%_
                                               _%rest122323%_
                                               (cons _%e122330%_ _%r122324%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx122003%_
                                               _%hd122321%_))))))))))
                 (_%import1122007%_
                  (lambda (_%ctx122310%_
                           _%K122311%_
                           _%rest122312%_
                           _%r122313%_)
                    (let ((_%dphi122315%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K122311%_
                       _%rest122312%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx122310%_
                              _%dphi122315%_
                              (map (lambda (_%g122316122318%_)
                                     (gx#core-module-export->import__%
                                      _%g122316122318%_
                                      '#f
                                      _%dphi122315%_))
                                   (##unchecked-structure-ref
                                    _%ctx122310%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r122313%_)))))
                 (_%import-submodule122008%_
                  (lambda (_%hd122277%_ _%K122278%_ _%rest122279%_ _%r122280%_)
                    (let* ((_%e122281122288%_ _%hd122277%_)
                           (_%E122283122292%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122281122288%_)))
                           (_%E122282122306%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122281122288%_)
                                  (let ((_%e122284122296%_
                                         (gx#syntax-e _%e122281122288%_)))
                                    (let ((_%hd122285122299%_
                                           (##car _%e122284122296%_))
                                          (_%tl122286122301%_
                                           (##cdr _%e122284122296%_)))
                                      (let ((_%spath122304%_
                                             _%tl122286122301%_))
                                        (if '#t
                                            (_%import1122007%_
                                             (_%import-spec-source122011%_
                                              _%spath122304%_)
                                             _%K122278%_
                                             _%rest122279%_
                                             _%r122280%_)
                                            (_%E122283122292%_)))))
                                  (_%E122283122292%_)))))
                      (_%E122282122306%_))))
                 (_%import-runtime122009%_
                  (lambda (_%hd122244%_ _%K122245%_ _%rest122246%_ _%r122247%_)
                    (let* ((_%e122248122255%_ _%hd122244%_)
                           (_%E122250122259%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122248122255%_)))
                           (_%E122249122273%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122248122255%_)
                                  (let ((_%e122251122263%_
                                         (gx#syntax-e _%e122248122255%_)))
                                    (let ((_%hd122252122266%_
                                           (##car _%e122251122263%_))
                                          (_%tl122253122268%_
                                           (##cdr _%e122251122263%_)))
                                      (let ((_%spath122271%_
                                             _%tl122253122268%_))
                                        (if '#t
                                            (_%K122245%_
                                             _%rest122246%_
                                             (cons (_%import-spec-source122011%_
                                                    _%spath122271%_)
                                                   _%r122247%_))
                                            (_%E122250122259%_)))))
                                  (_%E122250122259%_)))))
                      (_%E122249122273%_))))
                 (_%import-spec122010%_
                  (lambda (_%hd122082%_ _%K122083%_ _%rest122084%_ _%r122085%_)
                    (let* ((_%e122086122103%_ _%hd122082%_)
                           (_%E122095122107%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122086122103%_)))
                           (_%E122088122218%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122086122103%_)
                                  (let ((_%e122096122111%_
                                         (gx#syntax-e _%e122086122103%_)))
                                    (let ((_%hd122097122114%_
                                           (##car _%e122096122111%_))
                                          (_%tl122098122116%_
                                           (##cdr _%e122096122111%_)))
                                      (if (gx#stx-pair? _%tl122098122116%_)
                                          (let ((_%e122099122119%_
                                                 (gx#syntax-e
                                                  _%tl122098122116%_)))
                                            (let ((_%hd122100122122%_
                                                   (##car _%e122099122119%_))
                                                  (_%tl122101122124%_
                                                   (##cdr _%e122099122119%_)))
                                              (let* ((_%path122127%_
                                                      _%hd122100122122%_)
                                                     (_%specs122129%_
                                                      _%tl122101122124%_))
                                                (if '#t
                                                    (let ((_%src-ctx122131%_
                                                           (_%import-spec-source122011%_
                                                            _%path122127%_))
                                                          (_%exports122132%_
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
                                                          (_%specs122133%_
                                                           (gx#syntax->list
                                                            _%specs122129%_)))
                                                      (for-each
                                                       (lambda (_%out122135%_)
                                                         (hash-put!
                                                          _%exports122132%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out122135%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out122135%_ '4 '#f '#f))
                  _%out122135%_))
               (##unchecked-structure-ref _%src-ctx122131%_ '9 '#f '#f))
              (_%K122083%_
               _%rest122084%_
               (__foldl1
                (lambda (_%spec122137%_ _%r122138%_)
                  (let* ((_%e122139122155%_ _%spec122137%_)
                         (_%E122141122159%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e122139122155%_)))
                         (_%E122140122214%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122139122155%_)
                                (let ((_%e122142122163%_
                                       (gx#syntax-e _%e122139122155%_)))
                                  (let ((_%hd122143122166%_
                                         (##car _%e122142122163%_))
                                        (_%tl122144122168%_
                                         (##cdr _%e122142122163%_)))
                                    (let ((_%phi122171%_ _%hd122143122166%_))
                                      (if (gx#stx-pair? _%tl122144122168%_)
                                          (let ((_%e122145122173%_
                                                 (gx#syntax-e
                                                  _%tl122144122168%_)))
                                            (let ((_%hd122146122176%_
                                                   (##car _%e122145122173%_))
                                                  (_%tl122147122178%_
                                                   (##cdr _%e122145122173%_)))
                                              (let ((_%name122181%_
                                                     _%hd122146122176%_))
                                                (if (gx#stx-pair?
                                                     _%tl122147122178%_)
                                                    (let ((_%e122148122183%_
                                                           (gx#syntax-e
                                                            _%tl122147122178%_)))
                                                      (let ((_%hd122149122186%_
                                                             (##car _%e122148122183%_))
                                                            (_%tl122150122188%_
                                                             (##cdr _%e122148122183%_)))
                                                        (let ((_%src-phi122191%_
                                                               _%hd122149122186%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122150122188%_)
                                                              (let ((_%e122151122193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122150122188%_)))
                        (let ((_%hd122152122196%_ (##car _%e122151122193%_))
                              (_%tl122153122198%_ (##cdr _%e122151122193%_)))
                          (let ((_%src-name122201%_ _%hd122152122196%_))
                            (if (gx#stx-null? _%tl122153122198%_)
                                (if (and (gx#stx-fixnum? _%src-phi122191%_)
                                         (gx#identifier? _%src-name122201%_)
                                         (gx#stx-fixnum? _%phi122171%_)
                                         (gx#identifier? _%name122181%_))
                                    (let ((_%src-phi122203%_
                                           (gx#stx-e _%src-phi122191%_))
                                          (_%src-name122204%_
                                           (gx#core-identifier-key
                                            _%src-name122201%_))
                                          (_%phi122205%_
                                           (gx#stx-e _%phi122171%_))
                                          (_%name122206%_
                                           (gx#core-identifier-key
                                            _%name122181%_)))
                                      (let ((_%$e122208%_
                                             (hash-get
                                              _%exports122132%_
                                              (cons _%src-phi122203%_
                                                    _%src-name122204%_))))
                                        (if _%$e122208%_
                                            ((lambda (_%out122211%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out122211%_
                                                      _%name122206%_
                                                      (fx- _%phi122205%_
                                                           _%src-phi122203%_))
                                                     _%r122138%_))
                                             _%$e122208%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _%stx122003%_
                                             _%hd122082%_))))
                                    (_%E122141122159%_))
                                (_%E122141122159%_)))))
                      (_%E122141122159%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122141122159%_)))))
                                          (_%E122141122159%_)))))
                                (_%E122141122159%_)))))
                    (_%E122140122214%_)))
                _%r122085%_
                _%specs122133%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122095122107%_)))))
                                          (_%E122095122107%_))))
                                  (_%E122095122107%_))))
                           (_%E122087122240%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122086122103%_)
                                  (let ((_%e122089122222%_
                                         (gx#syntax-e _%e122086122103%_)))
                                    (let ((_%hd122090122225%_
                                           (##car _%e122089122222%_))
                                          (_%tl122091122227%_
                                           (##cdr _%e122089122222%_)))
                                      (if (gx#stx-pair? _%tl122091122227%_)
                                          (let ((_%e122092122230%_
                                                 (gx#syntax-e
                                                  _%tl122091122227%_)))
                                            (let ((_%hd122093122233%_
                                                   (##car _%e122092122230%_))
                                                  (_%tl122094122235%_
                                                   (##cdr _%e122092122230%_)))
                                              (let ((_%path122238%_
                                                     _%hd122093122233%_))
                                                (if (gx#stx-null?
                                                     _%tl122094122235%_)
                                                    (if '#t
                                                        (_%K122083%_
                                                         _%rest122084%_
                                                         (cons (_%import-spec-source122011%_
                                                                _%path122238%_)
                                                               _%r122085%_))
                                                        (_%E122088122218%_))
                                                    (_%E122088122218%_)))))
                                          (_%E122088122218%_))))
                                  (_%E122088122218%_)))))
                      (_%E122087122240%_))))
                 (_%import-spec-source122011%_
                  (lambda (_%spath122080%_)
                    (gx#core-import-nested-module
                     _%spath122080%_
                     _%stx122003%_)))
                 (_%import!122012%_
                  (lambda (_%rbody122025%_)
                    (letrec* ((_%current-ctx122027%_
                               (gx#current-expander-context))
                              (_%deps122028%_ (make-hash-table-eq))
                              (_%bind!122029%_
                               (lambda (_%hd122078%_)
                                 (gx#core-bind-import!__1
                                  _%hd122078%_
                                  _%current-ctx122027%_))))
                      (let _%lp122031%_ ((_%rest122033%_ _%rbody122025%_)
                                         (_%body122034%_ '()))
                        (let* ((_%rest122035122043%_ _%rest122033%_)
                               (_%else122037122054%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122027%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122027%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122027%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122034%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122051%_ _%_122052%_)
                                     (gx#eval-module _%ctx122051%_))
                                   _%deps122028%_)
                                  _%body122034%_))
                               (_%K122039122066%_
                                (lambda (_%rest122057%_ _%hd122058%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122058%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122029%_ _%hd122058%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122058%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122058%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122028%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122058%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122058%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122029%_
                                             (##unchecked-structure-ref
                                              _%hd122058%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122058%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122028%_
                                                 (##unchecked-structure-ref
                                                  _%hd122058%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122062%_
                                                 (##structure-instance-of?
                                                  _%hd122058%_
                                                  'gx#module-context::t)))
                                            (if _%$e122062%_
                                                _%$e122062%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx122003%_
                                                 _%hd122058%_)))))
                                  (_%lp122031%_
                                   _%rest122057%_
                                   (cons _%hd122058%_ _%body122034%_)))))
                          (if (##pair? _%rest122035122043%_)
                              (let ((_%hd122040122069%_
                                     (##car _%rest122035122043%_))
                                    (_%tl122041122071%_
                                     (##cdr _%rest122035122043%_)))
                                (let* ((_%hd122074%_ _%hd122040122069%_)
                                       (_%rest122076%_ _%tl122041122071%_))
                                  (_%K122039122066%_
                                   _%rest122076%_
                                   _%hd122074%_)))
                              (_%else122037122054%_)))))))
                 (_%expanded-import?122013%_
                  (lambda (_%e122017%_)
                    (let ((_%$e122019%_
                           (##structure-direct-instance-of?
                            _%e122017%_
                            'gx#import-set::t)))
                      (if _%$e122019%_
                          _%$e122019%_
                          (let ((_%$e122022%_
                                 (##structure-direct-instance-of?
                                  _%e122017%_
                                  'gx#module-import::t)))
                            (if _%$e122022%_
                                _%$e122022%_
                                (##structure-instance-of?
                                 _%e122017%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody122015%_
                 (gx#core-expand-import/export
                  _%stx122003%_
                  _%expanded-import?122013%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1122006%_)))
            (if _%internal-expand?122004%_
                (reverse _%rbody122015%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!122012%_ _%rbody122015%_))
                 (gx#stx-source _%stx122003%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx122342%_)
        (let ((_%internal-expand?122344%_ '#f))
          (gx#core-expand-import%__%
           _%stx122342%_
           _%internal-expand?122344%_))))
    (define gx#core-expand-import%
      (lambda _g124991_
        (let ((_g124990_ (##length _g124991_)))
          (cond ((##fx= _g124990_ 1)
                 (apply gx#core-expand-import%__0 _g124991_))
                ((##fx= _g124990_ 2)
                 (apply gx#core-expand-import%__% _g124991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g124991_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath121930%_ _%where121931%_)
        (let* ((_%e121932121939%_ _%spath121930%_)
               (_%E121934121943%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121932121939%_)))
               (_%E121933121998%_
                (lambda ()
                  (if (gx#stx-pair? _%e121932121939%_)
                      (let ((_%e121935121947%_
                             (gx#syntax-e _%e121932121939%_)))
                        (let ((_%hd121936121950%_ (##car _%e121935121947%_))
                              (_%tl121937121952%_ (##cdr _%e121935121947%_)))
                          (let* ((_%origin121955%_ _%hd121936121950%_)
                                 (_%sub121957%_ _%tl121937121952%_))
                            (if '#t
                                (let ((_%origin-ctx121959%_
                                       (if (gx#stx-false? _%origin121955%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin121955%_))))
                                  (let _%lp121961%_ ((_%rest121963%_
                                                      _%sub121957%_)
                                                     (_%ctx121964%_
                                                      _%origin-ctx121959%_))
                                    (let* ((_%e121965121972%_ _%rest121963%_)
                                           (_%E121967121976%_
                                            (lambda () _%ctx121964%_))
                                           (_%E121966121994%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e121965121972%_)
                                                  (let ((_%e121968121980%_
                                                         (gx#syntax-e
                                                          _%e121965121972%_)))
                                                    (let ((_%hd121969121983%_
                                                           (##car _%e121968121980%_))
                                                          (_%tl121970121985%_
                                                           (##cdr _%e121968121980%_)))
                                                      (let* ((_%id121988%_
                                                              _%hd121969121983%_)
                                                             (_%rest121990%_
                                                              _%tl121970121985%_))
                                                        (if '#t
                                                            (let ((_%bind121992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id121988%_
                            '0
                            _%ctx121964%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind121992%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind121992%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where121931%_
                           _%spath121930%_
                           _%id121988%_))
                      (_%lp121961%_
                       _%rest121990%_
                       (##unchecked-structure-ref _%bind121992%_ '4 '#f '#f)))
                    (_%E121967121976%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121967121976%_)))))
                                      (_%E121966121994%_))))
                                (_%E121934121943%_)))))
                      (_%E121934121943%_)))))
          (_%E121933121998%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd121928%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd121928%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx121422%_ _%internal-expand?121423%_)
        (letrec* ((_%make-export__124919124920%_
                   (lambda (_%bind121876%_
                            _%phi121877%_
                            _%ctx121878%_
                            _%name121879%_)
                     (let* ((_%key121881%_
                             (##unchecked-structure-ref
                              _%bind121876%_
                              '2
                              '#f
                              '#f))
                            (_%export-key121883%_
                             (if _%name121879%_
                                 (gx#core-identifier-key _%name121879%_)
                                 _%key121881%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx121878%_
                        _%key121881%_
                        _%phi121877%_
                        _%export-key121883%_
                        (let ((_%$e121886%_
                               (##structure-instance-of?
                                _%bind121876%_
                                'gx#extern-binding::t)))
                          (if _%$e121886%_
                              _%$e121886%_
                              (##structure-direct-instance-of?
                               _%bind121876%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__124921124924%_
                   (lambda (_%bind121892%_)
                     (let* ((_%phi121894%_ (gx#current-export-expander-phi))
                            (_%ctx121896%_ (gx#current-expander-context))
                            (_%name121898%_ '#f))
                       (_%make-export__124919124920%_
                        _%bind121892%_
                        _%phi121894%_
                        _%ctx121896%_
                        _%name121898%_))))
                  (_%make-export__1__124922124925%_
                   (lambda (_%bind121900%_ _%phi121901%_)
                     (let* ((_%ctx121903%_ (gx#current-expander-context))
                            (_%name121905%_ '#f))
                       (_%make-export__124919124920%_
                        _%bind121900%_
                        _%phi121901%_
                        _%ctx121903%_
                        _%name121905%_))))
                  (_%make-export__2__124923124926%_
                   (lambda (_%bind121907%_ _%phi121908%_ _%ctx121909%_)
                     (let ((_%name121911%_ '#f))
                       (_%make-export__124919124920%_
                        _%bind121907%_
                        _%phi121908%_
                        _%ctx121909%_
                        _%name121911%_))))
                  (_%make-export121425%_
                   (lambda _g124993_
                     (let ((_g124992_ (##length _g124993_)))
                       (cond ((##fx= _g124992_ 1)
                              (apply _%make-export__0__124921124924%_
                                     _g124993_))
                             ((##fx= _g124992_ 2)
                              (apply _%make-export__1__124922124925%_
                                     _g124993_))
                             ((##fx= _g124992_ 3)
                              (apply _%make-export__2__124923124926%_
                                     _g124993_))
                             ((##fx= _g124992_ 4)
                              (apply _%make-export__124919124920%_ _g124993_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g124993_))))))
                  (_%expand1121426%_
                   (lambda (_%hd121581%_
                            _%K121582%_
                            _%rest121583%_
                            _%r121584%_)
                     (let* ((_%e121585121617%_ _%hd121581%_)
                            (_%E121612121621%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx121422%_
                                _%hd121581%_)))
                            (_%E121602121705%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121585121617%_)
                                   (let ((_%e121613121625%_
                                          (gx#syntax-e _%e121585121617%_)))
                                     (let ((_%hd121614121628%_
                                            (##car _%e121613121625%_))
                                           (_%tl121615121630%_
                                            (##cdr _%e121613121625%_)))
                                       (if (eq? (gx#stx-e _%hd121614121628%_)
                                                'import:)
                                           (let ((_%in121633%_
                                                  _%tl121615121630%_))
                                             (if (gx#stx-list? _%in121633%_)
                                                 (let _%lp121635%_ ((_%in-rest121637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in121633%_)
                            (_%r121638%_ _%r121584%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e121639121646%_
                                                           _%in-rest121637%_)
                                                          (_%E121641121650%_
                                                           (lambda ()
                                                             (_%K121582%_
                                                              _%rest121583%_
                                                              _%r121638%_)))
                                                          (_%E121640121701%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e121639121646%_)
                         (let ((_%e121642121654%_
                                (gx#syntax-e _%e121639121646%_)))
                           (let ((_%hd121643121657%_ (##car _%e121642121654%_))
                                 (_%tl121644121659%_
                                  (##cdr _%e121642121654%_)))
                             (let* ((_%hd121662%_ _%hd121643121657%_)
                                    (_%in-rest121664%_ _%tl121644121659%_))
                               (if '#t
                                   (let ((_%src121699%_
                                          (if (gx#core-bound-module?
                                               _%hd121662%_)
                                              (gx#syntax-local-e__0
                                               _%hd121662%_)
                                              (if (gx#core-library-module-path?
                                                   _%hd121662%_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _%hd121662%_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd121662%_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _%hd121662%_))
                                                      (if (gx#stx-string?
                                                           _%hd121662%_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _%hd121662%_
                                                            (gx#stx-source
                                                             _%stx121422%_)))
                                                          (let* ((_%e121670121677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd121662%_)
                         (_%E121672121681%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _%stx121422%_
                             _%hd121662%_)))
                         (_%E121671121695%_
                          (lambda ()
                            (if (gx#stx-pair? _%e121670121677%_)
                                (let ((_%e121673121685%_
                                       (gx#syntax-e _%e121670121677%_)))
                                  (let ((_%hd121674121688%_
                                         (##car _%e121673121685%_))
                                        (_%tl121675121690%_
                                         (##cdr _%e121673121685%_)))
                                    (if (eq? (gx#stx-e _%hd121674121688%_)
                                             'in:)
                                        (let ((_%spath121693%_
                                               _%tl121675121690%_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _%spath121693%_
                                               _%stx121422%_)
                                              (_%E121672121681%_)))
                                        (_%E121672121681%_))))
                                (_%E121672121681%_)))))
                    (_%E121671121695%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp121635%_
                                      _%in-rest121664%_
                                      (_%export-imports121427%_
                                       _%src121699%_
                                       _%r121638%_)))
                                   (_%E121641121650%_)))))
                         (_%E121641121650%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121640121701%_)))
                                                 (_%E121612121621%_)))
                                           (_%E121612121621%_))))
                                   (_%E121612121621%_))))
                            (_%E121589121745%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121585121617%_)
                                   (let ((_%e121603121709%_
                                          (gx#syntax-e _%e121585121617%_)))
                                     (let ((_%hd121604121712%_
                                            (##car _%e121603121709%_))
                                           (_%tl121605121714%_
                                            (##cdr _%e121603121709%_)))
                                       (if (eq? (gx#stx-e _%hd121604121712%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl121605121714%_)
                                               (let ((_%e121606121717%_
                                                      (gx#syntax-e
                                                       _%tl121605121714%_)))
                                                 (let ((_%hd121607121720%_
                                                        (##car _%e121606121717%_))
                                                       (_%tl121608121722%_
                                                        (##cdr _%e121606121717%_)))
                                                   (let ((_%id121725%_
                                                          _%hd121607121720%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121608121722%_)
                                                         (let ((_%e121609121727%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121608121722%_)))
                   (let ((_%hd121610121730%_ (##car _%e121609121727%_))
                         (_%tl121611121732%_ (##cdr _%e121609121727%_)))
                     (let ((_%name121735%_ _%hd121610121730%_))
                       (if (gx#stx-null? _%tl121611121732%_)
                           (if '#t
                               (let* ((_%phi121737%_
                                       (gx#current-export-expander-phi))
                                      (_%$e121739%_
                                       (gx#core-resolve-identifier__1
                                        _%id121725%_
                                        _%phi121737%_)))
                                 (if _%$e121739%_
                                     ((lambda (_%bind121742%_)
                                        (_%K121582%_
                                         _%rest121583%_
                                         (cons (_%make-export__124919124920%_
                                                _%bind121742%_
                                                _%phi121737%_
                                                (gx#current-expander-context)
                                                _%name121735%_)
                                               _%r121584%_)))
                                      _%$e121739%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _%stx121422%_
                                      _%hd121581%_
                                      _%id121725%_)))
                               (_%E121602121705%_))
                           (_%E121602121705%_)))))
                 (_%E121602121705%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121602121705%_))
                                           (_%E121602121705%_))))
                                   (_%E121602121705%_))))
                            (_%E121588121795%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121585121617%_)
                                   (let ((_%e121590121749%_
                                          (gx#syntax-e _%e121585121617%_)))
                                     (let ((_%hd121591121752%_
                                            (##car _%e121590121749%_))
                                           (_%tl121592121754%_
                                            (##cdr _%e121590121749%_)))
                                       (if (eq? (gx#stx-e _%hd121591121752%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl121592121754%_)
                                               (let ((_%e121593121757%_
                                                      (gx#syntax-e
                                                       _%tl121592121754%_)))
                                                 (let ((_%hd121594121760%_
                                                        (##car _%e121593121757%_))
                                                       (_%tl121595121762%_
                                                        (##cdr _%e121593121757%_)))
                                                   (let ((_%phi121765%_
                                                          _%hd121594121760%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121595121762%_)
                                                         (let ((_%e121596121767%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121595121762%_)))
                   (let ((_%hd121597121770%_ (##car _%e121596121767%_))
                         (_%tl121598121772%_ (##cdr _%e121596121767%_)))
                     (let ((_%id121775%_ _%hd121597121770%_))
                       (if (gx#stx-pair? _%tl121598121772%_)
                           (let ((_%e121599121777%_
                                  (gx#syntax-e _%tl121598121772%_)))
                             (let ((_%hd121600121780%_
                                    (##car _%e121599121777%_))
                                   (_%tl121601121782%_
                                    (##cdr _%e121599121777%_)))
                               (let ((_%name121785%_ _%hd121600121780%_))
                                 (if (gx#stx-null? _%tl121601121782%_)
                                     (if (and (gx#stx-fixnum? _%phi121765%_)
                                              (gx#identifier? _%id121775%_)
                                              (gx#identifier? _%name121785%_))
                                         (let* ((_%phi121787%_
                                                 (gx#stx-e _%phi121765%_))
                                                (_%$e121789%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id121775%_
                                                  _%phi121787%_)))
                                           (if _%$e121789%_
                                               ((lambda (_%bind121792%_)
                                                  (_%K121582%_
                                                   _%rest121583%_
                                                   (cons (_%make-export__124919124920%_
                                                          _%bind121792%_
                                                          _%phi121787%_
                                                          (gx#current-expander-context)
                                                          _%name121785%_)
                                                         _%r121584%_)))
                                                _%$e121789%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx121422%_
                                                _%hd121581%_
                                                _%id121775%_)))
                                         (_%E121589121745%_))
                                     (_%E121589121745%_)))))
                           (_%E121589121745%_)))))
                 (_%E121589121745%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121589121745%_))
                                           (_%E121589121745%_))))
                                   (_%E121589121745%_))))
                            (_%E121587121807%_
                             (lambda ()
                               (let ((_%id121799%_ _%e121585121617%_))
                                 (if (gx#identifier? _%id121799%_)
                                     (let ((_%$e121801%_
                                            (gx#core-resolve-identifier__1
                                             _%id121799%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e121801%_
                                           ((lambda (_%bind121804%_)
                                              (_%K121582%_
                                               _%rest121583%_
                                               (cons (_%make-export__0__124921124924%_
                                                      _%bind121804%_)
                                                     _%r121584%_)))
                                            _%$e121801%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx121422%_
                                            _%hd121581%_)))
                                     (_%E121588121795%_)))))
                            (_%E121586121871%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e121585121617%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx121811%_
                                               (gx#current-expander-context))
                                              (_%current-phi121813%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx121815%_
                                               (gx#core-context-shift
                                                _%current-ctx121811%_
                                                _%current-phi121813%_))
                                              (_%phi-bind121817%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx121815%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp121820%_ ((_%bind-rest121822%_
                                                             _%phi-bind121817%_)
                                                            (_%set121823%_
                                                             '()))
                                           (let* ((_%bind-rest121824121834%_
                                                   _%bind-rest121822%_)
                                                  (_%else121826121842%_
                                                   (lambda ()
                                                     (_%K121582%_
                                                      _%rest121583%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi121813%_
                                                             _%set121823%_)
                                                            _%r121584%_))))
                                                  (_%K121828121852%_
                                                   (lambda (_%bind-rest121845%_
                                                            _%bind121846%_
                                                            _%key121847%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind121846%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind121846%_))
                                                         (_%lp121820%_
                                                          _%bind-rest121845%_
                                                          _%set121823%_)
                                                         (_%lp121820%_
                                                          _%bind-rest121845%_
                                                          (cons (_%make-export__2__124923124926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind121846%_
                         _%current-phi121813%_
                         _%current-ctx121811%_)
                        _%set121823%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest121824121834%_)
                                                 (let ((_%hd121829121855%_
                                                        (##car _%bind-rest121824121834%_))
                                                       (_%tl121830121857%_
                                                        (##cdr _%bind-rest121824121834%_)))
                                                   (if (##pair? _%hd121829121855%_)
                                                       (let ((_%hd121831121860%_
                                                              (##car _%hd121829121855%_))
                                                             (_%tl121832121862%_
                                                              (##cdr _%hd121829121855%_)))
                                                         (let* ((_%key121865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd121831121860%_)
                        (_%bind121867%_ _%tl121832121862%_)
                        (_%bind-rest121869%_ _%tl121830121857%_))
                   (_%K121828121852%_
                    _%bind-rest121869%_
                    _%bind121867%_
                    _%key121865%_)))
               (_%else121826121842%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else121826121842%_)))))
                                       (_%E121587121807%_))
                                   (_%E121587121807%_)))))
                       (_%E121586121871%_))))
                  (_%export-imports121427%_
                   (lambda (_%src121457%_ _%r121458%_)
                     (letrec* ((_%current-ctx121460%_
                                (gx#current-expander-context))
                               (_%current-phi121461%_
                                (gx#current-export-expander-phi))
                               (_%import->export121462%_
                                (lambda (_%in121543%_)
                                  (let* ((_%in121544121552%_ _%in121543%_)
                                         (_%E121546121556%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in121544121552%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K121547121563%_
                                          (lambda (_%phi121559%_
                                                   _%key121560%_
                                                   _%out121561%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx121460%_
                                             _%key121560%_
                                             _%phi121559%_
                                             _%key121560%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in121544121552%_
                                         'gx#module-import::t)
                                        (let* ((_%e121548121566%_
                                                (##unchecked-structure-ref
                                                 _%in121544121552%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out121569%_
                                                _%e121548121566%_)
                                               (_%e121549121571%_
                                                (##unchecked-structure-ref
                                                 _%in121544121552%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key121574%_
                                                _%e121549121571%_)
                                               (_%e121550121576%_
                                                (##unchecked-structure-ref
                                                 _%in121544121552%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi121579%_
                                                _%e121550121576%_))
                                          (_%K121547121563%_
                                           _%phi121579%_
                                           _%key121574%_
                                           _%out121569%_))
                                        (_%E121546121556%_)))))
                               (_%fold-e121463%_
                                (lambda (_%in121465%_ _%r121466%_)
                                  (let* ((_%in121467121481%_ _%in121465%_)
                                         (_%else121470121489%_
                                          (lambda () _%r121466%_)))
                                    (let ((_%K121476121525%_
                                           (lambda (_%phi121521%_
                                                    _%key121522%_
                                                    _%out121523%_)
                                             (if (and (fx= _%phi121521%_
                                                           _%current-phi121461%_)
                                                      (eq? _%src121457%_
                                                           (##unchecked-structure-ref
                                                            _%out121523%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export121462%_
                                                        _%in121465%_)
                                                       _%r121466%_)
                                                 _%r121466%_)))
                                          (_%K121472121500%_
                                           (lambda (_%imports121493%_
                                                    _%phi121494%_
                                                    _%ctx121495%_)
                                             (if (and (fx= _%phi121494%_
                                                           _%current-phi121461%_)
                                                      (eq? _%src121457%_
                                                           _%ctx121495%_))
                                                 (__foldl1
                                                  (lambda (_%in121497%_
                                                           _%r121498%_)
                                                    (cons (_%import->export121462%_
                                                           _%in121497%_)
                                                          _%r121498%_))
                                                  _%r121466%_
                                                  _%imports121493%_)
                                                 _%r121466%_))))
                                      (let ((_%try-match121469121518%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in121467121481%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e121473121503%_
                                                           (##unchecked-structure-ref
                                                            _%in121467121481%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e121474121508%_
                                                           (##unchecked-structure-ref
                                                            _%in121467121481%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e121475121513%_
                                                           (##unchecked-structure-ref
                                                            _%in121467121481%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx121506%_
                                                            _%e121473121503%_)
                                                           (_%phi121511%_
                                                            _%e121474121508%_)
                                                           (_%imports121516%_
                                                            _%e121475121513%_))
                                                       (_%K121472121500%_
                                                        _%imports121516%_
                                                        _%phi121511%_
                                                        _%ctx121506%_)))
                                                   (_%else121470121489%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in121467121481%_
                                             'gx#module-import::t)
                                            (let* ((_%e121477121528%_
                                                    (##unchecked-structure-ref
                                                     _%in121467121481%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e121478121533%_
                                                    (##unchecked-structure-ref
                                                     _%in121467121481%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e121479121538%_
                                                    (##unchecked-structure-ref
                                                     _%in121467121481%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out121531%_
                                                     _%e121477121528%_)
                                                    (_%key121536%_
                                                     _%e121478121533%_)
                                                    (_%phi121541%_
                                                     _%e121479121538%_))
                                                (_%K121476121525%_
                                                 _%phi121541%_
                                                 _%key121536%_
                                                 _%out121531%_)))
                                            (_%try-match121469121518%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src121457%_
                              _%current-phi121461%_
                              (__foldl1
                               _%fold-e121463%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx121460%_
                                '8
                                '#f
                                '#f)))
                             _%r121458%_))))
                  (_%export!121428%_
                   (lambda (_%rbody121444%_)
                     (letrec* ((_%current-ctx121446%_
                                (gx#current-expander-context))
                               (_%fold-e121447%_
                                (lambda (_%out121451%_ _%r121452%_)
                                  (if (##structure-direct-instance-of?
                                       _%out121451%_
                                       'gx#module-export::t)
                                      (cons _%out121451%_ _%r121452%_)
                                      (if (##structure-direct-instance-of?
                                           _%out121451%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r121452%_
                                           (##unchecked-structure-ref
                                            _%out121451%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r121452%_)))))
                       (let ((_%body121449%_ (reverse _%rbody121444%_)))
                         (##unchecked-structure-set!
                          _%current-ctx121446%_
                          (__foldl1
                           _%fold-e121447%_
                           (##unchecked-structure-ref
                            _%current-ctx121446%_
                            '9
                            '#f
                            '#f)
                           _%body121449%_)
                          '9
                          '#f
                          '#f)
                         _%body121449%_))))
                  (_%expanded-export?121429%_
                   (lambda (_%e121439%_)
                     (let ((_%$e121441%_
                            (##structure-direct-instance-of?
                             _%e121439%_
                             'gx#module-export::t)))
                       (if _%$e121441%_
                           _%$e121441%_
                           (##structure-direct-instance-of?
                            _%e121439%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?121423%_)
              (let ((_%rbody121435%_
                     (gx#core-expand-import/export
                      _%stx121422%_
                      _%expanded-export?121429%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1121426%_)))
                (if _%internal-expand?121423%_
                    (reverse _%rbody121435%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!121428%_ _%rbody121435%_))
                     (gx#stx-source _%stx121422%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx121422%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx121422%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx121921%_)
        (let ((_%internal-expand?121923%_ '#f))
          (gx#core-expand-export%__%
           _%stx121921%_
           _%internal-expand?121923%_))))
    (define gx#core-expand-export%
      (lambda _g124995_
        (let ((_g124994_ (##length _g124995_)))
          (cond ((##fx= _g124994_ 1)
                 (apply gx#core-expand-export%__0 _g124995_))
                ((##fx= _g124994_ 2)
                 (apply gx#core-expand-export%__% _g124995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g124995_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd121419%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd121419%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx121389%_)
        (let* ((_%e121390121397%_ _%stx121389%_)
               (_%E121392121401%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121390121397%_)))
               (_%E121391121415%_
                (lambda ()
                  (if (gx#stx-pair? _%e121390121397%_)
                      (let ((_%e121393121405%_
                             (gx#syntax-e _%e121390121397%_)))
                        (let ((_%hd121394121408%_ (##car _%e121393121405%_))
                              (_%tl121395121410%_ (##cdr _%e121393121405%_)))
                          (let ((_%body121413%_ _%tl121395121410%_))
                            (if (gx#identifier-list? _%body121413%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body121413%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body121413%_))
                                   (gx#stx-source _%stx121389%_)))
                                (_%E121392121401%_)))))
                      (_%E121392121401%_)))))
          (_%E121391121415%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id121355%_ _%private?121356%_ _%phi121357%_ _%ctx121358%_)
        (gx#core-bind-syntax!__%
         _%id121355%_
         ((if _%private?121356%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id121355%_))
         _%private?121356%_
         _%phi121357%_
         _%ctx121358%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id121363%_)
        (let* ((_%private?121365%_ '#f)
               (_%phi121367%_ (gx#current-expander-phi))
               (_%ctx121369%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121363%_
           _%private?121365%_
           _%phi121367%_
           _%ctx121369%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id121371%_ _%private?121372%_)
        (let* ((_%phi121374%_ (gx#current-expander-phi))
               (_%ctx121376%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121371%_
           _%private?121372%_
           _%phi121374%_
           _%ctx121376%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id121378%_ _%private?121379%_ _%phi121380%_)
        (let ((_%ctx121382%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121378%_
           _%private?121379%_
           _%phi121380%_
           _%ctx121382%_))))
    (define gx#core-bind-feature!
      (lambda _g124997_
        (let ((_g124996_ (##length _g124997_)))
          (cond ((##fx= _g124996_ 1)
                 (apply gx#core-bind-feature!__0 _g124997_))
                ((##fx= _g124996_ 2)
                 (apply gx#core-bind-feature!__1 _g124997_))
                ((##fx= _g124996_ 3)
                 (apply gx#core-bind-feature!__2 _g124997_))
                ((##fx= _g124996_ 4)
                 (apply gx#core-bind-feature!__% _g124997_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g124997_))))))))
