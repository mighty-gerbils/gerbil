(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1755903076)
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
      (lambda _%$args133387%_
        (apply make-instance gx#module-import::t _%$args133387%_)))
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
      (lambda _%$args133384%_
        (apply make-instance gx#module-export::t _%$args133384%_)))
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
      (lambda _%$args133381%_
        (apply make-instance gx#import-set::t _%$args133381%_)))
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
      (lambda _%$args133378%_
        (apply make-instance gx#export-set::t _%$args133378%_)))
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
      (lambda _%$args133375%_
        (apply make-instance gx#import-expander::t _%$args133375%_)))
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
      (lambda _%$args133372%_
        (apply make-instance gx#export-expander::t _%$args133372%_)))
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
      (lambda _%$args133369%_
        (apply make-instance gx#import-export-expander::t _%$args133369%_)))
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
      (lambda (_%path133366%_ _%fun133367%_)
        (call-with-input-file
         (cons 'path: (cons _%path133366%_ gx#source-file-settings))
         _%fun133367%_)))
    (define gx#module-context:::init!
      (lambda (_%self129810133347%_
               _%id133349%_
               _%super133350%_
               _%ns133351%_
               _%path133352%_)
        (let* ((_%self133354%_ _%self129810133347%_)
               (_%self133356%_ _%self133354%_))
          (if (##fx< '11 (##structure-length _%self133356%_))
              (begin
                (##unchecked-structure-set!
                 _%self133356%_
                 _%id133349%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133356%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133356%_
                 _%super133350%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self133356%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self133356%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self133356%_
                 _%ns133351%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133356%_
                 _%path133352%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self133356%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self133356%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self133356%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self133356%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self133356%_
                     '11
                     (##structure-length _%self133356%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self129811133178%_ _%ctx133180%_ _%root133181%_)
        (let* ((_%self133183%_ _%self129811133178%_)
               (_%self133185%_ _%self133183%_)
               (_%super133201%_
                (let ((_%$e133195%_ _%root133181%_))
                  (if _%$e133195%_
                      _%$e133195%_
                      (let ((_%$e133198%_ (gx#core-context-root__0)))
                        (if _%$e133198%_
                            _%$e133198%_
                            (let ((__obj133431
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor133432
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj133431
                                      ':init!)))
                                (if __constructor133432
                                    (__constructor133432 __obj133431)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj133431)))))))
          (if _%ctx133180%_
              (let ((_%id133204%_
                     (##structure-ref
                      _%ctx133180%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path133205%_
                     (##structure-ref
                      _%ctx133180%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in133206%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx133180%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e133207%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx133180%_)))))
                (if (##fx< '8 (##structure-length _%self133185%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self133185%_
                       _%id133204%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self133185%_
                       (make-hash-table-eq 'size: (##length _%in133206%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self133185%_
                       _%super133201%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self133185%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self133185%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self133185%_
                       _%path133205%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self133185%_
                       _%in133206%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self133185%_
                       _%e133207%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self133185%_
                           '8
                           (##structure-length _%self133185%_)))
                (##for-each
                 (lambda (_%g133208133210%_)
                   (gx#core-bind-weak-import!__%
                    _%g133208133210%_
                    _%self133185%_))
                 _%in133206%_))
              (if (##fx< '8 (##structure-length _%self133185%_))
                  (begin
                    (##unchecked-structure-set! _%self133185%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self133185%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self133185%_
                     _%super133201%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self133185%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self133185%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self133185%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self133185%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self133185%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self133185%_
                         '8
                         (##structure-length _%self133185%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self129811133216%_ _%ctx133217%_)
        (let ((_%root133219%_ '#f))
          (gx#prelude-context:::init!__%
           _%self129811133216%_
           _%ctx133217%_
           _%root133219%_))))
    (define gx#prelude-context:::init!
      (lambda _g133437_
        (let ((_g133438_ (##length _g133437_)))
          (cond ((##fx= _g133438_ 2)
                 (apply gx#prelude-context:::init!__0 _g133437_))
                ((##fx= _g133438_ 3)
                 (apply gx#prelude-context:::init!__% _g133437_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g133437_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self133052%_ _%e133053%_)
        (if (##fx< '3 (##structure-length _%self133052%_))
            (begin
              (##unchecked-structure-set!
               _%self133052%_
               _%e133053%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self133052%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self133052%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self133052%_
                   '3
                   (##structure-length _%self133052%_)))))
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
      (lambda (_%g132678132681%_ _%g132679132683%_)
        (gx#core-apply-user-expander__%
         _%g132678132681%_
         _%g132679132683%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g132549132552%_ _%g132550132554%_)
        (gx#core-apply-user-expander__%
         _%g132549132552%_
         _%g132550132554%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx132420%_)
        (let* ((_%path132422%_
                (##structure-ref _%ctx132420%_ '7 gx#module-context::t '#f))
               (_%path132424%_
                (if (pair? _%path132422%_)
                    (##last _%path132422%_)
                    _%path132422%_)))
          (if (string? _%path132424%_) _%path132424%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path132396%_ _%reload?132397%_ _%eval?132398%_)
        (let ((_%ctx132400%_
               ((gx#current-expander-module-import)
                _%path132396%_
                _%reload?132397%_)))
          (if (and _%ctx132400%_ _%eval?132398%_)
              (gx#eval-module _%ctx132400%_)
              '#!void)
          _%ctx132400%_)))
    (define gx#import-module__0
      (lambda (_%path132405%_)
        (let* ((_%reload?132407%_ '#f) (_%eval?132409%_ '#f))
          (gx#import-module__%
           _%path132405%_
           _%reload?132407%_
           _%eval?132409%_))))
    (define gx#import-module__1
      (lambda (_%path132411%_ _%reload?132412%_)
        (let ((_%eval?132414%_ '#f))
          (gx#import-module__%
           _%path132411%_
           _%reload?132412%_
           _%eval?132414%_))))
    (define gx#import-module
      (lambda _g133439_
        (let ((_g133440_ (##length _g133439_)))
          (cond ((##fx= _g133440_ 1) (apply gx#import-module__0 _g133439_))
                ((##fx= _g133440_ 2) (apply gx#import-module__1 _g133439_))
                ((##fx= _g133440_ 3) (apply gx#import-module__% _g133439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g133439_))))))
    (define gx#eval-module
      (lambda (_%mod132393%_)
        ((gx#current-expander-module-eval) _%mod132393%_)))
    (define gx#core-eval-module
      (lambda (_%obj132372%_)
        (letrec ((_%force-e132374%_
                  (lambda (_%getf132388%_ _%e132389%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf132388%_ _%e132389%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e132389%_))))
          (let _%recur132376%_ ((_%e132378%_ _%obj132372%_))
            (if (##structure-instance-of? _%e132378%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e132381%_
                         (gx#core-context-prelude__% _%e132378%_)))
                    (if _%$e132381%_ (_%recur132376%_ _%$e132381%_) '#!void))
                  (_%force-e132374%_ gx#module-context-e _%e132378%_))
                (if (##structure-instance-of?
                     _%e132378%_
                     'gx#prelude-context::t)
                    (_%force-e132374%_ gx#prelude-context-e _%e132378%_)
                    (if (gx#stx-string? _%e132378%_)
                        (_%recur132376%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e132378%_)))
                        (if (gx#core-library-module-path? _%e132378%_)
                            (_%recur132376%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e132378%_)))
                            (error '"cannot eval module" _%obj132372%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx132352%_)
        (let _%lp132354%_ ((_%e132356%_ _%ctx132352%_))
          (if (or (##structure-instance-of? _%e132356%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e132356%_ 'gx#local-context::t))
              (_%lp132354%_ (##unchecked-structure-ref _%e132356%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e132356%_ 'gx#prelude-context::t)
                  _%e132356%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx132368%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx132368%_))))
    (define gx#core-context-prelude
      (lambda _g133441_
        (let ((_g133442_ (##length _g133441_)))
          (cond ((##fx= _g133442_ 0)
                 (apply gx#core-context-prelude__0 _g133441_))
                ((##fx= _g133442_ 1)
                 (apply gx#core-context-prelude__% _g133441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g133441_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx132343%_)
        (let ((_%$e132345%_ (__hash-get gx#__module-registry _%ctx132343%_)))
          (if _%$e132345%_
              _%$e132345%_
              (let ((_%pre132349%_
                     (let ((__obj133433
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
                        __obj133433
                        _%ctx132343%_)
                       __obj133433)))
                (__hash-put! gx#__module-registry _%ctx132343%_ _%pre132349%_)
                _%pre132349%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath132210%_ _%reload?132211%_)
        (letrec ((_%import-source132213%_
                  (lambda (_%path132302%_)
                    (if (member _%path132302%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path132302%_)
                        '#!void)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda ()
                          (call-with-parameters__1
                           (lambda ()
                             (call-with-parameters__1
                              (lambda ()
                                (call-with-parameters__1
                                 (lambda ()
                                   (call-with-parameters__1
                                    (lambda ()
                                      (let ((_g133443_
                                             (gx#core-read-module
                                              _%path132302%_)))
                                        (begin
                                          (let ((_g133444_
                                                 (if (##values? _g133443_)
                                                     (##values-length
                                                      _g133443_)
                                                     1)))
                                            (if (not (##fx= _g133444_ 4))
                                                (error "Context expects 4 values"
                                                       _g133444_)))
                                          (let ((_%pre132310%_
                                                 (##values-ref _g133443_ 0))
                                                (_%id132311%_
                                                 (##values-ref _g133443_ 1))
                                                (_%ns132312%_
                                                 (##values-ref _g133443_ 2))
                                                (_%body132313%_
                                                 (##values-ref _g133443_ 3)))
                                            (let* ((_%prelude132323%_
                                                    (if (##structure-instance-of?
                                                         _%pre132310%_
                                                         'gx#prelude-context::t)
                                                        _%pre132310%_
                                                        (if (##structure-instance-of?
                                                             _%pre132310%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre132310%_)
                                                            (if (string? _%pre132310%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre132310%_))
                        (if (not _%pre132310%_)
                            (let ((_%$e132319%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e132319%_
                                  _%$e132319%_
                                  (let ((__obj133434
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
                                     __obj133434
                                     '#f)
                                    __obj133434)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath132210%_
                                   _%pre132310%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx132325%_
                                                    (let ((__obj133435
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
                                                       __obj133435
                                                       _%id132311%_
                                                       _%prelude132323%_
                                                       _%ns132312%_
                                                       _%path132302%_)
                                                      __obj133435))
                                                   (_%body132327%_
                                                    (gx#core-expand-module-begin
                                                     _%body132313%_
                                                     _%ctx132325%_))
                                                   (_%body132329%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body132327%_)
                                                     _%path132302%_
                                                     _%ctx132325%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx132325%_
                                               (__make-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body132329%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx132325%_
                                               _%body132329%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path132302%_
                                               _%ctx132325%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id132311%_
                                               _%ctx132325%_)
                                              _%ctx132325%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path132302%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule132214%_
                  (lambda (_%rpath132230%_)
                    (let* ((_%rpath132231132238%_ _%rpath132230%_)
                           (_%E132233132242%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath132231132238%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K132234132290%_
                            (lambda (_%refs132245%_ _%origin132246%_)
                              (let ((_%ctx132248%_
                                     (if _%origin132246%_
                                         (gx#core-import-module__%
                                          _%origin132246%_
                                          _%reload?132211%_)
                                         (gx#current-expander-context))))
                                (let _%lp132250%_ ((_%rest132252%_
                                                    _%refs132245%_)
                                                   (_%ctx132253%_
                                                    _%ctx132248%_))
                                  (let* ((_%rest132254132262%_ _%rest132252%_)
                                         (_%else132256132270%_
                                          (lambda () _%ctx132253%_))
                                         (_%K132258132278%_
                                          (lambda (_%rest132273%_ _%id132274%_)
                                            (let ((_%bind132276%_
                                                   (gx#resolve-identifier__%
                                                    _%id132274%_
                                                    '0
                                                    _%ctx132253%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind132276%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind132276%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp132250%_
                                                   _%rest132273%_
                                                   (##unchecked-structure-ref
                                                    _%bind132276%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath132230%_
                                                         _%id132274%_
                                                         _%bind132276%_))))))
                                    (if (pair? _%rest132254132262%_)
                                        (let ((_%hd132259132281%_
                                               (##car _%rest132254132262%_))
                                              (_%tl132260132283%_
                                               (##cdr _%rest132254132262%_)))
                                          (let* ((_%id132286%_
                                                  _%hd132259132281%_)
                                                 (_%rest132288%_
                                                  _%tl132260132283%_))
                                            (_%K132258132278%_
                                             _%rest132288%_
                                             _%id132286%_)))
                                        (_%else132256132270%_))))))))
                      (if (pair? _%rpath132231132238%_)
                          (let ((_%hd132235132293%_
                                 (##car _%rpath132231132238%_))
                                (_%tl132236132295%_
                                 (##cdr _%rpath132231132238%_)))
                            (let* ((_%origin132298%_ _%hd132235132293%_)
                                   (_%refs132300%_ _%tl132236132295%_))
                              (_%K132234132290%_
                               _%refs132300%_
                               _%origin132298%_)))
                          (_%E132233132242%_))))))
          (let ((_%$e132216%_
                 (if (not _%reload?132211%_)
                     (__hash-get gx#__module-registry _%rpath132210%_)
                     '#f)))
            (if _%$e132216%_
                _%$e132216%_
                (if (list? _%rpath132210%_)
                    (_%import-submodule132214%_ _%rpath132210%_)
                    (if (gx#core-library-module-path? _%rpath132210%_)
                        (let ((_%ctx132221%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath132210%_)
                                _%reload?132211%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath132210%_
                           _%ctx132221%_)
                          _%ctx132221%_)
                        (let* ((_%npath132224%_
                                (path-normalize _%rpath132210%_))
                               (_%$e132226%_
                                (if (not _%reload?132211%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath132224%_)
                                    '#f)))
                          (if _%$e132226%_
                              _%$e132226%_
                              (_%import-source132213%_
                               _%npath132224%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath132336%_)
        (let ((_%reload?132338%_ '#f))
          (gx#core-import-module__% _%rpath132336%_ _%reload?132338%_))))
    (define gx#core-import-module
      (lambda _g133445_
        (let ((_g133446_ (##length _g133445_)))
          (cond ((##fx= _g133446_ 1)
                 (apply gx#core-import-module__0 _g133445_))
                ((##fx= _g133446_ 2)
                 (apply gx#core-import-module__% _g133445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g133445_))))))
    (define gx#core-read-module
      (lambda (_%path132199%_)
        (__with-catch
         (lambda (_%exn132201%_)
           (if (and (datum-parsing-exception? _%exn132201%_)
                    (eq? (datum-parsing-exception-filepos _%exn132201%_) '0))
               (gx#core-read-module/lang _%path132199%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path132199%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g132203132205%_)
                      (display-exception__% _%exn132201%_ _%g132203132205%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path132199%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path132051%_)
        (let _%lp132053%_ ((_%body132055%_
                            (read-syntax-from-file _%path132051%_))
                           (_%pre132056%_ '#f)
                           (_%ns132057%_ '#f)
                           (_%pkg132058%_ '#f))
          (let* ((_%e132059132083%_ _%body132055%_)
                 (_%E132075132109%_
                  (lambda ()
                    (let ((_g133447_
                           (if _%pkg132058%_
                               (values _%pre132056%_
                                       _%ns132057%_
                                       _%pkg132058%_)
                               (gx#core-read-module-package
                                _%path132051%_
                                _%pre132056%_
                                _%ns132057%_))))
                      (begin
                        (let ((_g133448_
                               (if (##values? _g133447_)
                                   (##values-length _g133447_)
                                   1)))
                          (if (not (##fx= _g133448_ 3))
                              (error "Context expects 3 values" _g133448_)))
                        (let ((_%pre132087%_ (##values-ref _g133447_ 0))
                              (_%ns132088%_ (##values-ref _g133447_ 1))
                              (_%pkg132089%_ (##values-ref _g133447_ 2)))
                          (let* ((_%prelude132095%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre132087%_)
                                      (gx#syntax-local-e__0 _%pre132087%_)
                                      (if (gx#core-library-module-path?
                                           _%pre132087%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre132087%_)
                                          (if (gx#stx-string? _%pre132087%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre132087%_
                                               _%path132051%_)
                                              (gx#stx-e _%pre132087%_)))))
                                 (_%path-id132097%_
                                  (gx#core-module-path->namespace
                                   _%path132051%_))
                                 (_%pkg-id132099%_
                                  (if _%pkg132089%_
                                      (##string-append
                                       _%pkg132089%_
                                       '"/"
                                       _%path-id132097%_)
                                      _%path-id132097%_))
                                 (_%module-id132101%_
                                  (##string->symbol _%pkg-id132099%_))
                                 (_%module-ns132106%_
                                  (if (eq? _%ns132088%_ '#!void)
                                      '#f
                                      (let ((_%$e132103%_ _%ns132088%_))
                                        (if _%$e132103%_
                                            _%$e132103%_
                                            _%pkg-id132099%_)))))
                            (values _%prelude132095%_
                                    _%module-id132101%_
                                    _%module-ns132106%_
                                    _%body132055%_)))))))
                 (_%E132068132141%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132059132083%_)
                        (let ((_%e132076132113%_
                               (gx#syntax-e _%e132059132083%_)))
                          (let ((_%hd132077132116%_ (##car _%e132076132113%_))
                                (_%tl132078132118%_ (##cdr _%e132076132113%_)))
                            (if (eq? (gx#stx-e _%hd132077132116%_) 'package:)
                                (if (gx#stx-pair? _%tl132078132118%_)
                                    (let ((_%e132079132121%_
                                           (gx#syntax-e _%tl132078132118%_)))
                                      (let ((_%hd132080132124%_
                                             (##car _%e132079132121%_))
                                            (_%tl132081132126%_
                                             (##cdr _%e132079132121%_)))
                                        (let* ((_%pkg132129%_
                                                _%hd132080132124%_)
                                               (_%rest132131%_
                                                _%tl132081132126%_)
                                               (_%pkg132139%_
                                                (if (gx#identifier?
                                                     _%pkg132129%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg132129%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg132129%_)
                                                            (gx#stx-false?
                                                             _%pkg132129%_))
                                                        (gx#stx-e
                                                         _%pkg132129%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg132129%_)))))
                                          (_%lp132053%_
                                           _%rest132131%_
                                           _%pre132056%_
                                           _%ns132057%_
                                           _%pkg132139%_))))
                                    (_%E132075132109%_))
                                (_%E132075132109%_))))
                        (_%E132075132109%_))))
                 (_%E132061132171%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132059132083%_)
                        (let ((_%e132069132145%_
                               (gx#syntax-e _%e132059132083%_)))
                          (let ((_%hd132070132148%_ (##car _%e132069132145%_))
                                (_%tl132071132150%_ (##cdr _%e132069132145%_)))
                            (if (eq? (gx#stx-e _%hd132070132148%_) 'namespace:)
                                (if (gx#stx-pair? _%tl132071132150%_)
                                    (let ((_%e132072132153%_
                                           (gx#syntax-e _%tl132071132150%_)))
                                      (let ((_%hd132073132156%_
                                             (##car _%e132072132153%_))
                                            (_%tl132074132158%_
                                             (##cdr _%e132072132153%_)))
                                        (let* ((_%ns132161%_
                                                _%hd132073132156%_)
                                               (_%rest132163%_
                                                _%tl132074132158%_)
                                               (_%ns132169%_
                                                (if (gx#identifier?
                                                     _%ns132161%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns132161%_))
                                                    (if (gx#stx-string?
                                                         _%ns132161%_)
                                                        (gx#stx-e _%ns132161%_)
                                                        (if (gx#stx-false?
                                                             _%ns132161%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns132161%_))))))
                                          (_%lp132053%_
                                           _%rest132163%_
                                           _%pre132056%_
                                           _%ns132169%_
                                           _%pkg132058%_))))
                                    (_%E132068132141%_))
                                (_%E132068132141%_))))
                        (_%E132068132141%_))))
                 (_%E132060132195%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132059132083%_)
                        (let ((_%e132062132175%_
                               (gx#syntax-e _%e132059132083%_)))
                          (let ((_%hd132063132178%_ (##car _%e132062132175%_))
                                (_%tl132064132180%_ (##cdr _%e132062132175%_)))
                            (if (eq? (gx#stx-e _%hd132063132178%_) 'prelude:)
                                (if (gx#stx-pair? _%tl132064132180%_)
                                    (let ((_%e132065132183%_
                                           (gx#syntax-e _%tl132064132180%_)))
                                      (let ((_%hd132066132186%_
                                             (##car _%e132065132183%_))
                                            (_%tl132067132188%_
                                             (##cdr _%e132065132183%_)))
                                        (let* ((_%prelude132191%_
                                                _%hd132066132186%_)
                                               (_%rest132193%_
                                                _%tl132067132188%_))
                                          (_%lp132053%_
                                           _%rest132193%_
                                           _%prelude132191%_
                                           _%ns132057%_
                                           _%pkg132058%_))))
                                    (_%E132061132171%_))
                                (_%E132061132171%_))))
                        (_%E132061132171%_)))))
            (_%E132060132195%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path131872%_)
        (letrec ((_%default-read-module-body131874%_
                  (lambda (_%inp132043%_)
                    (let _%lp132045%_ ((_%body132047%_ '()))
                      (let ((_%next132049%_ (read-syntax__% _%inp132043%_)))
                        (if (eof-object? _%next132049%_)
                            (reverse _%body132047%_)
                            (_%lp132045%_
                             (cons _%next132049%_ _%body132047%_)))))))
                 (_%read-body131875%_
                  (lambda (_%inp131960%_
                           _%pre131961%_
                           _%ns131962%_
                           _%pkg131963%_
                           _%args131964%_)
                    (let ((_g133449_
                           (if _%pkg131963%_
                               (values _%pre131961%_
                                       _%ns131962%_
                                       _%pkg131963%_)
                               (gx#core-read-module-package
                                _%path131872%_
                                _%pre131961%_
                                _%ns131962%_))))
                      (begin
                        (let ((_g133450_
                               (if (##values? _g133449_)
                                   (##values-length _g133449_)
                                   1)))
                          (if (not (##fx= _g133450_ 3))
                              (error "Context expects 3 values" _g133450_)))
                        (let ((_%pre131966%_ (##values-ref _g133449_ 0))
                              (_%ns131967%_ (##values-ref _g133449_ 1))
                              (_%pkg131968%_ (##values-ref _g133449_ 2)))
                          (let* ((_%prelude131970%_
                                  (gx#import-module__0 _%pre131966%_))
                                 (_%read-module-body132025%_
                                  (let ((_%$e132016%_
                                         (__find (lambda (_%e131971131973%_)
                                                   (let* ((_%g131975131985%_
                                                           _%e131971131973%_)
                                                          (_%else131977131993%_
                                                           (lambda () '#f))
                                                          (_%K131979131997%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g131975131985%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e131980132000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g131975131985%_
                          '1
                          '#f
                          '#f))
                        (_%e131981132003%_
                         (##unchecked-structure-ref
                          _%g131975131985%_
                          '2
                          '#f
                          '#f))
                        (_%e131982132006%_
                         (##unchecked-structure-ref
                          _%g131975131985%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e131982132006%_ '1)
                       (let ((_%e131983132009%_
                              (##unchecked-structure-ref
                               _%g131975131985%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g132011132013%_)
                                (eq? _%g132011132013%_ 'read-module-body))
                              _%e131983132009%_)
                             (_%K131979131997%_)
                             (_%else131977131993%_)))
                       (_%else131977131993%_)))
                 (_%else131977131993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude131970%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e132016%_
                                        ((lambda (_%xport132019%_)
                                           (let ((_%proc132022%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport132019%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc132022%_)
                                                 _%proc132022%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path131872%_
                                                  _%pre131966%_
                                                  _%proc132022%_))))
                                         _%$e132016%_)
                                        _%default-read-module-body131874%_)))
                                 (_%path-id132027%_
                                  (gx#core-module-path->namespace
                                   _%path131872%_))
                                 (_%pkg-id132029%_
                                  (if _%pkg131968%_
                                      (##string-append
                                       _%pkg131968%_
                                       '"/"
                                       _%path-id132027%_)
                                      _%path-id132027%_))
                                 (_%module-id132031%_
                                  (##string->symbol _%pkg-id132029%_))
                                 (_%module-ns132036%_
                                  (let ((_%$e132033%_ _%ns131967%_))
                                    (if _%$e132033%_
                                        _%$e132033%_
                                        _%pkg-id132029%_)))
                                 (_%body132040%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body132025%_
                                         _%inp131960%_))
                                      gx#current-module-reader-args
                                      _%args131964%_))
                                   gx#current-module-reader-path
                                   _%path131872%_)))
                            (values _%prelude131970%_
                                    _%module-id132031%_
                                    _%module-ns132036%_
                                    _%body132040%_)))))))
                 (_%string-e131876%_
                  (lambda (_%obj131954%_ _%what131955%_)
                    (if (string? _%obj131954%_)
                        _%obj131954%_
                        (if (symbol? _%obj131954%_)
                            (##symbol->string _%obj131954%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what131955%_)
                             _%path131872%_
                             _%obj131954%_)))))
                 (_%read-lang-args131877%_
                  (lambda (_%inp131909%_ _%args131910%_)
                    (let* ((_%args131911131919%_ _%args131910%_)
                           (_%else131913131927%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path131872%_)))
                           (_%K131915131942%_
                            (lambda (_%args131930%_ _%prelude131931%_)
                              (let* ((_%pkg131933%_
                                      (pgetq__0 'package: _%args131930%_))
                                     (_%pkg131935%_
                                      (if _%pkg131933%_
                                          (_%string-e131876%_
                                           _%pkg131933%_
                                           '"package")
                                          '#f))
                                     (_%ns131937%_
                                      (pgetq__0 'namespace: _%args131930%_))
                                     (_%ns131939%_
                                      (if _%ns131937%_
                                          (_%string-e131876%_
                                           _%ns131937%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body131875%_
                                 _%inp131909%_
                                 _%prelude131931%_
                                 _%ns131939%_
                                 _%pkg131935%_
                                 _%args131930%_)))))
                      (if (pair? _%args131911131919%_)
                          (let ((_%hd131916131945%_
                                 (##car _%args131911131919%_))
                                (_%tl131917131947%_
                                 (##cdr _%args131911131919%_)))
                            (let* ((_%prelude131950%_ _%hd131916131945%_)
                                   (_%args131952%_ _%tl131917131947%_))
                              (_%K131915131942%_
                               _%args131952%_
                               _%prelude131950%_)))
                          (_%else131913131927%_)))))
                 (_%read-lang131878%_
                  (lambda (_%inp131883%_)
                    (let* ((_%head131885%_ (read-line _%inp131883%_))
                           (_%$e131887%_
                            (string-index__0 _%head131885%_ '#\space)))
                      (if _%$e131887%_
                          ((lambda (_%ix131890%_)
                             (let ((_%lang131892%_
                                    (substring
                                     _%head131885%_
                                     '0
                                     _%ix131890%_)))
                               (if (equal? _%lang131892%_ '"#lang")
                                   (let* ((_%rest131894%_
                                           (substring
                                            _%head131885%_
                                            (##fx+ _%ix131890%_ '1)
                                            (string-length _%head131885%_)))
                                          (_%args131905%_
                                           (__with-catch
                                            (lambda (_%g131895131897%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path131872%_
                                               _%g131895131897%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest131894%_
                                               (lambda (_%g131900131902%_)
                                                 (read-all
                                                  _%g131900131902%_
                                                  read)))))))
                                     (_%read-lang-args131877%_
                                      _%inp131883%_
                                      _%args131905%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path131872%_))))
                           _%$e131887%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path131872%_)))))
                 (_%read-e131879%_
                  (lambda (_%inp131881%_)
                    (if (eq? (peek-char _%inp131881%_) '#\#)
                        (_%read-lang131878%_ _%inp131881%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path131872%_)))))
          (gx#call-with-input-source-file _%path131872%_ _%read-e131879%_))))
    (define gx#core-read-module-package
      (lambda (_%path131820%_ _%pre131821%_ _%ns131822%_)
        (letrec ((_%string-e131824%_
                  (lambda (_%e131867%_)
                    (if (symbol? _%e131867%_)
                        (##symbol->string _%e131867%_)
                        (if (string? _%e131867%_)
                            _%e131867%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e131867%_))))))
          (let _%lp131826%_ ((_%dir131828%_ (path-directory _%path131820%_))
                             (_%pkg-path131829%_ '()))
            (let ((_%gerbil.pkg131831%_
                   (path-expand '"gerbil.pkg" _%dir131828%_)))
              (if (##file-exists? _%gerbil.pkg131831%_)
                  (let ((_%plist131833%_
                         (gx#core-library-package-plist__% _%dir131828%_ '#t)))
                    (if (null? _%plist131833%_)
                        (let ((_%pkg131836%_
                               (if (null? _%pkg-path131829%_)
                                   '#f
                                   (string-join _%pkg-path131829%_ '"/"))))
                          (values _%pre131821%_ _%ns131822%_ _%pkg131836%_))
                        (if (list? _%plist131833%_)
                            (let* ((_%root131839%_
                                    (pgetq__0 'package: _%plist131833%_))
                                   (_%pkg131843%_
                                    (let ((_%pkg-path131841%_
                                           (if _%root131839%_
                                               (cons (_%string-e131824%_
                                                      _%root131839%_)
                                                     _%pkg-path131829%_)
                                               _%pkg-path131829%_)))
                                      (if (null? _%pkg-path131841%_)
                                          '#f
                                          (string-join
                                           _%pkg-path131841%_
                                           '"/"))))
                                   (_%ns131850%_
                                    (let ((_%ns131848%_
                                           (let ((_%$e131845%_ _%ns131822%_))
                                             (if _%$e131845%_
                                                 _%$e131845%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist131833%_)))))
                                      (if _%ns131848%_
                                          (_%string-e131824%_ _%ns131848%_)
                                          '#f)))
                                   (_%pre131855%_
                                    (let ((_%$e131852%_ _%pre131821%_))
                                      (if _%$e131852%_
                                          _%$e131852%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist131833%_)))))
                              (values _%pre131855%_
                                      _%ns131850%_
                                      _%pkg131843%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist131833%_))))
                  (let ((_%dir*131859%_
                         (path-strip-trailing-directory-separator
                          _%dir131828%_)))
                    (if (or (__string-empty? _%dir*131859%_)
                            (equal? _%dir131828%_ _%dir*131859%_))
                        (values _%pre131821%_ _%ns131822%_ '#f)
                        (let ((_%xpath131864%_
                               (path-strip-directory _%dir*131859%_))
                              (_%xdir131865%_ (path-directory _%dir*131859%_)))
                          (_%lp131826%_
                           _%xdir131865%_
                           (cons _%xpath131864%_ _%pkg-path131829%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path131818%_)
        (path-strip-extension (path-strip-directory _%path131818%_))))
    (define gx#core-module-path->id
      (lambda (_%path131816%_)
        (##string->symbol (gx#core-module-path->namespace _%path131816%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path131795%_ _%rel131796%_)
        (let* ((_%path131798%_ (gx#stx-e _%stx-path131795%_))
               (_%path131800%_
                (if (__string-empty? (path-extension _%path131798%_))
                    (##string-append _%path131798%_ '".ss")
                    _%path131798%_)))
          (gx#core-resolve-path__%
           _%path131800%_
           (let ((_%$e131803%_ (gx#stx-source _%stx-path131795%_)))
             (if _%$e131803%_ _%$e131803%_ _%rel131796%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path131809%_)
        (let ((_%rel131811%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path131809%_ _%rel131811%_))))
    (define gx#core-resolve-module-path
      (lambda _g133451_
        (let ((_g133452_ (##length _g133451_)))
          (cond ((##fx= _g133452_ 1)
                 (apply gx#core-resolve-module-path__0 _g133451_))
                ((##fx= _g133452_ 2)
                 (apply gx#core-resolve-module-path__% _g133451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g133451_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath131680%_)
        (let* ((_%spath131682%_ (symbol->string (gx#stx-e _%libpath131680%_)))
               (_%spath131684%_
                (substring
                 _%spath131682%_
                 '1
                 (##string-length _%spath131682%_)))
               (_%ext131686%_ (path-extension _%spath131684%_))
               (_%ssi131688%_
                (if (__string-empty? _%ext131686%_)
                    (##string-append _%spath131684%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath131684%_)
                     '".ssi")))
               (_%srcs131692%_
                (if (__string-empty? _%ext131686%_)
                    (##map (lambda (_%ext131690%_)
                             (string-append _%spath131684%_ _%ext131690%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath131684%_ '()))))
          (let _%lp131695%_ ((_%rest131697%_ (load-path)))
            (let* ((_%rest131698131707%_ _%rest131697%_)
                   (_%E131701131711%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest131698131707%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K131703131782%_
                     (lambda (_%rest131722%_ _%dir131723%_)
                       (letrec ((_%resolve131725%_
                                 (lambda (_%ssi131738%_ _%srcs131739%_)
                                   (let ((_%compiled-path131741%_
                                          (path-expand
                                           _%ssi131738%_
                                           _%dir131723%_)))
                                     (if (##file-exists?
                                          _%compiled-path131741%_)
                                         (path-normalize
                                          _%compiled-path131741%_)
                                         (let _%lpr131743%_ ((_%rest-src131745%_
                                                              _%srcs131739%_))
                                           (let* ((_%rest-src131746131754%_
                                                   _%rest-src131745%_)
                                                  (_%else131748131762%_
                                                   (lambda ()
                                                     (_%lp131695%_
                                                      _%rest131722%_)))
                                                  (_%K131750131770%_
                                                   (lambda (_%rest-src131765%_
                                                            _%src131766%_)
                                                     (let ((_%src-path131768%_
                                                            (path-expand
                                                             _%src131766%_
                                                             _%dir131723%_)))
                                                       (if (##file-exists?
                                                            _%src-path131768%_)
                                                           (path-normalize
                                                            _%src-path131768%_)
                                                           (_%lpr131743%_
                                                            _%rest-src131765%_))))))
                                             (if (pair? _%rest-src131746131754%_)
                                                 (let ((_%hd131751131773%_
                                                        (##car _%rest-src131746131754%_))
                                                       (_%tl131752131775%_
                                                        (##cdr _%rest-src131746131754%_)))
                                                   (let* ((_%src131778%_
                                                           _%hd131751131773%_)
                                                          (_%rest-src131780%_
                                                           _%tl131752131775%_))
                                                     (_%K131750131770%_
                                                      _%rest-src131780%_
                                                      _%src131778%_)))
                                                 (_%else131748131762%_)))))))))
                         (let ((_%$e131727%_
                                (gx#core-library-package-path-prefix
                                 _%dir131723%_)))
                           (if _%$e131727%_
                               ((lambda (_%prefix131730%_)
                                  (if (string-prefix?
                                       _%prefix131730%_
                                       _%spath131684%_)
                                      (let ((_%ssi131734%_
                                             (substring
                                              _%ssi131688%_
                                              (string-length _%prefix131730%_)
                                              (##string-length _%ssi131688%_)))
                                            (_%srcs131735%_
                                             (##map (lambda (_%src131732%_)
                                                      (substring
                                                       _%src131732%_
                                                       (string-length
                                                        _%prefix131730%_)
                                                       (string-length
                                                        _%src131732%_)))
                                                    _%srcs131692%_)))
                                        (_%resolve131725%_
                                         _%ssi131734%_
                                         _%srcs131735%_))
                                      (_%lp131695%_ _%rest131722%_)))
                                _%$e131727%_)
                               (_%resolve131725%_
                                _%ssi131688%_
                                _%srcs131692%_))))))
                    (_%K131702131716%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath131680%_))))
                (let ((_%try-match131700131719%_
                       (lambda ()
                         (if (null? _%rest131698131707%_)
                             (_%K131702131716%_)
                             (_%E131701131711%_)))))
                  (if (pair? _%rest131698131707%_)
                      (let ((_%tl131705131787%_ (##cdr _%rest131698131707%_))
                            (_%hd131704131785%_ (##car _%rest131698131707%_)))
                        (let ((_%dir131790%_ _%hd131704131785%_)
                              (_%rest131792%_ _%tl131705131787%_))
                          (_%K131703131782%_ _%rest131792%_ _%dir131790%_)))
                      (_%try-match131700131719%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath131648%_)
        (letrec ((_%resolve131650%_
                  (lambda (_%path131671%_ _%base131672%_)
                    (let ((_%$e131674%_
                           (string-rindex__0 _%base131672%_ '#\/)))
                      (if _%$e131674%_
                          ((lambda (_%idx131677%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base131672%_ '0 _%idx131677%_)
                                '"/"
                                _%path131671%_))))
                           _%$e131674%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path131671%_))))))))
          (let ((_%spath131652%_ (symbol->string (gx#stx-e _%modpath131648%_)))
                (_%mod131653%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod131653%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath131648%_))
            (let ((_%mpath131655%_
                   (symbol->string
                    (##structure-ref
                     _%mod131653%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp131657%_ ((_%spath131659%_ _%spath131652%_)
                                 (_%mpath131660%_ _%mpath131655%_))
                (if (string-prefix? '"../" _%spath131659%_)
                    (let ((_%$e131663%_
                           (string-rindex__0 _%mpath131660%_ '#\/)))
                      (if _%$e131663%_
                          ((lambda (_%idx131666%_)
                             (_%lp131657%_
                              (substring
                               _%spath131659%_
                               '3
                               (string-length _%spath131659%_))
                              (substring _%mpath131660%_ '0 _%idx131666%_)))
                           _%$e131663%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath131648%_)))
                    (if (string-prefix? '"./" _%spath131659%_)
                        (_%lp131657%_
                         (substring
                          _%spath131659%_
                          '2
                          (string-length _%spath131659%_))
                         _%mpath131660%_)
                        (_%resolve131650%_
                         _%spath131659%_
                         _%mpath131660%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir131640%_)
        (let ((_%$e131642%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir131640%_))))
          (if _%$e131642%_
              ((lambda (_%pkg131645%_)
                 (##string-append (symbol->string _%pkg131645%_) '"/"))
               _%$e131642%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir131610%_ _%exists?131611%_)
        (let ((_%$e131613%_ (__hash-get gx#__module-pkg-cache _%dir131610%_)))
          (if _%$e131613%_
              _%$e131613%_
              (let* ((_%gerbil.pkg131617%_
                      (path-expand '"gerbil.pkg" _%dir131610%_))
                     (_%plist131627%_
                      (if (or _%exists?131611%_
                              (##file-exists? _%gerbil.pkg131617%_))
                          (let ((_%e131622%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg131617%_
                                  read)))
                            (if (eof-object? _%e131622%_)
                                '()
                                (if (list? _%e131622%_)
                                    _%e131622%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg131617%_
                                     _%e131622%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir131610%_
                 _%plist131627%_)
                _%plist131627%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir131633%_)
        (let ((_%exists?131635%_ '#f))
          (gx#core-library-package-plist__% _%dir131633%_ _%exists?131635%_))))
    (define gx#core-library-package-plist
      (lambda _g133453_
        (let ((_g133454_ (##length _g133453_)))
          (cond ((##fx= _g133454_ 1)
                 (apply gx#core-library-package-plist__0 _g133453_))
                ((##fx= _g133454_ 2)
                 (apply gx#core-library-package-plist__% _g133453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g133453_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx131607%_)
        (gx#core-special-module-path? _%stx131607%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx131605%_)
        (gx#core-special-module-path? _%stx131605%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx131600%_ _%char131601%_)
        (if (gx#identifier? _%stx131600%_)
            (if (interned-symbol? (gx#stx-e _%stx131600%_))
                (let ((_%str131603%_
                       (symbol->string (gx#stx-e _%stx131600%_))))
                  (if (##fx> (##string-length _%str131603%_) '1)
                      (eq? (string-ref _%str131603%_ '0) _%char131601%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx131594%_)
        (gx#core-bound-identifier?__%
         _%stx131594%_
         (lambda (_%g131595131597%_)
           (gx#expander-binding?__% _%g131595131597%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx131588%_)
        (gx#core-bound-identifier?__%
         _%stx131588%_
         (lambda (_%g131589131591%_)
           (gx#expander-binding?__% _%g131589131591%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx131575%_)
        (letrec ((_%module-prelude?131577%_
                  (lambda (_%e131583%_)
                    (let ((_%$e131585%_
                           (##structure-instance-of?
                            _%e131583%_
                            'gx#module-context::t)))
                      (if _%$e131585%_
                          _%$e131585%_
                          (##structure-instance-of?
                           _%e131583%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx131575%_
           (lambda (_%g131578131580%_)
             (gx#expander-binding?__%
              _%g131578131580%_
              _%module-prelude?131577%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in131505%_ _%ctx131506%_ _%force-weak?131507%_)
        (let* ((_%in131508131517%_ _%in131505%_)
               (_%E131510131521%_
                (lambda ()
                  (error '"No clause matching"
                         _%in131508131517%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K131511131534%_
                (lambda (_%weak?131524%_
                         _%phi131525%_
                         _%key131526%_
                         _%source131527%_)
                  (gx#core-bind!__%
                   _%key131526%_
                   (let ((_%e131529%_
                          (gx#core-resolve-module-export _%source131527%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e131529%_ '1 '#f '#f)
                      _%key131526%_
                      _%phi131525%_
                      _%e131529%_
                      (##unchecked-structure-ref _%source131527%_ '1 '#f '#f)
                      (let ((_%$e131531%_ _%force-weak?131507%_))
                        (if _%$e131531%_ _%$e131531%_ _%weak?131524%_))))
                   gx#core-context-rebind?
                   _%phi131525%_
                   _%ctx131506%_))))
          (if (##structure-direct-instance-of?
               _%in131508131517%_
               'gx#module-import::t)
              (let* ((_%e131512131537%_
                      (##unchecked-structure-ref
                       _%in131508131517%_
                       '1
                       '#f
                       '#f))
                     (_%source131540%_ _%e131512131537%_)
                     (_%e131513131542%_
                      (##unchecked-structure-ref
                       _%in131508131517%_
                       '2
                       '#f
                       '#f))
                     (_%key131545%_ _%e131513131542%_)
                     (_%e131514131547%_
                      (##unchecked-structure-ref
                       _%in131508131517%_
                       '3
                       '#f
                       '#f))
                     (_%phi131550%_ _%e131514131547%_)
                     (_%e131515131552%_
                      (##unchecked-structure-ref
                       _%in131508131517%_
                       '4
                       '#f
                       '#f))
                     (_%weak?131555%_ _%e131515131552%_))
                (_%K131511131534%_
                 _%weak?131555%_
                 _%phi131550%_
                 _%key131545%_
                 _%source131540%_))
              (_%E131510131521%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in131560%_)
        (let* ((_%ctx131562%_ (gx#current-expander-context))
               (_%force-weak?131564%_ '#f))
          (gx#core-bind-import!__%
           _%in131560%_
           _%ctx131562%_
           _%force-weak?131564%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in131566%_ _%ctx131567%_)
        (let ((_%force-weak?131569%_ '#f))
          (gx#core-bind-import!__%
           _%in131566%_
           _%ctx131567%_
           _%force-weak?131569%_))))
    (define gx#core-bind-import!
      (lambda _g133455_
        (let ((_g133456_ (##length _g133455_)))
          (cond ((##fx= _g133456_ 1) (apply gx#core-bind-import!__0 _g133455_))
                ((##fx= _g133456_ 2) (apply gx#core-bind-import!__1 _g133455_))
                ((##fx= _g133456_ 3) (apply gx#core-bind-import!__% _g133455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g133455_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in131491%_ _%ctx131492%_)
        (gx#core-bind-import!__% _%in131491%_ _%ctx131492%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in131497%_)
        (let ((_%ctx131499%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in131497%_ _%ctx131499%_))))
    (define gx#core-bind-weak-import!
      (lambda _g133457_
        (let ((_g133458_ (##length _g133457_)))
          (cond ((##fx= _g133458_ 1)
                 (apply gx#core-bind-weak-import!__0 _g133457_))
                ((##fx= _g133458_ 2)
                 (apply gx#core-bind-weak-import!__% _g133457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g133457_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out131382%_)
        (letrec ((_%subst131384%_
                  (lambda (_%key131430%_)
                    (let* ((_%key131431131439%_ _%key131430%_)
                           (_%else131433131447%_ (lambda () _%key131430%_))
                           (_%K131435131478%_
                            (lambda (_%mark131450%_ _%id131451%_)
                              (let* ((_%mark131452131458%_ _%mark131450%_)
                                     (_%E131454131462%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark131452131458%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K131455131470%_
                                      (lambda (_%subst131465%_)
                                        (let ((_%$e131467%_
                                               (if _%subst131465%_
                                                   (hash-get
                                                    _%subst131465%_
                                                    _%id131451%_)
                                                   '#f)))
                                          (if _%$e131467%_
                                              _%$e131467%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key131430%_))))))
                                (if (##structure-instance-of?
                                     _%mark131452131458%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e131456131473%_
                                            (##unchecked-structure-ref
                                             _%mark131452131458%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst131476%_ _%e131456131473%_))
                                      (_%K131455131470%_ _%subst131476%_))
                                    (_%E131454131462%_))))))
                      (if (pair? _%key131431131439%_)
                          (let ((_%hd131436131481%_
                                 (##car _%key131431131439%_))
                                (_%tl131437131483%_
                                 (##cdr _%key131431131439%_)))
                            (let* ((_%id131486%_ _%hd131436131481%_)
                                   (_%mark131488%_ _%tl131437131483%_))
                              (_%K131435131478%_ _%mark131488%_ _%id131486%_)))
                          (_%else131433131447%_))))))
          (let* ((_%out131385131395%_ _%out131382%_)
                 (_%E131387131399%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out131385131395%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K131388131406%_
                  (lambda (_%phi131402%_ _%key131403%_ _%ctx131404%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx131404%_ _%phi131402%_)
                     (_%subst131384%_ _%key131403%_)))))
            (if (##structure-direct-instance-of?
                 _%out131385131395%_
                 'gx#module-export::t)
                (let* ((_%e131389131409%_
                        (##unchecked-structure-ref
                         _%out131385131395%_
                         '1
                         '#f
                         '#f))
                       (_%ctx131412%_ _%e131389131409%_)
                       (_%e131390131414%_
                        (##unchecked-structure-ref
                         _%out131385131395%_
                         '2
                         '#f
                         '#f))
                       (_%key131417%_ _%e131390131414%_)
                       (_%e131391131419%_
                        (##unchecked-structure-ref
                         _%out131385131395%_
                         '3
                         '#f
                         '#f))
                       (_%phi131422%_ _%e131391131419%_)
                       (_%e131392131424%_
                        (##unchecked-structure-ref
                         _%out131385131395%_
                         '4
                         '#f
                         '#f))
                       (_%e131393131427%_
                        (##unchecked-structure-ref
                         _%out131385131395%_
                         '5
                         '#f
                         '#f)))
                  (_%K131388131406%_
                   _%phi131422%_
                   _%key131417%_
                   _%ctx131412%_))
                (_%E131387131399%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out131307%_ _%rename131308%_ _%dphi131309%_)
        (let* ((_%out131310131320%_ _%out131307%_)
               (_%E131312131324%_
                (lambda ()
                  (error '"No clause matching"
                         _%out131310131320%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K131313131336%_
                (lambda (_%weak?131327%_
                         _%name131328%_
                         _%phi131329%_
                         _%key131330%_
                         _%ctx131331%_)
                  (##structure
                   gx#module-import::t
                   _%out131307%_
                   (let ((_%$e131333%_ _%rename131308%_))
                     (if _%$e131333%_ _%$e131333%_ _%name131328%_))
                   (fx+ _%phi131329%_ _%dphi131309%_)
                   _%weak?131327%_))))
          (if (##structure-direct-instance-of?
               _%out131310131320%_
               'gx#module-export::t)
              (let* ((_%e131314131339%_
                      (##unchecked-structure-ref
                       _%out131310131320%_
                       '1
                       '#f
                       '#f))
                     (_%ctx131342%_ _%e131314131339%_)
                     (_%e131315131344%_
                      (##unchecked-structure-ref
                       _%out131310131320%_
                       '2
                       '#f
                       '#f))
                     (_%key131347%_ _%e131315131344%_)
                     (_%e131316131349%_
                      (##unchecked-structure-ref
                       _%out131310131320%_
                       '3
                       '#f
                       '#f))
                     (_%phi131352%_ _%e131316131349%_)
                     (_%e131317131354%_
                      (##unchecked-structure-ref
                       _%out131310131320%_
                       '4
                       '#f
                       '#f))
                     (_%name131357%_ _%e131317131354%_)
                     (_%e131318131359%_
                      (##unchecked-structure-ref
                       _%out131310131320%_
                       '5
                       '#f
                       '#f))
                     (_%weak?131362%_ _%e131318131359%_))
                (_%K131313131336%_
                 _%weak?131362%_
                 _%name131357%_
                 _%phi131352%_
                 _%key131347%_
                 _%ctx131342%_))
              (_%E131312131324%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out131367%_)
        (let* ((_%rename131369%_ '#f) (_%dphi131371%_ '0))
          (gx#core-module-export->import__%
           _%out131367%_
           _%rename131369%_
           _%dphi131371%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out131373%_ _%rename131374%_)
        (let ((_%dphi131376%_ '0))
          (gx#core-module-export->import__%
           _%out131373%_
           _%rename131374%_
           _%dphi131376%_))))
    (define gx#core-module-export->import
      (lambda _g133459_
        (let ((_g133460_ (##length _g133459_)))
          (cond ((##fx= _g133460_ 1)
                 (apply gx#core-module-export->import__0 _g133459_))
                ((##fx= _g133460_ 2)
                 (apply gx#core-module-export->import__1 _g133459_))
                ((##fx= _g133460_ 3)
                 (apply gx#core-module-export->import__% _g133459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g133459_))))))
    (define gx#core-expand-module%
      (lambda (_%stx131206%_)
        (letrec ((_%make-context131208%_
                  (lambda (_%id131285%_)
                    (let* ((_%super131287%_ (gx#current-expander-context))
                           (_%bind-id131289%_ (gx#stx-e _%id131285%_))
                           (_%mod-id131291%_
                            (if (##structure-instance-of?
                                 _%super131287%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super131287%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id131289%_)
                                _%bind-id131289%_))
                           (_%ns131293%_ (symbol->string _%mod-id131291%_))
                           (_%path131303%_
                            (if (##structure-instance-of?
                                 _%super131287%_
                                 'gx#module-context::t)
                                (let ((_%path131295%_
                                       (##unchecked-structure-ref
                                        _%super131287%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path131295%_)
                                          (null? _%path131295%_))
                                      (cons _%bind-id131289%_ _%path131295%_)
                                      (if (not _%path131295%_)
                                          _%bind-id131289%_
                                          (cons _%bind-id131289%_
                                                (cons _%path131295%_ '())))))
                                _%bind-id131289%_))
                           (__obj133436
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
                       __obj133436
                       _%mod-id131291%_
                       _%super131287%_
                       _%ns131293%_
                       _%path131303%_)
                      __obj133436)))
                 (_%valid-module-id?131209%_
                  (lambda (_%id131260%_)
                    (let* ((_%str131262%_ (symbol->string _%id131260%_))
                           (_%len131264%_ (##string-length _%str131262%_)))
                      (if (##fx>= _%len131264%_ '1)
                          (let _%loop131267%_ ((_%index131269%_
                                                (##fx- (##string-length
                                                        _%str131262%_)
                                                       '1)))
                            (if (##fx>= _%index131269%_ '0)
                                (let ((_%c131271%_
                                       (string-ref
                                        _%str131262%_
                                        _%index131269%_)))
                                  (if (or (and (##char>=? _%c131271%_ '#\a)
                                               (##char<=? _%c131271%_ '#\z))
                                          (and (##char>=? _%c131271%_ '#\A)
                                               (##char<=? _%c131271%_ '#\Z))
                                          (and (##char>=? _%c131271%_ '#\0)
                                               (##char<=? _%c131271%_ '#\9))
                                          (##char=? _%c131271%_ '#\_)
                                          (##char=? _%c131271%_ '#\-))
                                      (_%loop131267%_
                                       (##fx- _%index131269%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e131210131220%_ _%stx131206%_)
                 (_%E131212131224%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e131210131220%_)))
                 (_%E131211131256%_
                  (lambda ()
                    (if (gx#stx-pair? _%e131210131220%_)
                        (let ((_%e131213131228%_
                               (gx#syntax-e _%e131210131220%_)))
                          (let ((_%hd131214131231%_ (##car _%e131213131228%_))
                                (_%tl131215131233%_ (##cdr _%e131213131228%_)))
                            (if (gx#stx-pair? _%tl131215131233%_)
                                (let ((_%e131216131236%_
                                       (gx#syntax-e _%tl131215131233%_)))
                                  (let ((_%hd131217131239%_
                                         (##car _%e131216131236%_))
                                        (_%tl131218131241%_
                                         (##cdr _%e131216131236%_)))
                                    (let* ((_%id131244%_ _%hd131217131239%_)
                                           (_%body131246%_ _%tl131218131241%_))
                                      (if (and (gx#identifier? _%id131244%_)
                                               (gx#stx-list? _%body131246%_))
                                          (if (_%valid-module-id?131209%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx131248%_
                                                      (_%make-context131208%_
                                                       _%id131244%_))
                                                     (_%body131250%_
                                                      (gx#core-expand-module-begin
                                                       _%body131246%_
                                                       _%ctx131248%_))
                                                     (_%body131252%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body131250%_)
                                                       (gx#stx-source
                                                        _%stx131206%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx131248%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body131252%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx131248%_
                                                 _%body131252%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id131244%_
                                                 _%ctx131248%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id131244%_)
                                                  _%body131252%_)
                                                 (gx#stx-source
                                                  _%stx131206%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx131206%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E131212131224%_)))))
                                (_%E131212131224%_))))
                        (_%E131212131224%_)))))
            (_%E131211131256%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body131171%_ _%ctx131172%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx131176%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body131171%_)))
                     (_%e131177131184%_ _%stx131176%_)
                     (_%E131179131188%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx131176%_)))
                     (_%E131178131202%_
                      (lambda ()
                        (if (gx#stx-pair? _%e131177131184%_)
                            (let ((_%e131180131192%_
                                   (gx#syntax-e _%e131177131184%_)))
                              (let ((_%hd131181131195%_
                                     (##car _%e131180131192%_))
                                    (_%tl131182131197%_
                                     (##cdr _%e131180131192%_)))
                                (if (and (gx#identifier? _%hd131181131195%_)
                                         (gx#core-identifier=?
                                          _%hd131181131195%_
                                          '%#begin-module))
                                    (let ((_%body131200%_ _%tl131182131197%_))
                                      (if (gx#sealed-syntax? _%stx131176%_)
                                          _%body131200%_
                                          (gx#core-expand-module-body
                                           _%body131200%_)))
                                    (_%E131179131188%_))))
                            (_%E131179131188%_)))))
                (_%E131178131202%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx131172%_)))
    (define gx#core-expand-module-body
      (lambda (_%body130967%_)
        (letrec ((_%expand-special130969%_
                  (lambda (_%hd131098%_ _%K131099%_ _%rest131100%_ _%r131101%_)
                    (let* ((_%e131102131119%_ _%hd131098%_)
                           (_%E131114131123%_
                            (lambda ()
                              (_%K131099%_
                               _%rest131100%_
                               (cons (gx#core-expand-top _%hd131098%_)
                                     _%r131101%_))))
                           (_%E131104131135%_
                            (lambda ()
                              (if (gx#stx-pair? _%e131102131119%_)
                                  (let ((_%e131115131127%_
                                         (gx#syntax-e _%e131102131119%_)))
                                    (let ((_%hd131116131130%_
                                           (##car _%e131115131127%_))
                                          (_%tl131117131132%_
                                           (##cdr _%e131115131127%_)))
                                      (if (and (gx#identifier?
                                                _%hd131116131130%_)
                                               (gx#core-identifier=?
                                                _%hd131116131130%_
                                                '%#export))
                                          (_%K131099%_
                                           _%rest131100%_
                                           (cons _%hd131098%_ _%r131101%_))
                                          (_%E131114131123%_))))
                                  (_%E131114131123%_))))
                           (_%E131103131167%_
                            (lambda ()
                              (if (gx#stx-pair? _%e131102131119%_)
                                  (let ((_%e131105131139%_
                                         (gx#syntax-e _%e131102131119%_)))
                                    (let ((_%hd131106131142%_
                                           (##car _%e131105131139%_))
                                          (_%tl131107131144%_
                                           (##cdr _%e131105131139%_)))
                                      (if (and (gx#identifier?
                                                _%hd131106131142%_)
                                               (gx#core-identifier=?
                                                _%hd131106131142%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl131107131144%_)
                                              (let ((_%e131108131147%_
                                                     (gx#syntax-e
                                                      _%tl131107131144%_)))
                                                (let ((_%hd131109131150%_
                                                       (##car _%e131108131147%_))
                                                      (_%tl131110131152%_
                                                       (##cdr _%e131108131147%_)))
                                                  (let ((_%hd-bind131155%_
                                                         _%hd131109131150%_))
                                                    (if (gx#stx-pair?
                                                         _%tl131110131152%_)
                                                        (let ((_%e131111131157%_
                                                               (gx#syntax-e
                                                                _%tl131110131152%_)))
                                                          (let ((_%hd131112131160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e131111131157%_))
                        (_%tl131113131162%_ (##cdr _%e131111131157%_)))
                    (let ((_%expr131165%_ _%hd131112131160%_))
                      (if (gx#stx-null? _%tl131113131162%_)
                          (if (gx#core-bind-values? _%hd-bind131155%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind131155%_)
                                (_%K131099%_
                                 _%rest131100%_
                                 (cons _%hd131098%_ _%r131101%_)))
                              (_%E131104131135%_))
                          (_%E131104131135%_)))))
                (_%E131104131135%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E131104131135%_))
                                          (_%E131104131135%_))))
                                  (_%E131104131135%_)))))
                      (_%E131103131167%_))))
                 (_%expand-body130970%_
                  (lambda (_%rbody130972%_)
                    (let _%lp130974%_ ((_%rest130976%_ _%rbody130972%_)
                                       (_%body130977%_ '()))
                      (let* ((_%rest130978130986%_ _%rest130976%_)
                             (_%else130980130994%_ (lambda () _%body130977%_))
                             (_%K130982131086%_
                              (lambda (_%rest130997%_ _%hd130998%_)
                                (let* ((_%e130999131020%_ _%hd130998%_)
                                       (_%E131015131024%_
                                        (lambda ()
                                          (_%lp130974%_
                                           _%rest130997%_
                                           (cons (gx#core-expand-expression
                                                  _%hd130998%_)
                                                 _%body130977%_))))
                                       (_%E131011131038%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e130999131020%_)
                                              (let ((_%e131016131028%_
                                                     (gx#syntax-e
                                                      _%e130999131020%_)))
                                                (let ((_%hd131017131031%_
                                                       (##car _%e131016131028%_))
                                                      (_%tl131018131033%_
                                                       (##cdr _%e131016131028%_)))
                                                  (let ((_%form131036%_
                                                         _%hd131017131031%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form131036%_
                                                         gx#special-form-binding?)
                                                        (_%lp130974%_
                                                         _%rest130997%_
                                                         (cons _%hd130998%_
                                                               _%body130977%_))
                                                        (_%E131015131024%_)))))
                                              (_%E131015131024%_))))
                                       (_%E131001131050%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e130999131020%_)
                                              (let ((_%e131012131042%_
                                                     (gx#syntax-e
                                                      _%e130999131020%_)))
                                                (let ((_%hd131013131045%_
                                                       (##car _%e131012131042%_))
                                                      (_%tl131014131047%_
                                                       (##cdr _%e131012131042%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd131013131045%_)
                                                           (gx#core-identifier=?
                                                            _%hd131013131045%_
                                                            '%#export))
                                                      (_%lp130974%_
                                                       _%rest130997%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd130998%_)
                                                             _%body130977%_))
                                                      (_%E131011131038%_))))
                                              (_%E131011131038%_))))
                                       (_%E131000131082%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e130999131020%_)
                                              (let ((_%e131002131054%_
                                                     (gx#syntax-e
                                                      _%e130999131020%_)))
                                                (let ((_%hd131003131057%_
                                                       (##car _%e131002131054%_))
                                                      (_%tl131004131059%_
                                                       (##cdr _%e131002131054%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd131003131057%_)
                                                           (gx#core-identifier=?
                                                            _%hd131003131057%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl131004131059%_)
                                                          (let ((_%e131005131062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl131004131059%_)))
                    (let ((_%hd131006131065%_ (##car _%e131005131062%_))
                          (_%tl131007131067%_ (##cdr _%e131005131062%_)))
                      (let ((_%hd-bind131070%_ _%hd131006131065%_))
                        (if (gx#stx-pair? _%tl131007131067%_)
                            (let ((_%e131008131072%_
                                   (gx#syntax-e _%tl131007131067%_)))
                              (let ((_%hd131009131075%_
                                     (##car _%e131008131072%_))
                                    (_%tl131010131077%_
                                     (##cdr _%e131008131072%_)))
                                (let ((_%expr131080%_ _%hd131009131075%_))
                                  (if (gx#stx-null? _%tl131010131077%_)
                                      (_%lp130974%_
                                       _%rest130997%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind131070%_)
                                               (gx#core-expand-expression
                                                _%expr131080%_))
                                              (gx#stx-source _%hd130998%_))
                                             _%body130977%_))
                                      (_%E131001131050%_)))))
                            (_%E131001131050%_)))))
                  (_%E131001131050%_))
              (_%E131001131050%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E131001131050%_)))))
                                  (_%E131000131082%_)))))
                        (if (pair? _%rest130978130986%_)
                            (let ((_%hd130983131089%_
                                   (##car _%rest130978130986%_))
                                  (_%tl130984131091%_
                                   (##cdr _%rest130978130986%_)))
                              (let* ((_%hd131094%_ _%hd130983131089%_)
                                     (_%rest131096%_ _%tl130984131091%_))
                                (_%K130982131086%_
                                 _%rest131096%_
                                 _%hd131094%_)))
                            (_%else130980130994%_)))))))
          (_%expand-body130970%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body130967%_)
            _%expand-special130969%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx130808%_
               _%expanded?130809%_
               _%method130810%_
               _%current-phi130811%_
               _%expand1130812%_)
        (letrec ((_%K130814%_
                  (lambda (_%rest130934%_ _%r130935%_)
                    (let* ((_%e130936130943%_ _%rest130934%_)
                           (_%E130938130947%_ (lambda () _%r130935%_))
                           (_%E130937130963%_
                            (lambda ()
                              (if (gx#stx-pair? _%e130936130943%_)
                                  (let ((_%e130939130951%_
                                         (gx#syntax-e _%e130936130943%_)))
                                    (let ((_%hd130940130954%_
                                           (##car _%e130939130951%_))
                                          (_%tl130941130956%_
                                           (##cdr _%e130939130951%_)))
                                      (let* ((_%hd130959%_ _%hd130940130954%_)
                                             (_%rest130961%_
                                              _%tl130941130956%_))
                                        (_%step130815%_
                                         _%hd130959%_
                                         _%rest130961%_
                                         _%r130935%_))))
                                  (_%E130938130947%_)))))
                      (_%E130937130963%_))))
                 (_%step130815%_
                  (lambda (_%hd130848%_ _%rest130849%_ _%r130850%_)
                    (let* ((_%e130851130869%_ _%hd130848%_)
                           (_%E130864130873%_
                            (lambda ()
                              (if (_%expanded?130809%_ (gx#stx-e _%hd130848%_))
                                  (_%K130814%_
                                   _%rest130849%_
                                   (cons (gx#stx-e _%hd130848%_) _%r130850%_))
                                  (_%expand1130812%_
                                   _%hd130848%_
                                   _%K130814%_
                                   _%rest130849%_
                                   _%r130850%_))))
                           (_%E130860130889%_
                            (lambda ()
                              (if (gx#stx-pair? _%e130851130869%_)
                                  (let ((_%e130865130877%_
                                         (gx#syntax-e _%e130851130869%_)))
                                    (let ((_%hd130866130880%_
                                           (##car _%e130865130877%_))
                                          (_%tl130867130882%_
                                           (##cdr _%e130865130877%_)))
                                      (let* ((_%macro130885%_
                                              _%hd130866130880%_)
                                             (_%body130887%_
                                              _%tl130867130882%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro130885%_
                                             gx#syntax-binding?)
                                            (_%K130814%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro130885%_)
                                                    _%hd130848%_
                                                    _%method130810%_)
                                                   _%rest130849%_)
                                             _%r130850%_)
                                            (_%E130864130873%_)))))
                                  (_%E130864130873%_))))
                           (_%E130853130903%_
                            (lambda ()
                              (if (gx#stx-pair? _%e130851130869%_)
                                  (let ((_%e130861130893%_
                                         (gx#syntax-e _%e130851130869%_)))
                                    (let ((_%hd130862130896%_
                                           (##car _%e130861130893%_))
                                          (_%tl130863130898%_
                                           (##cdr _%e130861130893%_)))
                                      (if (eq? (gx#stx-e _%hd130862130896%_)
                                               'begin:)
                                          (let ((_%body130901%_
                                                 _%tl130863130898%_))
                                            (_%K130814%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest130849%_
                                              _%body130901%_)
                                             _%r130850%_))
                                          (_%E130860130889%_))))
                                  (_%E130860130889%_))))
                           (_%E130852130930%_
                            (lambda ()
                              (if (gx#stx-pair? _%e130851130869%_)
                                  (let ((_%e130854130907%_
                                         (gx#syntax-e _%e130851130869%_)))
                                    (let ((_%hd130855130910%_
                                           (##car _%e130854130907%_))
                                          (_%tl130856130912%_
                                           (##cdr _%e130854130907%_)))
                                      (if (eq? (gx#stx-e _%hd130855130910%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl130856130912%_)
                                              (let ((_%e130857130915%_
                                                     (gx#syntax-e
                                                      _%tl130856130912%_)))
                                                (let ((_%hd130858130918%_
                                                       (##car _%e130857130915%_))
                                                      (_%tl130859130920%_
                                                       (##cdr _%e130857130915%_)))
                                                  (let* ((_%dphi130923%_
                                                          _%hd130858130918%_)
                                                         (_%body130925%_
                                                          _%tl130859130920%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi130923%_)
                                                        (let ((_%rbody130928%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K130814%_ _%body130925%_ '()))
                        _%current-phi130811%_
                        (fx+ (gx#stx-e _%dphi130923%_)
                             (_%current-phi130811%_)))))
                  (_%K130814%_
                   _%rest130849%_
                   (__foldr1 cons _%r130850%_ _%rbody130928%_)))
                (_%E130853130903%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E130853130903%_))
                                          (_%E130853130903%_))))
                                  (_%E130853130903%_)))))
                      (_%E130852130930%_)))))
          (let* ((_%e130816130823%_ _%stx130808%_)
                 (_%E130818130827%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e130816130823%_)))
                 (_%E130817130844%_
                  (lambda ()
                    (if (gx#stx-pair? _%e130816130823%_)
                        (let ((_%e130819130831%_
                               (gx#syntax-e _%e130816130823%_)))
                          (let ((_%hd130820130834%_ (##car _%e130819130831%_))
                                (_%tl130821130836%_ (##cdr _%e130819130831%_)))
                            (let ((_%body130839%_ _%tl130821130836%_))
                              (if (_%current-phi130811%_)
                                  (_%K130814%_ _%body130839%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K130814%_ _%body130839%_ '()))
                                   _%current-phi130811%_
                                   (gx#current-expander-phi))))))
                        (_%E130818130827%_)))))
            (_%E130817130844%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx130462%_ _%internal-expand?130463%_)
        (letrec ((_%expand1130465%_
                  (lambda (_%hd130780%_ _%K130781%_ _%rest130782%_ _%r130783%_)
                    (if (gx#core-bound-module? _%hd130780%_)
                        (_%import1130466%_
                         (gx#syntax-local-e__0 _%hd130780%_)
                         _%K130781%_
                         _%rest130782%_
                         _%r130783%_)
                        (if (gx#core-library-module-path? _%hd130780%_)
                            (_%import1130466%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd130780%_))
                             _%K130781%_
                             _%rest130782%_
                             _%r130783%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd130780%_)
                                (_%import1130466%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd130780%_))
                                 _%K130781%_
                                 _%rest130782%_
                                 _%r130783%_)
                                (let ((_%e130789%_ (gx#stx-e _%hd130780%_)))
                                  (if (pair? _%e130789%_)
                                      (let ((_%$e130792%_
                                             (gx#stx-e (##car _%e130789%_))))
                                        (if (eq? 'spec: _%$e130792%_)
                                            (_%import-spec130469%_
                                             _%hd130780%_
                                             _%K130781%_
                                             _%rest130782%_
                                             _%r130783%_)
                                            (if (eq? 'in: _%$e130792%_)
                                                (_%import-submodule130467%_
                                                 _%hd130780%_
                                                 _%K130781%_
                                                 _%rest130782%_
                                                 _%r130783%_)
                                                (if (eq? 'runtime:
                                                         _%$e130792%_)
                                                    (_%import-runtime130468%_
                                                     _%hd130780%_
                                                     _%K130781%_
                                                     _%rest130782%_
                                                     _%r130783%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx130462%_
                                                     _%hd130780%_)))))
                                      (if (string? _%e130789%_)
                                          (_%import1130466%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd130780%_
                                             (gx#stx-source _%stx130462%_)))
                                           _%K130781%_
                                           _%rest130782%_
                                           _%r130783%_)
                                          (if (##structure-instance-of?
                                               _%e130789%_
                                               'gx#module-context::t)
                                              (_%K130781%_
                                               _%rest130782%_
                                               (cons _%e130789%_ _%r130783%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx130462%_
                                               _%hd130780%_))))))))))
                 (_%import1130466%_
                  (lambda (_%ctx130769%_
                           _%K130770%_
                           _%rest130771%_
                           _%r130772%_)
                    (let ((_%dphi130774%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K130770%_
                       _%rest130771%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx130769%_
                              _%dphi130774%_
                              (map (lambda (_%g130775130777%_)
                                     (gx#core-module-export->import__%
                                      _%g130775130777%_
                                      '#f
                                      _%dphi130774%_))
                                   (##unchecked-structure-ref
                                    _%ctx130769%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r130772%_)))))
                 (_%import-submodule130467%_
                  (lambda (_%hd130736%_ _%K130737%_ _%rest130738%_ _%r130739%_)
                    (let* ((_%e130740130747%_ _%hd130736%_)
                           (_%E130742130751%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e130740130747%_)))
                           (_%E130741130765%_
                            (lambda ()
                              (if (gx#stx-pair? _%e130740130747%_)
                                  (let ((_%e130743130755%_
                                         (gx#syntax-e _%e130740130747%_)))
                                    (let ((_%hd130744130758%_
                                           (##car _%e130743130755%_))
                                          (_%tl130745130760%_
                                           (##cdr _%e130743130755%_)))
                                      (let ((_%spath130763%_
                                             _%tl130745130760%_))
                                        (_%import1130466%_
                                         (_%import-spec-source130470%_
                                          _%spath130763%_)
                                         _%K130737%_
                                         _%rest130738%_
                                         _%r130739%_))))
                                  (_%E130742130751%_)))))
                      (_%E130741130765%_))))
                 (_%import-runtime130468%_
                  (lambda (_%hd130703%_ _%K130704%_ _%rest130705%_ _%r130706%_)
                    (let* ((_%e130707130714%_ _%hd130703%_)
                           (_%E130709130718%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e130707130714%_)))
                           (_%E130708130732%_
                            (lambda ()
                              (if (gx#stx-pair? _%e130707130714%_)
                                  (let ((_%e130710130722%_
                                         (gx#syntax-e _%e130707130714%_)))
                                    (let ((_%hd130711130725%_
                                           (##car _%e130710130722%_))
                                          (_%tl130712130727%_
                                           (##cdr _%e130710130722%_)))
                                      (let ((_%spath130730%_
                                             _%tl130712130727%_))
                                        (_%K130704%_
                                         _%rest130705%_
                                         (cons (_%import-spec-source130470%_
                                                _%spath130730%_)
                                               _%r130706%_)))))
                                  (_%E130709130718%_)))))
                      (_%E130708130732%_))))
                 (_%import-spec130469%_
                  (lambda (_%hd130541%_ _%K130542%_ _%rest130543%_ _%r130544%_)
                    (let* ((_%e130545130562%_ _%hd130541%_)
                           (_%E130554130566%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e130545130562%_)))
                           (_%E130547130677%_
                            (lambda ()
                              (if (gx#stx-pair? _%e130545130562%_)
                                  (let ((_%e130555130570%_
                                         (gx#syntax-e _%e130545130562%_)))
                                    (let ((_%hd130556130573%_
                                           (##car _%e130555130570%_))
                                          (_%tl130557130575%_
                                           (##cdr _%e130555130570%_)))
                                      (if (gx#stx-pair? _%tl130557130575%_)
                                          (let ((_%e130558130578%_
                                                 (gx#syntax-e
                                                  _%tl130557130575%_)))
                                            (let ((_%hd130559130581%_
                                                   (##car _%e130558130578%_))
                                                  (_%tl130560130583%_
                                                   (##cdr _%e130558130578%_)))
                                              (let* ((_%path130586%_
                                                      _%hd130559130581%_)
                                                     (_%specs130588%_
                                                      _%tl130560130583%_))
                                                (let ((_%src-ctx130590%_
                                                       (_%import-spec-source130470%_
                                                        _%path130586%_))
                                                      (_%exports130591%_
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
                                                      (_%specs130592%_
                                                       (gx#syntax->list
                                                        _%specs130588%_)))
                                                  (for-each
                                                   (lambda (_%out130594%_)
                                                     (__hash-put!
                                                      _%exports130591%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out130594%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out130594%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out130594%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx130590%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K130542%_
                                                   _%rest130543%_
                                                   (__foldl1
                                                    (lambda (_%spec130596%_
                                                             _%r130597%_)
                                                      (let* ((_%e130598130614%_
                                                              _%spec130596%_)
                                                             (_%E130600130618%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e130598130614%_)))
                     (_%E130599130673%_
                      (lambda ()
                        (if (gx#stx-pair? _%e130598130614%_)
                            (let ((_%e130601130622%_
                                   (gx#syntax-e _%e130598130614%_)))
                              (let ((_%hd130602130625%_
                                     (##car _%e130601130622%_))
                                    (_%tl130603130627%_
                                     (##cdr _%e130601130622%_)))
                                (let ((_%phi130630%_ _%hd130602130625%_))
                                  (if (gx#stx-pair? _%tl130603130627%_)
                                      (let ((_%e130604130632%_
                                             (gx#syntax-e _%tl130603130627%_)))
                                        (let ((_%hd130605130635%_
                                               (##car _%e130604130632%_))
                                              (_%tl130606130637%_
                                               (##cdr _%e130604130632%_)))
                                          (let ((_%name130640%_
                                                 _%hd130605130635%_))
                                            (if (gx#stx-pair?
                                                 _%tl130606130637%_)
                                                (let ((_%e130607130642%_
                                                       (gx#syntax-e
                                                        _%tl130606130637%_)))
                                                  (let ((_%hd130608130645%_
                                                         (##car _%e130607130642%_))
                                                        (_%tl130609130647%_
                                                         (##cdr _%e130607130642%_)))
                                                    (let ((_%src-phi130650%_
                                                           _%hd130608130645%_))
                                                      (if (gx#stx-pair?
                                                           _%tl130609130647%_)
                                                          (let ((_%e130610130652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl130609130647%_)))
                    (let ((_%hd130611130655%_ (##car _%e130610130652%_))
                          (_%tl130612130657%_ (##cdr _%e130610130652%_)))
                      (let ((_%src-name130660%_ _%hd130611130655%_))
                        (if (gx#stx-null? _%tl130612130657%_)
                            (if (and (gx#stx-fixnum? _%src-phi130650%_)
                                     (gx#identifier? _%src-name130660%_)
                                     (gx#stx-fixnum? _%phi130630%_)
                                     (gx#identifier? _%name130640%_))
                                (let ((_%src-phi130662%_
                                       (gx#stx-e _%src-phi130650%_))
                                      (_%src-name130663%_
                                       (gx#core-identifier-key
                                        _%src-name130660%_))
                                      (_%phi130664%_ (gx#stx-e _%phi130630%_))
                                      (_%name130665%_
                                       (gx#core-identifier-key
                                        _%name130640%_)))
                                  (let ((_%$e130667%_
                                         (__hash-get
                                          _%exports130591%_
                                          (cons _%src-phi130662%_
                                                _%src-name130663%_))))
                                    (if _%$e130667%_
                                        ((lambda (_%out130670%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out130670%_
                                                  _%name130665%_
                                                  (fx- _%phi130664%_
                                                       _%src-phi130662%_))
                                                 _%r130597%_))
                                         _%$e130667%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx130462%_
                                         _%hd130541%_))))
                                (_%E130600130618%_))
                            (_%E130600130618%_)))))
                  (_%E130600130618%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E130600130618%_)))))
                                      (_%E130600130618%_)))))
                            (_%E130600130618%_)))))
                (_%E130599130673%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r130544%_
                                                    _%specs130592%_))))))
                                          (_%E130554130566%_))))
                                  (_%E130554130566%_))))
                           (_%E130546130699%_
                            (lambda ()
                              (if (gx#stx-pair? _%e130545130562%_)
                                  (let ((_%e130548130681%_
                                         (gx#syntax-e _%e130545130562%_)))
                                    (let ((_%hd130549130684%_
                                           (##car _%e130548130681%_))
                                          (_%tl130550130686%_
                                           (##cdr _%e130548130681%_)))
                                      (if (gx#stx-pair? _%tl130550130686%_)
                                          (let ((_%e130551130689%_
                                                 (gx#syntax-e
                                                  _%tl130550130686%_)))
                                            (let ((_%hd130552130692%_
                                                   (##car _%e130551130689%_))
                                                  (_%tl130553130694%_
                                                   (##cdr _%e130551130689%_)))
                                              (let ((_%path130697%_
                                                     _%hd130552130692%_))
                                                (if (gx#stx-null?
                                                     _%tl130553130694%_)
                                                    (_%K130542%_
                                                     _%rest130543%_
                                                     (cons (_%import-spec-source130470%_
                                                            _%path130697%_)
                                                           _%r130544%_))
                                                    (_%E130547130677%_)))))
                                          (_%E130547130677%_))))
                                  (_%E130547130677%_)))))
                      (_%E130546130699%_))))
                 (_%import-spec-source130470%_
                  (lambda (_%spath130539%_)
                    (gx#core-import-nested-module
                     _%spath130539%_
                     _%stx130462%_)))
                 (_%import!130471%_
                  (lambda (_%rbody130484%_)
                    (letrec* ((_%current-ctx130486%_
                               (gx#current-expander-context))
                              (_%deps130487%_ (make-hash-table-eq))
                              (_%bind!130488%_
                               (lambda (_%hd130537%_)
                                 (gx#core-bind-import!__1
                                  _%hd130537%_
                                  _%current-ctx130486%_))))
                      (let _%lp130490%_ ((_%rest130492%_ _%rbody130484%_)
                                         (_%body130493%_ '()))
                        (let* ((_%rest130494130502%_ _%rest130492%_)
                               (_%else130496130513%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx130486%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx130486%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx130486%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body130493%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx130510%_ _%_130511%_)
                                     (gx#eval-module _%ctx130510%_))
                                   _%deps130487%_)
                                  _%body130493%_))
                               (_%K130498130525%_
                                (lambda (_%rest130516%_ _%hd130517%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd130517%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!130488%_ _%hd130517%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd130517%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd130517%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps130487%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd130517%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd130517%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!130488%_
                                             (##unchecked-structure-ref
                                              _%hd130517%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd130517%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps130487%_
                                                 (##unchecked-structure-ref
                                                  _%hd130517%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e130521%_
                                                 (##structure-instance-of?
                                                  _%hd130517%_
                                                  'gx#module-context::t)))
                                            (if _%$e130521%_
                                                _%$e130521%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx130462%_
                                                 _%hd130517%_)))))
                                  (_%lp130490%_
                                   _%rest130516%_
                                   (cons _%hd130517%_ _%body130493%_)))))
                          (if (pair? _%rest130494130502%_)
                              (let ((_%hd130499130528%_
                                     (##car _%rest130494130502%_))
                                    (_%tl130500130530%_
                                     (##cdr _%rest130494130502%_)))
                                (let* ((_%hd130533%_ _%hd130499130528%_)
                                       (_%rest130535%_ _%tl130500130530%_))
                                  (_%K130498130525%_
                                   _%rest130535%_
                                   _%hd130533%_)))
                              (_%else130496130513%_)))))))
                 (_%expanded-import?130472%_
                  (lambda (_%e130476%_)
                    (let ((_%$e130478%_
                           (##structure-direct-instance-of?
                            _%e130476%_
                            'gx#import-set::t)))
                      (if _%$e130478%_
                          _%$e130478%_
                          (let ((_%$e130481%_
                                 (##structure-direct-instance-of?
                                  _%e130476%_
                                  'gx#module-import::t)))
                            (if _%$e130481%_
                                _%$e130481%_
                                (##structure-instance-of?
                                 _%e130476%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody130474%_
                 (gx#core-expand-import/export
                  _%stx130462%_
                  _%expanded-import?130472%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1130465%_)))
            (if _%internal-expand?130463%_
                (reverse _%rbody130474%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!130471%_ _%rbody130474%_))
                 (gx#stx-source _%stx130462%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx130801%_)
        (let ((_%internal-expand?130803%_ '#f))
          (gx#core-expand-import%__%
           _%stx130801%_
           _%internal-expand?130803%_))))
    (define gx#core-expand-import%
      (lambda _g133461_
        (let ((_g133462_ (##length _g133461_)))
          (cond ((##fx= _g133462_ 1)
                 (apply gx#core-expand-import%__0 _g133461_))
                ((##fx= _g133462_ 2)
                 (apply gx#core-expand-import%__% _g133461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g133461_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath130389%_ _%where130390%_)
        (let* ((_%e130391130398%_ _%spath130389%_)
               (_%E130393130402%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130391130398%_)))
               (_%E130392130457%_
                (lambda ()
                  (if (gx#stx-pair? _%e130391130398%_)
                      (let ((_%e130394130406%_
                             (gx#syntax-e _%e130391130398%_)))
                        (let ((_%hd130395130409%_ (##car _%e130394130406%_))
                              (_%tl130396130411%_ (##cdr _%e130394130406%_)))
                          (let* ((_%origin130414%_ _%hd130395130409%_)
                                 (_%sub130416%_ _%tl130396130411%_)
                                 (_%origin-ctx130418%_
                                  (if (gx#stx-false? _%origin130414%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin130414%_))))
                            (let _%lp130420%_ ((_%rest130422%_ _%sub130416%_)
                                               (_%ctx130423%_
                                                _%origin-ctx130418%_))
                              (let* ((_%e130424130431%_ _%rest130422%_)
                                     (_%E130426130435%_
                                      (lambda () _%ctx130423%_))
                                     (_%E130425130453%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e130424130431%_)
                                            (let ((_%e130427130439%_
                                                   (gx#syntax-e
                                                    _%e130424130431%_)))
                                              (let ((_%hd130428130442%_
                                                     (##car _%e130427130439%_))
                                                    (_%tl130429130444%_
                                                     (##cdr _%e130427130439%_)))
                                                (let* ((_%id130447%_
                                                        _%hd130428130442%_)
                                                       (_%rest130449%_
                                                        _%tl130429130444%_)
                                                       (_%bind130451%_
                                                        (gx#resolve-identifier__%
                                                         _%id130447%_
                                                         '0
                                                         _%ctx130423%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind130451%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind130451%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where130390%_
                                                       _%spath130389%_
                                                       _%id130447%_))
                                                  (_%lp130420%_
                                                   _%rest130449%_
                                                   (##unchecked-structure-ref
                                                    _%bind130451%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E130426130435%_)))))
                                (_%E130425130453%_))))))
                      (_%E130393130402%_)))))
          (_%E130392130457%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd130387%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd130387%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx129881%_ _%internal-expand?129882%_)
        (letrec* ((_%make-export__133390133391%_
                   (lambda (_%bind130335%_
                            _%phi130336%_
                            _%ctx130337%_
                            _%name130338%_)
                     (let* ((_%key130340%_
                             (##unchecked-structure-ref
                              _%bind130335%_
                              '2
                              '#f
                              '#f))
                            (_%export-key130342%_
                             (if _%name130338%_
                                 (gx#core-identifier-key _%name130338%_)
                                 _%key130340%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx130337%_
                        _%key130340%_
                        _%phi130336%_
                        _%export-key130342%_
                        (let ((_%$e130345%_
                               (##structure-instance-of?
                                _%bind130335%_
                                'gx#extern-binding::t)))
                          (if _%$e130345%_
                              _%$e130345%_
                              (##structure-direct-instance-of?
                               _%bind130335%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__133392133395%_
                   (lambda (_%bind130351%_)
                     (let* ((_%phi130353%_ (gx#current-export-expander-phi))
                            (_%ctx130355%_ (gx#current-expander-context))
                            (_%name130357%_ '#f))
                       (_%make-export__133390133391%_
                        _%bind130351%_
                        _%phi130353%_
                        _%ctx130355%_
                        _%name130357%_))))
                  (_%make-export__1__133393133396%_
                   (lambda (_%bind130359%_ _%phi130360%_)
                     (let* ((_%ctx130362%_ (gx#current-expander-context))
                            (_%name130364%_ '#f))
                       (_%make-export__133390133391%_
                        _%bind130359%_
                        _%phi130360%_
                        _%ctx130362%_
                        _%name130364%_))))
                  (_%make-export__2__133394133397%_
                   (lambda (_%bind130366%_ _%phi130367%_ _%ctx130368%_)
                     (let ((_%name130370%_ '#f))
                       (_%make-export__133390133391%_
                        _%bind130366%_
                        _%phi130367%_
                        _%ctx130368%_
                        _%name130370%_))))
                  (_%make-export129884%_
                   (lambda _g133463_
                     (let ((_g133464_ (##length _g133463_)))
                       (cond ((##fx= _g133464_ 1)
                              (apply _%make-export__0__133392133395%_
                                     _g133463_))
                             ((##fx= _g133464_ 2)
                              (apply _%make-export__1__133393133396%_
                                     _g133463_))
                             ((##fx= _g133464_ 3)
                              (apply _%make-export__2__133394133397%_
                                     _g133463_))
                             ((##fx= _g133464_ 4)
                              (apply _%make-export__133390133391%_ _g133463_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g133463_))))))
                  (_%expand1129885%_
                   (lambda (_%hd130040%_
                            _%K130041%_
                            _%rest130042%_
                            _%r130043%_)
                     (let* ((_%e130044130076%_ _%hd130040%_)
                            (_%E130071130080%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx129881%_
                                _%hd130040%_)))
                            (_%E130061130164%_
                             (lambda ()
                               (if (gx#stx-pair? _%e130044130076%_)
                                   (let ((_%e130072130084%_
                                          (gx#syntax-e _%e130044130076%_)))
                                     (let ((_%hd130073130087%_
                                            (##car _%e130072130084%_))
                                           (_%tl130074130089%_
                                            (##cdr _%e130072130084%_)))
                                       (if (eq? (gx#stx-e _%hd130073130087%_)
                                                'import:)
                                           (let ((_%in130092%_
                                                  _%tl130074130089%_))
                                             (if (gx#stx-list? _%in130092%_)
                                                 (let _%lp130094%_ ((_%in-rest130096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in130092%_)
                            (_%r130097%_ _%r130043%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e130098130105%_
                                                           _%in-rest130096%_)
                                                          (_%E130100130109%_
                                                           (lambda ()
                                                             (_%K130041%_
                                                              _%rest130042%_
                                                              _%r130097%_)))
                                                          (_%E130099130160%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e130098130105%_)
                         (let ((_%e130101130113%_
                                (gx#syntax-e _%e130098130105%_)))
                           (let ((_%hd130102130116%_ (##car _%e130101130113%_))
                                 (_%tl130103130118%_
                                  (##cdr _%e130101130113%_)))
                             (let* ((_%hd130121%_ _%hd130102130116%_)
                                    (_%in-rest130123%_ _%tl130103130118%_)
                                    (_%src130158%_
                                     (if (gx#core-bound-module? _%hd130121%_)
                                         (gx#syntax-local-e__0 _%hd130121%_)
                                         (if (gx#core-library-module-path?
                                              _%hd130121%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd130121%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd130121%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd130121%_))
                                                 (if (gx#stx-string?
                                                      _%hd130121%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd130121%_
                                                       (gx#stx-source
                                                        _%stx129881%_)))
                                                     (let* ((_%e130129130136%_
                                                             _%hd130121%_)
                                                            (_%E130131130140%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx129881%_
                                                                _%hd130121%_)))
                                                            (_%E130130130154%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e130129130136%_)
                           (let ((_%e130132130144%_
                                  (gx#syntax-e _%e130129130136%_)))
                             (let ((_%hd130133130147%_
                                    (##car _%e130132130144%_))
                                   (_%tl130134130149%_
                                    (##cdr _%e130132130144%_)))
                               (if (eq? (gx#stx-e _%hd130133130147%_) 'in:)
                                   (let ((_%spath130152%_ _%tl130134130149%_))
                                     (gx#core-import-nested-module
                                      _%spath130152%_
                                      _%stx129881%_))
                                   (_%E130131130140%_))))
                           (_%E130131130140%_)))))
               (_%E130130130154%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp130094%_
                                _%in-rest130123%_
                                (_%export-imports129886%_
                                 _%src130158%_
                                 _%r130097%_)))))
                         (_%E130100130109%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E130099130160%_)))
                                                 (_%E130071130080%_)))
                                           (_%E130071130080%_))))
                                   (_%E130071130080%_))))
                            (_%E130048130204%_
                             (lambda ()
                               (if (gx#stx-pair? _%e130044130076%_)
                                   (let ((_%e130062130168%_
                                          (gx#syntax-e _%e130044130076%_)))
                                     (let ((_%hd130063130171%_
                                            (##car _%e130062130168%_))
                                           (_%tl130064130173%_
                                            (##cdr _%e130062130168%_)))
                                       (if (eq? (gx#stx-e _%hd130063130171%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl130064130173%_)
                                               (let ((_%e130065130176%_
                                                      (gx#syntax-e
                                                       _%tl130064130173%_)))
                                                 (let ((_%hd130066130179%_
                                                        (##car _%e130065130176%_))
                                                       (_%tl130067130181%_
                                                        (##cdr _%e130065130176%_)))
                                                   (let ((_%id130184%_
                                                          _%hd130066130179%_))
                                                     (if (gx#stx-pair?
                                                          _%tl130067130181%_)
                                                         (let ((_%e130068130186%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl130067130181%_)))
                   (let ((_%hd130069130189%_ (##car _%e130068130186%_))
                         (_%tl130070130191%_ (##cdr _%e130068130186%_)))
                     (let ((_%name130194%_ _%hd130069130189%_))
                       (if (gx#stx-null? _%tl130070130191%_)
                           (let* ((_%phi130196%_
                                   (gx#current-export-expander-phi))
                                  (_%$e130198%_
                                   (gx#core-resolve-identifier__1
                                    _%id130184%_
                                    _%phi130196%_)))
                             (if _%$e130198%_
                                 ((lambda (_%bind130201%_)
                                    (_%K130041%_
                                     _%rest130042%_
                                     (cons (_%make-export__133390133391%_
                                            _%bind130201%_
                                            _%phi130196%_
                                            (gx#current-expander-context)
                                            _%name130194%_)
                                           _%r130043%_)))
                                  _%$e130198%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx129881%_
                                  _%hd130040%_
                                  _%id130184%_)))
                           (_%E130061130164%_)))))
                 (_%E130061130164%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E130061130164%_))
                                           (_%E130061130164%_))))
                                   (_%E130061130164%_))))
                            (_%E130047130254%_
                             (lambda ()
                               (if (gx#stx-pair? _%e130044130076%_)
                                   (let ((_%e130049130208%_
                                          (gx#syntax-e _%e130044130076%_)))
                                     (let ((_%hd130050130211%_
                                            (##car _%e130049130208%_))
                                           (_%tl130051130213%_
                                            (##cdr _%e130049130208%_)))
                                       (if (eq? (gx#stx-e _%hd130050130211%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl130051130213%_)
                                               (let ((_%e130052130216%_
                                                      (gx#syntax-e
                                                       _%tl130051130213%_)))
                                                 (let ((_%hd130053130219%_
                                                        (##car _%e130052130216%_))
                                                       (_%tl130054130221%_
                                                        (##cdr _%e130052130216%_)))
                                                   (let ((_%phi130224%_
                                                          _%hd130053130219%_))
                                                     (if (gx#stx-pair?
                                                          _%tl130054130221%_)
                                                         (let ((_%e130055130226%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl130054130221%_)))
                   (let ((_%hd130056130229%_ (##car _%e130055130226%_))
                         (_%tl130057130231%_ (##cdr _%e130055130226%_)))
                     (let ((_%id130234%_ _%hd130056130229%_))
                       (if (gx#stx-pair? _%tl130057130231%_)
                           (let ((_%e130058130236%_
                                  (gx#syntax-e _%tl130057130231%_)))
                             (let ((_%hd130059130239%_
                                    (##car _%e130058130236%_))
                                   (_%tl130060130241%_
                                    (##cdr _%e130058130236%_)))
                               (let ((_%name130244%_ _%hd130059130239%_))
                                 (if (gx#stx-null? _%tl130060130241%_)
                                     (if (and (gx#stx-fixnum? _%phi130224%_)
                                              (gx#identifier? _%id130234%_)
                                              (gx#identifier? _%name130244%_))
                                         (let* ((_%phi130246%_
                                                 (gx#stx-e _%phi130224%_))
                                                (_%$e130248%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id130234%_
                                                  _%phi130246%_)))
                                           (if _%$e130248%_
                                               ((lambda (_%bind130251%_)
                                                  (_%K130041%_
                                                   _%rest130042%_
                                                   (cons (_%make-export__133390133391%_
                                                          _%bind130251%_
                                                          _%phi130246%_
                                                          (gx#current-expander-context)
                                                          _%name130244%_)
                                                         _%r130043%_)))
                                                _%$e130248%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx129881%_
                                                _%hd130040%_
                                                _%id130234%_)))
                                         (_%E130048130204%_))
                                     (_%E130048130204%_)))))
                           (_%E130048130204%_)))))
                 (_%E130048130204%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E130048130204%_))
                                           (_%E130048130204%_))))
                                   (_%E130048130204%_))))
                            (_%E130046130266%_
                             (lambda ()
                               (let ((_%id130258%_ _%e130044130076%_))
                                 (if (gx#identifier? _%id130258%_)
                                     (let ((_%$e130260%_
                                            (gx#core-resolve-identifier__1
                                             _%id130258%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e130260%_
                                           ((lambda (_%bind130263%_)
                                              (_%K130041%_
                                               _%rest130042%_
                                               (cons (_%make-export__0__133392133395%_
                                                      _%bind130263%_)
                                                     _%r130043%_)))
                                            _%$e130260%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx129881%_
                                            _%hd130040%_)))
                                     (_%E130047130254%_)))))
                            (_%E130045130330%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e130044130076%_) '#t)
                                   (let* ((_%current-ctx130270%_
                                           (gx#current-expander-context))
                                          (_%current-phi130272%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx130274%_
                                           (gx#core-context-shift
                                            _%current-ctx130270%_
                                            _%current-phi130272%_))
                                          (_%phi-bind130276%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx130274%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp130279%_ ((_%bind-rest130281%_
                                                         _%phi-bind130276%_)
                                                        (_%set130282%_ '()))
                                       (let* ((_%bind-rest130283130293%_
                                               _%bind-rest130281%_)
                                              (_%else130285130301%_
                                               (lambda ()
                                                 (_%K130041%_
                                                  _%rest130042%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi130272%_
                                                         _%set130282%_)
                                                        _%r130043%_))))
                                              (_%K130287130311%_
                                               (lambda (_%bind-rest130304%_
                                                        _%bind130305%_
                                                        _%key130306%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind130305%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind130305%_))
                                                     (_%lp130279%_
                                                      _%bind-rest130304%_
                                                      _%set130282%_)
                                                     (_%lp130279%_
                                                      _%bind-rest130304%_
                                                      (cons (_%make-export__2__133394133397%_
                                                             _%bind130305%_
                                                             _%current-phi130272%_
                                                             _%current-ctx130270%_)
                                                            _%set130282%_))))))
                                         (if (pair? _%bind-rest130283130293%_)
                                             (let ((_%hd130288130314%_
                                                    (##car _%bind-rest130283130293%_))
                                                   (_%tl130289130316%_
                                                    (##cdr _%bind-rest130283130293%_)))
                                               (if (pair? _%hd130288130314%_)
                                                   (let ((_%hd130290130319%_
                                                          (##car _%hd130288130314%_))
                                                         (_%tl130291130321%_
                                                          (##cdr _%hd130288130314%_)))
                                                     (let* ((_%key130324%_
                                                             _%hd130290130319%_)
                                                            (_%bind130326%_
                                                             _%tl130291130321%_)
                                                            (_%bind-rest130328%_
                                                             _%tl130289130316%_))
                                                       (_%K130287130311%_
                                                        _%bind-rest130328%_
                                                        _%bind130326%_
                                                        _%key130324%_)))
                                                   (_%else130285130301%_)))
                                             (_%else130285130301%_)))))
                                   (_%E130046130266%_)))))
                       (_%E130045130330%_))))
                  (_%export-imports129886%_
                   (lambda (_%src129916%_ _%r129917%_)
                     (letrec* ((_%current-ctx129919%_
                                (gx#current-expander-context))
                               (_%current-phi129920%_
                                (gx#current-export-expander-phi))
                               (_%import->export129921%_
                                (lambda (_%in130002%_)
                                  (let* ((_%in130003130011%_ _%in130002%_)
                                         (_%E130005130015%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in130003130011%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K130006130022%_
                                          (lambda (_%phi130018%_
                                                   _%key130019%_
                                                   _%out130020%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx129919%_
                                             _%key130019%_
                                             _%phi130018%_
                                             _%key130019%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in130003130011%_
                                         'gx#module-import::t)
                                        (let* ((_%e130007130025%_
                                                (##unchecked-structure-ref
                                                 _%in130003130011%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out130028%_
                                                _%e130007130025%_)
                                               (_%e130008130030%_
                                                (##unchecked-structure-ref
                                                 _%in130003130011%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key130033%_
                                                _%e130008130030%_)
                                               (_%e130009130035%_
                                                (##unchecked-structure-ref
                                                 _%in130003130011%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi130038%_
                                                _%e130009130035%_))
                                          (_%K130006130022%_
                                           _%phi130038%_
                                           _%key130033%_
                                           _%out130028%_))
                                        (_%E130005130015%_)))))
                               (_%fold-e129922%_
                                (lambda (_%in129924%_ _%r129925%_)
                                  (let* ((_%in129926129940%_ _%in129924%_)
                                         (_%else129929129948%_
                                          (lambda () _%r129925%_)))
                                    (let ((_%K129935129984%_
                                           (lambda (_%phi129980%_
                                                    _%key129981%_
                                                    _%out129982%_)
                                             (if (and (fx= _%phi129980%_
                                                           _%current-phi129920%_)
                                                      (eq? _%src129916%_
                                                           (##unchecked-structure-ref
                                                            _%out129982%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export129921%_
                                                        _%in129924%_)
                                                       _%r129925%_)
                                                 _%r129925%_)))
                                          (_%K129931129959%_
                                           (lambda (_%imports129952%_
                                                    _%phi129953%_
                                                    _%ctx129954%_)
                                             (if (and (fx= _%phi129953%_
                                                           _%current-phi129920%_)
                                                      (eq? _%src129916%_
                                                           _%ctx129954%_))
                                                 (__foldl1
                                                  (lambda (_%in129956%_
                                                           _%r129957%_)
                                                    (cons (_%import->export129921%_
                                                           _%in129956%_)
                                                          _%r129957%_))
                                                  _%r129925%_
                                                  _%imports129952%_)
                                                 _%r129925%_))))
                                      (let ((_%try-match129928129977%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in129926129940%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e129932129962%_
                                                           (##unchecked-structure-ref
                                                            _%in129926129940%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e129933129967%_
                                                           (##unchecked-structure-ref
                                                            _%in129926129940%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e129934129972%_
                                                           (##unchecked-structure-ref
                                                            _%in129926129940%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx129965%_
                                                            _%e129932129962%_)
                                                           (_%phi129970%_
                                                            _%e129933129967%_)
                                                           (_%imports129975%_
                                                            _%e129934129972%_))
                                                       (_%K129931129959%_
                                                        _%imports129975%_
                                                        _%phi129970%_
                                                        _%ctx129965%_)))
                                                   (_%else129929129948%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in129926129940%_
                                             'gx#module-import::t)
                                            (let* ((_%e129936129987%_
                                                    (##unchecked-structure-ref
                                                     _%in129926129940%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e129937129992%_
                                                    (##unchecked-structure-ref
                                                     _%in129926129940%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e129938129997%_
                                                    (##unchecked-structure-ref
                                                     _%in129926129940%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out129990%_
                                                     _%e129936129987%_)
                                                    (_%key129995%_
                                                     _%e129937129992%_)
                                                    (_%phi130000%_
                                                     _%e129938129997%_))
                                                (_%K129935129984%_
                                                 _%phi130000%_
                                                 _%key129995%_
                                                 _%out129990%_)))
                                            (_%try-match129928129977%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src129916%_
                              _%current-phi129920%_
                              (__foldl1
                               _%fold-e129922%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx129919%_
                                '8
                                '#f
                                '#f)))
                             _%r129917%_))))
                  (_%export!129887%_
                   (lambda (_%rbody129903%_)
                     (letrec* ((_%current-ctx129905%_
                                (gx#current-expander-context))
                               (_%fold-e129906%_
                                (lambda (_%out129910%_ _%r129911%_)
                                  (if (##structure-direct-instance-of?
                                       _%out129910%_
                                       'gx#module-export::t)
                                      (cons _%out129910%_ _%r129911%_)
                                      (if (##structure-direct-instance-of?
                                           _%out129910%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r129911%_
                                           (##unchecked-structure-ref
                                            _%out129910%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r129911%_)))))
                       (let ((_%body129908%_ (reverse _%rbody129903%_)))
                         (##unchecked-structure-set!
                          _%current-ctx129905%_
                          (__foldl1
                           _%fold-e129906%_
                           (##unchecked-structure-ref
                            _%current-ctx129905%_
                            '9
                            '#f
                            '#f)
                           _%body129908%_)
                          '9
                          '#f
                          '#f)
                         _%body129908%_))))
                  (_%expanded-export?129888%_
                   (lambda (_%e129898%_)
                     (let ((_%$e129900%_
                            (##structure-direct-instance-of?
                             _%e129898%_
                             'gx#module-export::t)))
                       (if _%$e129900%_
                           _%$e129900%_
                           (##structure-direct-instance-of?
                            _%e129898%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?129882%_)
              (let ((_%rbody129894%_
                     (gx#core-expand-import/export
                      _%stx129881%_
                      _%expanded-export?129888%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1129885%_)))
                (if _%internal-expand?129882%_
                    (reverse _%rbody129894%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!129887%_ _%rbody129894%_))
                     (gx#stx-source _%stx129881%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx129881%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx129881%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx130380%_)
        (let ((_%internal-expand?130382%_ '#f))
          (gx#core-expand-export%__%
           _%stx130380%_
           _%internal-expand?130382%_))))
    (define gx#core-expand-export%
      (lambda _g133465_
        (let ((_g133466_ (##length _g133465_)))
          (cond ((##fx= _g133466_ 1)
                 (apply gx#core-expand-export%__0 _g133465_))
                ((##fx= _g133466_ 2)
                 (apply gx#core-expand-export%__% _g133465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g133465_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd129878%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd129878%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx129848%_)
        (let* ((_%e129849129856%_ _%stx129848%_)
               (_%E129851129860%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129849129856%_)))
               (_%E129850129874%_
                (lambda ()
                  (if (gx#stx-pair? _%e129849129856%_)
                      (let ((_%e129852129864%_
                             (gx#syntax-e _%e129849129856%_)))
                        (let ((_%hd129853129867%_ (##car _%e129852129864%_))
                              (_%tl129854129869%_ (##cdr _%e129852129864%_)))
                          (let ((_%body129872%_ _%tl129854129869%_))
                            (if (gx#identifier-list? _%body129872%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body129872%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body129872%_))
                                   (gx#stx-source _%stx129848%_)))
                                (_%E129851129860%_)))))
                      (_%E129851129860%_)))))
          (_%E129850129874%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id129814%_ _%private?129815%_ _%phi129816%_ _%ctx129817%_)
        (gx#core-bind-syntax!__%
         _%id129814%_
         ((if _%private?129815%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id129814%_))
         _%private?129815%_
         _%phi129816%_
         _%ctx129817%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id129822%_)
        (let* ((_%private?129824%_ '#f)
               (_%phi129826%_ (gx#current-expander-phi))
               (_%ctx129828%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id129822%_
           _%private?129824%_
           _%phi129826%_
           _%ctx129828%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id129830%_ _%private?129831%_)
        (let* ((_%phi129833%_ (gx#current-expander-phi))
               (_%ctx129835%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id129830%_
           _%private?129831%_
           _%phi129833%_
           _%ctx129835%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id129837%_ _%private?129838%_ _%phi129839%_)
        (let ((_%ctx129841%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id129837%_
           _%private?129838%_
           _%phi129839%_
           _%ctx129841%_))))
    (define gx#core-bind-feature!
      (lambda _g133467_
        (let ((_g133468_ (##length _g133467_)))
          (cond ((##fx= _g133468_ 1)
                 (apply gx#core-bind-feature!__0 _g133467_))
                ((##fx= _g133468_ 2)
                 (apply gx#core-bind-feature!__1 _g133467_))
                ((##fx= _g133468_ 3)
                 (apply gx#core-bind-feature!__2 _g133467_))
                ((##fx= _g133468_ 4)
                 (apply gx#core-bind-feature!__% _g133467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g133467_))))))))
