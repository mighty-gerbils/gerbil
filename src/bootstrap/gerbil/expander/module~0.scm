(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712702631)
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
      (lambda _%$args124953%_
        (apply make-instance gx#module-import::t _%$args124953%_)))
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
      (lambda _%$args124950%_
        (apply make-instance gx#module-export::t _%$args124950%_)))
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
      (lambda _%$args124947%_
        (apply make-instance gx#import-set::t _%$args124947%_)))
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
      (lambda _%$args124944%_
        (apply make-instance gx#export-set::t _%$args124944%_)))
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
      (lambda _%$args124941%_
        (apply make-instance gx#import-expander::t _%$args124941%_)))
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
      (lambda _%$args124938%_
        (apply make-instance gx#export-expander::t _%$args124938%_)))
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
      (lambda _%$args124935%_
        (apply make-instance gx#import-export-expander::t _%$args124935%_)))
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
      (lambda (_%path124932%_ _%fun124933%_)
        (call-with-input-file
         (cons 'path: (cons _%path124932%_ gx#source-file-settings))
         _%fun124933%_)))
    (define gx#module-context:::init!
      (lambda (_%self124915%_
               _%id124916%_
               _%super124917%_
               _%ns124918%_
               _%path124919%_)
        (let ((_%self124922%_ _%self124915%_))
          (if (##fx< '11 (##structure-length _%self124922%_))
              (begin
                (##unchecked-structure-set!
                 _%self124922%_
                 _%id124916%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self124922%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self124922%_
                 _%super124917%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self124922%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self124922%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self124922%_
                 _%ns124918%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self124922%_
                 _%path124919%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self124922%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self124922%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self124922%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self124922%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self124922%_
                     '11
                     (##vector-length _%self124922%_))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self124748%_ _%ctx124749%_ _%root124750%_)
        (let* ((_%self124753%_ _%self124748%_)
               (_%super124769%_
                (let ((_%$e124763%_ _%root124750%_))
                  (if _%$e124763%_
                      _%$e124763%_
                      (let ((_%$e124766%_ (gx#core-context-root__0)))
                        (if _%$e124766%_
                            _%$e124766%_
                            (let ((__obj124997
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor124998
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj124997
                                      ':init!)))
                                (if __constructor124998
                                    (__constructor124998 __obj124997)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj124997)))))))
          (if _%ctx124749%_
              (let ((_%id124772%_
                     (##structure-ref
                      _%ctx124749%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path124773%_
                     (##structure-ref
                      _%ctx124749%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in124774%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx124749%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e124775%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx124749%_)))))
                (if (##fx< '8 (##structure-length _%self124753%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self124753%_
                       _%id124772%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124753%_
                       (make-hash-table-eq 'size: (##length _%in124774%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124753%_
                       _%super124769%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124753%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124753%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124753%_
                       _%path124773%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124753%_
                       _%in124774%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self124753%_
                       _%e124775%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self124753%_
                           '8
                           (##vector-length _%self124753%_)))
                (##for-each
                 (lambda (_%g124776124778%_)
                   (gx#core-bind-weak-import!__%
                    _%g124776124778%_
                    _%self124753%_))
                 _%in124774%_))
              (if (##fx< '8 (##structure-length _%self124753%_))
                  (begin
                    (##unchecked-structure-set! _%self124753%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self124753%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self124753%_
                     _%super124769%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self124753%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self124753%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self124753%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self124753%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self124753%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self124753%_
                         '8
                         (##vector-length _%self124753%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self124784%_ _%ctx124785%_)
        (let ((_%root124787%_ '#f))
          (gx#prelude-context:::init!__%
           _%self124784%_
           _%ctx124785%_
           _%root124787%_))))
    (define gx#prelude-context:::init!
      (lambda _g125004_
        (let ((_g125003_ (##length _g125004_)))
          (cond ((##fx= _g125003_ 2)
                 (apply gx#prelude-context:::init!__0 _g125004_))
                ((##fx= _g125003_ 3)
                 (apply gx#prelude-context:::init!__% _g125004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g125004_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self124622%_ _%e124623%_)
        (if (##fx< '3 (##structure-length _%self124622%_))
            (begin
              (##unchecked-structure-set!
               _%self124622%_
               _%e124623%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124622%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124622%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self124622%_
                   '3
                   (##vector-length _%self124622%_)))))
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
      (lambda (_%g124248124251%_ _%g124249124253%_)
        (gx#core-apply-user-expander__%
         _%g124248124251%_
         _%g124249124253%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124119124122%_ _%g124120124124%_)
        (gx#core-apply-user-expander__%
         _%g124119124122%_
         _%g124120124124%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx123990%_)
        (let* ((_%path123992%_
                (##structure-ref _%ctx123990%_ '7 gx#module-context::t '#f))
               (_%path123994%_
                (if (pair? _%path123992%_)
                    (last _%path123992%_)
                    _%path123992%_)))
          (if (string? _%path123994%_) _%path123994%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path123966%_ _%reload?123967%_ _%eval?123968%_)
        (let ((_%ctx123970%_
               ((gx#current-expander-module-import)
                _%path123966%_
                _%reload?123967%_)))
          (if (and _%ctx123970%_ _%eval?123968%_)
              (gx#eval-module _%ctx123970%_)
              '#!void)
          _%ctx123970%_)))
    (define gx#import-module__0
      (lambda (_%path123975%_)
        (let* ((_%reload?123977%_ '#f) (_%eval?123979%_ '#f))
          (gx#import-module__%
           _%path123975%_
           _%reload?123977%_
           _%eval?123979%_))))
    (define gx#import-module__1
      (lambda (_%path123981%_ _%reload?123982%_)
        (let ((_%eval?123984%_ '#f))
          (gx#import-module__%
           _%path123981%_
           _%reload?123982%_
           _%eval?123984%_))))
    (define gx#import-module
      (lambda _g125006_
        (let ((_g125005_ (##length _g125006_)))
          (cond ((##fx= _g125005_ 1) (apply gx#import-module__0 _g125006_))
                ((##fx= _g125005_ 2) (apply gx#import-module__1 _g125006_))
                ((##fx= _g125005_ 3) (apply gx#import-module__% _g125006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g125006_))))))
    (define gx#eval-module
      (lambda (_%mod123963%_)
        ((gx#current-expander-module-eval) _%mod123963%_)))
    (define gx#core-eval-module
      (lambda (_%obj123943%_)
        (letrec ((_%force-e123945%_
                  (lambda (_%getf123959%_ _%e123960%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf123959%_ _%e123960%_)))
                     gx#current-expander-context
                     _%e123960%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur123947%_ ((_%e123949%_ _%obj123943%_))
            (if (##structure-instance-of? _%e123949%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e123952%_
                         (gx#core-context-prelude__% _%e123949%_)))
                    (if _%$e123952%_ (_%recur123947%_ _%$e123952%_) '#!void))
                  (_%force-e123945%_ gx#module-context-e _%e123949%_))
                (if (##structure-instance-of?
                     _%e123949%_
                     'gx#prelude-context::t)
                    (_%force-e123945%_ gx#prelude-context-e _%e123949%_)
                    (if (gx#stx-string? _%e123949%_)
                        (_%recur123947%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e123949%_)))
                        (if (gx#core-library-module-path? _%e123949%_)
                            (_%recur123947%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e123949%_)))
                            (error '"cannot eval module" _%obj123943%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx123923%_)
        (let _%lp123925%_ ((_%e123927%_ _%ctx123923%_))
          (if (or (##structure-instance-of? _%e123927%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e123927%_ 'gx#local-context::t))
              (_%lp123925%_ (##unchecked-structure-ref _%e123927%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e123927%_ 'gx#prelude-context::t)
                  _%e123927%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx123939%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx123939%_))))
    (define gx#core-context-prelude
      (lambda _g125008_
        (let ((_g125007_ (##length _g125008_)))
          (cond ((##fx= _g125007_ 0)
                 (apply gx#core-context-prelude__0 _g125008_))
                ((##fx= _g125007_ 1)
                 (apply gx#core-context-prelude__% _g125008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g125008_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx123914%_)
        (let ((_%$e123916%_ (hash-get gx#__module-registry _%ctx123914%_)))
          (if _%$e123916%_
              _%$e123916%_
              (let ((_%pre123920%_
                     (let ((__obj124999
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
                       (gx#prelude-context:::init! __obj124999 _%ctx123914%_)
                       __obj124999)))
                (hash-put! gx#__module-registry _%ctx123914%_ _%pre123920%_)
                _%pre123920%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath123786%_ _%reload?123787%_)
        (letrec ((_%import-source123789%_
                  (lambda (_%path123878%_)
                    (if (member _%path123878%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path123878%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g125009_ (gx#core-read-module _%path123878%_)))
                         (begin
                           (let ((_g125010_
                                  (if (##values? _g125009_)
                                      (##vector-length _g125009_)
                                      1)))
                             (if (not (##fx= _g125010_ 4))
                                 (error "Context expects 4 values" _g125010_)))
                           (let ((_%pre123881%_ (##vector-ref _g125009_ 0))
                                 (_%id123882%_ (##vector-ref _g125009_ 1))
                                 (_%ns123883%_ (##vector-ref _g125009_ 2))
                                 (_%body123884%_ (##vector-ref _g125009_ 3)))
                             (let* ((_%prelude123894%_
                                     (if (##structure-instance-of?
                                          _%pre123881%_
                                          'gx#prelude-context::t)
                                         _%pre123881%_
                                         (if (##structure-instance-of?
                                              _%pre123881%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre123881%_)
                                             (if (string? _%pre123881%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre123881%_))
                                                 (if (not _%pre123881%_)
                                                     (let ((_%$e123890%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e123890%_
                                                           _%$e123890%_
                                                           (let ((__obj125000
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
                     (gx#prelude-context:::init! __obj125000 '#f)
                     __obj125000)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath123786%_
                                                            _%pre123881%_))))))
                                    (_%ctx123896%_
                                     (let ((__obj125001
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
                                        __obj125001
                                        _%id123882%_
                                        _%prelude123894%_
                                        _%ns123883%_
                                        _%path123878%_)
                                       __obj125001))
                                    (_%body123898%_
                                     (gx#core-expand-module-begin
                                      _%body123884%_
                                      _%ctx123896%_))
                                    (_%body123900%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body123898%_)
                                      _%path123878%_
                                      _%ctx123896%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx123896%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body123900%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx123896%_
                                _%body123900%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path123878%_
                                _%ctx123896%_)
                               (hash-put!
                                gx#__module-registry
                                _%id123882%_
                                _%ctx123896%_)
                               _%ctx123896%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path123878%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule123790%_
                  (lambda (_%rpath123806%_)
                    (let* ((_%rpath123807123814%_ _%rpath123806%_)
                           (_%E123809123818%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath123807123814%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K123810123866%_
                            (lambda (_%refs123821%_ _%origin123822%_)
                              (let ((_%ctx123824%_
                                     (if _%origin123822%_
                                         (gx#core-import-module__%
                                          _%origin123822%_
                                          _%reload?123787%_)
                                         (gx#current-expander-context))))
                                (let _%lp123826%_ ((_%rest123828%_
                                                    _%refs123821%_)
                                                   (_%ctx123829%_
                                                    _%ctx123824%_))
                                  (let* ((_%rest123830123838%_ _%rest123828%_)
                                         (_%else123832123846%_
                                          (lambda () _%ctx123829%_))
                                         (_%K123834123854%_
                                          (lambda (_%rest123849%_ _%id123850%_)
                                            (let ((_%bind123852%_
                                                   (gx#resolve-identifier__%
                                                    _%id123850%_
                                                    '0
                                                    _%ctx123829%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind123852%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind123852%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp123826%_
                                                   _%rest123849%_
                                                   (##unchecked-structure-ref
                                                    _%bind123852%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath123806%_
                                                         _%id123850%_
                                                         _%bind123852%_))))))
                                    (if (##pair? _%rest123830123838%_)
                                        (let ((_%hd123835123857%_
                                               (##car _%rest123830123838%_))
                                              (_%tl123836123859%_
                                               (##cdr _%rest123830123838%_)))
                                          (let* ((_%id123862%_
                                                  _%hd123835123857%_)
                                                 (_%rest123864%_
                                                  _%tl123836123859%_))
                                            (_%K123834123854%_
                                             _%rest123864%_
                                             _%id123862%_)))
                                        (_%else123832123846%_))))))))
                      (if (##pair? _%rpath123807123814%_)
                          (let ((_%hd123811123869%_
                                 (##car _%rpath123807123814%_))
                                (_%tl123812123871%_
                                 (##cdr _%rpath123807123814%_)))
                            (let* ((_%origin123874%_ _%hd123811123869%_)
                                   (_%refs123876%_ _%tl123812123871%_))
                              (_%K123810123866%_
                               _%refs123876%_
                               _%origin123874%_)))
                          (_%E123809123818%_))))))
          (let ((_%$e123792%_
                 (if (not _%reload?123787%_)
                     (hash-get gx#__module-registry _%rpath123786%_)
                     '#f)))
            (if _%$e123792%_
                _%$e123792%_
                (if (list? _%rpath123786%_)
                    (_%import-submodule123790%_ _%rpath123786%_)
                    (if (gx#core-library-module-path? _%rpath123786%_)
                        (let ((_%ctx123797%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath123786%_)
                                _%reload?123787%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath123786%_
                           _%ctx123797%_)
                          _%ctx123797%_)
                        (let* ((_%npath123800%_
                                (path-normalize _%rpath123786%_))
                               (_%$e123802%_
                                (if (not _%reload?123787%_)
                                    (hash-get
                                     gx#__module-registry
                                     _%npath123800%_)
                                    '#f)))
                          (if _%$e123802%_
                              _%$e123802%_
                              (_%import-source123789%_
                               _%npath123800%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath123907%_)
        (let ((_%reload?123909%_ '#f))
          (gx#core-import-module__% _%rpath123907%_ _%reload?123909%_))))
    (define gx#core-import-module
      (lambda _g125012_
        (let ((_g125011_ (##length _g125012_)))
          (cond ((##fx= _g125011_ 1)
                 (apply gx#core-import-module__0 _g125012_))
                ((##fx= _g125011_ 2)
                 (apply gx#core-import-module__% _g125012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g125012_))))))
    (define gx#core-read-module
      (lambda (_%path123775%_)
        (__with-catch
         (lambda (_%exn123777%_)
           (if (and (datum-parsing-exception? _%exn123777%_)
                    (eq? (datum-parsing-exception-filepos _%exn123777%_) '0))
               (gx#core-read-module/lang _%path123775%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path123775%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g123779123781%_)
                      (display-exception _%exn123777%_ _%g123779123781%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path123775%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path123627%_)
        (let _%lp123629%_ ((_%body123631%_
                            (read-syntax-from-file _%path123627%_))
                           (_%pre123632%_ '#f)
                           (_%ns123633%_ '#f)
                           (_%pkg123634%_ '#f))
          (let* ((_%e123635123659%_ _%body123631%_)
                 (_%E123651123685%_
                  (lambda ()
                    (let ((_g125013_
                           (if _%pkg123634%_
                               (values _%pre123632%_
                                       _%ns123633%_
                                       _%pkg123634%_)
                               (gx#core-read-module-package
                                _%path123627%_
                                _%pre123632%_
                                _%ns123633%_))))
                      (begin
                        (let ((_g125014_
                               (if (##values? _g125013_)
                                   (##vector-length _g125013_)
                                   1)))
                          (if (not (##fx= _g125014_ 3))
                              (error "Context expects 3 values" _g125014_)))
                        (let ((_%pre123663%_ (##vector-ref _g125013_ 0))
                              (_%ns123664%_ (##vector-ref _g125013_ 1))
                              (_%pkg123665%_ (##vector-ref _g125013_ 2)))
                          (let* ((_%prelude123671%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre123663%_)
                                      (gx#syntax-local-e__0 _%pre123663%_)
                                      (if (gx#core-library-module-path?
                                           _%pre123663%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre123663%_)
                                          (if (gx#stx-string? _%pre123663%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre123663%_
                                               _%path123627%_)
                                              (gx#stx-e _%pre123663%_)))))
                                 (_%path-id123673%_
                                  (gx#core-module-path->namespace
                                   _%path123627%_))
                                 (_%pkg-id123675%_
                                  (if _%pkg123665%_
                                      (string-append
                                       _%pkg123665%_
                                       '"/"
                                       _%path-id123673%_)
                                      _%path-id123673%_))
                                 (_%module-id123677%_
                                  (string->symbol _%pkg-id123675%_))
                                 (_%module-ns123682%_
                                  (if (eq? _%ns123664%_ '#!void)
                                      '#f
                                      (let ((_%$e123679%_ _%ns123664%_))
                                        (if _%$e123679%_
                                            _%$e123679%_
                                            _%pkg-id123675%_)))))
                            (values _%prelude123671%_
                                    _%module-id123677%_
                                    _%module-ns123682%_
                                    _%body123631%_)))))))
                 (_%E123644123717%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123635123659%_)
                        (let ((_%e123652123689%_
                               (gx#syntax-e _%e123635123659%_)))
                          (let ((_%hd123653123692%_ (##car _%e123652123689%_))
                                (_%tl123654123694%_ (##cdr _%e123652123689%_)))
                            (if (eq? (gx#stx-e _%hd123653123692%_) 'package:)
                                (if (gx#stx-pair? _%tl123654123694%_)
                                    (let ((_%e123655123697%_
                                           (gx#syntax-e _%tl123654123694%_)))
                                      (let ((_%hd123656123700%_
                                             (##car _%e123655123697%_))
                                            (_%tl123657123702%_
                                             (##cdr _%e123655123697%_)))
                                        (let* ((_%pkg123705%_
                                                _%hd123656123700%_)
                                               (_%rest123707%_
                                                _%tl123657123702%_))
                                          (if '#t
                                              (let ((_%pkg123715%_
                                                     (if (gx#identifier?
                                                          _%pkg123705%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%pkg123705%_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg123705%_)
                         (gx#stx-false? _%pkg123705%_))
                     (gx#stx-e _%pkg123705%_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _%pkg123705%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123629%_
                                                 _%rest123707%_
                                                 _%pre123632%_
                                                 _%ns123633%_
                                                 _%pkg123715%_))
                                              (_%E123651123685%_)))))
                                    (_%E123651123685%_))
                                (_%E123651123685%_))))
                        (_%E123651123685%_))))
                 (_%E123637123747%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123635123659%_)
                        (let ((_%e123645123721%_
                               (gx#syntax-e _%e123635123659%_)))
                          (let ((_%hd123646123724%_ (##car _%e123645123721%_))
                                (_%tl123647123726%_ (##cdr _%e123645123721%_)))
                            (if (eq? (gx#stx-e _%hd123646123724%_) 'namespace:)
                                (if (gx#stx-pair? _%tl123647123726%_)
                                    (let ((_%e123648123729%_
                                           (gx#syntax-e _%tl123647123726%_)))
                                      (let ((_%hd123649123732%_
                                             (##car _%e123648123729%_))
                                            (_%tl123650123734%_
                                             (##cdr _%e123648123729%_)))
                                        (let* ((_%ns123737%_
                                                _%hd123649123732%_)
                                               (_%rest123739%_
                                                _%tl123650123734%_))
                                          (if '#t
                                              (let ((_%ns123745%_
                                                     (if (gx#identifier?
                                                          _%ns123737%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%ns123737%_))
                                                         (if (gx#stx-string?
                                                              _%ns123737%_)
                                                             (gx#stx-e
                                                              _%ns123737%_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns123737%_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _%ns123737%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123629%_
                                                 _%rest123739%_
                                                 _%pre123632%_
                                                 _%ns123745%_
                                                 _%pkg123634%_))
                                              (_%E123644123717%_)))))
                                    (_%E123644123717%_))
                                (_%E123644123717%_))))
                        (_%E123644123717%_))))
                 (_%E123636123771%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123635123659%_)
                        (let ((_%e123638123751%_
                               (gx#syntax-e _%e123635123659%_)))
                          (let ((_%hd123639123754%_ (##car _%e123638123751%_))
                                (_%tl123640123756%_ (##cdr _%e123638123751%_)))
                            (if (eq? (gx#stx-e _%hd123639123754%_) 'prelude:)
                                (if (gx#stx-pair? _%tl123640123756%_)
                                    (let ((_%e123641123759%_
                                           (gx#syntax-e _%tl123640123756%_)))
                                      (let ((_%hd123642123762%_
                                             (##car _%e123641123759%_))
                                            (_%tl123643123764%_
                                             (##cdr _%e123641123759%_)))
                                        (let* ((_%prelude123767%_
                                                _%hd123642123762%_)
                                               (_%rest123769%_
                                                _%tl123643123764%_))
                                          (if '#t
                                              (_%lp123629%_
                                               _%rest123769%_
                                               _%prelude123767%_
                                               _%ns123633%_
                                               _%pkg123634%_)
                                              (_%E123637123747%_)))))
                                    (_%E123637123747%_))
                                (_%E123637123747%_))))
                        (_%E123637123747%_)))))
            (_%E123636123771%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path123449%_)
        (letrec ((_%default-read-module-body123451%_
                  (lambda (_%inp123619%_)
                    (let _%lp123621%_ ((_%body123623%_ '()))
                      (let ((_%next123625%_ (read-syntax__% _%inp123619%_)))
                        (if (eof-object? _%next123625%_)
                            (reverse _%body123623%_)
                            (_%lp123621%_
                             (cons _%next123625%_ _%body123623%_)))))))
                 (_%read-body123452%_
                  (lambda (_%inp123537%_
                           _%pre123538%_
                           _%ns123539%_
                           _%pkg123540%_
                           _%args123541%_)
                    (let ((_g125015_
                           (if _%pkg123540%_
                               (values _%pre123538%_
                                       _%ns123539%_
                                       _%pkg123540%_)
                               (gx#core-read-module-package
                                _%path123449%_
                                _%pre123538%_
                                _%ns123539%_))))
                      (begin
                        (let ((_g125016_
                               (if (##values? _g125015_)
                                   (##vector-length _g125015_)
                                   1)))
                          (if (not (##fx= _g125016_ 3))
                              (error "Context expects 3 values" _g125016_)))
                        (let ((_%pre123543%_ (##vector-ref _g125015_ 0))
                              (_%ns123544%_ (##vector-ref _g125015_ 1))
                              (_%pkg123545%_ (##vector-ref _g125015_ 2)))
                          (let* ((_%prelude123547%_
                                  (gx#import-module__0 _%pre123543%_))
                                 (_%read-module-body123602%_
                                  (let ((_%$e123593%_
                                         (__find (lambda (_%e123548123550%_)
                                                   (let* ((_%g123552123562%_
                                                           _%e123548123550%_)
                                                          (_%else123554123570%_
                                                           (lambda () '#f))
                                                          (_%K123556123574%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g123552123562%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e123557123577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g123552123562%_
                          '1
                          '#f
                          '#f))
                        (_%e123558123580%_
                         (##unchecked-structure-ref
                          _%g123552123562%_
                          '2
                          '#f
                          '#f))
                        (_%e123559123583%_
                         (##unchecked-structure-ref
                          _%g123552123562%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e123559123583%_ '1)
                       (let ((_%e123560123586%_
                              (##unchecked-structure-ref
                               _%g123552123562%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g123588123590%_)
                                (eq? _%g123588123590%_ 'read-module-body))
                              _%e123560123586%_)
                             (_%K123556123574%_)
                             (_%else123554123570%_)))
                       (_%else123554123570%_)))
                 (_%else123554123570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude123547%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e123593%_
                                        ((lambda (_%xport123596%_)
                                           (let ((_%proc123599%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport123596%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc123599%_)
                                                 _%proc123599%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path123449%_
                                                  _%pre123543%_
                                                  _%proc123599%_))))
                                         _%$e123593%_)
                                        _%default-read-module-body123451%_)))
                                 (_%path-id123604%_
                                  (gx#core-module-path->namespace
                                   _%path123449%_))
                                 (_%pkg-id123606%_
                                  (if _%pkg123545%_
                                      (string-append
                                       _%pkg123545%_
                                       '"/"
                                       _%path-id123604%_)
                                      _%path-id123604%_))
                                 (_%module-id123608%_
                                  (string->symbol _%pkg-id123606%_))
                                 (_%module-ns123613%_
                                  (let ((_%$e123610%_ _%ns123544%_))
                                    (if _%$e123610%_
                                        _%$e123610%_
                                        _%pkg-id123606%_)))
                                 (_%body123616%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body123602%_
                                      _%inp123537%_))
                                   gx#current-module-reader-path
                                   _%path123449%_
                                   gx#current-module-reader-args
                                   _%args123541%_)))
                            (values _%prelude123547%_
                                    _%module-id123608%_
                                    _%module-ns123613%_
                                    _%body123616%_)))))))
                 (_%string-e123453%_
                  (lambda (_%obj123531%_ _%what123532%_)
                    (if (string? _%obj123531%_)
                        _%obj123531%_
                        (if (symbol? _%obj123531%_)
                            (symbol->string _%obj123531%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what123532%_)
                             _%path123449%_
                             _%obj123531%_)))))
                 (_%read-lang-args123454%_
                  (lambda (_%inp123486%_ _%args123487%_)
                    (let* ((_%args123488123496%_ _%args123487%_)
                           (_%else123490123504%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path123449%_)))
                           (_%K123492123519%_
                            (lambda (_%args123507%_ _%prelude123508%_)
                              (let* ((_%pkg123510%_
                                      (pgetq__0 'package: _%args123507%_))
                                     (_%pkg123512%_
                                      (if _%pkg123510%_
                                          (_%string-e123453%_
                                           _%pkg123510%_
                                           '"package")
                                          '#f))
                                     (_%ns123514%_
                                      (pgetq__0 'namespace: _%args123507%_))
                                     (_%ns123516%_
                                      (if _%ns123514%_
                                          (_%string-e123453%_
                                           _%ns123514%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body123452%_
                                 _%inp123486%_
                                 _%prelude123508%_
                                 _%ns123516%_
                                 _%pkg123512%_
                                 _%args123507%_)))))
                      (if (##pair? _%args123488123496%_)
                          (let ((_%hd123493123522%_
                                 (##car _%args123488123496%_))
                                (_%tl123494123524%_
                                 (##cdr _%args123488123496%_)))
                            (let* ((_%prelude123527%_ _%hd123493123522%_)
                                   (_%args123529%_ _%tl123494123524%_))
                              (_%K123492123519%_
                               _%args123529%_
                               _%prelude123527%_)))
                          (_%else123490123504%_)))))
                 (_%read-lang123455%_
                  (lambda (_%inp123460%_)
                    (let* ((_%head123462%_ (read-line _%inp123460%_))
                           (_%$e123464%_
                            (string-index__0 _%head123462%_ '#\space)))
                      (if _%$e123464%_
                          ((lambda (_%ix123467%_)
                             (let ((_%lang123469%_
                                    (substring
                                     _%head123462%_
                                     '0
                                     _%ix123467%_)))
                               (if (equal? _%lang123469%_ '"#lang")
                                   (let* ((_%rest123471%_
                                           (substring
                                            _%head123462%_
                                            (##fx+ _%ix123467%_ '1)
                                            (string-length _%head123462%_)))
                                          (_%args123482%_
                                           (__with-catch
                                            (lambda (_%g123472123474%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path123449%_
                                               _%g123472123474%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest123471%_
                                               (lambda (_%g123477123479%_)
                                                 (read-all
                                                  _%g123477123479%_
                                                  read)))))))
                                     (_%read-lang-args123454%_
                                      _%inp123460%_
                                      _%args123482%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path123449%_))))
                           _%$e123464%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path123449%_)))))
                 (_%read-e123456%_
                  (lambda (_%inp123458%_)
                    (if (eq? (peek-char _%inp123458%_) '#\#)
                        (_%read-lang123455%_ _%inp123458%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path123449%_)))))
          (gx#call-with-input-source-file _%path123449%_ _%read-e123456%_))))
    (define gx#core-read-module-package
      (lambda (_%path123397%_ _%pre123398%_ _%ns123399%_)
        (letrec ((_%string-e123401%_
                  (lambda (_%e123444%_)
                    (if (symbol? _%e123444%_)
                        (symbol->string _%e123444%_)
                        (if (string? _%e123444%_)
                            _%e123444%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e123444%_))))))
          (let _%lp123403%_ ((_%dir123405%_ (path-directory _%path123397%_))
                             (_%pkg-path123406%_ '()))
            (let ((_%gerbil.pkg123408%_
                   (path-expand '"gerbil.pkg" _%dir123405%_)))
              (if (##file-exists? _%gerbil.pkg123408%_)
                  (let ((_%plist123410%_
                         (gx#core-library-package-plist__% _%dir123405%_ '#t)))
                    (if (null? _%plist123410%_)
                        (let ((_%pkg123413%_
                               (if (not (null? _%pkg-path123406%_))
                                   (string-join _%pkg-path123406%_ '"/")
                                   '#f)))
                          (values _%pre123398%_ _%ns123399%_ _%pkg123413%_))
                        (if (list? _%plist123410%_)
                            (let* ((_%root123416%_
                                    (pgetq__0 'package: _%plist123410%_))
                                   (_%pkg123420%_
                                    (let ((_%pkg-path123418%_
                                           (if _%root123416%_
                                               (cons (_%string-e123401%_
                                                      _%root123416%_)
                                                     _%pkg-path123406%_)
                                               _%pkg-path123406%_)))
                                      (if (not (null? _%pkg-path123418%_))
                                          (string-join _%pkg-path123418%_ '"/")
                                          '#f)))
                                   (_%ns123427%_
                                    (let ((_%ns123425%_
                                           (let ((_%$e123422%_ _%ns123399%_))
                                             (if _%$e123422%_
                                                 _%$e123422%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist123410%_)))))
                                      (if _%ns123425%_
                                          (_%string-e123401%_ _%ns123425%_)
                                          '#f)))
                                   (_%pre123432%_
                                    (let ((_%$e123429%_ _%pre123398%_))
                                      (if _%$e123429%_
                                          _%$e123429%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist123410%_)))))
                              (values _%pre123432%_
                                      _%ns123427%_
                                      _%pkg123420%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist123410%_))))
                  (let ((_%dir*123436%_
                         (path-strip-trailing-directory-separator
                          _%dir123405%_)))
                    (if (or (__string-empty? _%dir*123436%_)
                            (equal? _%dir123405%_ _%dir*123436%_))
                        (values _%pre123398%_ _%ns123399%_ '#f)
                        (let ((_%xpath123441%_
                               (path-strip-directory _%dir*123436%_))
                              (_%xdir123442%_ (path-directory _%dir*123436%_)))
                          (_%lp123403%_
                           _%xdir123442%_
                           (cons _%xpath123441%_ _%pkg-path123406%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path123395%_)
        (path-strip-extension (path-strip-directory _%path123395%_))))
    (define gx#core-module-path->id
      (lambda (_%path123393%_)
        (##string->symbol (gx#core-module-path->namespace _%path123393%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path123372%_ _%rel123373%_)
        (let* ((_%path123375%_ (gx#stx-e _%stx-path123372%_))
               (_%path123377%_
                (if (__string-empty? (path-extension _%path123375%_))
                    (##string-append _%path123375%_ '".ss")
                    _%path123375%_)))
          (gx#core-resolve-path__%
           _%path123377%_
           (let ((_%$e123380%_ (gx#stx-source _%stx-path123372%_)))
             (if _%$e123380%_ _%$e123380%_ _%rel123373%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path123386%_)
        (let ((_%rel123388%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path123386%_ _%rel123388%_))))
    (define gx#core-resolve-module-path
      (lambda _g125018_
        (let ((_g125017_ (##length _g125018_)))
          (cond ((##fx= _g125017_ 1)
                 (apply gx#core-resolve-module-path__0 _g125018_))
                ((##fx= _g125017_ 2)
                 (apply gx#core-resolve-module-path__% _g125018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g125018_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath123257%_)
        (let* ((_%spath123259%_ (symbol->string (gx#stx-e _%libpath123257%_)))
               (_%spath123261%_
                (substring
                 _%spath123259%_
                 '1
                 (##string-length _%spath123259%_)))
               (_%ext123263%_ (path-extension _%spath123261%_))
               (_%ssi123265%_
                (if (__string-empty? _%ext123263%_)
                    (##string-append _%spath123261%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath123261%_)
                     '".ssi")))
               (_%srcs123269%_
                (if (__string-empty? _%ext123263%_)
                    (##map (lambda (_%ext123267%_)
                             (string-append _%spath123261%_ _%ext123267%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath123261%_ '()))))
          (let _%lp123272%_ ((_%rest123274%_ (load-path)))
            (let* ((_%rest123275123284%_ _%rest123274%_)
                   (_%E123278123288%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest123275123284%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K123280123359%_
                     (lambda (_%rest123299%_ _%dir123300%_)
                       (letrec ((_%resolve123302%_
                                 (lambda (_%ssi123315%_ _%srcs123316%_)
                                   (let ((_%compiled-path123318%_
                                          (path-expand
                                           _%ssi123315%_
                                           _%dir123300%_)))
                                     (if (##file-exists?
                                          _%compiled-path123318%_)
                                         (path-normalize
                                          _%compiled-path123318%_)
                                         (let _%lpr123320%_ ((_%rest-src123322%_
                                                              _%srcs123316%_))
                                           (let* ((_%rest-src123323123331%_
                                                   _%rest-src123322%_)
                                                  (_%else123325123339%_
                                                   (lambda ()
                                                     (_%lp123272%_
                                                      _%rest123299%_)))
                                                  (_%K123327123347%_
                                                   (lambda (_%rest-src123342%_
                                                            _%src123343%_)
                                                     (let ((_%src-path123345%_
                                                            (path-expand
                                                             _%src123343%_
                                                             _%dir123300%_)))
                                                       (if (##file-exists?
                                                            _%src-path123345%_)
                                                           (path-normalize
                                                            _%src-path123345%_)
                                                           (_%lpr123320%_
                                                            _%rest-src123342%_))))))
                                             (if (##pair? _%rest-src123323123331%_)
                                                 (let ((_%hd123328123350%_
                                                        (##car _%rest-src123323123331%_))
                                                       (_%tl123329123352%_
                                                        (##cdr _%rest-src123323123331%_)))
                                                   (let* ((_%src123355%_
                                                           _%hd123328123350%_)
                                                          (_%rest-src123357%_
                                                           _%tl123329123352%_))
                                                     (_%K123327123347%_
                                                      _%rest-src123357%_
                                                      _%src123355%_)))
                                                 (_%else123325123339%_)))))))))
                         (let ((_%$e123304%_
                                (gx#core-library-package-path-prefix
                                 _%dir123300%_)))
                           (if _%$e123304%_
                               ((lambda (_%prefix123307%_)
                                  (if (string-prefix?
                                       _%prefix123307%_
                                       _%spath123261%_)
                                      (let ((_%ssi123311%_
                                             (substring
                                              _%ssi123265%_
                                              (string-length _%prefix123307%_)
                                              (##string-length _%ssi123265%_)))
                                            (_%srcs123312%_
                                             (##map (lambda (_%src123309%_)
                                                      (substring
                                                       _%src123309%_
                                                       (string-length
                                                        _%prefix123307%_)
                                                       (string-length
                                                        _%src123309%_)))
                                                    _%srcs123269%_)))
                                        (_%resolve123302%_
                                         _%ssi123311%_
                                         _%srcs123312%_))
                                      (_%lp123272%_ _%rest123299%_)))
                                _%$e123304%_)
                               (_%resolve123302%_
                                _%ssi123265%_
                                _%srcs123269%_))))))
                    (_%K123279123293%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath123257%_))))
                (let ((_%try-match123277123296%_
                       (lambda ()
                         (if (##null? _%rest123275123284%_)
                             (_%K123279123293%_)
                             (_%E123278123288%_)))))
                  (if (##pair? _%rest123275123284%_)
                      (let ((_%tl123282123364%_ (##cdr _%rest123275123284%_))
                            (_%hd123281123362%_ (##car _%rest123275123284%_)))
                        (let ((_%dir123367%_ _%hd123281123362%_)
                              (_%rest123369%_ _%tl123282123364%_))
                          (_%K123280123359%_ _%rest123369%_ _%dir123367%_)))
                      (_%try-match123277123296%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath123225%_)
        (letrec ((_%resolve123227%_
                  (lambda (_%path123248%_ _%base123249%_)
                    (let ((_%$e123251%_
                           (string-rindex__0 _%base123249%_ '#\/)))
                      (if _%$e123251%_
                          ((lambda (_%idx123254%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base123249%_ '0 _%idx123254%_)
                                '"/"
                                _%path123248%_))))
                           _%$e123251%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path123248%_))))))))
          (let ((_%spath123229%_ (symbol->string (gx#stx-e _%modpath123225%_)))
                (_%mod123230%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod123230%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath123225%_))
            (let ((_%mpath123232%_
                   (symbol->string
                    (##structure-ref
                     _%mod123230%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp123234%_ ((_%spath123236%_ _%spath123229%_)
                                 (_%mpath123237%_ _%mpath123232%_))
                (if (string-prefix? '"../" _%spath123236%_)
                    (let ((_%$e123240%_
                           (string-rindex__0 _%mpath123237%_ '#\/)))
                      (if _%$e123240%_
                          ((lambda (_%idx123243%_)
                             (_%lp123234%_
                              (substring
                               _%spath123236%_
                               '3
                               (string-length _%spath123236%_))
                              (substring _%mpath123237%_ '0 _%idx123243%_)))
                           _%$e123240%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath123225%_)))
                    (if (string-prefix? '"./" _%spath123236%_)
                        (_%lp123234%_
                         (substring
                          _%spath123236%_
                          '2
                          (string-length _%spath123236%_))
                         _%mpath123237%_)
                        (_%resolve123227%_
                         _%spath123236%_
                         _%mpath123237%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir123217%_)
        (let ((_%$e123219%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir123217%_))))
          (if _%$e123219%_
              ((lambda (_%pkg123222%_)
                 (##string-append (symbol->string _%pkg123222%_) '"/"))
               _%$e123219%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir123187%_ _%exists?123188%_)
        (let ((_%$e123190%_ (hash-get gx#__module-pkg-cache _%dir123187%_)))
          (if _%$e123190%_
              (values _%$e123190%_)
              (let* ((_%gerbil.pkg123194%_
                      (path-expand '"gerbil.pkg" _%dir123187%_))
                     (_%plist123204%_
                      (if (or _%exists?123188%_
                              (##file-exists? _%gerbil.pkg123194%_))
                          (let ((_%e123199%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg123194%_
                                  read)))
                            (if (eof-object? _%e123199%_)
                                '()
                                (if (list? _%e123199%_)
                                    _%e123199%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg123194%_
                                     _%e123199%_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _%dir123187%_ _%plist123204%_)
                _%plist123204%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir123210%_)
        (let ((_%exists?123212%_ '#f))
          (gx#core-library-package-plist__% _%dir123210%_ _%exists?123212%_))))
    (define gx#core-library-package-plist
      (lambda _g125020_
        (let ((_g125019_ (##length _g125020_)))
          (cond ((##fx= _g125019_ 1)
                 (apply gx#core-library-package-plist__0 _g125020_))
                ((##fx= _g125019_ 2)
                 (apply gx#core-library-package-plist__% _g125020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g125020_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx123184%_)
        (gx#core-special-module-path? _%stx123184%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx123182%_)
        (gx#core-special-module-path? _%stx123182%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx123177%_ _%char123178%_)
        (if (gx#identifier? _%stx123177%_)
            (if (interned-symbol? (gx#stx-e _%stx123177%_))
                (let ((_%str123180%_
                       (symbol->string (gx#stx-e _%stx123177%_))))
                  (if (##fx> (##string-length _%str123180%_) '1)
                      (eq? (string-ref _%str123180%_ '0) _%char123178%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx123171%_)
        (gx#core-bound-identifier?__%
         _%stx123171%_
         (lambda (_%g123172123174%_)
           (gx#expander-binding?__% _%g123172123174%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx123165%_)
        (gx#core-bound-identifier?__%
         _%stx123165%_
         (lambda (_%g123166123168%_)
           (gx#expander-binding?__% _%g123166123168%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123152%_)
        (letrec ((_%module-prelude?123154%_
                  (lambda (_%e123160%_)
                    (let ((_%$e123162%_
                           (##structure-instance-of?
                            _%e123160%_
                            'gx#module-context::t)))
                      (if _%$e123162%_
                          _%$e123162%_
                          (##structure-instance-of?
                           _%e123160%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123152%_
           (lambda (_%g123155123157%_)
             (gx#expander-binding?__%
              _%g123155123157%_
              _%module-prelude?123154%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123082%_ _%ctx123083%_ _%force-weak?123084%_)
        (let* ((_%in123085123094%_ _%in123082%_)
               (_%E123087123098%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123085123094%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123088123111%_
                (lambda (_%weak?123101%_
                         _%phi123102%_
                         _%key123103%_
                         _%source123104%_)
                  (gx#core-bind!__%
                   _%key123103%_
                   (let ((_%e123106%_
                          (gx#core-resolve-module-export _%source123104%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123106%_ '1 '#f '#f)
                      _%key123103%_
                      _%phi123102%_
                      _%e123106%_
                      (##unchecked-structure-ref _%source123104%_ '1 '#f '#f)
                      (let ((_%$e123108%_ _%force-weak?123084%_))
                        (if _%$e123108%_ _%$e123108%_ _%weak?123101%_))))
                   gx#core-context-rebind?
                   _%phi123102%_
                   _%ctx123083%_))))
          (if (##structure-direct-instance-of?
               _%in123085123094%_
               'gx#module-import::t)
              (let* ((_%e123089123114%_
                      (##unchecked-structure-ref
                       _%in123085123094%_
                       '1
                       '#f
                       '#f))
                     (_%source123117%_ _%e123089123114%_)
                     (_%e123090123119%_
                      (##unchecked-structure-ref
                       _%in123085123094%_
                       '2
                       '#f
                       '#f))
                     (_%key123122%_ _%e123090123119%_)
                     (_%e123091123124%_
                      (##unchecked-structure-ref
                       _%in123085123094%_
                       '3
                       '#f
                       '#f))
                     (_%phi123127%_ _%e123091123124%_)
                     (_%e123092123129%_
                      (##unchecked-structure-ref
                       _%in123085123094%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123132%_ _%e123092123129%_))
                (_%K123088123111%_
                 _%weak?123132%_
                 _%phi123127%_
                 _%key123122%_
                 _%source123117%_))
              (_%E123087123098%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123137%_)
        (let* ((_%ctx123139%_ (gx#current-expander-context))
               (_%force-weak?123141%_ '#f))
          (gx#core-bind-import!__%
           _%in123137%_
           _%ctx123139%_
           _%force-weak?123141%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123143%_ _%ctx123144%_)
        (let ((_%force-weak?123146%_ '#f))
          (gx#core-bind-import!__%
           _%in123143%_
           _%ctx123144%_
           _%force-weak?123146%_))))
    (define gx#core-bind-import!
      (lambda _g125022_
        (let ((_g125021_ (##length _g125022_)))
          (cond ((##fx= _g125021_ 1) (apply gx#core-bind-import!__0 _g125022_))
                ((##fx= _g125021_ 2) (apply gx#core-bind-import!__1 _g125022_))
                ((##fx= _g125021_ 3) (apply gx#core-bind-import!__% _g125022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g125022_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123068%_ _%ctx123069%_)
        (gx#core-bind-import!__% _%in123068%_ _%ctx123069%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123074%_)
        (let ((_%ctx123076%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123074%_ _%ctx123076%_))))
    (define gx#core-bind-weak-import!
      (lambda _g125024_
        (let ((_g125023_ (##length _g125024_)))
          (cond ((##fx= _g125023_ 1)
                 (apply gx#core-bind-weak-import!__0 _g125024_))
                ((##fx= _g125023_ 2)
                 (apply gx#core-bind-weak-import!__% _g125024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g125024_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out122959%_)
        (letrec ((_%subst122961%_
                  (lambda (_%key123007%_)
                    (let* ((_%key123008123016%_ _%key123007%_)
                           (_%else123010123024%_ (lambda () _%key123007%_))
                           (_%K123012123055%_
                            (lambda (_%mark123027%_ _%id123028%_)
                              (let* ((_%mark123029123035%_ _%mark123027%_)
                                     (_%E123031123039%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark123029123035%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K123032123047%_
                                      (lambda (_%subst123042%_)
                                        (let ((_%$e123044%_
                                               (if _%subst123042%_
                                                   (hash-get
                                                    _%subst123042%_
                                                    _%id123028%_)
                                                   '#f)))
                                          (if _%$e123044%_
                                              _%$e123044%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key123007%_))))))
                                (if (##structure-instance-of?
                                     _%mark123029123035%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e123033123050%_
                                            (##unchecked-structure-ref
                                             _%mark123029123035%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123053%_ _%e123033123050%_))
                                      (_%K123032123047%_ _%subst123053%_))
                                    (_%E123031123039%_))))))
                      (if (##pair? _%key123008123016%_)
                          (let ((_%hd123013123058%_
                                 (##car _%key123008123016%_))
                                (_%tl123014123060%_
                                 (##cdr _%key123008123016%_)))
                            (let* ((_%id123063%_ _%hd123013123058%_)
                                   (_%mark123065%_ _%tl123014123060%_))
                              (_%K123012123055%_ _%mark123065%_ _%id123063%_)))
                          (_%else123010123024%_))))))
          (let* ((_%out122962122972%_ _%out122959%_)
                 (_%E122964122976%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out122962122972%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K122965122983%_
                  (lambda (_%phi122979%_ _%key122980%_ _%ctx122981%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx122981%_ _%phi122979%_)
                     (_%subst122961%_ _%key122980%_)))))
            (if (##structure-direct-instance-of?
                 _%out122962122972%_
                 'gx#module-export::t)
                (let* ((_%e122966122986%_
                        (##unchecked-structure-ref
                         _%out122962122972%_
                         '1
                         '#f
                         '#f))
                       (_%ctx122989%_ _%e122966122986%_)
                       (_%e122967122991%_
                        (##unchecked-structure-ref
                         _%out122962122972%_
                         '2
                         '#f
                         '#f))
                       (_%key122994%_ _%e122967122991%_)
                       (_%e122968122996%_
                        (##unchecked-structure-ref
                         _%out122962122972%_
                         '3
                         '#f
                         '#f))
                       (_%phi122999%_ _%e122968122996%_)
                       (_%e122969123001%_
                        (##unchecked-structure-ref
                         _%out122962122972%_
                         '4
                         '#f
                         '#f))
                       (_%e122970123004%_
                        (##unchecked-structure-ref
                         _%out122962122972%_
                         '5
                         '#f
                         '#f)))
                  (_%K122965122983%_
                   _%phi122999%_
                   _%key122994%_
                   _%ctx122989%_))
                (_%E122964122976%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out122884%_ _%rename122885%_ _%dphi122886%_)
        (let* ((_%out122887122897%_ _%out122884%_)
               (_%E122889122901%_
                (lambda ()
                  (error '"No clause matching"
                         _%out122887122897%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K122890122913%_
                (lambda (_%weak?122904%_
                         _%name122905%_
                         _%phi122906%_
                         _%key122907%_
                         _%ctx122908%_)
                  (##structure
                   gx#module-import::t
                   _%out122884%_
                   (let ((_%$e122910%_ _%rename122885%_))
                     (if _%$e122910%_ _%$e122910%_ _%name122905%_))
                   (fx+ _%phi122906%_ _%dphi122886%_)
                   _%weak?122904%_))))
          (if (##structure-direct-instance-of?
               _%out122887122897%_
               'gx#module-export::t)
              (let* ((_%e122891122916%_
                      (##unchecked-structure-ref
                       _%out122887122897%_
                       '1
                       '#f
                       '#f))
                     (_%ctx122919%_ _%e122891122916%_)
                     (_%e122892122921%_
                      (##unchecked-structure-ref
                       _%out122887122897%_
                       '2
                       '#f
                       '#f))
                     (_%key122924%_ _%e122892122921%_)
                     (_%e122893122926%_
                      (##unchecked-structure-ref
                       _%out122887122897%_
                       '3
                       '#f
                       '#f))
                     (_%phi122929%_ _%e122893122926%_)
                     (_%e122894122931%_
                      (##unchecked-structure-ref
                       _%out122887122897%_
                       '4
                       '#f
                       '#f))
                     (_%name122934%_ _%e122894122931%_)
                     (_%e122895122936%_
                      (##unchecked-structure-ref
                       _%out122887122897%_
                       '5
                       '#f
                       '#f))
                     (_%weak?122939%_ _%e122895122936%_))
                (_%K122890122913%_
                 _%weak?122939%_
                 _%name122934%_
                 _%phi122929%_
                 _%key122924%_
                 _%ctx122919%_))
              (_%E122889122901%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out122944%_)
        (let* ((_%rename122946%_ '#f) (_%dphi122948%_ '0))
          (gx#core-module-export->import__%
           _%out122944%_
           _%rename122946%_
           _%dphi122948%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out122950%_ _%rename122951%_)
        (let ((_%dphi122953%_ '0))
          (gx#core-module-export->import__%
           _%out122950%_
           _%rename122951%_
           _%dphi122953%_))))
    (define gx#core-module-export->import
      (lambda _g125026_
        (let ((_g125025_ (##length _g125026_)))
          (cond ((##fx= _g125025_ 1)
                 (apply gx#core-module-export->import__0 _g125026_))
                ((##fx= _g125025_ 2)
                 (apply gx#core-module-export->import__1 _g125026_))
                ((##fx= _g125025_ 3)
                 (apply gx#core-module-export->import__% _g125026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g125026_))))))
    (define gx#core-expand-module%
      (lambda (_%stx122783%_)
        (letrec ((_%make-context122785%_
                  (lambda (_%id122862%_)
                    (let* ((_%super122864%_ (gx#current-expander-context))
                           (_%bind-id122866%_ (gx#stx-e _%id122862%_))
                           (_%mod-id122868%_
                            (if (##structure-instance-of?
                                 _%super122864%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super122864%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id122866%_)
                                _%bind-id122866%_))
                           (_%ns122870%_ (symbol->string _%mod-id122868%_))
                           (_%path122880%_
                            (if (##structure-instance-of?
                                 _%super122864%_
                                 'gx#module-context::t)
                                (let ((_%path122872%_
                                       (##unchecked-structure-ref
                                        _%super122864%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path122872%_)
                                          (null? _%path122872%_))
                                      (cons _%bind-id122866%_ _%path122872%_)
                                      (if (not _%path122872%_)
                                          _%bind-id122866%_
                                          (cons _%bind-id122866%_
                                                (cons _%path122872%_ '())))))
                                _%bind-id122866%_))
                           (__obj125002
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
                       __obj125002
                       _%mod-id122868%_
                       _%super122864%_
                       _%ns122870%_
                       _%path122880%_)
                      __obj125002)))
                 (_%valid-module-id?122786%_
                  (lambda (_%id122837%_)
                    (let* ((_%str122839%_ (symbol->string _%id122837%_))
                           (_%len122841%_ (##string-length _%str122839%_)))
                      (if (##fx>= _%len122841%_ '1)
                          (let _%loop122844%_ ((_%index122846%_
                                                (##fx- (##string-length
                                                        _%str122839%_)
                                                       '1)))
                            (if (##fx>= _%index122846%_ '0)
                                (let ((_%c122848%_
                                       (string-ref
                                        _%str122839%_
                                        _%index122846%_)))
                                  (if (or (and (##char>=? _%c122848%_ '#\a)
                                               (##char<=? _%c122848%_ '#\z))
                                          (and (##char>=? _%c122848%_ '#\A)
                                               (##char<=? _%c122848%_ '#\Z))
                                          (and (##char>=? _%c122848%_ '#\0)
                                               (##char<=? _%c122848%_ '#\9))
                                          (##char=? _%c122848%_ '#\_)
                                          (##char=? _%c122848%_ '#\-))
                                      (_%loop122844%_
                                       (##fx- _%index122846%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e122787122797%_ _%stx122783%_)
                 (_%E122789122801%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122787122797%_)))
                 (_%E122788122833%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122787122797%_)
                        (let ((_%e122790122805%_
                               (gx#syntax-e _%e122787122797%_)))
                          (let ((_%hd122791122808%_ (##car _%e122790122805%_))
                                (_%tl122792122810%_ (##cdr _%e122790122805%_)))
                            (if (gx#stx-pair? _%tl122792122810%_)
                                (let ((_%e122793122813%_
                                       (gx#syntax-e _%tl122792122810%_)))
                                  (let ((_%hd122794122816%_
                                         (##car _%e122793122813%_))
                                        (_%tl122795122818%_
                                         (##cdr _%e122793122813%_)))
                                    (let* ((_%id122821%_ _%hd122794122816%_)
                                           (_%body122823%_ _%tl122795122818%_))
                                      (if (and (gx#identifier? _%id122821%_)
                                               (gx#stx-list? _%body122823%_))
                                          (if (_%valid-module-id?122786%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx122825%_
                                                      (_%make-context122785%_
                                                       _%id122821%_))
                                                     (_%body122827%_
                                                      (gx#core-expand-module-begin
                                                       _%body122823%_
                                                       _%ctx122825%_))
                                                     (_%body122829%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body122827%_)
                                                       (gx#stx-source
                                                        _%stx122783%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx122825%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body122829%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx122825%_
                                                 _%body122829%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id122821%_
                                                 _%ctx122825%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id122821%_)
                                                  _%body122829%_)
                                                 (gx#stx-source
                                                  _%stx122783%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx122783%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E122789122801%_)))))
                                (_%E122789122801%_))))
                        (_%E122789122801%_)))))
            (_%E122788122833%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body122749%_ _%ctx122750%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx122753%_
                   (gx#core-expand-head (cons '%%begin-module _%body122749%_)))
                  (_%e122754122761%_ _%stx122753%_)
                  (_%E122756122765%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx122753%_)))
                  (_%E122755122779%_
                   (lambda ()
                     (if (gx#stx-pair? _%e122754122761%_)
                         (let ((_%e122757122769%_
                                (gx#syntax-e _%e122754122761%_)))
                           (let ((_%hd122758122772%_ (##car _%e122757122769%_))
                                 (_%tl122759122774%_
                                  (##cdr _%e122757122769%_)))
                             (if (and (gx#identifier? _%hd122758122772%_)
                                      (gx#core-identifier=?
                                       _%hd122758122772%_
                                       '%#begin-module))
                                 (let ((_%body122777%_ _%tl122759122774%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx122753%_)
                                           _%body122777%_
                                           (gx#core-expand-module-body
                                            _%body122777%_))
                                       (_%E122756122765%_)))
                                 (_%E122756122765%_))))
                         (_%E122756122765%_)))))
             (_%E122755122779%_)))
         gx#current-expander-context
         _%ctx122750%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body122545%_)
        (letrec ((_%expand-special122547%_
                  (lambda (_%hd122676%_ _%K122677%_ _%rest122678%_ _%r122679%_)
                    (let* ((_%e122680122697%_ _%hd122676%_)
                           (_%E122692122701%_
                            (lambda ()
                              (_%K122677%_
                               _%rest122678%_
                               (cons (gx#core-expand-top _%hd122676%_)
                                     _%r122679%_))))
                           (_%E122682122713%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122680122697%_)
                                  (let ((_%e122693122705%_
                                         (gx#syntax-e _%e122680122697%_)))
                                    (let ((_%hd122694122708%_
                                           (##car _%e122693122705%_))
                                          (_%tl122695122710%_
                                           (##cdr _%e122693122705%_)))
                                      (if (and (gx#identifier?
                                                _%hd122694122708%_)
                                               (gx#core-identifier=?
                                                _%hd122694122708%_
                                                '%#export))
                                          (if '#t
                                              (_%K122677%_
                                               _%rest122678%_
                                               (cons _%hd122676%_ _%r122679%_))
                                              (_%E122692122701%_))
                                          (_%E122692122701%_))))
                                  (_%E122692122701%_))))
                           (_%E122681122745%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122680122697%_)
                                  (let ((_%e122683122717%_
                                         (gx#syntax-e _%e122680122697%_)))
                                    (let ((_%hd122684122720%_
                                           (##car _%e122683122717%_))
                                          (_%tl122685122722%_
                                           (##cdr _%e122683122717%_)))
                                      (if (and (gx#identifier?
                                                _%hd122684122720%_)
                                               (gx#core-identifier=?
                                                _%hd122684122720%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122685122722%_)
                                              (let ((_%e122686122725%_
                                                     (gx#syntax-e
                                                      _%tl122685122722%_)))
                                                (let ((_%hd122687122728%_
                                                       (##car _%e122686122725%_))
                                                      (_%tl122688122730%_
                                                       (##cdr _%e122686122725%_)))
                                                  (let ((_%hd-bind122733%_
                                                         _%hd122687122728%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122688122730%_)
                                                        (let ((_%e122689122735%_
                                                               (gx#syntax-e
                                                                _%tl122688122730%_)))
                                                          (let ((_%hd122690122738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122689122735%_))
                        (_%tl122691122740%_ (##cdr _%e122689122735%_)))
                    (let ((_%expr122743%_ _%hd122690122738%_))
                      (if (gx#stx-null? _%tl122691122740%_)
                          (if (gx#core-bind-values? _%hd-bind122733%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122733%_)
                                (_%K122677%_
                                 _%rest122678%_
                                 (cons _%hd122676%_ _%r122679%_)))
                              (_%E122682122713%_))
                          (_%E122682122713%_)))))
                (_%E122682122713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122682122713%_))
                                          (_%E122682122713%_))))
                                  (_%E122682122713%_)))))
                      (_%E122681122745%_))))
                 (_%expand-body122548%_
                  (lambda (_%rbody122550%_)
                    (let _%lp122552%_ ((_%rest122554%_ _%rbody122550%_)
                                       (_%body122555%_ '()))
                      (let* ((_%rest122556122564%_ _%rest122554%_)
                             (_%else122558122572%_ (lambda () _%body122555%_))
                             (_%K122560122664%_
                              (lambda (_%rest122575%_ _%hd122576%_)
                                (let* ((_%e122577122598%_ _%hd122576%_)
                                       (_%E122593122602%_
                                        (lambda ()
                                          (_%lp122552%_
                                           _%rest122575%_
                                           (cons (gx#core-expand-expression
                                                  _%hd122576%_)
                                                 _%body122555%_))))
                                       (_%E122589122616%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122577122598%_)
                                              (let ((_%e122594122606%_
                                                     (gx#syntax-e
                                                      _%e122577122598%_)))
                                                (let ((_%hd122595122609%_
                                                       (##car _%e122594122606%_))
                                                      (_%tl122596122611%_
                                                       (##cdr _%e122594122606%_)))
                                                  (let ((_%form122614%_
                                                         _%hd122595122609%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form122614%_
                                                         gx#special-form-binding?)
                                                        (_%lp122552%_
                                                         _%rest122575%_
                                                         (cons _%hd122576%_
                                                               _%body122555%_))
                                                        (_%E122593122602%_)))))
                                              (_%E122593122602%_))))
                                       (_%E122579122628%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122577122598%_)
                                              (let ((_%e122590122620%_
                                                     (gx#syntax-e
                                                      _%e122577122598%_)))
                                                (let ((_%hd122591122623%_
                                                       (##car _%e122590122620%_))
                                                      (_%tl122592122625%_
                                                       (##cdr _%e122590122620%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122591122623%_)
                                                           (gx#core-identifier=?
                                                            _%hd122591122623%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp122552%_
                                                           _%rest122575%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd122576%_)
                         _%body122555%_))
                  (_%E122589122616%_))
              (_%E122589122616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122589122616%_))))
                                       (_%E122578122660%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122577122598%_)
                                              (let ((_%e122580122632%_
                                                     (gx#syntax-e
                                                      _%e122577122598%_)))
                                                (let ((_%hd122581122635%_
                                                       (##car _%e122580122632%_))
                                                      (_%tl122582122637%_
                                                       (##cdr _%e122580122632%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122581122635%_)
                                                           (gx#core-identifier=?
                                                            _%hd122581122635%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl122582122637%_)
                                                          (let ((_%e122583122640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl122582122637%_)))
                    (let ((_%hd122584122643%_ (##car _%e122583122640%_))
                          (_%tl122585122645%_ (##cdr _%e122583122640%_)))
                      (let ((_%hd-bind122648%_ _%hd122584122643%_))
                        (if (gx#stx-pair? _%tl122585122645%_)
                            (let ((_%e122586122650%_
                                   (gx#syntax-e _%tl122585122645%_)))
                              (let ((_%hd122587122653%_
                                     (##car _%e122586122650%_))
                                    (_%tl122588122655%_
                                     (##cdr _%e122586122650%_)))
                                (let ((_%expr122658%_ _%hd122587122653%_))
                                  (if (gx#stx-null? _%tl122588122655%_)
                                      (if '#t
                                          (_%lp122552%_
                                           _%rest122575%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind122648%_)
                                                   (gx#core-expand-expression
                                                    _%expr122658%_))
                                                  (gx#stx-source _%hd122576%_))
                                                 _%body122555%_))
                                          (_%E122579122628%_))
                                      (_%E122579122628%_)))))
                            (_%E122579122628%_)))))
                  (_%E122579122628%_))
              (_%E122579122628%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122579122628%_)))))
                                  (_%E122578122660%_)))))
                        (if (##pair? _%rest122556122564%_)
                            (let ((_%hd122561122667%_
                                   (##car _%rest122556122564%_))
                                  (_%tl122562122669%_
                                   (##cdr _%rest122556122564%_)))
                              (let* ((_%hd122672%_ _%hd122561122667%_)
                                     (_%rest122674%_ _%tl122562122669%_))
                                (_%K122560122664%_
                                 _%rest122674%_
                                 _%hd122672%_)))
                            (_%else122558122572%_)))))))
          (_%expand-body122548%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body122545%_)
            _%expand-special122547%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx122386%_
               _%expanded?122387%_
               _%method122388%_
               _%current-phi122389%_
               _%expand1122390%_)
        (letrec ((_%K122392%_
                  (lambda (_%rest122512%_ _%r122513%_)
                    (let* ((_%e122514122521%_ _%rest122512%_)
                           (_%E122516122525%_ (lambda () _%r122513%_))
                           (_%E122515122541%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122514122521%_)
                                  (let ((_%e122517122529%_
                                         (gx#syntax-e _%e122514122521%_)))
                                    (let ((_%hd122518122532%_
                                           (##car _%e122517122529%_))
                                          (_%tl122519122534%_
                                           (##cdr _%e122517122529%_)))
                                      (let* ((_%hd122537%_ _%hd122518122532%_)
                                             (_%rest122539%_
                                              _%tl122519122534%_))
                                        (if '#t
                                            (_%step122393%_
                                             _%hd122537%_
                                             _%rest122539%_
                                             _%r122513%_)
                                            (_%E122516122525%_)))))
                                  (_%E122516122525%_)))))
                      (_%E122515122541%_))))
                 (_%step122393%_
                  (lambda (_%hd122426%_ _%rest122427%_ _%r122428%_)
                    (let* ((_%e122429122447%_ _%hd122426%_)
                           (_%E122442122451%_
                            (lambda ()
                              (if (_%expanded?122387%_ (gx#stx-e _%hd122426%_))
                                  (_%K122392%_
                                   _%rest122427%_
                                   (cons (gx#stx-e _%hd122426%_) _%r122428%_))
                                  (_%expand1122390%_
                                   _%hd122426%_
                                   _%K122392%_
                                   _%rest122427%_
                                   _%r122428%_))))
                           (_%E122438122467%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122429122447%_)
                                  (let ((_%e122443122455%_
                                         (gx#syntax-e _%e122429122447%_)))
                                    (let ((_%hd122444122458%_
                                           (##car _%e122443122455%_))
                                          (_%tl122445122460%_
                                           (##cdr _%e122443122455%_)))
                                      (let* ((_%macro122463%_
                                              _%hd122444122458%_)
                                             (_%body122465%_
                                              _%tl122445122460%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro122463%_
                                             gx#syntax-binding?)
                                            (_%K122392%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro122463%_)
                                                    _%hd122426%_
                                                    _%method122388%_)
                                                   _%rest122427%_)
                                             _%r122428%_)
                                            (_%E122442122451%_)))))
                                  (_%E122442122451%_))))
                           (_%E122431122481%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122429122447%_)
                                  (let ((_%e122439122471%_
                                         (gx#syntax-e _%e122429122447%_)))
                                    (let ((_%hd122440122474%_
                                           (##car _%e122439122471%_))
                                          (_%tl122441122476%_
                                           (##cdr _%e122439122471%_)))
                                      (if (eq? (gx#stx-e _%hd122440122474%_)
                                               'begin:)
                                          (let ((_%body122479%_
                                                 _%tl122441122476%_))
                                            (if '#t
                                                (_%K122392%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest122427%_
                                                  _%body122479%_)
                                                 _%r122428%_)
                                                (_%E122438122467%_)))
                                          (_%E122438122467%_))))
                                  (_%E122438122467%_))))
                           (_%E122430122508%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122429122447%_)
                                  (let ((_%e122432122485%_
                                         (gx#syntax-e _%e122429122447%_)))
                                    (let ((_%hd122433122488%_
                                           (##car _%e122432122485%_))
                                          (_%tl122434122490%_
                                           (##cdr _%e122432122485%_)))
                                      (if (eq? (gx#stx-e _%hd122433122488%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl122434122490%_)
                                              (let ((_%e122435122493%_
                                                     (gx#syntax-e
                                                      _%tl122434122490%_)))
                                                (let ((_%hd122436122496%_
                                                       (##car _%e122435122493%_))
                                                      (_%tl122437122498%_
                                                       (##cdr _%e122435122493%_)))
                                                  (let* ((_%dphi122501%_
                                                          _%hd122436122496%_)
                                                         (_%body122503%_
                                                          _%tl122437122498%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi122501%_)
                                                        (let ((_%rbody122506%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K122392%_ _%body122503%_ '()))
                        _%current-phi122389%_
                        (fx+ (gx#stx-e _%dphi122501%_)
                             (_%current-phi122389%_)))))
                  (_%K122392%_
                   _%rest122427%_
                   (__foldr1 cons _%r122428%_ _%rbody122506%_)))
                (_%E122431122481%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122431122481%_))
                                          (_%E122431122481%_))))
                                  (_%E122431122481%_)))))
                      (_%E122430122508%_)))))
          (let* ((_%e122394122401%_ _%stx122386%_)
                 (_%E122396122405%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122394122401%_)))
                 (_%E122395122422%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122394122401%_)
                        (let ((_%e122397122409%_
                               (gx#syntax-e _%e122394122401%_)))
                          (let ((_%hd122398122412%_ (##car _%e122397122409%_))
                                (_%tl122399122414%_ (##cdr _%e122397122409%_)))
                            (let ((_%body122417%_ _%tl122399122414%_))
                              (if '#t
                                  (if (_%current-phi122389%_)
                                      (_%K122392%_ _%body122417%_ '())
                                      (__call-with-parameters
                                       (lambda ()
                                         (_%K122392%_ _%body122417%_ '()))
                                       _%current-phi122389%_
                                       (gx#current-expander-phi)))
                                  (_%E122396122405%_)))))
                        (_%E122396122405%_)))))
            (_%E122395122422%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx122040%_ _%internal-expand?122041%_)
        (letrec ((_%expand1122043%_
                  (lambda (_%hd122358%_ _%K122359%_ _%rest122360%_ _%r122361%_)
                    (if (gx#core-bound-module? _%hd122358%_)
                        (_%import1122044%_
                         (gx#syntax-local-e__0 _%hd122358%_)
                         _%K122359%_
                         _%rest122360%_
                         _%r122361%_)
                        (if (gx#core-library-module-path? _%hd122358%_)
                            (_%import1122044%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd122358%_))
                             _%K122359%_
                             _%rest122360%_
                             _%r122361%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd122358%_)
                                (_%import1122044%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd122358%_))
                                 _%K122359%_
                                 _%rest122360%_
                                 _%r122361%_)
                                (let ((_%e122367%_ (gx#stx-e _%hd122358%_)))
                                  (if (pair? _%e122367%_)
                                      (let ((_%$e122370%_
                                             (gx#stx-e (car _%e122367%_))))
                                        (if (eq? 'spec: _%$e122370%_)
                                            (_%import-spec122047%_
                                             _%hd122358%_
                                             _%K122359%_
                                             _%rest122360%_
                                             _%r122361%_)
                                            (if (eq? 'in: _%$e122370%_)
                                                (_%import-submodule122045%_
                                                 _%hd122358%_
                                                 _%K122359%_
                                                 _%rest122360%_
                                                 _%r122361%_)
                                                (if (eq? 'runtime:
                                                         _%$e122370%_)
                                                    (_%import-runtime122046%_
                                                     _%hd122358%_
                                                     _%K122359%_
                                                     _%rest122360%_
                                                     _%r122361%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx122040%_
                                                     _%hd122358%_)))))
                                      (if (string? _%e122367%_)
                                          (_%import1122044%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd122358%_
                                             (gx#stx-source _%stx122040%_)))
                                           _%K122359%_
                                           _%rest122360%_
                                           _%r122361%_)
                                          (if (##structure-instance-of?
                                               _%e122367%_
                                               'gx#module-context::t)
                                              (_%K122359%_
                                               _%rest122360%_
                                               (cons _%e122367%_ _%r122361%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx122040%_
                                               _%hd122358%_))))))))))
                 (_%import1122044%_
                  (lambda (_%ctx122347%_
                           _%K122348%_
                           _%rest122349%_
                           _%r122350%_)
                    (let ((_%dphi122352%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K122348%_
                       _%rest122349%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx122347%_
                              _%dphi122352%_
                              (map (lambda (_%g122353122355%_)
                                     (gx#core-module-export->import__%
                                      _%g122353122355%_
                                      '#f
                                      _%dphi122352%_))
                                   (##unchecked-structure-ref
                                    _%ctx122347%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r122350%_)))))
                 (_%import-submodule122045%_
                  (lambda (_%hd122314%_ _%K122315%_ _%rest122316%_ _%r122317%_)
                    (let* ((_%e122318122325%_ _%hd122314%_)
                           (_%E122320122329%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122318122325%_)))
                           (_%E122319122343%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122318122325%_)
                                  (let ((_%e122321122333%_
                                         (gx#syntax-e _%e122318122325%_)))
                                    (let ((_%hd122322122336%_
                                           (##car _%e122321122333%_))
                                          (_%tl122323122338%_
                                           (##cdr _%e122321122333%_)))
                                      (let ((_%spath122341%_
                                             _%tl122323122338%_))
                                        (if '#t
                                            (_%import1122044%_
                                             (_%import-spec-source122048%_
                                              _%spath122341%_)
                                             _%K122315%_
                                             _%rest122316%_
                                             _%r122317%_)
                                            (_%E122320122329%_)))))
                                  (_%E122320122329%_)))))
                      (_%E122319122343%_))))
                 (_%import-runtime122046%_
                  (lambda (_%hd122281%_ _%K122282%_ _%rest122283%_ _%r122284%_)
                    (let* ((_%e122285122292%_ _%hd122281%_)
                           (_%E122287122296%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122285122292%_)))
                           (_%E122286122310%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122285122292%_)
                                  (let ((_%e122288122300%_
                                         (gx#syntax-e _%e122285122292%_)))
                                    (let ((_%hd122289122303%_
                                           (##car _%e122288122300%_))
                                          (_%tl122290122305%_
                                           (##cdr _%e122288122300%_)))
                                      (let ((_%spath122308%_
                                             _%tl122290122305%_))
                                        (if '#t
                                            (_%K122282%_
                                             _%rest122283%_
                                             (cons (_%import-spec-source122048%_
                                                    _%spath122308%_)
                                                   _%r122284%_))
                                            (_%E122287122296%_)))))
                                  (_%E122287122296%_)))))
                      (_%E122286122310%_))))
                 (_%import-spec122047%_
                  (lambda (_%hd122119%_ _%K122120%_ _%rest122121%_ _%r122122%_)
                    (let* ((_%e122123122140%_ _%hd122119%_)
                           (_%E122132122144%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122123122140%_)))
                           (_%E122125122255%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122123122140%_)
                                  (let ((_%e122133122148%_
                                         (gx#syntax-e _%e122123122140%_)))
                                    (let ((_%hd122134122151%_
                                           (##car _%e122133122148%_))
                                          (_%tl122135122153%_
                                           (##cdr _%e122133122148%_)))
                                      (if (gx#stx-pair? _%tl122135122153%_)
                                          (let ((_%e122136122156%_
                                                 (gx#syntax-e
                                                  _%tl122135122153%_)))
                                            (let ((_%hd122137122159%_
                                                   (##car _%e122136122156%_))
                                                  (_%tl122138122161%_
                                                   (##cdr _%e122136122156%_)))
                                              (let* ((_%path122164%_
                                                      _%hd122137122159%_)
                                                     (_%specs122166%_
                                                      _%tl122138122161%_))
                                                (if '#t
                                                    (let ((_%src-ctx122168%_
                                                           (_%import-spec-source122048%_
                                                            _%path122164%_))
                                                          (_%exports122169%_
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
                                                          (_%specs122170%_
                                                           (gx#syntax->list
                                                            _%specs122166%_)))
                                                      (for-each
                                                       (lambda (_%out122172%_)
                                                         (hash-put!
                                                          _%exports122169%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out122172%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out122172%_ '4 '#f '#f))
                  _%out122172%_))
               (##unchecked-structure-ref _%src-ctx122168%_ '9 '#f '#f))
              (_%K122120%_
               _%rest122121%_
               (__foldl1
                (lambda (_%spec122174%_ _%r122175%_)
                  (let* ((_%e122176122192%_ _%spec122174%_)
                         (_%E122178122196%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e122176122192%_)))
                         (_%E122177122251%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122176122192%_)
                                (let ((_%e122179122200%_
                                       (gx#syntax-e _%e122176122192%_)))
                                  (let ((_%hd122180122203%_
                                         (##car _%e122179122200%_))
                                        (_%tl122181122205%_
                                         (##cdr _%e122179122200%_)))
                                    (let ((_%phi122208%_ _%hd122180122203%_))
                                      (if (gx#stx-pair? _%tl122181122205%_)
                                          (let ((_%e122182122210%_
                                                 (gx#syntax-e
                                                  _%tl122181122205%_)))
                                            (let ((_%hd122183122213%_
                                                   (##car _%e122182122210%_))
                                                  (_%tl122184122215%_
                                                   (##cdr _%e122182122210%_)))
                                              (let ((_%name122218%_
                                                     _%hd122183122213%_))
                                                (if (gx#stx-pair?
                                                     _%tl122184122215%_)
                                                    (let ((_%e122185122220%_
                                                           (gx#syntax-e
                                                            _%tl122184122215%_)))
                                                      (let ((_%hd122186122223%_
                                                             (##car _%e122185122220%_))
                                                            (_%tl122187122225%_
                                                             (##cdr _%e122185122220%_)))
                                                        (let ((_%src-phi122228%_
                                                               _%hd122186122223%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122187122225%_)
                                                              (let ((_%e122188122230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122187122225%_)))
                        (let ((_%hd122189122233%_ (##car _%e122188122230%_))
                              (_%tl122190122235%_ (##cdr _%e122188122230%_)))
                          (let ((_%src-name122238%_ _%hd122189122233%_))
                            (if (gx#stx-null? _%tl122190122235%_)
                                (if (and (gx#stx-fixnum? _%src-phi122228%_)
                                         (gx#identifier? _%src-name122238%_)
                                         (gx#stx-fixnum? _%phi122208%_)
                                         (gx#identifier? _%name122218%_))
                                    (let ((_%src-phi122240%_
                                           (gx#stx-e _%src-phi122228%_))
                                          (_%src-name122241%_
                                           (gx#core-identifier-key
                                            _%src-name122238%_))
                                          (_%phi122242%_
                                           (gx#stx-e _%phi122208%_))
                                          (_%name122243%_
                                           (gx#core-identifier-key
                                            _%name122218%_)))
                                      (let ((_%$e122245%_
                                             (hash-get
                                              _%exports122169%_
                                              (cons _%src-phi122240%_
                                                    _%src-name122241%_))))
                                        (if _%$e122245%_
                                            ((lambda (_%out122248%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out122248%_
                                                      _%name122243%_
                                                      (fx- _%phi122242%_
                                                           _%src-phi122240%_))
                                                     _%r122175%_))
                                             _%$e122245%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _%stx122040%_
                                             _%hd122119%_))))
                                    (_%E122178122196%_))
                                (_%E122178122196%_)))))
                      (_%E122178122196%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122178122196%_)))))
                                          (_%E122178122196%_)))))
                                (_%E122178122196%_)))))
                    (_%E122177122251%_)))
                _%r122122%_
                _%specs122170%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122132122144%_)))))
                                          (_%E122132122144%_))))
                                  (_%E122132122144%_))))
                           (_%E122124122277%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122123122140%_)
                                  (let ((_%e122126122259%_
                                         (gx#syntax-e _%e122123122140%_)))
                                    (let ((_%hd122127122262%_
                                           (##car _%e122126122259%_))
                                          (_%tl122128122264%_
                                           (##cdr _%e122126122259%_)))
                                      (if (gx#stx-pair? _%tl122128122264%_)
                                          (let ((_%e122129122267%_
                                                 (gx#syntax-e
                                                  _%tl122128122264%_)))
                                            (let ((_%hd122130122270%_
                                                   (##car _%e122129122267%_))
                                                  (_%tl122131122272%_
                                                   (##cdr _%e122129122267%_)))
                                              (let ((_%path122275%_
                                                     _%hd122130122270%_))
                                                (if (gx#stx-null?
                                                     _%tl122131122272%_)
                                                    (if '#t
                                                        (_%K122120%_
                                                         _%rest122121%_
                                                         (cons (_%import-spec-source122048%_
                                                                _%path122275%_)
                                                               _%r122122%_))
                                                        (_%E122125122255%_))
                                                    (_%E122125122255%_)))))
                                          (_%E122125122255%_))))
                                  (_%E122125122255%_)))))
                      (_%E122124122277%_))))
                 (_%import-spec-source122048%_
                  (lambda (_%spath122117%_)
                    (gx#core-import-nested-module
                     _%spath122117%_
                     _%stx122040%_)))
                 (_%import!122049%_
                  (lambda (_%rbody122062%_)
                    (letrec* ((_%current-ctx122064%_
                               (gx#current-expander-context))
                              (_%deps122065%_ (make-hash-table-eq))
                              (_%bind!122066%_
                               (lambda (_%hd122115%_)
                                 (gx#core-bind-import!__1
                                  _%hd122115%_
                                  _%current-ctx122064%_))))
                      (let _%lp122068%_ ((_%rest122070%_ _%rbody122062%_)
                                         (_%body122071%_ '()))
                        (let* ((_%rest122072122080%_ _%rest122070%_)
                               (_%else122074122091%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122064%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122064%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122064%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122071%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122088%_ _%_122089%_)
                                     (gx#eval-module _%ctx122088%_))
                                   _%deps122065%_)
                                  _%body122071%_))
                               (_%K122076122103%_
                                (lambda (_%rest122094%_ _%hd122095%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122095%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122066%_ _%hd122095%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122095%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122095%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122065%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122095%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122095%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122066%_
                                             (##unchecked-structure-ref
                                              _%hd122095%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122095%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122065%_
                                                 (##unchecked-structure-ref
                                                  _%hd122095%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122099%_
                                                 (##structure-instance-of?
                                                  _%hd122095%_
                                                  'gx#module-context::t)))
                                            (if _%$e122099%_
                                                _%$e122099%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx122040%_
                                                 _%hd122095%_)))))
                                  (_%lp122068%_
                                   _%rest122094%_
                                   (cons _%hd122095%_ _%body122071%_)))))
                          (if (##pair? _%rest122072122080%_)
                              (let ((_%hd122077122106%_
                                     (##car _%rest122072122080%_))
                                    (_%tl122078122108%_
                                     (##cdr _%rest122072122080%_)))
                                (let* ((_%hd122111%_ _%hd122077122106%_)
                                       (_%rest122113%_ _%tl122078122108%_))
                                  (_%K122076122103%_
                                   _%rest122113%_
                                   _%hd122111%_)))
                              (_%else122074122091%_)))))))
                 (_%expanded-import?122050%_
                  (lambda (_%e122054%_)
                    (let ((_%$e122056%_
                           (##structure-direct-instance-of?
                            _%e122054%_
                            'gx#import-set::t)))
                      (if _%$e122056%_
                          _%$e122056%_
                          (let ((_%$e122059%_
                                 (##structure-direct-instance-of?
                                  _%e122054%_
                                  'gx#module-import::t)))
                            (if _%$e122059%_
                                _%$e122059%_
                                (##structure-instance-of?
                                 _%e122054%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody122052%_
                 (gx#core-expand-import/export
                  _%stx122040%_
                  _%expanded-import?122050%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1122043%_)))
            (if _%internal-expand?122041%_
                (reverse _%rbody122052%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!122049%_ _%rbody122052%_))
                 (gx#stx-source _%stx122040%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx122379%_)
        (let ((_%internal-expand?122381%_ '#f))
          (gx#core-expand-import%__%
           _%stx122379%_
           _%internal-expand?122381%_))))
    (define gx#core-expand-import%
      (lambda _g125028_
        (let ((_g125027_ (##length _g125028_)))
          (cond ((##fx= _g125027_ 1)
                 (apply gx#core-expand-import%__0 _g125028_))
                ((##fx= _g125027_ 2)
                 (apply gx#core-expand-import%__% _g125028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g125028_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath121967%_ _%where121968%_)
        (let* ((_%e121969121976%_ _%spath121967%_)
               (_%E121971121980%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121969121976%_)))
               (_%E121970122035%_
                (lambda ()
                  (if (gx#stx-pair? _%e121969121976%_)
                      (let ((_%e121972121984%_
                             (gx#syntax-e _%e121969121976%_)))
                        (let ((_%hd121973121987%_ (##car _%e121972121984%_))
                              (_%tl121974121989%_ (##cdr _%e121972121984%_)))
                          (let* ((_%origin121992%_ _%hd121973121987%_)
                                 (_%sub121994%_ _%tl121974121989%_))
                            (if '#t
                                (let ((_%origin-ctx121996%_
                                       (if (gx#stx-false? _%origin121992%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin121992%_))))
                                  (let _%lp121998%_ ((_%rest122000%_
                                                      _%sub121994%_)
                                                     (_%ctx122001%_
                                                      _%origin-ctx121996%_))
                                    (let* ((_%e122002122009%_ _%rest122000%_)
                                           (_%E122004122013%_
                                            (lambda () _%ctx122001%_))
                                           (_%E122003122031%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e122002122009%_)
                                                  (let ((_%e122005122017%_
                                                         (gx#syntax-e
                                                          _%e122002122009%_)))
                                                    (let ((_%hd122006122020%_
                                                           (##car _%e122005122017%_))
                                                          (_%tl122007122022%_
                                                           (##cdr _%e122005122017%_)))
                                                      (let* ((_%id122025%_
                                                              _%hd122006122020%_)
                                                             (_%rest122027%_
                                                              _%tl122007122022%_))
                                                        (if '#t
                                                            (let ((_%bind122029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id122025%_
                            '0
                            _%ctx122001%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind122029%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind122029%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where121968%_
                           _%spath121967%_
                           _%id122025%_))
                      (_%lp121998%_
                       _%rest122027%_
                       (##unchecked-structure-ref _%bind122029%_ '4 '#f '#f)))
                    (_%E122004122013%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122004122013%_)))))
                                      (_%E122003122031%_))))
                                (_%E121971121980%_)))))
                      (_%E121971121980%_)))))
          (_%E121970122035%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd121965%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd121965%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx121459%_ _%internal-expand?121460%_)
        (letrec* ((_%make-export__124956124957%_
                   (lambda (_%bind121913%_
                            _%phi121914%_
                            _%ctx121915%_
                            _%name121916%_)
                     (let* ((_%key121918%_
                             (##unchecked-structure-ref
                              _%bind121913%_
                              '2
                              '#f
                              '#f))
                            (_%export-key121920%_
                             (if _%name121916%_
                                 (gx#core-identifier-key _%name121916%_)
                                 _%key121918%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx121915%_
                        _%key121918%_
                        _%phi121914%_
                        _%export-key121920%_
                        (let ((_%$e121923%_
                               (##structure-instance-of?
                                _%bind121913%_
                                'gx#extern-binding::t)))
                          (if _%$e121923%_
                              _%$e121923%_
                              (##structure-direct-instance-of?
                               _%bind121913%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__124958124961%_
                   (lambda (_%bind121929%_)
                     (let* ((_%phi121931%_ (gx#current-export-expander-phi))
                            (_%ctx121933%_ (gx#current-expander-context))
                            (_%name121935%_ '#f))
                       (_%make-export__124956124957%_
                        _%bind121929%_
                        _%phi121931%_
                        _%ctx121933%_
                        _%name121935%_))))
                  (_%make-export__1__124959124962%_
                   (lambda (_%bind121937%_ _%phi121938%_)
                     (let* ((_%ctx121940%_ (gx#current-expander-context))
                            (_%name121942%_ '#f))
                       (_%make-export__124956124957%_
                        _%bind121937%_
                        _%phi121938%_
                        _%ctx121940%_
                        _%name121942%_))))
                  (_%make-export__2__124960124963%_
                   (lambda (_%bind121944%_ _%phi121945%_ _%ctx121946%_)
                     (let ((_%name121948%_ '#f))
                       (_%make-export__124956124957%_
                        _%bind121944%_
                        _%phi121945%_
                        _%ctx121946%_
                        _%name121948%_))))
                  (_%make-export121462%_
                   (lambda _g125030_
                     (let ((_g125029_ (##length _g125030_)))
                       (cond ((##fx= _g125029_ 1)
                              (apply _%make-export__0__124958124961%_
                                     _g125030_))
                             ((##fx= _g125029_ 2)
                              (apply _%make-export__1__124959124962%_
                                     _g125030_))
                             ((##fx= _g125029_ 3)
                              (apply _%make-export__2__124960124963%_
                                     _g125030_))
                             ((##fx= _g125029_ 4)
                              (apply _%make-export__124956124957%_ _g125030_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125030_))))))
                  (_%expand1121463%_
                   (lambda (_%hd121618%_
                            _%K121619%_
                            _%rest121620%_
                            _%r121621%_)
                     (let* ((_%e121622121654%_ _%hd121618%_)
                            (_%E121649121658%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx121459%_
                                _%hd121618%_)))
                            (_%E121639121742%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121622121654%_)
                                   (let ((_%e121650121662%_
                                          (gx#syntax-e _%e121622121654%_)))
                                     (let ((_%hd121651121665%_
                                            (##car _%e121650121662%_))
                                           (_%tl121652121667%_
                                            (##cdr _%e121650121662%_)))
                                       (if (eq? (gx#stx-e _%hd121651121665%_)
                                                'import:)
                                           (let ((_%in121670%_
                                                  _%tl121652121667%_))
                                             (if (gx#stx-list? _%in121670%_)
                                                 (let _%lp121672%_ ((_%in-rest121674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in121670%_)
                            (_%r121675%_ _%r121621%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e121676121683%_
                                                           _%in-rest121674%_)
                                                          (_%E121678121687%_
                                                           (lambda ()
                                                             (_%K121619%_
                                                              _%rest121620%_
                                                              _%r121675%_)))
                                                          (_%E121677121738%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e121676121683%_)
                         (let ((_%e121679121691%_
                                (gx#syntax-e _%e121676121683%_)))
                           (let ((_%hd121680121694%_ (##car _%e121679121691%_))
                                 (_%tl121681121696%_
                                  (##cdr _%e121679121691%_)))
                             (let* ((_%hd121699%_ _%hd121680121694%_)
                                    (_%in-rest121701%_ _%tl121681121696%_))
                               (if '#t
                                   (let ((_%src121736%_
                                          (if (gx#core-bound-module?
                                               _%hd121699%_)
                                              (gx#syntax-local-e__0
                                               _%hd121699%_)
                                              (if (gx#core-library-module-path?
                                                   _%hd121699%_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _%hd121699%_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd121699%_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _%hd121699%_))
                                                      (if (gx#stx-string?
                                                           _%hd121699%_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _%hd121699%_
                                                            (gx#stx-source
                                                             _%stx121459%_)))
                                                          (let* ((_%e121707121714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd121699%_)
                         (_%E121709121718%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _%stx121459%_
                             _%hd121699%_)))
                         (_%E121708121732%_
                          (lambda ()
                            (if (gx#stx-pair? _%e121707121714%_)
                                (let ((_%e121710121722%_
                                       (gx#syntax-e _%e121707121714%_)))
                                  (let ((_%hd121711121725%_
                                         (##car _%e121710121722%_))
                                        (_%tl121712121727%_
                                         (##cdr _%e121710121722%_)))
                                    (if (eq? (gx#stx-e _%hd121711121725%_)
                                             'in:)
                                        (let ((_%spath121730%_
                                               _%tl121712121727%_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _%spath121730%_
                                               _%stx121459%_)
                                              (_%E121709121718%_)))
                                        (_%E121709121718%_))))
                                (_%E121709121718%_)))))
                    (_%E121708121732%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp121672%_
                                      _%in-rest121701%_
                                      (_%export-imports121464%_
                                       _%src121736%_
                                       _%r121675%_)))
                                   (_%E121678121687%_)))))
                         (_%E121678121687%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121677121738%_)))
                                                 (_%E121649121658%_)))
                                           (_%E121649121658%_))))
                                   (_%E121649121658%_))))
                            (_%E121626121782%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121622121654%_)
                                   (let ((_%e121640121746%_
                                          (gx#syntax-e _%e121622121654%_)))
                                     (let ((_%hd121641121749%_
                                            (##car _%e121640121746%_))
                                           (_%tl121642121751%_
                                            (##cdr _%e121640121746%_)))
                                       (if (eq? (gx#stx-e _%hd121641121749%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl121642121751%_)
                                               (let ((_%e121643121754%_
                                                      (gx#syntax-e
                                                       _%tl121642121751%_)))
                                                 (let ((_%hd121644121757%_
                                                        (##car _%e121643121754%_))
                                                       (_%tl121645121759%_
                                                        (##cdr _%e121643121754%_)))
                                                   (let ((_%id121762%_
                                                          _%hd121644121757%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121645121759%_)
                                                         (let ((_%e121646121764%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121645121759%_)))
                   (let ((_%hd121647121767%_ (##car _%e121646121764%_))
                         (_%tl121648121769%_ (##cdr _%e121646121764%_)))
                     (let ((_%name121772%_ _%hd121647121767%_))
                       (if (gx#stx-null? _%tl121648121769%_)
                           (if '#t
                               (let* ((_%phi121774%_
                                       (gx#current-export-expander-phi))
                                      (_%$e121776%_
                                       (gx#core-resolve-identifier__1
                                        _%id121762%_
                                        _%phi121774%_)))
                                 (if _%$e121776%_
                                     ((lambda (_%bind121779%_)
                                        (_%K121619%_
                                         _%rest121620%_
                                         (cons (_%make-export__124956124957%_
                                                _%bind121779%_
                                                _%phi121774%_
                                                (gx#current-expander-context)
                                                _%name121772%_)
                                               _%r121621%_)))
                                      _%$e121776%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _%stx121459%_
                                      _%hd121618%_
                                      _%id121762%_)))
                               (_%E121639121742%_))
                           (_%E121639121742%_)))))
                 (_%E121639121742%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121639121742%_))
                                           (_%E121639121742%_))))
                                   (_%E121639121742%_))))
                            (_%E121625121832%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121622121654%_)
                                   (let ((_%e121627121786%_
                                          (gx#syntax-e _%e121622121654%_)))
                                     (let ((_%hd121628121789%_
                                            (##car _%e121627121786%_))
                                           (_%tl121629121791%_
                                            (##cdr _%e121627121786%_)))
                                       (if (eq? (gx#stx-e _%hd121628121789%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl121629121791%_)
                                               (let ((_%e121630121794%_
                                                      (gx#syntax-e
                                                       _%tl121629121791%_)))
                                                 (let ((_%hd121631121797%_
                                                        (##car _%e121630121794%_))
                                                       (_%tl121632121799%_
                                                        (##cdr _%e121630121794%_)))
                                                   (let ((_%phi121802%_
                                                          _%hd121631121797%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121632121799%_)
                                                         (let ((_%e121633121804%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121632121799%_)))
                   (let ((_%hd121634121807%_ (##car _%e121633121804%_))
                         (_%tl121635121809%_ (##cdr _%e121633121804%_)))
                     (let ((_%id121812%_ _%hd121634121807%_))
                       (if (gx#stx-pair? _%tl121635121809%_)
                           (let ((_%e121636121814%_
                                  (gx#syntax-e _%tl121635121809%_)))
                             (let ((_%hd121637121817%_
                                    (##car _%e121636121814%_))
                                   (_%tl121638121819%_
                                    (##cdr _%e121636121814%_)))
                               (let ((_%name121822%_ _%hd121637121817%_))
                                 (if (gx#stx-null? _%tl121638121819%_)
                                     (if (and (gx#stx-fixnum? _%phi121802%_)
                                              (gx#identifier? _%id121812%_)
                                              (gx#identifier? _%name121822%_))
                                         (let* ((_%phi121824%_
                                                 (gx#stx-e _%phi121802%_))
                                                (_%$e121826%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id121812%_
                                                  _%phi121824%_)))
                                           (if _%$e121826%_
                                               ((lambda (_%bind121829%_)
                                                  (_%K121619%_
                                                   _%rest121620%_
                                                   (cons (_%make-export__124956124957%_
                                                          _%bind121829%_
                                                          _%phi121824%_
                                                          (gx#current-expander-context)
                                                          _%name121822%_)
                                                         _%r121621%_)))
                                                _%$e121826%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx121459%_
                                                _%hd121618%_
                                                _%id121812%_)))
                                         (_%E121626121782%_))
                                     (_%E121626121782%_)))))
                           (_%E121626121782%_)))))
                 (_%E121626121782%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121626121782%_))
                                           (_%E121626121782%_))))
                                   (_%E121626121782%_))))
                            (_%E121624121844%_
                             (lambda ()
                               (let ((_%id121836%_ _%e121622121654%_))
                                 (if (gx#identifier? _%id121836%_)
                                     (let ((_%$e121838%_
                                            (gx#core-resolve-identifier__1
                                             _%id121836%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e121838%_
                                           ((lambda (_%bind121841%_)
                                              (_%K121619%_
                                               _%rest121620%_
                                               (cons (_%make-export__0__124958124961%_
                                                      _%bind121841%_)
                                                     _%r121621%_)))
                                            _%$e121838%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx121459%_
                                            _%hd121618%_)))
                                     (_%E121625121832%_)))))
                            (_%E121623121908%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e121622121654%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx121848%_
                                               (gx#current-expander-context))
                                              (_%current-phi121850%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx121852%_
                                               (gx#core-context-shift
                                                _%current-ctx121848%_
                                                _%current-phi121850%_))
                                              (_%phi-bind121854%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx121852%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp121857%_ ((_%bind-rest121859%_
                                                             _%phi-bind121854%_)
                                                            (_%set121860%_
                                                             '()))
                                           (let* ((_%bind-rest121861121871%_
                                                   _%bind-rest121859%_)
                                                  (_%else121863121879%_
                                                   (lambda ()
                                                     (_%K121619%_
                                                      _%rest121620%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi121850%_
                                                             _%set121860%_)
                                                            _%r121621%_))))
                                                  (_%K121865121889%_
                                                   (lambda (_%bind-rest121882%_
                                                            _%bind121883%_
                                                            _%key121884%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind121883%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind121883%_))
                                                         (_%lp121857%_
                                                          _%bind-rest121882%_
                                                          _%set121860%_)
                                                         (_%lp121857%_
                                                          _%bind-rest121882%_
                                                          (cons (_%make-export__2__124960124963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind121883%_
                         _%current-phi121850%_
                         _%current-ctx121848%_)
                        _%set121860%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest121861121871%_)
                                                 (let ((_%hd121866121892%_
                                                        (##car _%bind-rest121861121871%_))
                                                       (_%tl121867121894%_
                                                        (##cdr _%bind-rest121861121871%_)))
                                                   (if (##pair? _%hd121866121892%_)
                                                       (let ((_%hd121868121897%_
                                                              (##car _%hd121866121892%_))
                                                             (_%tl121869121899%_
                                                              (##cdr _%hd121866121892%_)))
                                                         (let* ((_%key121902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd121868121897%_)
                        (_%bind121904%_ _%tl121869121899%_)
                        (_%bind-rest121906%_ _%tl121867121894%_))
                   (_%K121865121889%_
                    _%bind-rest121906%_
                    _%bind121904%_
                    _%key121902%_)))
               (_%else121863121879%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else121863121879%_)))))
                                       (_%E121624121844%_))
                                   (_%E121624121844%_)))))
                       (_%E121623121908%_))))
                  (_%export-imports121464%_
                   (lambda (_%src121494%_ _%r121495%_)
                     (letrec* ((_%current-ctx121497%_
                                (gx#current-expander-context))
                               (_%current-phi121498%_
                                (gx#current-export-expander-phi))
                               (_%import->export121499%_
                                (lambda (_%in121580%_)
                                  (let* ((_%in121581121589%_ _%in121580%_)
                                         (_%E121583121593%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in121581121589%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K121584121600%_
                                          (lambda (_%phi121596%_
                                                   _%key121597%_
                                                   _%out121598%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx121497%_
                                             _%key121597%_
                                             _%phi121596%_
                                             _%key121597%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in121581121589%_
                                         'gx#module-import::t)
                                        (let* ((_%e121585121603%_
                                                (##unchecked-structure-ref
                                                 _%in121581121589%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out121606%_
                                                _%e121585121603%_)
                                               (_%e121586121608%_
                                                (##unchecked-structure-ref
                                                 _%in121581121589%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key121611%_
                                                _%e121586121608%_)
                                               (_%e121587121613%_
                                                (##unchecked-structure-ref
                                                 _%in121581121589%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi121616%_
                                                _%e121587121613%_))
                                          (_%K121584121600%_
                                           _%phi121616%_
                                           _%key121611%_
                                           _%out121606%_))
                                        (_%E121583121593%_)))))
                               (_%fold-e121500%_
                                (lambda (_%in121502%_ _%r121503%_)
                                  (let* ((_%in121504121518%_ _%in121502%_)
                                         (_%else121507121526%_
                                          (lambda () _%r121503%_)))
                                    (let ((_%K121513121562%_
                                           (lambda (_%phi121558%_
                                                    _%key121559%_
                                                    _%out121560%_)
                                             (if (and (fx= _%phi121558%_
                                                           _%current-phi121498%_)
                                                      (eq? _%src121494%_
                                                           (##unchecked-structure-ref
                                                            _%out121560%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export121499%_
                                                        _%in121502%_)
                                                       _%r121503%_)
                                                 _%r121503%_)))
                                          (_%K121509121537%_
                                           (lambda (_%imports121530%_
                                                    _%phi121531%_
                                                    _%ctx121532%_)
                                             (if (and (fx= _%phi121531%_
                                                           _%current-phi121498%_)
                                                      (eq? _%src121494%_
                                                           _%ctx121532%_))
                                                 (__foldl1
                                                  (lambda (_%in121534%_
                                                           _%r121535%_)
                                                    (cons (_%import->export121499%_
                                                           _%in121534%_)
                                                          _%r121535%_))
                                                  _%r121503%_
                                                  _%imports121530%_)
                                                 _%r121503%_))))
                                      (let ((_%try-match121506121555%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in121504121518%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e121510121540%_
                                                           (##unchecked-structure-ref
                                                            _%in121504121518%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e121511121545%_
                                                           (##unchecked-structure-ref
                                                            _%in121504121518%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e121512121550%_
                                                           (##unchecked-structure-ref
                                                            _%in121504121518%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx121543%_
                                                            _%e121510121540%_)
                                                           (_%phi121548%_
                                                            _%e121511121545%_)
                                                           (_%imports121553%_
                                                            _%e121512121550%_))
                                                       (_%K121509121537%_
                                                        _%imports121553%_
                                                        _%phi121548%_
                                                        _%ctx121543%_)))
                                                   (_%else121507121526%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in121504121518%_
                                             'gx#module-import::t)
                                            (let* ((_%e121514121565%_
                                                    (##unchecked-structure-ref
                                                     _%in121504121518%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e121515121570%_
                                                    (##unchecked-structure-ref
                                                     _%in121504121518%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e121516121575%_
                                                    (##unchecked-structure-ref
                                                     _%in121504121518%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out121568%_
                                                     _%e121514121565%_)
                                                    (_%key121573%_
                                                     _%e121515121570%_)
                                                    (_%phi121578%_
                                                     _%e121516121575%_))
                                                (_%K121513121562%_
                                                 _%phi121578%_
                                                 _%key121573%_
                                                 _%out121568%_)))
                                            (_%try-match121506121555%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src121494%_
                              _%current-phi121498%_
                              (__foldl1
                               _%fold-e121500%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx121497%_
                                '8
                                '#f
                                '#f)))
                             _%r121495%_))))
                  (_%export!121465%_
                   (lambda (_%rbody121481%_)
                     (letrec* ((_%current-ctx121483%_
                                (gx#current-expander-context))
                               (_%fold-e121484%_
                                (lambda (_%out121488%_ _%r121489%_)
                                  (if (##structure-direct-instance-of?
                                       _%out121488%_
                                       'gx#module-export::t)
                                      (cons _%out121488%_ _%r121489%_)
                                      (if (##structure-direct-instance-of?
                                           _%out121488%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r121489%_
                                           (##unchecked-structure-ref
                                            _%out121488%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r121489%_)))))
                       (let ((_%body121486%_ (reverse _%rbody121481%_)))
                         (##unchecked-structure-set!
                          _%current-ctx121483%_
                          (__foldl1
                           _%fold-e121484%_
                           (##unchecked-structure-ref
                            _%current-ctx121483%_
                            '9
                            '#f
                            '#f)
                           _%body121486%_)
                          '9
                          '#f
                          '#f)
                         _%body121486%_))))
                  (_%expanded-export?121466%_
                   (lambda (_%e121476%_)
                     (let ((_%$e121478%_
                            (##structure-direct-instance-of?
                             _%e121476%_
                             'gx#module-export::t)))
                       (if _%$e121478%_
                           _%$e121478%_
                           (##structure-direct-instance-of?
                            _%e121476%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?121460%_)
              (let ((_%rbody121472%_
                     (gx#core-expand-import/export
                      _%stx121459%_
                      _%expanded-export?121466%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1121463%_)))
                (if _%internal-expand?121460%_
                    (reverse _%rbody121472%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!121465%_ _%rbody121472%_))
                     (gx#stx-source _%stx121459%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx121459%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx121459%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx121958%_)
        (let ((_%internal-expand?121960%_ '#f))
          (gx#core-expand-export%__%
           _%stx121958%_
           _%internal-expand?121960%_))))
    (define gx#core-expand-export%
      (lambda _g125032_
        (let ((_g125031_ (##length _g125032_)))
          (cond ((##fx= _g125031_ 1)
                 (apply gx#core-expand-export%__0 _g125032_))
                ((##fx= _g125031_ 2)
                 (apply gx#core-expand-export%__% _g125032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g125032_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd121456%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd121456%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx121426%_)
        (let* ((_%e121427121434%_ _%stx121426%_)
               (_%E121429121438%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121427121434%_)))
               (_%E121428121452%_
                (lambda ()
                  (if (gx#stx-pair? _%e121427121434%_)
                      (let ((_%e121430121442%_
                             (gx#syntax-e _%e121427121434%_)))
                        (let ((_%hd121431121445%_ (##car _%e121430121442%_))
                              (_%tl121432121447%_ (##cdr _%e121430121442%_)))
                          (let ((_%body121450%_ _%tl121432121447%_))
                            (if (gx#identifier-list? _%body121450%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body121450%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body121450%_))
                                   (gx#stx-source _%stx121426%_)))
                                (_%E121429121438%_)))))
                      (_%E121429121438%_)))))
          (_%E121428121452%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id121392%_ _%private?121393%_ _%phi121394%_ _%ctx121395%_)
        (gx#core-bind-syntax!__%
         _%id121392%_
         ((if _%private?121393%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id121392%_))
         _%private?121393%_
         _%phi121394%_
         _%ctx121395%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id121400%_)
        (let* ((_%private?121402%_ '#f)
               (_%phi121404%_ (gx#current-expander-phi))
               (_%ctx121406%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121400%_
           _%private?121402%_
           _%phi121404%_
           _%ctx121406%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id121408%_ _%private?121409%_)
        (let* ((_%phi121411%_ (gx#current-expander-phi))
               (_%ctx121413%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121408%_
           _%private?121409%_
           _%phi121411%_
           _%ctx121413%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id121415%_ _%private?121416%_ _%phi121417%_)
        (let ((_%ctx121419%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121415%_
           _%private?121416%_
           _%phi121417%_
           _%ctx121419%_))))
    (define gx#core-bind-feature!
      (lambda _g125034_
        (let ((_g125033_ (##length _g125034_)))
          (cond ((##fx= _g125033_ 1)
                 (apply gx#core-bind-feature!__0 _g125034_))
                ((##fx= _g125033_ 2)
                 (apply gx#core-bind-feature!__1 _g125034_))
                ((##fx= _g125033_ 3)
                 (apply gx#core-bind-feature!__2 _g125034_))
                ((##fx= _g125033_ 4)
                 (apply gx#core-bind-feature!__% _g125034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g125034_))))))))
