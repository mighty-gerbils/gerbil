(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1734225194)
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
      (lambda _%$args129962%_
        (apply make-instance gx#module-import::t _%$args129962%_)))
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
      (lambda _%$args129959%_
        (apply make-instance gx#module-export::t _%$args129959%_)))
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
      (lambda _%$args129956%_
        (apply make-instance gx#import-set::t _%$args129956%_)))
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
      (lambda _%$args129953%_
        (apply make-instance gx#export-set::t _%$args129953%_)))
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
      (lambda _%$args129950%_
        (apply make-instance gx#import-expander::t _%$args129950%_)))
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
      (lambda _%$args129947%_
        (apply make-instance gx#export-expander::t _%$args129947%_)))
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
      (lambda _%$args129944%_
        (apply make-instance gx#import-export-expander::t _%$args129944%_)))
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
      (lambda (_%path129941%_ _%fun129942%_)
        (call-with-input-file
         (cons 'path: (cons _%path129941%_ gx#source-file-settings))
         _%fun129942%_)))
    (define gx#module-context:::init!
      (lambda (_%self126393129922%_
               _%id129924%_
               _%super129925%_
               _%ns129926%_
               _%path129927%_)
        (let* ((_%self129929%_ _%self126393129922%_)
               (_%self129931%_ _%self129929%_))
          (if (##fx< '11 (##structure-length _%self129931%_))
              (begin
                (##unchecked-structure-set!
                 _%self129931%_
                 _%id129924%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129931%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129931%_
                 _%super129925%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129931%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self129931%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self129931%_
                 _%ns129926%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129931%_
                 _%path129927%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129931%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self129931%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self129931%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self129931%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129931%_
                     '11
                     (##vector-length _%self129931%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self126394129753%_ _%ctx129755%_ _%root129756%_)
        (let* ((_%self129758%_ _%self126394129753%_)
               (_%self129760%_ _%self129758%_)
               (_%super129776%_
                (let ((_%$e129770%_ _%root129756%_))
                  (if _%$e129770%_
                      _%$e129770%_
                      (let ((_%$e129773%_ (gx#core-context-root__0)))
                        (if _%$e129773%_
                            _%$e129773%_
                            (let ((__obj130006
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor130007
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj130006
                                      ':init!)))
                                (if __constructor130007
                                    (__constructor130007 __obj130006)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj130006)))))))
          (if _%ctx129755%_
              (let ((_%id129779%_
                     (##structure-ref
                      _%ctx129755%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path129780%_
                     (##structure-ref
                      _%ctx129755%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in129781%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx129755%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e129782%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx129755%_)))))
                (if (##fx< '8 (##structure-length _%self129760%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self129760%_
                       _%id129779%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129760%_
                       (make-hash-table-eq 'size: (##length _%in129781%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129760%_
                       _%super129776%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129760%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129760%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129760%_
                       _%path129780%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129760%_
                       _%in129781%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129760%_
                       _%e129782%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self129760%_
                           '8
                           (##vector-length _%self129760%_)))
                (##for-each
                 (lambda (_%g129783129785%_)
                   (gx#core-bind-weak-import!__%
                    _%g129783129785%_
                    _%self129760%_))
                 _%in129781%_))
              (if (##fx< '8 (##structure-length _%self129760%_))
                  (begin
                    (##unchecked-structure-set! _%self129760%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self129760%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self129760%_
                     _%super129776%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self129760%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self129760%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self129760%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self129760%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self129760%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self129760%_
                         '8
                         (##vector-length _%self129760%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self126394129791%_ _%ctx129792%_)
        (let ((_%root129794%_ '#f))
          (gx#prelude-context:::init!__%
           _%self126394129791%_
           _%ctx129792%_
           _%root129794%_))))
    (define gx#prelude-context:::init!
      (lambda _g130013_
        (let ((_g130012_ (##length _g130013_)))
          (cond ((##fx= _g130012_ 2)
                 (apply gx#prelude-context:::init!__0 _g130013_))
                ((##fx= _g130012_ 3)
                 (apply gx#prelude-context:::init!__% _g130013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g130013_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self129627%_ _%e129628%_)
        (if (##fx< '3 (##structure-length _%self129627%_))
            (begin
              (##unchecked-structure-set!
               _%self129627%_
               _%e129628%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self129627%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self129627%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self129627%_
                   '3
                   (##vector-length _%self129627%_)))))
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
      (lambda (_%g129253129256%_ _%g129254129258%_)
        (gx#core-apply-user-expander__%
         _%g129253129256%_
         _%g129254129258%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g129124129127%_ _%g129125129129%_)
        (gx#core-apply-user-expander__%
         _%g129124129127%_
         _%g129125129129%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx128995%_)
        (let* ((_%path128997%_
                (##structure-ref _%ctx128995%_ '7 gx#module-context::t '#f))
               (_%path128999%_
                (if (pair? _%path128997%_)
                    (##last _%path128997%_)
                    _%path128997%_)))
          (if (string? _%path128999%_) _%path128999%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path128971%_ _%reload?128972%_ _%eval?128973%_)
        (let ((_%ctx128975%_
               ((gx#current-expander-module-import)
                _%path128971%_
                _%reload?128972%_)))
          (if (and _%ctx128975%_ _%eval?128973%_)
              (gx#eval-module _%ctx128975%_)
              '#!void)
          _%ctx128975%_)))
    (define gx#import-module__0
      (lambda (_%path128980%_)
        (let* ((_%reload?128982%_ '#f) (_%eval?128984%_ '#f))
          (gx#import-module__%
           _%path128980%_
           _%reload?128982%_
           _%eval?128984%_))))
    (define gx#import-module__1
      (lambda (_%path128986%_ _%reload?128987%_)
        (let ((_%eval?128989%_ '#f))
          (gx#import-module__%
           _%path128986%_
           _%reload?128987%_
           _%eval?128989%_))))
    (define gx#import-module
      (lambda _g130015_
        (let ((_g130014_ (##length _g130015_)))
          (cond ((##fx= _g130014_ 1) (apply gx#import-module__0 _g130015_))
                ((##fx= _g130014_ 2) (apply gx#import-module__1 _g130015_))
                ((##fx= _g130014_ 3) (apply gx#import-module__% _g130015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g130015_))))))
    (define gx#eval-module
      (lambda (_%mod128968%_)
        ((gx#current-expander-module-eval) _%mod128968%_)))
    (define gx#core-eval-module
      (lambda (_%obj128948%_)
        (letrec ((_%force-e128950%_
                  (lambda (_%getf128964%_ _%e128965%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf128964%_ _%e128965%_)))
                     gx#current-expander-context
                     _%e128965%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur128952%_ ((_%e128954%_ _%obj128948%_))
            (if (##structure-instance-of? _%e128954%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e128957%_
                         (gx#core-context-prelude__% _%e128954%_)))
                    (if _%$e128957%_ (_%recur128952%_ _%$e128957%_) '#!void))
                  (_%force-e128950%_ gx#module-context-e _%e128954%_))
                (if (##structure-instance-of?
                     _%e128954%_
                     'gx#prelude-context::t)
                    (_%force-e128950%_ gx#prelude-context-e _%e128954%_)
                    (if (gx#stx-string? _%e128954%_)
                        (_%recur128952%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e128954%_)))
                        (if (gx#core-library-module-path? _%e128954%_)
                            (_%recur128952%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e128954%_)))
                            (error '"cannot eval module" _%obj128948%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx128928%_)
        (let _%lp128930%_ ((_%e128932%_ _%ctx128928%_))
          (if (or (##structure-instance-of? _%e128932%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e128932%_ 'gx#local-context::t))
              (_%lp128930%_ (##unchecked-structure-ref _%e128932%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e128932%_ 'gx#prelude-context::t)
                  _%e128932%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx128944%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx128944%_))))
    (define gx#core-context-prelude
      (lambda _g130017_
        (let ((_g130016_ (##length _g130017_)))
          (cond ((##fx= _g130016_ 0)
                 (apply gx#core-context-prelude__0 _g130017_))
                ((##fx= _g130016_ 1)
                 (apply gx#core-context-prelude__% _g130017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g130017_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx128919%_)
        (let ((_%$e128921%_ (__hash-get gx#__module-registry _%ctx128919%_)))
          (if _%$e128921%_
              _%$e128921%_
              (let ((_%pre128925%_
                     (let ((__obj130008
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
                        __obj130008
                        _%ctx128919%_)
                       __obj130008)))
                (__hash-put! gx#__module-registry _%ctx128919%_ _%pre128925%_)
                _%pre128925%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath128791%_ _%reload?128792%_)
        (letrec ((_%import-source128794%_
                  (lambda (_%path128883%_)
                    (if (member _%path128883%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path128883%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g130018_ (gx#core-read-module _%path128883%_)))
                         (begin
                           (let ((_g130019_
                                  (if (##values? _g130018_)
                                      (##values-length _g130018_)
                                      1)))
                             (if (not (##fx= _g130019_ 4))
                                 (error "Context expects 4 values" _g130019_)))
                           (let ((_%pre128886%_ (##values-ref _g130018_ 0))
                                 (_%id128887%_ (##values-ref _g130018_ 1))
                                 (_%ns128888%_ (##values-ref _g130018_ 2))
                                 (_%body128889%_ (##values-ref _g130018_ 3)))
                             (let* ((_%prelude128899%_
                                     (if (##structure-instance-of?
                                          _%pre128886%_
                                          'gx#prelude-context::t)
                                         _%pre128886%_
                                         (if (##structure-instance-of?
                                              _%pre128886%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre128886%_)
                                             (if (string? _%pre128886%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre128886%_))
                                                 (if (not _%pre128886%_)
                                                     (let ((_%$e128895%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e128895%_
                                                           _%$e128895%_
                                                           (let ((__obj130009
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
                     (gx#prelude-context:::init!__0 __obj130009 '#f)
                     __obj130009)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath128791%_
                                                            _%pre128886%_))))))
                                    (_%ctx128901%_
                                     (let ((__obj130010
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
                                        __obj130010
                                        _%id128887%_
                                        _%prelude128899%_
                                        _%ns128888%_
                                        _%path128883%_)
                                       __obj130010))
                                    (_%body128903%_
                                     (gx#core-expand-module-begin
                                      _%body128889%_
                                      _%ctx128901%_))
                                    (_%body128905%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body128903%_)
                                      _%path128883%_
                                      _%ctx128901%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx128901%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body128905%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx128901%_
                                _%body128905%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path128883%_
                                _%ctx128901%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id128887%_
                                _%ctx128901%_)
                               _%ctx128901%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path128883%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule128795%_
                  (lambda (_%rpath128811%_)
                    (let* ((_%rpath128812128819%_ _%rpath128811%_)
                           (_%E128814128823%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath128812128819%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K128815128871%_
                            (lambda (_%refs128826%_ _%origin128827%_)
                              (let ((_%ctx128829%_
                                     (if _%origin128827%_
                                         (gx#core-import-module__%
                                          _%origin128827%_
                                          _%reload?128792%_)
                                         (gx#current-expander-context))))
                                (let _%lp128831%_ ((_%rest128833%_
                                                    _%refs128826%_)
                                                   (_%ctx128834%_
                                                    _%ctx128829%_))
                                  (let* ((_%rest128835128843%_ _%rest128833%_)
                                         (_%else128837128851%_
                                          (lambda () _%ctx128834%_))
                                         (_%K128839128859%_
                                          (lambda (_%rest128854%_ _%id128855%_)
                                            (let ((_%bind128857%_
                                                   (gx#resolve-identifier__%
                                                    _%id128855%_
                                                    '0
                                                    _%ctx128834%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind128857%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind128857%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp128831%_
                                                   _%rest128854%_
                                                   (##unchecked-structure-ref
                                                    _%bind128857%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath128811%_
                                                         _%id128855%_
                                                         _%bind128857%_))))))
                                    (if (pair? _%rest128835128843%_)
                                        (let ((_%hd128840128862%_
                                               (##car _%rest128835128843%_))
                                              (_%tl128841128864%_
                                               (##cdr _%rest128835128843%_)))
                                          (let* ((_%id128867%_
                                                  _%hd128840128862%_)
                                                 (_%rest128869%_
                                                  _%tl128841128864%_))
                                            (_%K128839128859%_
                                             _%rest128869%_
                                             _%id128867%_)))
                                        (_%else128837128851%_))))))))
                      (if (pair? _%rpath128812128819%_)
                          (let ((_%hd128816128874%_
                                 (##car _%rpath128812128819%_))
                                (_%tl128817128876%_
                                 (##cdr _%rpath128812128819%_)))
                            (let* ((_%origin128879%_ _%hd128816128874%_)
                                   (_%refs128881%_ _%tl128817128876%_))
                              (_%K128815128871%_
                               _%refs128881%_
                               _%origin128879%_)))
                          (_%E128814128823%_))))))
          (let ((_%$e128797%_
                 (if (not _%reload?128792%_)
                     (__hash-get gx#__module-registry _%rpath128791%_)
                     '#f)))
            (if _%$e128797%_
                _%$e128797%_
                (if (list? _%rpath128791%_)
                    (_%import-submodule128795%_ _%rpath128791%_)
                    (if (gx#core-library-module-path? _%rpath128791%_)
                        (let ((_%ctx128802%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath128791%_)
                                _%reload?128792%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath128791%_
                           _%ctx128802%_)
                          _%ctx128802%_)
                        (let* ((_%npath128805%_
                                (path-normalize _%rpath128791%_))
                               (_%$e128807%_
                                (if (not _%reload?128792%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath128805%_)
                                    '#f)))
                          (if _%$e128807%_
                              _%$e128807%_
                              (_%import-source128794%_
                               _%npath128805%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath128912%_)
        (let ((_%reload?128914%_ '#f))
          (gx#core-import-module__% _%rpath128912%_ _%reload?128914%_))))
    (define gx#core-import-module
      (lambda _g130021_
        (let ((_g130020_ (##length _g130021_)))
          (cond ((##fx= _g130020_ 1)
                 (apply gx#core-import-module__0 _g130021_))
                ((##fx= _g130020_ 2)
                 (apply gx#core-import-module__% _g130021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g130021_))))))
    (define gx#core-read-module
      (lambda (_%path128780%_)
        (__with-catch
         (lambda (_%exn128782%_)
           (if (and (datum-parsing-exception? _%exn128782%_)
                    (eq? (datum-parsing-exception-filepos _%exn128782%_) '0))
               (gx#core-read-module/lang _%path128780%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path128780%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g128784128786%_)
                      (display-exception__% _%exn128782%_ _%g128784128786%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path128780%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path128632%_)
        (let _%lp128634%_ ((_%body128636%_
                            (read-syntax-from-file _%path128632%_))
                           (_%pre128637%_ '#f)
                           (_%ns128638%_ '#f)
                           (_%pkg128639%_ '#f))
          (let* ((_%e128640128664%_ _%body128636%_)
                 (_%E128656128690%_
                  (lambda ()
                    (let ((_g130022_
                           (if _%pkg128639%_
                               (values _%pre128637%_
                                       _%ns128638%_
                                       _%pkg128639%_)
                               (gx#core-read-module-package
                                _%path128632%_
                                _%pre128637%_
                                _%ns128638%_))))
                      (begin
                        (let ((_g130023_
                               (if (##values? _g130022_)
                                   (##values-length _g130022_)
                                   1)))
                          (if (not (##fx= _g130023_ 3))
                              (error "Context expects 3 values" _g130023_)))
                        (let ((_%pre128668%_ (##values-ref _g130022_ 0))
                              (_%ns128669%_ (##values-ref _g130022_ 1))
                              (_%pkg128670%_ (##values-ref _g130022_ 2)))
                          (let* ((_%prelude128676%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre128668%_)
                                      (gx#syntax-local-e__0 _%pre128668%_)
                                      (if (gx#core-library-module-path?
                                           _%pre128668%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre128668%_)
                                          (if (gx#stx-string? _%pre128668%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre128668%_
                                               _%path128632%_)
                                              (gx#stx-e _%pre128668%_)))))
                                 (_%path-id128678%_
                                  (gx#core-module-path->namespace
                                   _%path128632%_))
                                 (_%pkg-id128680%_
                                  (if _%pkg128670%_
                                      (##string-append
                                       _%pkg128670%_
                                       '"/"
                                       _%path-id128678%_)
                                      _%path-id128678%_))
                                 (_%module-id128682%_
                                  (##string->symbol _%pkg-id128680%_))
                                 (_%module-ns128687%_
                                  (if (eq? _%ns128669%_ '#!void)
                                      '#f
                                      (let ((_%$e128684%_ _%ns128669%_))
                                        (if _%$e128684%_
                                            _%$e128684%_
                                            _%pkg-id128680%_)))))
                            (values _%prelude128676%_
                                    _%module-id128682%_
                                    _%module-ns128687%_
                                    _%body128636%_)))))))
                 (_%E128649128722%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128640128664%_)
                        (let ((_%e128657128694%_
                               (gx#syntax-e _%e128640128664%_)))
                          (let ((_%hd128658128697%_ (##car _%e128657128694%_))
                                (_%tl128659128699%_ (##cdr _%e128657128694%_)))
                            (if (eq? (gx#stx-e _%hd128658128697%_) 'package:)
                                (if (gx#stx-pair? _%tl128659128699%_)
                                    (let ((_%e128660128702%_
                                           (gx#syntax-e _%tl128659128699%_)))
                                      (let ((_%hd128661128705%_
                                             (##car _%e128660128702%_))
                                            (_%tl128662128707%_
                                             (##cdr _%e128660128702%_)))
                                        (let* ((_%pkg128710%_
                                                _%hd128661128705%_)
                                               (_%rest128712%_
                                                _%tl128662128707%_)
                                               (_%pkg128720%_
                                                (if (gx#identifier?
                                                     _%pkg128710%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg128710%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg128710%_)
                                                            (gx#stx-false?
                                                             _%pkg128710%_))
                                                        (gx#stx-e
                                                         _%pkg128710%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg128710%_)))))
                                          (_%lp128634%_
                                           _%rest128712%_
                                           _%pre128637%_
                                           _%ns128638%_
                                           _%pkg128720%_))))
                                    (_%E128656128690%_))
                                (_%E128656128690%_))))
                        (_%E128656128690%_))))
                 (_%E128642128752%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128640128664%_)
                        (let ((_%e128650128726%_
                               (gx#syntax-e _%e128640128664%_)))
                          (let ((_%hd128651128729%_ (##car _%e128650128726%_))
                                (_%tl128652128731%_ (##cdr _%e128650128726%_)))
                            (if (eq? (gx#stx-e _%hd128651128729%_) 'namespace:)
                                (if (gx#stx-pair? _%tl128652128731%_)
                                    (let ((_%e128653128734%_
                                           (gx#syntax-e _%tl128652128731%_)))
                                      (let ((_%hd128654128737%_
                                             (##car _%e128653128734%_))
                                            (_%tl128655128739%_
                                             (##cdr _%e128653128734%_)))
                                        (let* ((_%ns128742%_
                                                _%hd128654128737%_)
                                               (_%rest128744%_
                                                _%tl128655128739%_)
                                               (_%ns128750%_
                                                (if (gx#identifier?
                                                     _%ns128742%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns128742%_))
                                                    (if (gx#stx-string?
                                                         _%ns128742%_)
                                                        (gx#stx-e _%ns128742%_)
                                                        (if (gx#stx-false?
                                                             _%ns128742%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns128742%_))))))
                                          (_%lp128634%_
                                           _%rest128744%_
                                           _%pre128637%_
                                           _%ns128750%_
                                           _%pkg128639%_))))
                                    (_%E128649128722%_))
                                (_%E128649128722%_))))
                        (_%E128649128722%_))))
                 (_%E128641128776%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128640128664%_)
                        (let ((_%e128643128756%_
                               (gx#syntax-e _%e128640128664%_)))
                          (let ((_%hd128644128759%_ (##car _%e128643128756%_))
                                (_%tl128645128761%_ (##cdr _%e128643128756%_)))
                            (if (eq? (gx#stx-e _%hd128644128759%_) 'prelude:)
                                (if (gx#stx-pair? _%tl128645128761%_)
                                    (let ((_%e128646128764%_
                                           (gx#syntax-e _%tl128645128761%_)))
                                      (let ((_%hd128647128767%_
                                             (##car _%e128646128764%_))
                                            (_%tl128648128769%_
                                             (##cdr _%e128646128764%_)))
                                        (let* ((_%prelude128772%_
                                                _%hd128647128767%_)
                                               (_%rest128774%_
                                                _%tl128648128769%_))
                                          (_%lp128634%_
                                           _%rest128774%_
                                           _%prelude128772%_
                                           _%ns128638%_
                                           _%pkg128639%_))))
                                    (_%E128642128752%_))
                                (_%E128642128752%_))))
                        (_%E128642128752%_)))))
            (_%E128641128776%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path128454%_)
        (letrec ((_%default-read-module-body128456%_
                  (lambda (_%inp128624%_)
                    (let _%lp128626%_ ((_%body128628%_ '()))
                      (let ((_%next128630%_ (read-syntax__% _%inp128624%_)))
                        (if (eof-object? _%next128630%_)
                            (reverse _%body128628%_)
                            (_%lp128626%_
                             (cons _%next128630%_ _%body128628%_)))))))
                 (_%read-body128457%_
                  (lambda (_%inp128542%_
                           _%pre128543%_
                           _%ns128544%_
                           _%pkg128545%_
                           _%args128546%_)
                    (let ((_g130024_
                           (if _%pkg128545%_
                               (values _%pre128543%_
                                       _%ns128544%_
                                       _%pkg128545%_)
                               (gx#core-read-module-package
                                _%path128454%_
                                _%pre128543%_
                                _%ns128544%_))))
                      (begin
                        (let ((_g130025_
                               (if (##values? _g130024_)
                                   (##values-length _g130024_)
                                   1)))
                          (if (not (##fx= _g130025_ 3))
                              (error "Context expects 3 values" _g130025_)))
                        (let ((_%pre128548%_ (##values-ref _g130024_ 0))
                              (_%ns128549%_ (##values-ref _g130024_ 1))
                              (_%pkg128550%_ (##values-ref _g130024_ 2)))
                          (let* ((_%prelude128552%_
                                  (gx#import-module__0 _%pre128548%_))
                                 (_%read-module-body128607%_
                                  (let ((_%$e128598%_
                                         (__find (lambda (_%e128553128555%_)
                                                   (let* ((_%g128557128567%_
                                                           _%e128553128555%_)
                                                          (_%else128559128575%_
                                                           (lambda () '#f))
                                                          (_%K128561128579%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g128557128567%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e128562128582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g128557128567%_
                          '1
                          '#f
                          '#f))
                        (_%e128563128585%_
                         (##unchecked-structure-ref
                          _%g128557128567%_
                          '2
                          '#f
                          '#f))
                        (_%e128564128588%_
                         (##unchecked-structure-ref
                          _%g128557128567%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e128564128588%_ '1)
                       (let ((_%e128565128591%_
                              (##unchecked-structure-ref
                               _%g128557128567%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g128593128595%_)
                                (eq? _%g128593128595%_ 'read-module-body))
                              _%e128565128591%_)
                             (_%K128561128579%_)
                             (_%else128559128575%_)))
                       (_%else128559128575%_)))
                 (_%else128559128575%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude128552%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e128598%_
                                        ((lambda (_%xport128601%_)
                                           (let ((_%proc128604%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport128601%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc128604%_)
                                                 _%proc128604%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path128454%_
                                                  _%pre128548%_
                                                  _%proc128604%_))))
                                         _%$e128598%_)
                                        _%default-read-module-body128456%_)))
                                 (_%path-id128609%_
                                  (gx#core-module-path->namespace
                                   _%path128454%_))
                                 (_%pkg-id128611%_
                                  (if _%pkg128550%_
                                      (##string-append
                                       _%pkg128550%_
                                       '"/"
                                       _%path-id128609%_)
                                      _%path-id128609%_))
                                 (_%module-id128613%_
                                  (##string->symbol _%pkg-id128611%_))
                                 (_%module-ns128618%_
                                  (let ((_%$e128615%_ _%ns128549%_))
                                    (if _%$e128615%_
                                        _%$e128615%_
                                        _%pkg-id128611%_)))
                                 (_%body128621%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body128607%_
                                      _%inp128542%_))
                                   gx#current-module-reader-path
                                   _%path128454%_
                                   gx#current-module-reader-args
                                   _%args128546%_)))
                            (values _%prelude128552%_
                                    _%module-id128613%_
                                    _%module-ns128618%_
                                    _%body128621%_)))))))
                 (_%string-e128458%_
                  (lambda (_%obj128536%_ _%what128537%_)
                    (if (string? _%obj128536%_)
                        _%obj128536%_
                        (if (symbol? _%obj128536%_)
                            (##symbol->string _%obj128536%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what128537%_)
                             _%path128454%_
                             _%obj128536%_)))))
                 (_%read-lang-args128459%_
                  (lambda (_%inp128491%_ _%args128492%_)
                    (let* ((_%args128493128501%_ _%args128492%_)
                           (_%else128495128509%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path128454%_)))
                           (_%K128497128524%_
                            (lambda (_%args128512%_ _%prelude128513%_)
                              (let* ((_%pkg128515%_
                                      (pgetq__0 'package: _%args128512%_))
                                     (_%pkg128517%_
                                      (if _%pkg128515%_
                                          (_%string-e128458%_
                                           _%pkg128515%_
                                           '"package")
                                          '#f))
                                     (_%ns128519%_
                                      (pgetq__0 'namespace: _%args128512%_))
                                     (_%ns128521%_
                                      (if _%ns128519%_
                                          (_%string-e128458%_
                                           _%ns128519%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body128457%_
                                 _%inp128491%_
                                 _%prelude128513%_
                                 _%ns128521%_
                                 _%pkg128517%_
                                 _%args128512%_)))))
                      (if (pair? _%args128493128501%_)
                          (let ((_%hd128498128527%_
                                 (##car _%args128493128501%_))
                                (_%tl128499128529%_
                                 (##cdr _%args128493128501%_)))
                            (let* ((_%prelude128532%_ _%hd128498128527%_)
                                   (_%args128534%_ _%tl128499128529%_))
                              (_%K128497128524%_
                               _%args128534%_
                               _%prelude128532%_)))
                          (_%else128495128509%_)))))
                 (_%read-lang128460%_
                  (lambda (_%inp128465%_)
                    (let* ((_%head128467%_ (read-line _%inp128465%_))
                           (_%$e128469%_
                            (string-index__0 _%head128467%_ '#\space)))
                      (if _%$e128469%_
                          ((lambda (_%ix128472%_)
                             (let ((_%lang128474%_
                                    (substring
                                     _%head128467%_
                                     '0
                                     _%ix128472%_)))
                               (if (equal? _%lang128474%_ '"#lang")
                                   (let* ((_%rest128476%_
                                           (substring
                                            _%head128467%_
                                            (##fx+ _%ix128472%_ '1)
                                            (string-length _%head128467%_)))
                                          (_%args128487%_
                                           (__with-catch
                                            (lambda (_%g128477128479%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path128454%_
                                               _%g128477128479%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest128476%_
                                               (lambda (_%g128482128484%_)
                                                 (read-all
                                                  _%g128482128484%_
                                                  read)))))))
                                     (_%read-lang-args128459%_
                                      _%inp128465%_
                                      _%args128487%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path128454%_))))
                           _%$e128469%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path128454%_)))))
                 (_%read-e128461%_
                  (lambda (_%inp128463%_)
                    (if (eq? (peek-char _%inp128463%_) '#\#)
                        (_%read-lang128460%_ _%inp128463%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path128454%_)))))
          (gx#call-with-input-source-file _%path128454%_ _%read-e128461%_))))
    (define gx#core-read-module-package
      (lambda (_%path128402%_ _%pre128403%_ _%ns128404%_)
        (letrec ((_%string-e128406%_
                  (lambda (_%e128449%_)
                    (if (symbol? _%e128449%_)
                        (##symbol->string _%e128449%_)
                        (if (string? _%e128449%_)
                            _%e128449%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e128449%_))))))
          (let _%lp128408%_ ((_%dir128410%_ (path-directory _%path128402%_))
                             (_%pkg-path128411%_ '()))
            (let ((_%gerbil.pkg128413%_
                   (path-expand '"gerbil.pkg" _%dir128410%_)))
              (if (##file-exists? _%gerbil.pkg128413%_)
                  (let ((_%plist128415%_
                         (gx#core-library-package-plist__% _%dir128410%_ '#t)))
                    (if (null? _%plist128415%_)
                        (let ((_%pkg128418%_
                               (if (null? _%pkg-path128411%_)
                                   '#f
                                   (string-join _%pkg-path128411%_ '"/"))))
                          (values _%pre128403%_ _%ns128404%_ _%pkg128418%_))
                        (if (list? _%plist128415%_)
                            (let* ((_%root128421%_
                                    (pgetq__0 'package: _%plist128415%_))
                                   (_%pkg128425%_
                                    (let ((_%pkg-path128423%_
                                           (if _%root128421%_
                                               (cons (_%string-e128406%_
                                                      _%root128421%_)
                                                     _%pkg-path128411%_)
                                               _%pkg-path128411%_)))
                                      (if (null? _%pkg-path128423%_)
                                          '#f
                                          (string-join
                                           _%pkg-path128423%_
                                           '"/"))))
                                   (_%ns128432%_
                                    (let ((_%ns128430%_
                                           (let ((_%$e128427%_ _%ns128404%_))
                                             (if _%$e128427%_
                                                 _%$e128427%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist128415%_)))))
                                      (if _%ns128430%_
                                          (_%string-e128406%_ _%ns128430%_)
                                          '#f)))
                                   (_%pre128437%_
                                    (let ((_%$e128434%_ _%pre128403%_))
                                      (if _%$e128434%_
                                          _%$e128434%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist128415%_)))))
                              (values _%pre128437%_
                                      _%ns128432%_
                                      _%pkg128425%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist128415%_))))
                  (let ((_%dir*128441%_
                         (path-strip-trailing-directory-separator
                          _%dir128410%_)))
                    (if (or (__string-empty? _%dir*128441%_)
                            (equal? _%dir128410%_ _%dir*128441%_))
                        (values _%pre128403%_ _%ns128404%_ '#f)
                        (let ((_%xpath128446%_
                               (path-strip-directory _%dir*128441%_))
                              (_%xdir128447%_ (path-directory _%dir*128441%_)))
                          (_%lp128408%_
                           _%xdir128447%_
                           (cons _%xpath128446%_ _%pkg-path128411%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path128400%_)
        (path-strip-extension (path-strip-directory _%path128400%_))))
    (define gx#core-module-path->id
      (lambda (_%path128398%_)
        (##string->symbol (gx#core-module-path->namespace _%path128398%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path128377%_ _%rel128378%_)
        (let* ((_%path128380%_ (gx#stx-e _%stx-path128377%_))
               (_%path128382%_
                (if (__string-empty? (path-extension _%path128380%_))
                    (##string-append _%path128380%_ '".ss")
                    _%path128380%_)))
          (gx#core-resolve-path__%
           _%path128382%_
           (let ((_%$e128385%_ (gx#stx-source _%stx-path128377%_)))
             (if _%$e128385%_ _%$e128385%_ _%rel128378%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path128391%_)
        (let ((_%rel128393%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path128391%_ _%rel128393%_))))
    (define gx#core-resolve-module-path
      (lambda _g130027_
        (let ((_g130026_ (##length _g130027_)))
          (cond ((##fx= _g130026_ 1)
                 (apply gx#core-resolve-module-path__0 _g130027_))
                ((##fx= _g130026_ 2)
                 (apply gx#core-resolve-module-path__% _g130027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g130027_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath128262%_)
        (let* ((_%spath128264%_ (symbol->string (gx#stx-e _%libpath128262%_)))
               (_%spath128266%_
                (substring
                 _%spath128264%_
                 '1
                 (##string-length _%spath128264%_)))
               (_%ext128268%_ (path-extension _%spath128266%_))
               (_%ssi128270%_
                (if (__string-empty? _%ext128268%_)
                    (##string-append _%spath128266%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath128266%_)
                     '".ssi")))
               (_%srcs128274%_
                (if (__string-empty? _%ext128268%_)
                    (##map (lambda (_%ext128272%_)
                             (string-append _%spath128266%_ _%ext128272%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath128266%_ '()))))
          (let _%lp128277%_ ((_%rest128279%_ (load-path)))
            (let* ((_%rest128280128289%_ _%rest128279%_)
                   (_%E128283128293%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest128280128289%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K128285128364%_
                     (lambda (_%rest128304%_ _%dir128305%_)
                       (letrec ((_%resolve128307%_
                                 (lambda (_%ssi128320%_ _%srcs128321%_)
                                   (let ((_%compiled-path128323%_
                                          (path-expand
                                           _%ssi128320%_
                                           _%dir128305%_)))
                                     (if (##file-exists?
                                          _%compiled-path128323%_)
                                         (path-normalize
                                          _%compiled-path128323%_)
                                         (let _%lpr128325%_ ((_%rest-src128327%_
                                                              _%srcs128321%_))
                                           (let* ((_%rest-src128328128336%_
                                                   _%rest-src128327%_)
                                                  (_%else128330128344%_
                                                   (lambda ()
                                                     (_%lp128277%_
                                                      _%rest128304%_)))
                                                  (_%K128332128352%_
                                                   (lambda (_%rest-src128347%_
                                                            _%src128348%_)
                                                     (let ((_%src-path128350%_
                                                            (path-expand
                                                             _%src128348%_
                                                             _%dir128305%_)))
                                                       (if (##file-exists?
                                                            _%src-path128350%_)
                                                           (path-normalize
                                                            _%src-path128350%_)
                                                           (_%lpr128325%_
                                                            _%rest-src128347%_))))))
                                             (if (pair? _%rest-src128328128336%_)
                                                 (let ((_%hd128333128355%_
                                                        (##car _%rest-src128328128336%_))
                                                       (_%tl128334128357%_
                                                        (##cdr _%rest-src128328128336%_)))
                                                   (let* ((_%src128360%_
                                                           _%hd128333128355%_)
                                                          (_%rest-src128362%_
                                                           _%tl128334128357%_))
                                                     (_%K128332128352%_
                                                      _%rest-src128362%_
                                                      _%src128360%_)))
                                                 (_%else128330128344%_)))))))))
                         (let ((_%$e128309%_
                                (gx#core-library-package-path-prefix
                                 _%dir128305%_)))
                           (if _%$e128309%_
                               ((lambda (_%prefix128312%_)
                                  (if (string-prefix?
                                       _%prefix128312%_
                                       _%spath128266%_)
                                      (let ((_%ssi128316%_
                                             (substring
                                              _%ssi128270%_
                                              (string-length _%prefix128312%_)
                                              (##string-length _%ssi128270%_)))
                                            (_%srcs128317%_
                                             (##map (lambda (_%src128314%_)
                                                      (substring
                                                       _%src128314%_
                                                       (string-length
                                                        _%prefix128312%_)
                                                       (string-length
                                                        _%src128314%_)))
                                                    _%srcs128274%_)))
                                        (_%resolve128307%_
                                         _%ssi128316%_
                                         _%srcs128317%_))
                                      (_%lp128277%_ _%rest128304%_)))
                                _%$e128309%_)
                               (_%resolve128307%_
                                _%ssi128270%_
                                _%srcs128274%_))))))
                    (_%K128284128298%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath128262%_))))
                (let ((_%try-match128282128301%_
                       (lambda ()
                         (if (null? _%rest128280128289%_)
                             (_%K128284128298%_)
                             (_%E128283128293%_)))))
                  (if (pair? _%rest128280128289%_)
                      (let ((_%tl128287128369%_ (##cdr _%rest128280128289%_))
                            (_%hd128286128367%_ (##car _%rest128280128289%_)))
                        (let ((_%dir128372%_ _%hd128286128367%_)
                              (_%rest128374%_ _%tl128287128369%_))
                          (_%K128285128364%_ _%rest128374%_ _%dir128372%_)))
                      (_%try-match128282128301%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath128230%_)
        (letrec ((_%resolve128232%_
                  (lambda (_%path128253%_ _%base128254%_)
                    (let ((_%$e128256%_
                           (string-rindex__0 _%base128254%_ '#\/)))
                      (if _%$e128256%_
                          ((lambda (_%idx128259%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base128254%_ '0 _%idx128259%_)
                                '"/"
                                _%path128253%_))))
                           _%$e128256%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path128253%_))))))))
          (let ((_%spath128234%_ (symbol->string (gx#stx-e _%modpath128230%_)))
                (_%mod128235%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod128235%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath128230%_))
            (let ((_%mpath128237%_
                   (symbol->string
                    (##structure-ref
                     _%mod128235%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp128239%_ ((_%spath128241%_ _%spath128234%_)
                                 (_%mpath128242%_ _%mpath128237%_))
                (if (string-prefix? '"../" _%spath128241%_)
                    (let ((_%$e128245%_
                           (string-rindex__0 _%mpath128242%_ '#\/)))
                      (if _%$e128245%_
                          ((lambda (_%idx128248%_)
                             (_%lp128239%_
                              (substring
                               _%spath128241%_
                               '3
                               (string-length _%spath128241%_))
                              (substring _%mpath128242%_ '0 _%idx128248%_)))
                           _%$e128245%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath128230%_)))
                    (if (string-prefix? '"./" _%spath128241%_)
                        (_%lp128239%_
                         (substring
                          _%spath128241%_
                          '2
                          (string-length _%spath128241%_))
                         _%mpath128242%_)
                        (_%resolve128232%_
                         _%spath128241%_
                         _%mpath128242%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir128222%_)
        (let ((_%$e128224%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir128222%_))))
          (if _%$e128224%_
              ((lambda (_%pkg128227%_)
                 (##string-append (symbol->string _%pkg128227%_) '"/"))
               _%$e128224%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir128192%_ _%exists?128193%_)
        (let ((_%$e128195%_ (__hash-get gx#__module-pkg-cache _%dir128192%_)))
          (if _%$e128195%_
              _%$e128195%_
              (let* ((_%gerbil.pkg128199%_
                      (path-expand '"gerbil.pkg" _%dir128192%_))
                     (_%plist128209%_
                      (if (or _%exists?128193%_
                              (##file-exists? _%gerbil.pkg128199%_))
                          (let ((_%e128204%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg128199%_
                                  read)))
                            (if (eof-object? _%e128204%_)
                                '()
                                (if (list? _%e128204%_)
                                    _%e128204%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg128199%_
                                     _%e128204%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir128192%_
                 _%plist128209%_)
                _%plist128209%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir128215%_)
        (let ((_%exists?128217%_ '#f))
          (gx#core-library-package-plist__% _%dir128215%_ _%exists?128217%_))))
    (define gx#core-library-package-plist
      (lambda _g130029_
        (let ((_g130028_ (##length _g130029_)))
          (cond ((##fx= _g130028_ 1)
                 (apply gx#core-library-package-plist__0 _g130029_))
                ((##fx= _g130028_ 2)
                 (apply gx#core-library-package-plist__% _g130029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g130029_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx128189%_)
        (gx#core-special-module-path? _%stx128189%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx128187%_)
        (gx#core-special-module-path? _%stx128187%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx128182%_ _%char128183%_)
        (if (gx#identifier? _%stx128182%_)
            (if (interned-symbol? (gx#stx-e _%stx128182%_))
                (let ((_%str128185%_
                       (symbol->string (gx#stx-e _%stx128182%_))))
                  (if (##fx> (##string-length _%str128185%_) '1)
                      (eq? (string-ref _%str128185%_ '0) _%char128183%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx128176%_)
        (gx#core-bound-identifier?__%
         _%stx128176%_
         (lambda (_%g128177128179%_)
           (gx#expander-binding?__% _%g128177128179%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx128170%_)
        (gx#core-bound-identifier?__%
         _%stx128170%_
         (lambda (_%g128171128173%_)
           (gx#expander-binding?__% _%g128171128173%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx128157%_)
        (letrec ((_%module-prelude?128159%_
                  (lambda (_%e128165%_)
                    (let ((_%$e128167%_
                           (##structure-instance-of?
                            _%e128165%_
                            'gx#module-context::t)))
                      (if _%$e128167%_
                          _%$e128167%_
                          (##structure-instance-of?
                           _%e128165%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx128157%_
           (lambda (_%g128160128162%_)
             (gx#expander-binding?__%
              _%g128160128162%_
              _%module-prelude?128159%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in128087%_ _%ctx128088%_ _%force-weak?128089%_)
        (let* ((_%in128090128099%_ _%in128087%_)
               (_%E128092128103%_
                (lambda ()
                  (error '"No clause matching"
                         _%in128090128099%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K128093128116%_
                (lambda (_%weak?128106%_
                         _%phi128107%_
                         _%key128108%_
                         _%source128109%_)
                  (gx#core-bind!__%
                   _%key128108%_
                   (let ((_%e128111%_
                          (gx#core-resolve-module-export _%source128109%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e128111%_ '1 '#f '#f)
                      _%key128108%_
                      _%phi128107%_
                      _%e128111%_
                      (##unchecked-structure-ref _%source128109%_ '1 '#f '#f)
                      (let ((_%$e128113%_ _%force-weak?128089%_))
                        (if _%$e128113%_ _%$e128113%_ _%weak?128106%_))))
                   gx#core-context-rebind?
                   _%phi128107%_
                   _%ctx128088%_))))
          (if (##structure-direct-instance-of?
               _%in128090128099%_
               'gx#module-import::t)
              (let* ((_%e128094128119%_
                      (##unchecked-structure-ref
                       _%in128090128099%_
                       '1
                       '#f
                       '#f))
                     (_%source128122%_ _%e128094128119%_)
                     (_%e128095128124%_
                      (##unchecked-structure-ref
                       _%in128090128099%_
                       '2
                       '#f
                       '#f))
                     (_%key128127%_ _%e128095128124%_)
                     (_%e128096128129%_
                      (##unchecked-structure-ref
                       _%in128090128099%_
                       '3
                       '#f
                       '#f))
                     (_%phi128132%_ _%e128096128129%_)
                     (_%e128097128134%_
                      (##unchecked-structure-ref
                       _%in128090128099%_
                       '4
                       '#f
                       '#f))
                     (_%weak?128137%_ _%e128097128134%_))
                (_%K128093128116%_
                 _%weak?128137%_
                 _%phi128132%_
                 _%key128127%_
                 _%source128122%_))
              (_%E128092128103%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in128142%_)
        (let* ((_%ctx128144%_ (gx#current-expander-context))
               (_%force-weak?128146%_ '#f))
          (gx#core-bind-import!__%
           _%in128142%_
           _%ctx128144%_
           _%force-weak?128146%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in128148%_ _%ctx128149%_)
        (let ((_%force-weak?128151%_ '#f))
          (gx#core-bind-import!__%
           _%in128148%_
           _%ctx128149%_
           _%force-weak?128151%_))))
    (define gx#core-bind-import!
      (lambda _g130031_
        (let ((_g130030_ (##length _g130031_)))
          (cond ((##fx= _g130030_ 1) (apply gx#core-bind-import!__0 _g130031_))
                ((##fx= _g130030_ 2) (apply gx#core-bind-import!__1 _g130031_))
                ((##fx= _g130030_ 3) (apply gx#core-bind-import!__% _g130031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g130031_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in128073%_ _%ctx128074%_)
        (gx#core-bind-import!__% _%in128073%_ _%ctx128074%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in128079%_)
        (let ((_%ctx128081%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in128079%_ _%ctx128081%_))))
    (define gx#core-bind-weak-import!
      (lambda _g130033_
        (let ((_g130032_ (##length _g130033_)))
          (cond ((##fx= _g130032_ 1)
                 (apply gx#core-bind-weak-import!__0 _g130033_))
                ((##fx= _g130032_ 2)
                 (apply gx#core-bind-weak-import!__% _g130033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g130033_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out127964%_)
        (letrec ((_%subst127966%_
                  (lambda (_%key128012%_)
                    (let* ((_%key128013128021%_ _%key128012%_)
                           (_%else128015128029%_ (lambda () _%key128012%_))
                           (_%K128017128060%_
                            (lambda (_%mark128032%_ _%id128033%_)
                              (let* ((_%mark128034128040%_ _%mark128032%_)
                                     (_%E128036128044%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark128034128040%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K128037128052%_
                                      (lambda (_%subst128047%_)
                                        (let ((_%$e128049%_
                                               (if _%subst128047%_
                                                   (hash-get
                                                    _%subst128047%_
                                                    _%id128033%_)
                                                   '#f)))
                                          (if _%$e128049%_
                                              _%$e128049%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key128012%_))))))
                                (if (##structure-instance-of?
                                     _%mark128034128040%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e128038128055%_
                                            (##unchecked-structure-ref
                                             _%mark128034128040%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst128058%_ _%e128038128055%_))
                                      (_%K128037128052%_ _%subst128058%_))
                                    (_%E128036128044%_))))))
                      (if (pair? _%key128013128021%_)
                          (let ((_%hd128018128063%_
                                 (##car _%key128013128021%_))
                                (_%tl128019128065%_
                                 (##cdr _%key128013128021%_)))
                            (let* ((_%id128068%_ _%hd128018128063%_)
                                   (_%mark128070%_ _%tl128019128065%_))
                              (_%K128017128060%_ _%mark128070%_ _%id128068%_)))
                          (_%else128015128029%_))))))
          (let* ((_%out127967127977%_ _%out127964%_)
                 (_%E127969127981%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out127967127977%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K127970127988%_
                  (lambda (_%phi127984%_ _%key127985%_ _%ctx127986%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx127986%_ _%phi127984%_)
                     (_%subst127966%_ _%key127985%_)))))
            (if (##structure-direct-instance-of?
                 _%out127967127977%_
                 'gx#module-export::t)
                (let* ((_%e127971127991%_
                        (##unchecked-structure-ref
                         _%out127967127977%_
                         '1
                         '#f
                         '#f))
                       (_%ctx127994%_ _%e127971127991%_)
                       (_%e127972127996%_
                        (##unchecked-structure-ref
                         _%out127967127977%_
                         '2
                         '#f
                         '#f))
                       (_%key127999%_ _%e127972127996%_)
                       (_%e127973128001%_
                        (##unchecked-structure-ref
                         _%out127967127977%_
                         '3
                         '#f
                         '#f))
                       (_%phi128004%_ _%e127973128001%_)
                       (_%e127974128006%_
                        (##unchecked-structure-ref
                         _%out127967127977%_
                         '4
                         '#f
                         '#f))
                       (_%e127975128009%_
                        (##unchecked-structure-ref
                         _%out127967127977%_
                         '5
                         '#f
                         '#f)))
                  (_%K127970127988%_
                   _%phi128004%_
                   _%key127999%_
                   _%ctx127994%_))
                (_%E127969127981%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out127889%_ _%rename127890%_ _%dphi127891%_)
        (let* ((_%out127892127902%_ _%out127889%_)
               (_%E127894127906%_
                (lambda ()
                  (error '"No clause matching"
                         _%out127892127902%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K127895127918%_
                (lambda (_%weak?127909%_
                         _%name127910%_
                         _%phi127911%_
                         _%key127912%_
                         _%ctx127913%_)
                  (##structure
                   gx#module-import::t
                   _%out127889%_
                   (let ((_%$e127915%_ _%rename127890%_))
                     (if _%$e127915%_ _%$e127915%_ _%name127910%_))
                   (fx+ _%phi127911%_ _%dphi127891%_)
                   _%weak?127909%_))))
          (if (##structure-direct-instance-of?
               _%out127892127902%_
               'gx#module-export::t)
              (let* ((_%e127896127921%_
                      (##unchecked-structure-ref
                       _%out127892127902%_
                       '1
                       '#f
                       '#f))
                     (_%ctx127924%_ _%e127896127921%_)
                     (_%e127897127926%_
                      (##unchecked-structure-ref
                       _%out127892127902%_
                       '2
                       '#f
                       '#f))
                     (_%key127929%_ _%e127897127926%_)
                     (_%e127898127931%_
                      (##unchecked-structure-ref
                       _%out127892127902%_
                       '3
                       '#f
                       '#f))
                     (_%phi127934%_ _%e127898127931%_)
                     (_%e127899127936%_
                      (##unchecked-structure-ref
                       _%out127892127902%_
                       '4
                       '#f
                       '#f))
                     (_%name127939%_ _%e127899127936%_)
                     (_%e127900127941%_
                      (##unchecked-structure-ref
                       _%out127892127902%_
                       '5
                       '#f
                       '#f))
                     (_%weak?127944%_ _%e127900127941%_))
                (_%K127895127918%_
                 _%weak?127944%_
                 _%name127939%_
                 _%phi127934%_
                 _%key127929%_
                 _%ctx127924%_))
              (_%E127894127906%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out127949%_)
        (let* ((_%rename127951%_ '#f) (_%dphi127953%_ '0))
          (gx#core-module-export->import__%
           _%out127949%_
           _%rename127951%_
           _%dphi127953%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out127955%_ _%rename127956%_)
        (let ((_%dphi127958%_ '0))
          (gx#core-module-export->import__%
           _%out127955%_
           _%rename127956%_
           _%dphi127958%_))))
    (define gx#core-module-export->import
      (lambda _g130035_
        (let ((_g130034_ (##length _g130035_)))
          (cond ((##fx= _g130034_ 1)
                 (apply gx#core-module-export->import__0 _g130035_))
                ((##fx= _g130034_ 2)
                 (apply gx#core-module-export->import__1 _g130035_))
                ((##fx= _g130034_ 3)
                 (apply gx#core-module-export->import__% _g130035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g130035_))))))
    (define gx#core-expand-module%
      (lambda (_%stx127788%_)
        (letrec ((_%make-context127790%_
                  (lambda (_%id127867%_)
                    (let* ((_%super127869%_ (gx#current-expander-context))
                           (_%bind-id127871%_ (gx#stx-e _%id127867%_))
                           (_%mod-id127873%_
                            (if (##structure-instance-of?
                                 _%super127869%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super127869%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id127871%_)
                                _%bind-id127871%_))
                           (_%ns127875%_ (symbol->string _%mod-id127873%_))
                           (_%path127885%_
                            (if (##structure-instance-of?
                                 _%super127869%_
                                 'gx#module-context::t)
                                (let ((_%path127877%_
                                       (##unchecked-structure-ref
                                        _%super127869%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path127877%_)
                                          (null? _%path127877%_))
                                      (cons _%bind-id127871%_ _%path127877%_)
                                      (if (not _%path127877%_)
                                          _%bind-id127871%_
                                          (cons _%bind-id127871%_
                                                (cons _%path127877%_ '())))))
                                _%bind-id127871%_))
                           (__obj130011
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
                       __obj130011
                       _%mod-id127873%_
                       _%super127869%_
                       _%ns127875%_
                       _%path127885%_)
                      __obj130011)))
                 (_%valid-module-id?127791%_
                  (lambda (_%id127842%_)
                    (let* ((_%str127844%_ (symbol->string _%id127842%_))
                           (_%len127846%_ (##string-length _%str127844%_)))
                      (if (##fx>= _%len127846%_ '1)
                          (let _%loop127849%_ ((_%index127851%_
                                                (##fx- (##string-length
                                                        _%str127844%_)
                                                       '1)))
                            (if (##fx>= _%index127851%_ '0)
                                (let ((_%c127853%_
                                       (string-ref
                                        _%str127844%_
                                        _%index127851%_)))
                                  (if (or (and (##char>=? _%c127853%_ '#\a)
                                               (##char<=? _%c127853%_ '#\z))
                                          (and (##char>=? _%c127853%_ '#\A)
                                               (##char<=? _%c127853%_ '#\Z))
                                          (and (##char>=? _%c127853%_ '#\0)
                                               (##char<=? _%c127853%_ '#\9))
                                          (##char=? _%c127853%_ '#\_)
                                          (##char=? _%c127853%_ '#\-))
                                      (_%loop127849%_
                                       (##fx- _%index127851%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e127792127802%_ _%stx127788%_)
                 (_%E127794127806%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127792127802%_)))
                 (_%E127793127838%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127792127802%_)
                        (let ((_%e127795127810%_
                               (gx#syntax-e _%e127792127802%_)))
                          (let ((_%hd127796127813%_ (##car _%e127795127810%_))
                                (_%tl127797127815%_ (##cdr _%e127795127810%_)))
                            (if (gx#stx-pair? _%tl127797127815%_)
                                (let ((_%e127798127818%_
                                       (gx#syntax-e _%tl127797127815%_)))
                                  (let ((_%hd127799127821%_
                                         (##car _%e127798127818%_))
                                        (_%tl127800127823%_
                                         (##cdr _%e127798127818%_)))
                                    (let* ((_%id127826%_ _%hd127799127821%_)
                                           (_%body127828%_ _%tl127800127823%_))
                                      (if (and (gx#identifier? _%id127826%_)
                                               (gx#stx-list? _%body127828%_))
                                          (if (_%valid-module-id?127791%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx127830%_
                                                      (_%make-context127790%_
                                                       _%id127826%_))
                                                     (_%body127832%_
                                                      (gx#core-expand-module-begin
                                                       _%body127828%_
                                                       _%ctx127830%_))
                                                     (_%body127834%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body127832%_)
                                                       (gx#stx-source
                                                        _%stx127788%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx127830%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body127834%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx127830%_
                                                 _%body127834%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id127826%_
                                                 _%ctx127830%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id127826%_)
                                                  _%body127834%_)
                                                 (gx#stx-source
                                                  _%stx127788%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx127788%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E127794127806%_)))))
                                (_%E127794127806%_))))
                        (_%E127794127806%_)))))
            (_%E127793127838%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body127754%_ _%ctx127755%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx127758%_
                   (gx#core-expand-head (cons '%%begin-module _%body127754%_)))
                  (_%e127759127766%_ _%stx127758%_)
                  (_%E127761127770%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx127758%_)))
                  (_%E127760127784%_
                   (lambda ()
                     (if (gx#stx-pair? _%e127759127766%_)
                         (let ((_%e127762127774%_
                                (gx#syntax-e _%e127759127766%_)))
                           (let ((_%hd127763127777%_ (##car _%e127762127774%_))
                                 (_%tl127764127779%_
                                  (##cdr _%e127762127774%_)))
                             (if (and (gx#identifier? _%hd127763127777%_)
                                      (gx#core-identifier=?
                                       _%hd127763127777%_
                                       '%#begin-module))
                                 (let ((_%body127782%_ _%tl127764127779%_))
                                   (if (gx#sealed-syntax? _%stx127758%_)
                                       _%body127782%_
                                       (gx#core-expand-module-body
                                        _%body127782%_)))
                                 (_%E127761127770%_))))
                         (_%E127761127770%_)))))
             (_%E127760127784%_)))
         gx#current-expander-context
         _%ctx127755%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body127550%_)
        (letrec ((_%expand-special127552%_
                  (lambda (_%hd127681%_ _%K127682%_ _%rest127683%_ _%r127684%_)
                    (let* ((_%e127685127702%_ _%hd127681%_)
                           (_%E127697127706%_
                            (lambda ()
                              (_%K127682%_
                               _%rest127683%_
                               (cons (gx#core-expand-top _%hd127681%_)
                                     _%r127684%_))))
                           (_%E127687127718%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127685127702%_)
                                  (let ((_%e127698127710%_
                                         (gx#syntax-e _%e127685127702%_)))
                                    (let ((_%hd127699127713%_
                                           (##car _%e127698127710%_))
                                          (_%tl127700127715%_
                                           (##cdr _%e127698127710%_)))
                                      (if (and (gx#identifier?
                                                _%hd127699127713%_)
                                               (gx#core-identifier=?
                                                _%hd127699127713%_
                                                '%#export))
                                          (_%K127682%_
                                           _%rest127683%_
                                           (cons _%hd127681%_ _%r127684%_))
                                          (_%E127697127706%_))))
                                  (_%E127697127706%_))))
                           (_%E127686127750%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127685127702%_)
                                  (let ((_%e127688127722%_
                                         (gx#syntax-e _%e127685127702%_)))
                                    (let ((_%hd127689127725%_
                                           (##car _%e127688127722%_))
                                          (_%tl127690127727%_
                                           (##cdr _%e127688127722%_)))
                                      (if (and (gx#identifier?
                                                _%hd127689127725%_)
                                               (gx#core-identifier=?
                                                _%hd127689127725%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl127690127727%_)
                                              (let ((_%e127691127730%_
                                                     (gx#syntax-e
                                                      _%tl127690127727%_)))
                                                (let ((_%hd127692127733%_
                                                       (##car _%e127691127730%_))
                                                      (_%tl127693127735%_
                                                       (##cdr _%e127691127730%_)))
                                                  (let ((_%hd-bind127738%_
                                                         _%hd127692127733%_))
                                                    (if (gx#stx-pair?
                                                         _%tl127693127735%_)
                                                        (let ((_%e127694127740%_
                                                               (gx#syntax-e
                                                                _%tl127693127735%_)))
                                                          (let ((_%hd127695127743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e127694127740%_))
                        (_%tl127696127745%_ (##cdr _%e127694127740%_)))
                    (let ((_%expr127748%_ _%hd127695127743%_))
                      (if (gx#stx-null? _%tl127696127745%_)
                          (if (gx#core-bind-values? _%hd-bind127738%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind127738%_)
                                (_%K127682%_
                                 _%rest127683%_
                                 (cons _%hd127681%_ _%r127684%_)))
                              (_%E127687127718%_))
                          (_%E127687127718%_)))))
                (_%E127687127718%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127687127718%_))
                                          (_%E127687127718%_))))
                                  (_%E127687127718%_)))))
                      (_%E127686127750%_))))
                 (_%expand-body127553%_
                  (lambda (_%rbody127555%_)
                    (let _%lp127557%_ ((_%rest127559%_ _%rbody127555%_)
                                       (_%body127560%_ '()))
                      (let* ((_%rest127561127569%_ _%rest127559%_)
                             (_%else127563127577%_ (lambda () _%body127560%_))
                             (_%K127565127669%_
                              (lambda (_%rest127580%_ _%hd127581%_)
                                (let* ((_%e127582127603%_ _%hd127581%_)
                                       (_%E127598127607%_
                                        (lambda ()
                                          (_%lp127557%_
                                           _%rest127580%_
                                           (cons (gx#core-expand-expression
                                                  _%hd127581%_)
                                                 _%body127560%_))))
                                       (_%E127594127621%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127582127603%_)
                                              (let ((_%e127599127611%_
                                                     (gx#syntax-e
                                                      _%e127582127603%_)))
                                                (let ((_%hd127600127614%_
                                                       (##car _%e127599127611%_))
                                                      (_%tl127601127616%_
                                                       (##cdr _%e127599127611%_)))
                                                  (let ((_%form127619%_
                                                         _%hd127600127614%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form127619%_
                                                         gx#special-form-binding?)
                                                        (_%lp127557%_
                                                         _%rest127580%_
                                                         (cons _%hd127581%_
                                                               _%body127560%_))
                                                        (_%E127598127607%_)))))
                                              (_%E127598127607%_))))
                                       (_%E127584127633%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127582127603%_)
                                              (let ((_%e127595127625%_
                                                     (gx#syntax-e
                                                      _%e127582127603%_)))
                                                (let ((_%hd127596127628%_
                                                       (##car _%e127595127625%_))
                                                      (_%tl127597127630%_
                                                       (##cdr _%e127595127625%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd127596127628%_)
                                                           (gx#core-identifier=?
                                                            _%hd127596127628%_
                                                            '%#export))
                                                      (_%lp127557%_
                                                       _%rest127580%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd127581%_)
                                                             _%body127560%_))
                                                      (_%E127594127621%_))))
                                              (_%E127594127621%_))))
                                       (_%E127583127665%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127582127603%_)
                                              (let ((_%e127585127637%_
                                                     (gx#syntax-e
                                                      _%e127582127603%_)))
                                                (let ((_%hd127586127640%_
                                                       (##car _%e127585127637%_))
                                                      (_%tl127587127642%_
                                                       (##cdr _%e127585127637%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd127586127640%_)
                                                           (gx#core-identifier=?
                                                            _%hd127586127640%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl127587127642%_)
                                                          (let ((_%e127588127645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl127587127642%_)))
                    (let ((_%hd127589127648%_ (##car _%e127588127645%_))
                          (_%tl127590127650%_ (##cdr _%e127588127645%_)))
                      (let ((_%hd-bind127653%_ _%hd127589127648%_))
                        (if (gx#stx-pair? _%tl127590127650%_)
                            (let ((_%e127591127655%_
                                   (gx#syntax-e _%tl127590127650%_)))
                              (let ((_%hd127592127658%_
                                     (##car _%e127591127655%_))
                                    (_%tl127593127660%_
                                     (##cdr _%e127591127655%_)))
                                (let ((_%expr127663%_ _%hd127592127658%_))
                                  (if (gx#stx-null? _%tl127593127660%_)
                                      (_%lp127557%_
                                       _%rest127580%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind127653%_)
                                               (gx#core-expand-expression
                                                _%expr127663%_))
                                              (gx#stx-source _%hd127581%_))
                                             _%body127560%_))
                                      (_%E127584127633%_)))))
                            (_%E127584127633%_)))))
                  (_%E127584127633%_))
              (_%E127584127633%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127584127633%_)))))
                                  (_%E127583127665%_)))))
                        (if (pair? _%rest127561127569%_)
                            (let ((_%hd127566127672%_
                                   (##car _%rest127561127569%_))
                                  (_%tl127567127674%_
                                   (##cdr _%rest127561127569%_)))
                              (let* ((_%hd127677%_ _%hd127566127672%_)
                                     (_%rest127679%_ _%tl127567127674%_))
                                (_%K127565127669%_
                                 _%rest127679%_
                                 _%hd127677%_)))
                            (_%else127563127577%_)))))))
          (_%expand-body127553%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body127550%_)
            _%expand-special127552%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx127391%_
               _%expanded?127392%_
               _%method127393%_
               _%current-phi127394%_
               _%expand1127395%_)
        (letrec ((_%K127397%_
                  (lambda (_%rest127517%_ _%r127518%_)
                    (let* ((_%e127519127526%_ _%rest127517%_)
                           (_%E127521127530%_ (lambda () _%r127518%_))
                           (_%E127520127546%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127519127526%_)
                                  (let ((_%e127522127534%_
                                         (gx#syntax-e _%e127519127526%_)))
                                    (let ((_%hd127523127537%_
                                           (##car _%e127522127534%_))
                                          (_%tl127524127539%_
                                           (##cdr _%e127522127534%_)))
                                      (let* ((_%hd127542%_ _%hd127523127537%_)
                                             (_%rest127544%_
                                              _%tl127524127539%_))
                                        (_%step127398%_
                                         _%hd127542%_
                                         _%rest127544%_
                                         _%r127518%_))))
                                  (_%E127521127530%_)))))
                      (_%E127520127546%_))))
                 (_%step127398%_
                  (lambda (_%hd127431%_ _%rest127432%_ _%r127433%_)
                    (let* ((_%e127434127452%_ _%hd127431%_)
                           (_%E127447127456%_
                            (lambda ()
                              (if (_%expanded?127392%_ (gx#stx-e _%hd127431%_))
                                  (_%K127397%_
                                   _%rest127432%_
                                   (cons (gx#stx-e _%hd127431%_) _%r127433%_))
                                  (_%expand1127395%_
                                   _%hd127431%_
                                   _%K127397%_
                                   _%rest127432%_
                                   _%r127433%_))))
                           (_%E127443127472%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127434127452%_)
                                  (let ((_%e127448127460%_
                                         (gx#syntax-e _%e127434127452%_)))
                                    (let ((_%hd127449127463%_
                                           (##car _%e127448127460%_))
                                          (_%tl127450127465%_
                                           (##cdr _%e127448127460%_)))
                                      (let* ((_%macro127468%_
                                              _%hd127449127463%_)
                                             (_%body127470%_
                                              _%tl127450127465%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro127468%_
                                             gx#syntax-binding?)
                                            (_%K127397%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro127468%_)
                                                    _%hd127431%_
                                                    _%method127393%_)
                                                   _%rest127432%_)
                                             _%r127433%_)
                                            (_%E127447127456%_)))))
                                  (_%E127447127456%_))))
                           (_%E127436127486%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127434127452%_)
                                  (let ((_%e127444127476%_
                                         (gx#syntax-e _%e127434127452%_)))
                                    (let ((_%hd127445127479%_
                                           (##car _%e127444127476%_))
                                          (_%tl127446127481%_
                                           (##cdr _%e127444127476%_)))
                                      (if (eq? (gx#stx-e _%hd127445127479%_)
                                               'begin:)
                                          (let ((_%body127484%_
                                                 _%tl127446127481%_))
                                            (_%K127397%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest127432%_
                                              _%body127484%_)
                                             _%r127433%_))
                                          (_%E127443127472%_))))
                                  (_%E127443127472%_))))
                           (_%E127435127513%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127434127452%_)
                                  (let ((_%e127437127490%_
                                         (gx#syntax-e _%e127434127452%_)))
                                    (let ((_%hd127438127493%_
                                           (##car _%e127437127490%_))
                                          (_%tl127439127495%_
                                           (##cdr _%e127437127490%_)))
                                      (if (eq? (gx#stx-e _%hd127438127493%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl127439127495%_)
                                              (let ((_%e127440127498%_
                                                     (gx#syntax-e
                                                      _%tl127439127495%_)))
                                                (let ((_%hd127441127501%_
                                                       (##car _%e127440127498%_))
                                                      (_%tl127442127503%_
                                                       (##cdr _%e127440127498%_)))
                                                  (let* ((_%dphi127506%_
                                                          _%hd127441127501%_)
                                                         (_%body127508%_
                                                          _%tl127442127503%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi127506%_)
                                                        (let ((_%rbody127511%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K127397%_ _%body127508%_ '()))
                        _%current-phi127394%_
                        (fx+ (gx#stx-e _%dphi127506%_)
                             (_%current-phi127394%_)))))
                  (_%K127397%_
                   _%rest127432%_
                   (__foldr1 cons _%r127433%_ _%rbody127511%_)))
                (_%E127436127486%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127436127486%_))
                                          (_%E127436127486%_))))
                                  (_%E127436127486%_)))))
                      (_%E127435127513%_)))))
          (let* ((_%e127399127406%_ _%stx127391%_)
                 (_%E127401127410%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127399127406%_)))
                 (_%E127400127427%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127399127406%_)
                        (let ((_%e127402127414%_
                               (gx#syntax-e _%e127399127406%_)))
                          (let ((_%hd127403127417%_ (##car _%e127402127414%_))
                                (_%tl127404127419%_ (##cdr _%e127402127414%_)))
                            (let ((_%body127422%_ _%tl127404127419%_))
                              (if (_%current-phi127394%_)
                                  (_%K127397%_ _%body127422%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K127397%_ _%body127422%_ '()))
                                   _%current-phi127394%_
                                   (gx#current-expander-phi))))))
                        (_%E127401127410%_)))))
            (_%E127400127427%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx127045%_ _%internal-expand?127046%_)
        (letrec ((_%expand1127048%_
                  (lambda (_%hd127363%_ _%K127364%_ _%rest127365%_ _%r127366%_)
                    (if (gx#core-bound-module? _%hd127363%_)
                        (_%import1127049%_
                         (gx#syntax-local-e__0 _%hd127363%_)
                         _%K127364%_
                         _%rest127365%_
                         _%r127366%_)
                        (if (gx#core-library-module-path? _%hd127363%_)
                            (_%import1127049%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd127363%_))
                             _%K127364%_
                             _%rest127365%_
                             _%r127366%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd127363%_)
                                (_%import1127049%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd127363%_))
                                 _%K127364%_
                                 _%rest127365%_
                                 _%r127366%_)
                                (let ((_%e127372%_ (gx#stx-e _%hd127363%_)))
                                  (if (pair? _%e127372%_)
                                      (let ((_%$e127375%_
                                             (gx#stx-e (##car _%e127372%_))))
                                        (if (eq? 'spec: _%$e127375%_)
                                            (_%import-spec127052%_
                                             _%hd127363%_
                                             _%K127364%_
                                             _%rest127365%_
                                             _%r127366%_)
                                            (if (eq? 'in: _%$e127375%_)
                                                (_%import-submodule127050%_
                                                 _%hd127363%_
                                                 _%K127364%_
                                                 _%rest127365%_
                                                 _%r127366%_)
                                                (if (eq? 'runtime:
                                                         _%$e127375%_)
                                                    (_%import-runtime127051%_
                                                     _%hd127363%_
                                                     _%K127364%_
                                                     _%rest127365%_
                                                     _%r127366%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx127045%_
                                                     _%hd127363%_)))))
                                      (if (string? _%e127372%_)
                                          (_%import1127049%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd127363%_
                                             (gx#stx-source _%stx127045%_)))
                                           _%K127364%_
                                           _%rest127365%_
                                           _%r127366%_)
                                          (if (##structure-instance-of?
                                               _%e127372%_
                                               'gx#module-context::t)
                                              (_%K127364%_
                                               _%rest127365%_
                                               (cons _%e127372%_ _%r127366%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx127045%_
                                               _%hd127363%_))))))))))
                 (_%import1127049%_
                  (lambda (_%ctx127352%_
                           _%K127353%_
                           _%rest127354%_
                           _%r127355%_)
                    (let ((_%dphi127357%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K127353%_
                       _%rest127354%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx127352%_
                              _%dphi127357%_
                              (map (lambda (_%g127358127360%_)
                                     (gx#core-module-export->import__%
                                      _%g127358127360%_
                                      '#f
                                      _%dphi127357%_))
                                   (##unchecked-structure-ref
                                    _%ctx127352%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r127355%_)))))
                 (_%import-submodule127050%_
                  (lambda (_%hd127319%_ _%K127320%_ _%rest127321%_ _%r127322%_)
                    (let* ((_%e127323127330%_ _%hd127319%_)
                           (_%E127325127334%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127323127330%_)))
                           (_%E127324127348%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127323127330%_)
                                  (let ((_%e127326127338%_
                                         (gx#syntax-e _%e127323127330%_)))
                                    (let ((_%hd127327127341%_
                                           (##car _%e127326127338%_))
                                          (_%tl127328127343%_
                                           (##cdr _%e127326127338%_)))
                                      (let ((_%spath127346%_
                                             _%tl127328127343%_))
                                        (_%import1127049%_
                                         (_%import-spec-source127053%_
                                          _%spath127346%_)
                                         _%K127320%_
                                         _%rest127321%_
                                         _%r127322%_))))
                                  (_%E127325127334%_)))))
                      (_%E127324127348%_))))
                 (_%import-runtime127051%_
                  (lambda (_%hd127286%_ _%K127287%_ _%rest127288%_ _%r127289%_)
                    (let* ((_%e127290127297%_ _%hd127286%_)
                           (_%E127292127301%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127290127297%_)))
                           (_%E127291127315%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127290127297%_)
                                  (let ((_%e127293127305%_
                                         (gx#syntax-e _%e127290127297%_)))
                                    (let ((_%hd127294127308%_
                                           (##car _%e127293127305%_))
                                          (_%tl127295127310%_
                                           (##cdr _%e127293127305%_)))
                                      (let ((_%spath127313%_
                                             _%tl127295127310%_))
                                        (_%K127287%_
                                         _%rest127288%_
                                         (cons (_%import-spec-source127053%_
                                                _%spath127313%_)
                                               _%r127289%_)))))
                                  (_%E127292127301%_)))))
                      (_%E127291127315%_))))
                 (_%import-spec127052%_
                  (lambda (_%hd127124%_ _%K127125%_ _%rest127126%_ _%r127127%_)
                    (let* ((_%e127128127145%_ _%hd127124%_)
                           (_%E127137127149%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127128127145%_)))
                           (_%E127130127260%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127128127145%_)
                                  (let ((_%e127138127153%_
                                         (gx#syntax-e _%e127128127145%_)))
                                    (let ((_%hd127139127156%_
                                           (##car _%e127138127153%_))
                                          (_%tl127140127158%_
                                           (##cdr _%e127138127153%_)))
                                      (if (gx#stx-pair? _%tl127140127158%_)
                                          (let ((_%e127141127161%_
                                                 (gx#syntax-e
                                                  _%tl127140127158%_)))
                                            (let ((_%hd127142127164%_
                                                   (##car _%e127141127161%_))
                                                  (_%tl127143127166%_
                                                   (##cdr _%e127141127161%_)))
                                              (let* ((_%path127169%_
                                                      _%hd127142127164%_)
                                                     (_%specs127171%_
                                                      _%tl127143127166%_))
                                                (let ((_%src-ctx127173%_
                                                       (_%import-spec-source127053%_
                                                        _%path127169%_))
                                                      (_%exports127174%_
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
                                                      (_%specs127175%_
                                                       (gx#syntax->list
                                                        _%specs127171%_)))
                                                  (for-each
                                                   (lambda (_%out127177%_)
                                                     (__hash-put!
                                                      _%exports127174%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out127177%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out127177%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out127177%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx127173%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K127125%_
                                                   _%rest127126%_
                                                   (__foldl1
                                                    (lambda (_%spec127179%_
                                                             _%r127180%_)
                                                      (let* ((_%e127181127197%_
                                                              _%spec127179%_)
                                                             (_%E127183127201%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e127181127197%_)))
                     (_%E127182127256%_
                      (lambda ()
                        (if (gx#stx-pair? _%e127181127197%_)
                            (let ((_%e127184127205%_
                                   (gx#syntax-e _%e127181127197%_)))
                              (let ((_%hd127185127208%_
                                     (##car _%e127184127205%_))
                                    (_%tl127186127210%_
                                     (##cdr _%e127184127205%_)))
                                (let ((_%phi127213%_ _%hd127185127208%_))
                                  (if (gx#stx-pair? _%tl127186127210%_)
                                      (let ((_%e127187127215%_
                                             (gx#syntax-e _%tl127186127210%_)))
                                        (let ((_%hd127188127218%_
                                               (##car _%e127187127215%_))
                                              (_%tl127189127220%_
                                               (##cdr _%e127187127215%_)))
                                          (let ((_%name127223%_
                                                 _%hd127188127218%_))
                                            (if (gx#stx-pair?
                                                 _%tl127189127220%_)
                                                (let ((_%e127190127225%_
                                                       (gx#syntax-e
                                                        _%tl127189127220%_)))
                                                  (let ((_%hd127191127228%_
                                                         (##car _%e127190127225%_))
                                                        (_%tl127192127230%_
                                                         (##cdr _%e127190127225%_)))
                                                    (let ((_%src-phi127233%_
                                                           _%hd127191127228%_))
                                                      (if (gx#stx-pair?
                                                           _%tl127192127230%_)
                                                          (let ((_%e127193127235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl127192127230%_)))
                    (let ((_%hd127194127238%_ (##car _%e127193127235%_))
                          (_%tl127195127240%_ (##cdr _%e127193127235%_)))
                      (let ((_%src-name127243%_ _%hd127194127238%_))
                        (if (gx#stx-null? _%tl127195127240%_)
                            (if (and (gx#stx-fixnum? _%src-phi127233%_)
                                     (gx#identifier? _%src-name127243%_)
                                     (gx#stx-fixnum? _%phi127213%_)
                                     (gx#identifier? _%name127223%_))
                                (let ((_%src-phi127245%_
                                       (gx#stx-e _%src-phi127233%_))
                                      (_%src-name127246%_
                                       (gx#core-identifier-key
                                        _%src-name127243%_))
                                      (_%phi127247%_ (gx#stx-e _%phi127213%_))
                                      (_%name127248%_
                                       (gx#core-identifier-key
                                        _%name127223%_)))
                                  (let ((_%$e127250%_
                                         (__hash-get
                                          _%exports127174%_
                                          (cons _%src-phi127245%_
                                                _%src-name127246%_))))
                                    (if _%$e127250%_
                                        ((lambda (_%out127253%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out127253%_
                                                  _%name127248%_
                                                  (fx- _%phi127247%_
                                                       _%src-phi127245%_))
                                                 _%r127180%_))
                                         _%$e127250%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx127045%_
                                         _%hd127124%_))))
                                (_%E127183127201%_))
                            (_%E127183127201%_)))))
                  (_%E127183127201%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E127183127201%_)))))
                                      (_%E127183127201%_)))))
                            (_%E127183127201%_)))))
                (_%E127182127256%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r127127%_
                                                    _%specs127175%_))))))
                                          (_%E127137127149%_))))
                                  (_%E127137127149%_))))
                           (_%E127129127282%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127128127145%_)
                                  (let ((_%e127131127264%_
                                         (gx#syntax-e _%e127128127145%_)))
                                    (let ((_%hd127132127267%_
                                           (##car _%e127131127264%_))
                                          (_%tl127133127269%_
                                           (##cdr _%e127131127264%_)))
                                      (if (gx#stx-pair? _%tl127133127269%_)
                                          (let ((_%e127134127272%_
                                                 (gx#syntax-e
                                                  _%tl127133127269%_)))
                                            (let ((_%hd127135127275%_
                                                   (##car _%e127134127272%_))
                                                  (_%tl127136127277%_
                                                   (##cdr _%e127134127272%_)))
                                              (let ((_%path127280%_
                                                     _%hd127135127275%_))
                                                (if (gx#stx-null?
                                                     _%tl127136127277%_)
                                                    (_%K127125%_
                                                     _%rest127126%_
                                                     (cons (_%import-spec-source127053%_
                                                            _%path127280%_)
                                                           _%r127127%_))
                                                    (_%E127130127260%_)))))
                                          (_%E127130127260%_))))
                                  (_%E127130127260%_)))))
                      (_%E127129127282%_))))
                 (_%import-spec-source127053%_
                  (lambda (_%spath127122%_)
                    (gx#core-import-nested-module
                     _%spath127122%_
                     _%stx127045%_)))
                 (_%import!127054%_
                  (lambda (_%rbody127067%_)
                    (letrec* ((_%current-ctx127069%_
                               (gx#current-expander-context))
                              (_%deps127070%_ (make-hash-table-eq))
                              (_%bind!127071%_
                               (lambda (_%hd127120%_)
                                 (gx#core-bind-import!__1
                                  _%hd127120%_
                                  _%current-ctx127069%_))))
                      (let _%lp127073%_ ((_%rest127075%_ _%rbody127067%_)
                                         (_%body127076%_ '()))
                        (let* ((_%rest127077127085%_ _%rest127075%_)
                               (_%else127079127096%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx127069%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx127069%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx127069%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body127076%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx127093%_ _%_127094%_)
                                     (gx#eval-module _%ctx127093%_))
                                   _%deps127070%_)
                                  _%body127076%_))
                               (_%K127081127108%_
                                (lambda (_%rest127099%_ _%hd127100%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd127100%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!127071%_ _%hd127100%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd127100%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd127100%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps127070%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd127100%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd127100%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!127071%_
                                             (##unchecked-structure-ref
                                              _%hd127100%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd127100%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps127070%_
                                                 (##unchecked-structure-ref
                                                  _%hd127100%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e127104%_
                                                 (##structure-instance-of?
                                                  _%hd127100%_
                                                  'gx#module-context::t)))
                                            (if _%$e127104%_
                                                _%$e127104%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx127045%_
                                                 _%hd127100%_)))))
                                  (_%lp127073%_
                                   _%rest127099%_
                                   (cons _%hd127100%_ _%body127076%_)))))
                          (if (pair? _%rest127077127085%_)
                              (let ((_%hd127082127111%_
                                     (##car _%rest127077127085%_))
                                    (_%tl127083127113%_
                                     (##cdr _%rest127077127085%_)))
                                (let* ((_%hd127116%_ _%hd127082127111%_)
                                       (_%rest127118%_ _%tl127083127113%_))
                                  (_%K127081127108%_
                                   _%rest127118%_
                                   _%hd127116%_)))
                              (_%else127079127096%_)))))))
                 (_%expanded-import?127055%_
                  (lambda (_%e127059%_)
                    (let ((_%$e127061%_
                           (##structure-direct-instance-of?
                            _%e127059%_
                            'gx#import-set::t)))
                      (if _%$e127061%_
                          _%$e127061%_
                          (let ((_%$e127064%_
                                 (##structure-direct-instance-of?
                                  _%e127059%_
                                  'gx#module-import::t)))
                            (if _%$e127064%_
                                _%$e127064%_
                                (##structure-instance-of?
                                 _%e127059%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody127057%_
                 (gx#core-expand-import/export
                  _%stx127045%_
                  _%expanded-import?127055%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1127048%_)))
            (if _%internal-expand?127046%_
                (reverse _%rbody127057%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!127054%_ _%rbody127057%_))
                 (gx#stx-source _%stx127045%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx127384%_)
        (let ((_%internal-expand?127386%_ '#f))
          (gx#core-expand-import%__%
           _%stx127384%_
           _%internal-expand?127386%_))))
    (define gx#core-expand-import%
      (lambda _g130037_
        (let ((_g130036_ (##length _g130037_)))
          (cond ((##fx= _g130036_ 1)
                 (apply gx#core-expand-import%__0 _g130037_))
                ((##fx= _g130036_ 2)
                 (apply gx#core-expand-import%__% _g130037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g130037_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath126972%_ _%where126973%_)
        (let* ((_%e126974126981%_ _%spath126972%_)
               (_%E126976126985%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126974126981%_)))
               (_%E126975127040%_
                (lambda ()
                  (if (gx#stx-pair? _%e126974126981%_)
                      (let ((_%e126977126989%_
                             (gx#syntax-e _%e126974126981%_)))
                        (let ((_%hd126978126992%_ (##car _%e126977126989%_))
                              (_%tl126979126994%_ (##cdr _%e126977126989%_)))
                          (let* ((_%origin126997%_ _%hd126978126992%_)
                                 (_%sub126999%_ _%tl126979126994%_)
                                 (_%origin-ctx127001%_
                                  (if (gx#stx-false? _%origin126997%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin126997%_))))
                            (let _%lp127003%_ ((_%rest127005%_ _%sub126999%_)
                                               (_%ctx127006%_
                                                _%origin-ctx127001%_))
                              (let* ((_%e127007127014%_ _%rest127005%_)
                                     (_%E127009127018%_
                                      (lambda () _%ctx127006%_))
                                     (_%E127008127036%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e127007127014%_)
                                            (let ((_%e127010127022%_
                                                   (gx#syntax-e
                                                    _%e127007127014%_)))
                                              (let ((_%hd127011127025%_
                                                     (##car _%e127010127022%_))
                                                    (_%tl127012127027%_
                                                     (##cdr _%e127010127022%_)))
                                                (let* ((_%id127030%_
                                                        _%hd127011127025%_)
                                                       (_%rest127032%_
                                                        _%tl127012127027%_)
                                                       (_%bind127034%_
                                                        (gx#resolve-identifier__%
                                                         _%id127030%_
                                                         '0
                                                         _%ctx127006%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind127034%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind127034%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where126973%_
                                                       _%spath126972%_
                                                       _%id127030%_))
                                                  (_%lp127003%_
                                                   _%rest127032%_
                                                   (##unchecked-structure-ref
                                                    _%bind127034%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E127009127018%_)))))
                                (_%E127008127036%_))))))
                      (_%E126976126985%_)))))
          (_%E126975127040%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd126970%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd126970%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx126464%_ _%internal-expand?126465%_)
        (letrec* ((_%make-export__129965129966%_
                   (lambda (_%bind126918%_
                            _%phi126919%_
                            _%ctx126920%_
                            _%name126921%_)
                     (let* ((_%key126923%_
                             (##unchecked-structure-ref
                              _%bind126918%_
                              '2
                              '#f
                              '#f))
                            (_%export-key126925%_
                             (if _%name126921%_
                                 (gx#core-identifier-key _%name126921%_)
                                 _%key126923%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx126920%_
                        _%key126923%_
                        _%phi126919%_
                        _%export-key126925%_
                        (let ((_%$e126928%_
                               (##structure-instance-of?
                                _%bind126918%_
                                'gx#extern-binding::t)))
                          (if _%$e126928%_
                              _%$e126928%_
                              (##structure-direct-instance-of?
                               _%bind126918%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__129967129970%_
                   (lambda (_%bind126934%_)
                     (let* ((_%phi126936%_ (gx#current-export-expander-phi))
                            (_%ctx126938%_ (gx#current-expander-context))
                            (_%name126940%_ '#f))
                       (_%make-export__129965129966%_
                        _%bind126934%_
                        _%phi126936%_
                        _%ctx126938%_
                        _%name126940%_))))
                  (_%make-export__1__129968129971%_
                   (lambda (_%bind126942%_ _%phi126943%_)
                     (let* ((_%ctx126945%_ (gx#current-expander-context))
                            (_%name126947%_ '#f))
                       (_%make-export__129965129966%_
                        _%bind126942%_
                        _%phi126943%_
                        _%ctx126945%_
                        _%name126947%_))))
                  (_%make-export__2__129969129972%_
                   (lambda (_%bind126949%_ _%phi126950%_ _%ctx126951%_)
                     (let ((_%name126953%_ '#f))
                       (_%make-export__129965129966%_
                        _%bind126949%_
                        _%phi126950%_
                        _%ctx126951%_
                        _%name126953%_))))
                  (_%make-export126467%_
                   (lambda _g130039_
                     (let ((_g130038_ (##length _g130039_)))
                       (cond ((##fx= _g130038_ 1)
                              (apply _%make-export__0__129967129970%_
                                     _g130039_))
                             ((##fx= _g130038_ 2)
                              (apply _%make-export__1__129968129971%_
                                     _g130039_))
                             ((##fx= _g130038_ 3)
                              (apply _%make-export__2__129969129972%_
                                     _g130039_))
                             ((##fx= _g130038_ 4)
                              (apply _%make-export__129965129966%_ _g130039_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130039_))))))
                  (_%expand1126468%_
                   (lambda (_%hd126623%_
                            _%K126624%_
                            _%rest126625%_
                            _%r126626%_)
                     (let* ((_%e126627126659%_ _%hd126623%_)
                            (_%E126654126663%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx126464%_
                                _%hd126623%_)))
                            (_%E126644126747%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126627126659%_)
                                   (let ((_%e126655126667%_
                                          (gx#syntax-e _%e126627126659%_)))
                                     (let ((_%hd126656126670%_
                                            (##car _%e126655126667%_))
                                           (_%tl126657126672%_
                                            (##cdr _%e126655126667%_)))
                                       (if (eq? (gx#stx-e _%hd126656126670%_)
                                                'import:)
                                           (let ((_%in126675%_
                                                  _%tl126657126672%_))
                                             (if (gx#stx-list? _%in126675%_)
                                                 (let _%lp126677%_ ((_%in-rest126679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in126675%_)
                            (_%r126680%_ _%r126626%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e126681126688%_
                                                           _%in-rest126679%_)
                                                          (_%E126683126692%_
                                                           (lambda ()
                                                             (_%K126624%_
                                                              _%rest126625%_
                                                              _%r126680%_)))
                                                          (_%E126682126743%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e126681126688%_)
                         (let ((_%e126684126696%_
                                (gx#syntax-e _%e126681126688%_)))
                           (let ((_%hd126685126699%_ (##car _%e126684126696%_))
                                 (_%tl126686126701%_
                                  (##cdr _%e126684126696%_)))
                             (let* ((_%hd126704%_ _%hd126685126699%_)
                                    (_%in-rest126706%_ _%tl126686126701%_)
                                    (_%src126741%_
                                     (if (gx#core-bound-module? _%hd126704%_)
                                         (gx#syntax-local-e__0 _%hd126704%_)
                                         (if (gx#core-library-module-path?
                                              _%hd126704%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd126704%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd126704%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd126704%_))
                                                 (if (gx#stx-string?
                                                      _%hd126704%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd126704%_
                                                       (gx#stx-source
                                                        _%stx126464%_)))
                                                     (let* ((_%e126712126719%_
                                                             _%hd126704%_)
                                                            (_%E126714126723%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx126464%_
                                                                _%hd126704%_)))
                                                            (_%E126713126737%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e126712126719%_)
                           (let ((_%e126715126727%_
                                  (gx#syntax-e _%e126712126719%_)))
                             (let ((_%hd126716126730%_
                                    (##car _%e126715126727%_))
                                   (_%tl126717126732%_
                                    (##cdr _%e126715126727%_)))
                               (if (eq? (gx#stx-e _%hd126716126730%_) 'in:)
                                   (let ((_%spath126735%_ _%tl126717126732%_))
                                     (gx#core-import-nested-module
                                      _%spath126735%_
                                      _%stx126464%_))
                                   (_%E126714126723%_))))
                           (_%E126714126723%_)))))
               (_%E126713126737%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp126677%_
                                _%in-rest126706%_
                                (_%export-imports126469%_
                                 _%src126741%_
                                 _%r126680%_)))))
                         (_%E126683126692%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E126682126743%_)))
                                                 (_%E126654126663%_)))
                                           (_%E126654126663%_))))
                                   (_%E126654126663%_))))
                            (_%E126631126787%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126627126659%_)
                                   (let ((_%e126645126751%_
                                          (gx#syntax-e _%e126627126659%_)))
                                     (let ((_%hd126646126754%_
                                            (##car _%e126645126751%_))
                                           (_%tl126647126756%_
                                            (##cdr _%e126645126751%_)))
                                       (if (eq? (gx#stx-e _%hd126646126754%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl126647126756%_)
                                               (let ((_%e126648126759%_
                                                      (gx#syntax-e
                                                       _%tl126647126756%_)))
                                                 (let ((_%hd126649126762%_
                                                        (##car _%e126648126759%_))
                                                       (_%tl126650126764%_
                                                        (##cdr _%e126648126759%_)))
                                                   (let ((_%id126767%_
                                                          _%hd126649126762%_))
                                                     (if (gx#stx-pair?
                                                          _%tl126650126764%_)
                                                         (let ((_%e126651126769%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl126650126764%_)))
                   (let ((_%hd126652126772%_ (##car _%e126651126769%_))
                         (_%tl126653126774%_ (##cdr _%e126651126769%_)))
                     (let ((_%name126777%_ _%hd126652126772%_))
                       (if (gx#stx-null? _%tl126653126774%_)
                           (let* ((_%phi126779%_
                                   (gx#current-export-expander-phi))
                                  (_%$e126781%_
                                   (gx#core-resolve-identifier__1
                                    _%id126767%_
                                    _%phi126779%_)))
                             (if _%$e126781%_
                                 ((lambda (_%bind126784%_)
                                    (_%K126624%_
                                     _%rest126625%_
                                     (cons (_%make-export__129965129966%_
                                            _%bind126784%_
                                            _%phi126779%_
                                            (gx#current-expander-context)
                                            _%name126777%_)
                                           _%r126626%_)))
                                  _%$e126781%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx126464%_
                                  _%hd126623%_
                                  _%id126767%_)))
                           (_%E126644126747%_)))))
                 (_%E126644126747%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E126644126747%_))
                                           (_%E126644126747%_))))
                                   (_%E126644126747%_))))
                            (_%E126630126837%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126627126659%_)
                                   (let ((_%e126632126791%_
                                          (gx#syntax-e _%e126627126659%_)))
                                     (let ((_%hd126633126794%_
                                            (##car _%e126632126791%_))
                                           (_%tl126634126796%_
                                            (##cdr _%e126632126791%_)))
                                       (if (eq? (gx#stx-e _%hd126633126794%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl126634126796%_)
                                               (let ((_%e126635126799%_
                                                      (gx#syntax-e
                                                       _%tl126634126796%_)))
                                                 (let ((_%hd126636126802%_
                                                        (##car _%e126635126799%_))
                                                       (_%tl126637126804%_
                                                        (##cdr _%e126635126799%_)))
                                                   (let ((_%phi126807%_
                                                          _%hd126636126802%_))
                                                     (if (gx#stx-pair?
                                                          _%tl126637126804%_)
                                                         (let ((_%e126638126809%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl126637126804%_)))
                   (let ((_%hd126639126812%_ (##car _%e126638126809%_))
                         (_%tl126640126814%_ (##cdr _%e126638126809%_)))
                     (let ((_%id126817%_ _%hd126639126812%_))
                       (if (gx#stx-pair? _%tl126640126814%_)
                           (let ((_%e126641126819%_
                                  (gx#syntax-e _%tl126640126814%_)))
                             (let ((_%hd126642126822%_
                                    (##car _%e126641126819%_))
                                   (_%tl126643126824%_
                                    (##cdr _%e126641126819%_)))
                               (let ((_%name126827%_ _%hd126642126822%_))
                                 (if (gx#stx-null? _%tl126643126824%_)
                                     (if (and (gx#stx-fixnum? _%phi126807%_)
                                              (gx#identifier? _%id126817%_)
                                              (gx#identifier? _%name126827%_))
                                         (let* ((_%phi126829%_
                                                 (gx#stx-e _%phi126807%_))
                                                (_%$e126831%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id126817%_
                                                  _%phi126829%_)))
                                           (if _%$e126831%_
                                               ((lambda (_%bind126834%_)
                                                  (_%K126624%_
                                                   _%rest126625%_
                                                   (cons (_%make-export__129965129966%_
                                                          _%bind126834%_
                                                          _%phi126829%_
                                                          (gx#current-expander-context)
                                                          _%name126827%_)
                                                         _%r126626%_)))
                                                _%$e126831%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx126464%_
                                                _%hd126623%_
                                                _%id126817%_)))
                                         (_%E126631126787%_))
                                     (_%E126631126787%_)))))
                           (_%E126631126787%_)))))
                 (_%E126631126787%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E126631126787%_))
                                           (_%E126631126787%_))))
                                   (_%E126631126787%_))))
                            (_%E126629126849%_
                             (lambda ()
                               (let ((_%id126841%_ _%e126627126659%_))
                                 (if (gx#identifier? _%id126841%_)
                                     (let ((_%$e126843%_
                                            (gx#core-resolve-identifier__1
                                             _%id126841%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e126843%_
                                           ((lambda (_%bind126846%_)
                                              (_%K126624%_
                                               _%rest126625%_
                                               (cons (_%make-export__0__129967129970%_
                                                      _%bind126846%_)
                                                     _%r126626%_)))
                                            _%$e126843%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx126464%_
                                            _%hd126623%_)))
                                     (_%E126630126837%_)))))
                            (_%E126628126913%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e126627126659%_) '#t)
                                   (let* ((_%current-ctx126853%_
                                           (gx#current-expander-context))
                                          (_%current-phi126855%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx126857%_
                                           (gx#core-context-shift
                                            _%current-ctx126853%_
                                            _%current-phi126855%_))
                                          (_%phi-bind126859%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx126857%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp126862%_ ((_%bind-rest126864%_
                                                         _%phi-bind126859%_)
                                                        (_%set126865%_ '()))
                                       (let* ((_%bind-rest126866126876%_
                                               _%bind-rest126864%_)
                                              (_%else126868126884%_
                                               (lambda ()
                                                 (_%K126624%_
                                                  _%rest126625%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi126855%_
                                                         _%set126865%_)
                                                        _%r126626%_))))
                                              (_%K126870126894%_
                                               (lambda (_%bind-rest126887%_
                                                        _%bind126888%_
                                                        _%key126889%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind126888%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind126888%_))
                                                     (_%lp126862%_
                                                      _%bind-rest126887%_
                                                      _%set126865%_)
                                                     (_%lp126862%_
                                                      _%bind-rest126887%_
                                                      (cons (_%make-export__2__129969129972%_
                                                             _%bind126888%_
                                                             _%current-phi126855%_
                                                             _%current-ctx126853%_)
                                                            _%set126865%_))))))
                                         (if (pair? _%bind-rest126866126876%_)
                                             (let ((_%hd126871126897%_
                                                    (##car _%bind-rest126866126876%_))
                                                   (_%tl126872126899%_
                                                    (##cdr _%bind-rest126866126876%_)))
                                               (if (pair? _%hd126871126897%_)
                                                   (let ((_%hd126873126902%_
                                                          (##car _%hd126871126897%_))
                                                         (_%tl126874126904%_
                                                          (##cdr _%hd126871126897%_)))
                                                     (let* ((_%key126907%_
                                                             _%hd126873126902%_)
                                                            (_%bind126909%_
                                                             _%tl126874126904%_)
                                                            (_%bind-rest126911%_
                                                             _%tl126872126899%_))
                                                       (_%K126870126894%_
                                                        _%bind-rest126911%_
                                                        _%bind126909%_
                                                        _%key126907%_)))
                                                   (_%else126868126884%_)))
                                             (_%else126868126884%_)))))
                                   (_%E126629126849%_)))))
                       (_%E126628126913%_))))
                  (_%export-imports126469%_
                   (lambda (_%src126499%_ _%r126500%_)
                     (letrec* ((_%current-ctx126502%_
                                (gx#current-expander-context))
                               (_%current-phi126503%_
                                (gx#current-export-expander-phi))
                               (_%import->export126504%_
                                (lambda (_%in126585%_)
                                  (let* ((_%in126586126594%_ _%in126585%_)
                                         (_%E126588126598%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in126586126594%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K126589126605%_
                                          (lambda (_%phi126601%_
                                                   _%key126602%_
                                                   _%out126603%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx126502%_
                                             _%key126602%_
                                             _%phi126601%_
                                             _%key126602%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in126586126594%_
                                         'gx#module-import::t)
                                        (let* ((_%e126590126608%_
                                                (##unchecked-structure-ref
                                                 _%in126586126594%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out126611%_
                                                _%e126590126608%_)
                                               (_%e126591126613%_
                                                (##unchecked-structure-ref
                                                 _%in126586126594%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key126616%_
                                                _%e126591126613%_)
                                               (_%e126592126618%_
                                                (##unchecked-structure-ref
                                                 _%in126586126594%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi126621%_
                                                _%e126592126618%_))
                                          (_%K126589126605%_
                                           _%phi126621%_
                                           _%key126616%_
                                           _%out126611%_))
                                        (_%E126588126598%_)))))
                               (_%fold-e126505%_
                                (lambda (_%in126507%_ _%r126508%_)
                                  (let* ((_%in126509126523%_ _%in126507%_)
                                         (_%else126512126531%_
                                          (lambda () _%r126508%_)))
                                    (let ((_%K126518126567%_
                                           (lambda (_%phi126563%_
                                                    _%key126564%_
                                                    _%out126565%_)
                                             (if (and (fx= _%phi126563%_
                                                           _%current-phi126503%_)
                                                      (eq? _%src126499%_
                                                           (##unchecked-structure-ref
                                                            _%out126565%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export126504%_
                                                        _%in126507%_)
                                                       _%r126508%_)
                                                 _%r126508%_)))
                                          (_%K126514126542%_
                                           (lambda (_%imports126535%_
                                                    _%phi126536%_
                                                    _%ctx126537%_)
                                             (if (and (fx= _%phi126536%_
                                                           _%current-phi126503%_)
                                                      (eq? _%src126499%_
                                                           _%ctx126537%_))
                                                 (__foldl1
                                                  (lambda (_%in126539%_
                                                           _%r126540%_)
                                                    (cons (_%import->export126504%_
                                                           _%in126539%_)
                                                          _%r126540%_))
                                                  _%r126508%_
                                                  _%imports126535%_)
                                                 _%r126508%_))))
                                      (let ((_%try-match126511126560%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in126509126523%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e126515126545%_
                                                           (##unchecked-structure-ref
                                                            _%in126509126523%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e126516126550%_
                                                           (##unchecked-structure-ref
                                                            _%in126509126523%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e126517126555%_
                                                           (##unchecked-structure-ref
                                                            _%in126509126523%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx126548%_
                                                            _%e126515126545%_)
                                                           (_%phi126553%_
                                                            _%e126516126550%_)
                                                           (_%imports126558%_
                                                            _%e126517126555%_))
                                                       (_%K126514126542%_
                                                        _%imports126558%_
                                                        _%phi126553%_
                                                        _%ctx126548%_)))
                                                   (_%else126512126531%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in126509126523%_
                                             'gx#module-import::t)
                                            (let* ((_%e126519126570%_
                                                    (##unchecked-structure-ref
                                                     _%in126509126523%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e126520126575%_
                                                    (##unchecked-structure-ref
                                                     _%in126509126523%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e126521126580%_
                                                    (##unchecked-structure-ref
                                                     _%in126509126523%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out126573%_
                                                     _%e126519126570%_)
                                                    (_%key126578%_
                                                     _%e126520126575%_)
                                                    (_%phi126583%_
                                                     _%e126521126580%_))
                                                (_%K126518126567%_
                                                 _%phi126583%_
                                                 _%key126578%_
                                                 _%out126573%_)))
                                            (_%try-match126511126560%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src126499%_
                              _%current-phi126503%_
                              (__foldl1
                               _%fold-e126505%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx126502%_
                                '8
                                '#f
                                '#f)))
                             _%r126500%_))))
                  (_%export!126470%_
                   (lambda (_%rbody126486%_)
                     (letrec* ((_%current-ctx126488%_
                                (gx#current-expander-context))
                               (_%fold-e126489%_
                                (lambda (_%out126493%_ _%r126494%_)
                                  (if (##structure-direct-instance-of?
                                       _%out126493%_
                                       'gx#module-export::t)
                                      (cons _%out126493%_ _%r126494%_)
                                      (if (##structure-direct-instance-of?
                                           _%out126493%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r126494%_
                                           (##unchecked-structure-ref
                                            _%out126493%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r126494%_)))))
                       (let ((_%body126491%_ (reverse _%rbody126486%_)))
                         (##unchecked-structure-set!
                          _%current-ctx126488%_
                          (__foldl1
                           _%fold-e126489%_
                           (##unchecked-structure-ref
                            _%current-ctx126488%_
                            '9
                            '#f
                            '#f)
                           _%body126491%_)
                          '9
                          '#f
                          '#f)
                         _%body126491%_))))
                  (_%expanded-export?126471%_
                   (lambda (_%e126481%_)
                     (let ((_%$e126483%_
                            (##structure-direct-instance-of?
                             _%e126481%_
                             'gx#module-export::t)))
                       (if _%$e126483%_
                           _%$e126483%_
                           (##structure-direct-instance-of?
                            _%e126481%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?126465%_)
              (let ((_%rbody126477%_
                     (gx#core-expand-import/export
                      _%stx126464%_
                      _%expanded-export?126471%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1126468%_)))
                (if _%internal-expand?126465%_
                    (reverse _%rbody126477%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!126470%_ _%rbody126477%_))
                     (gx#stx-source _%stx126464%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx126464%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx126464%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx126963%_)
        (let ((_%internal-expand?126965%_ '#f))
          (gx#core-expand-export%__%
           _%stx126963%_
           _%internal-expand?126965%_))))
    (define gx#core-expand-export%
      (lambda _g130041_
        (let ((_g130040_ (##length _g130041_)))
          (cond ((##fx= _g130040_ 1)
                 (apply gx#core-expand-export%__0 _g130041_))
                ((##fx= _g130040_ 2)
                 (apply gx#core-expand-export%__% _g130041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g130041_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd126461%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd126461%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx126431%_)
        (let* ((_%e126432126439%_ _%stx126431%_)
               (_%E126434126443%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126432126439%_)))
               (_%E126433126457%_
                (lambda ()
                  (if (gx#stx-pair? _%e126432126439%_)
                      (let ((_%e126435126447%_
                             (gx#syntax-e _%e126432126439%_)))
                        (let ((_%hd126436126450%_ (##car _%e126435126447%_))
                              (_%tl126437126452%_ (##cdr _%e126435126447%_)))
                          (let ((_%body126455%_ _%tl126437126452%_))
                            (if (gx#identifier-list? _%body126455%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body126455%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body126455%_))
                                   (gx#stx-source _%stx126431%_)))
                                (_%E126434126443%_)))))
                      (_%E126434126443%_)))))
          (_%E126433126457%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id126397%_ _%private?126398%_ _%phi126399%_ _%ctx126400%_)
        (gx#core-bind-syntax!__%
         _%id126397%_
         ((if _%private?126398%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id126397%_))
         _%private?126398%_
         _%phi126399%_
         _%ctx126400%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id126405%_)
        (let* ((_%private?126407%_ '#f)
               (_%phi126409%_ (gx#current-expander-phi))
               (_%ctx126411%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126405%_
           _%private?126407%_
           _%phi126409%_
           _%ctx126411%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id126413%_ _%private?126414%_)
        (let* ((_%phi126416%_ (gx#current-expander-phi))
               (_%ctx126418%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126413%_
           _%private?126414%_
           _%phi126416%_
           _%ctx126418%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id126420%_ _%private?126421%_ _%phi126422%_)
        (let ((_%ctx126424%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126420%_
           _%private?126421%_
           _%phi126422%_
           _%ctx126424%_))))
    (define gx#core-bind-feature!
      (lambda _g130043_
        (let ((_g130042_ (##length _g130043_)))
          (cond ((##fx= _g130042_ 1)
                 (apply gx#core-bind-feature!__0 _g130043_))
                ((##fx= _g130042_ 2)
                 (apply gx#core-bind-feature!__1 _g130043_))
                ((##fx= _g130042_ 3)
                 (apply gx#core-bind-feature!__2 _g130043_))
                ((##fx= _g130042_ 4)
                 (apply gx#core-bind-feature!__% _g130043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g130043_))))))))
