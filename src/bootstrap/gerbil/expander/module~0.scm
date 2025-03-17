(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1742222167)
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
      (lambda _%$args129987%_
        (apply make-instance gx#module-import::t _%$args129987%_)))
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
      (lambda _%$args129984%_
        (apply make-instance gx#module-export::t _%$args129984%_)))
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
      (lambda _%$args129981%_
        (apply make-instance gx#import-set::t _%$args129981%_)))
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
      (lambda _%$args129978%_
        (apply make-instance gx#export-set::t _%$args129978%_)))
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
      (lambda _%$args129975%_
        (apply make-instance gx#import-expander::t _%$args129975%_)))
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
      (lambda _%$args129972%_
        (apply make-instance gx#export-expander::t _%$args129972%_)))
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
      (lambda _%$args129969%_
        (apply make-instance gx#import-export-expander::t _%$args129969%_)))
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
      (lambda (_%path129966%_ _%fun129967%_)
        (call-with-input-file
         (cons 'path: (cons _%path129966%_ gx#source-file-settings))
         _%fun129967%_)))
    (define gx#module-context:::init!
      (lambda (_%self126418129947%_
               _%id129949%_
               _%super129950%_
               _%ns129951%_
               _%path129952%_)
        (let* ((_%self129954%_ _%self126418129947%_)
               (_%self129956%_ _%self129954%_))
          (if (##fx< '11 (##structure-length _%self129956%_))
              (begin
                (##unchecked-structure-set!
                 _%self129956%_
                 _%id129949%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129956%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129956%_
                 _%super129950%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129956%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self129956%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self129956%_
                 _%ns129951%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129956%_
                 _%path129952%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129956%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self129956%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self129956%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self129956%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129956%_
                     '11
                     (##structure-length _%self129956%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self126419129778%_ _%ctx129780%_ _%root129781%_)
        (let* ((_%self129783%_ _%self126419129778%_)
               (_%self129785%_ _%self129783%_)
               (_%super129801%_
                (let ((_%$e129795%_ _%root129781%_))
                  (if _%$e129795%_
                      _%$e129795%_
                      (let ((_%$e129798%_ (gx#core-context-root__0)))
                        (if _%$e129798%_
                            _%$e129798%_
                            (let ((__obj130031
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor130032
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj130031
                                      ':init!)))
                                (if __constructor130032
                                    (__constructor130032 __obj130031)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj130031)))))))
          (if _%ctx129780%_
              (let ((_%id129804%_
                     (##structure-ref
                      _%ctx129780%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path129805%_
                     (##structure-ref
                      _%ctx129780%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in129806%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx129780%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e129807%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx129780%_)))))
                (if (##fx< '8 (##structure-length _%self129785%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self129785%_
                       _%id129804%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129785%_
                       (make-hash-table-eq 'size: (##length _%in129806%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129785%_
                       _%super129801%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129785%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129785%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129785%_
                       _%path129805%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129785%_
                       _%in129806%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129785%_
                       _%e129807%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self129785%_
                           '8
                           (##structure-length _%self129785%_)))
                (##for-each
                 (lambda (_%g129808129810%_)
                   (gx#core-bind-weak-import!__%
                    _%g129808129810%_
                    _%self129785%_))
                 _%in129806%_))
              (if (##fx< '8 (##structure-length _%self129785%_))
                  (begin
                    (##unchecked-structure-set! _%self129785%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self129785%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self129785%_
                     _%super129801%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self129785%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self129785%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self129785%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self129785%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self129785%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self129785%_
                         '8
                         (##structure-length _%self129785%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self126419129816%_ _%ctx129817%_)
        (let ((_%root129819%_ '#f))
          (gx#prelude-context:::init!__%
           _%self126419129816%_
           _%ctx129817%_
           _%root129819%_))))
    (define gx#prelude-context:::init!
      (lambda _g130038_
        (let ((_g130037_ (##length _g130038_)))
          (cond ((##fx= _g130037_ 2)
                 (apply gx#prelude-context:::init!__0 _g130038_))
                ((##fx= _g130037_ 3)
                 (apply gx#prelude-context:::init!__% _g130038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g130038_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self129652%_ _%e129653%_)
        (if (##fx< '3 (##structure-length _%self129652%_))
            (begin
              (##unchecked-structure-set!
               _%self129652%_
               _%e129653%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self129652%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self129652%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self129652%_
                   '3
                   (##structure-length _%self129652%_)))))
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
      (lambda (_%g129278129281%_ _%g129279129283%_)
        (gx#core-apply-user-expander__%
         _%g129278129281%_
         _%g129279129283%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g129149129152%_ _%g129150129154%_)
        (gx#core-apply-user-expander__%
         _%g129149129152%_
         _%g129150129154%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx129020%_)
        (let* ((_%path129022%_
                (##structure-ref _%ctx129020%_ '7 gx#module-context::t '#f))
               (_%path129024%_
                (if (pair? _%path129022%_)
                    (##last _%path129022%_)
                    _%path129022%_)))
          (if (string? _%path129024%_) _%path129024%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path128996%_ _%reload?128997%_ _%eval?128998%_)
        (let ((_%ctx129000%_
               ((gx#current-expander-module-import)
                _%path128996%_
                _%reload?128997%_)))
          (if (and _%ctx129000%_ _%eval?128998%_)
              (gx#eval-module _%ctx129000%_)
              '#!void)
          _%ctx129000%_)))
    (define gx#import-module__0
      (lambda (_%path129005%_)
        (let* ((_%reload?129007%_ '#f) (_%eval?129009%_ '#f))
          (gx#import-module__%
           _%path129005%_
           _%reload?129007%_
           _%eval?129009%_))))
    (define gx#import-module__1
      (lambda (_%path129011%_ _%reload?129012%_)
        (let ((_%eval?129014%_ '#f))
          (gx#import-module__%
           _%path129011%_
           _%reload?129012%_
           _%eval?129014%_))))
    (define gx#import-module
      (lambda _g130040_
        (let ((_g130039_ (##length _g130040_)))
          (cond ((##fx= _g130039_ 1) (apply gx#import-module__0 _g130040_))
                ((##fx= _g130039_ 2) (apply gx#import-module__1 _g130040_))
                ((##fx= _g130039_ 3) (apply gx#import-module__% _g130040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g130040_))))))
    (define gx#eval-module
      (lambda (_%mod128993%_)
        ((gx#current-expander-module-eval) _%mod128993%_)))
    (define gx#core-eval-module
      (lambda (_%obj128973%_)
        (letrec ((_%force-e128975%_
                  (lambda (_%getf128989%_ _%e128990%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf128989%_ _%e128990%_)))
                     gx#current-expander-context
                     _%e128990%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur128977%_ ((_%e128979%_ _%obj128973%_))
            (if (##structure-instance-of? _%e128979%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e128982%_
                         (gx#core-context-prelude__% _%e128979%_)))
                    (if _%$e128982%_ (_%recur128977%_ _%$e128982%_) '#!void))
                  (_%force-e128975%_ gx#module-context-e _%e128979%_))
                (if (##structure-instance-of?
                     _%e128979%_
                     'gx#prelude-context::t)
                    (_%force-e128975%_ gx#prelude-context-e _%e128979%_)
                    (if (gx#stx-string? _%e128979%_)
                        (_%recur128977%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e128979%_)))
                        (if (gx#core-library-module-path? _%e128979%_)
                            (_%recur128977%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e128979%_)))
                            (error '"cannot eval module" _%obj128973%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx128953%_)
        (let _%lp128955%_ ((_%e128957%_ _%ctx128953%_))
          (if (or (##structure-instance-of? _%e128957%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e128957%_ 'gx#local-context::t))
              (_%lp128955%_ (##unchecked-structure-ref _%e128957%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e128957%_ 'gx#prelude-context::t)
                  _%e128957%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx128969%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx128969%_))))
    (define gx#core-context-prelude
      (lambda _g130042_
        (let ((_g130041_ (##length _g130042_)))
          (cond ((##fx= _g130041_ 0)
                 (apply gx#core-context-prelude__0 _g130042_))
                ((##fx= _g130041_ 1)
                 (apply gx#core-context-prelude__% _g130042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g130042_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx128944%_)
        (let ((_%$e128946%_ (__hash-get gx#__module-registry _%ctx128944%_)))
          (if _%$e128946%_
              _%$e128946%_
              (let ((_%pre128950%_
                     (let ((__obj130033
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
                        __obj130033
                        _%ctx128944%_)
                       __obj130033)))
                (__hash-put! gx#__module-registry _%ctx128944%_ _%pre128950%_)
                _%pre128950%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath128816%_ _%reload?128817%_)
        (letrec ((_%import-source128819%_
                  (lambda (_%path128908%_)
                    (if (member _%path128908%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path128908%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g130043_ (gx#core-read-module _%path128908%_)))
                         (begin
                           (let ((_g130044_
                                  (if (##values? _g130043_)
                                      (##values-length _g130043_)
                                      1)))
                             (if (not (##fx= _g130044_ 4))
                                 (error "Context expects 4 values" _g130044_)))
                           (let ((_%pre128911%_ (##values-ref _g130043_ 0))
                                 (_%id128912%_ (##values-ref _g130043_ 1))
                                 (_%ns128913%_ (##values-ref _g130043_ 2))
                                 (_%body128914%_ (##values-ref _g130043_ 3)))
                             (let* ((_%prelude128924%_
                                     (if (##structure-instance-of?
                                          _%pre128911%_
                                          'gx#prelude-context::t)
                                         _%pre128911%_
                                         (if (##structure-instance-of?
                                              _%pre128911%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre128911%_)
                                             (if (string? _%pre128911%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre128911%_))
                                                 (if (not _%pre128911%_)
                                                     (let ((_%$e128920%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e128920%_
                                                           _%$e128920%_
                                                           (let ((__obj130034
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
                     (gx#prelude-context:::init!__0 __obj130034 '#f)
                     __obj130034)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath128816%_
                                                            _%pre128911%_))))))
                                    (_%ctx128926%_
                                     (let ((__obj130035
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
                                        __obj130035
                                        _%id128912%_
                                        _%prelude128924%_
                                        _%ns128913%_
                                        _%path128908%_)
                                       __obj130035))
                                    (_%body128928%_
                                     (gx#core-expand-module-begin
                                      _%body128914%_
                                      _%ctx128926%_))
                                    (_%body128930%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body128928%_)
                                      _%path128908%_
                                      _%ctx128926%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx128926%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body128930%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx128926%_
                                _%body128930%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path128908%_
                                _%ctx128926%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id128912%_
                                _%ctx128926%_)
                               _%ctx128926%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path128908%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule128820%_
                  (lambda (_%rpath128836%_)
                    (let* ((_%rpath128837128844%_ _%rpath128836%_)
                           (_%E128839128848%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath128837128844%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K128840128896%_
                            (lambda (_%refs128851%_ _%origin128852%_)
                              (let ((_%ctx128854%_
                                     (if _%origin128852%_
                                         (gx#core-import-module__%
                                          _%origin128852%_
                                          _%reload?128817%_)
                                         (gx#current-expander-context))))
                                (let _%lp128856%_ ((_%rest128858%_
                                                    _%refs128851%_)
                                                   (_%ctx128859%_
                                                    _%ctx128854%_))
                                  (let* ((_%rest128860128868%_ _%rest128858%_)
                                         (_%else128862128876%_
                                          (lambda () _%ctx128859%_))
                                         (_%K128864128884%_
                                          (lambda (_%rest128879%_ _%id128880%_)
                                            (let ((_%bind128882%_
                                                   (gx#resolve-identifier__%
                                                    _%id128880%_
                                                    '0
                                                    _%ctx128859%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind128882%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind128882%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp128856%_
                                                   _%rest128879%_
                                                   (##unchecked-structure-ref
                                                    _%bind128882%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath128836%_
                                                         _%id128880%_
                                                         _%bind128882%_))))))
                                    (if (pair? _%rest128860128868%_)
                                        (let ((_%hd128865128887%_
                                               (##car _%rest128860128868%_))
                                              (_%tl128866128889%_
                                               (##cdr _%rest128860128868%_)))
                                          (let* ((_%id128892%_
                                                  _%hd128865128887%_)
                                                 (_%rest128894%_
                                                  _%tl128866128889%_))
                                            (_%K128864128884%_
                                             _%rest128894%_
                                             _%id128892%_)))
                                        (_%else128862128876%_))))))))
                      (if (pair? _%rpath128837128844%_)
                          (let ((_%hd128841128899%_
                                 (##car _%rpath128837128844%_))
                                (_%tl128842128901%_
                                 (##cdr _%rpath128837128844%_)))
                            (let* ((_%origin128904%_ _%hd128841128899%_)
                                   (_%refs128906%_ _%tl128842128901%_))
                              (_%K128840128896%_
                               _%refs128906%_
                               _%origin128904%_)))
                          (_%E128839128848%_))))))
          (let ((_%$e128822%_
                 (if (not _%reload?128817%_)
                     (__hash-get gx#__module-registry _%rpath128816%_)
                     '#f)))
            (if _%$e128822%_
                _%$e128822%_
                (if (list? _%rpath128816%_)
                    (_%import-submodule128820%_ _%rpath128816%_)
                    (if (gx#core-library-module-path? _%rpath128816%_)
                        (let ((_%ctx128827%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath128816%_)
                                _%reload?128817%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath128816%_
                           _%ctx128827%_)
                          _%ctx128827%_)
                        (let* ((_%npath128830%_
                                (path-normalize _%rpath128816%_))
                               (_%$e128832%_
                                (if (not _%reload?128817%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath128830%_)
                                    '#f)))
                          (if _%$e128832%_
                              _%$e128832%_
                              (_%import-source128819%_
                               _%npath128830%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath128937%_)
        (let ((_%reload?128939%_ '#f))
          (gx#core-import-module__% _%rpath128937%_ _%reload?128939%_))))
    (define gx#core-import-module
      (lambda _g130046_
        (let ((_g130045_ (##length _g130046_)))
          (cond ((##fx= _g130045_ 1)
                 (apply gx#core-import-module__0 _g130046_))
                ((##fx= _g130045_ 2)
                 (apply gx#core-import-module__% _g130046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g130046_))))))
    (define gx#core-read-module
      (lambda (_%path128805%_)
        (__with-catch
         (lambda (_%exn128807%_)
           (if (and (datum-parsing-exception? _%exn128807%_)
                    (eq? (datum-parsing-exception-filepos _%exn128807%_) '0))
               (gx#core-read-module/lang _%path128805%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path128805%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g128809128811%_)
                      (display-exception__% _%exn128807%_ _%g128809128811%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path128805%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path128657%_)
        (let _%lp128659%_ ((_%body128661%_
                            (read-syntax-from-file _%path128657%_))
                           (_%pre128662%_ '#f)
                           (_%ns128663%_ '#f)
                           (_%pkg128664%_ '#f))
          (let* ((_%e128665128689%_ _%body128661%_)
                 (_%E128681128715%_
                  (lambda ()
                    (let ((_g130047_
                           (if _%pkg128664%_
                               (values _%pre128662%_
                                       _%ns128663%_
                                       _%pkg128664%_)
                               (gx#core-read-module-package
                                _%path128657%_
                                _%pre128662%_
                                _%ns128663%_))))
                      (begin
                        (let ((_g130048_
                               (if (##values? _g130047_)
                                   (##values-length _g130047_)
                                   1)))
                          (if (not (##fx= _g130048_ 3))
                              (error "Context expects 3 values" _g130048_)))
                        (let ((_%pre128693%_ (##values-ref _g130047_ 0))
                              (_%ns128694%_ (##values-ref _g130047_ 1))
                              (_%pkg128695%_ (##values-ref _g130047_ 2)))
                          (let* ((_%prelude128701%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre128693%_)
                                      (gx#syntax-local-e__0 _%pre128693%_)
                                      (if (gx#core-library-module-path?
                                           _%pre128693%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre128693%_)
                                          (if (gx#stx-string? _%pre128693%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre128693%_
                                               _%path128657%_)
                                              (gx#stx-e _%pre128693%_)))))
                                 (_%path-id128703%_
                                  (gx#core-module-path->namespace
                                   _%path128657%_))
                                 (_%pkg-id128705%_
                                  (if _%pkg128695%_
                                      (##string-append
                                       _%pkg128695%_
                                       '"/"
                                       _%path-id128703%_)
                                      _%path-id128703%_))
                                 (_%module-id128707%_
                                  (##string->symbol _%pkg-id128705%_))
                                 (_%module-ns128712%_
                                  (if (eq? _%ns128694%_ '#!void)
                                      '#f
                                      (let ((_%$e128709%_ _%ns128694%_))
                                        (if _%$e128709%_
                                            _%$e128709%_
                                            _%pkg-id128705%_)))))
                            (values _%prelude128701%_
                                    _%module-id128707%_
                                    _%module-ns128712%_
                                    _%body128661%_)))))))
                 (_%E128674128747%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128665128689%_)
                        (let ((_%e128682128719%_
                               (gx#syntax-e _%e128665128689%_)))
                          (let ((_%hd128683128722%_ (##car _%e128682128719%_))
                                (_%tl128684128724%_ (##cdr _%e128682128719%_)))
                            (if (eq? (gx#stx-e _%hd128683128722%_) 'package:)
                                (if (gx#stx-pair? _%tl128684128724%_)
                                    (let ((_%e128685128727%_
                                           (gx#syntax-e _%tl128684128724%_)))
                                      (let ((_%hd128686128730%_
                                             (##car _%e128685128727%_))
                                            (_%tl128687128732%_
                                             (##cdr _%e128685128727%_)))
                                        (let* ((_%pkg128735%_
                                                _%hd128686128730%_)
                                               (_%rest128737%_
                                                _%tl128687128732%_)
                                               (_%pkg128745%_
                                                (if (gx#identifier?
                                                     _%pkg128735%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg128735%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg128735%_)
                                                            (gx#stx-false?
                                                             _%pkg128735%_))
                                                        (gx#stx-e
                                                         _%pkg128735%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg128735%_)))))
                                          (_%lp128659%_
                                           _%rest128737%_
                                           _%pre128662%_
                                           _%ns128663%_
                                           _%pkg128745%_))))
                                    (_%E128681128715%_))
                                (_%E128681128715%_))))
                        (_%E128681128715%_))))
                 (_%E128667128777%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128665128689%_)
                        (let ((_%e128675128751%_
                               (gx#syntax-e _%e128665128689%_)))
                          (let ((_%hd128676128754%_ (##car _%e128675128751%_))
                                (_%tl128677128756%_ (##cdr _%e128675128751%_)))
                            (if (eq? (gx#stx-e _%hd128676128754%_) 'namespace:)
                                (if (gx#stx-pair? _%tl128677128756%_)
                                    (let ((_%e128678128759%_
                                           (gx#syntax-e _%tl128677128756%_)))
                                      (let ((_%hd128679128762%_
                                             (##car _%e128678128759%_))
                                            (_%tl128680128764%_
                                             (##cdr _%e128678128759%_)))
                                        (let* ((_%ns128767%_
                                                _%hd128679128762%_)
                                               (_%rest128769%_
                                                _%tl128680128764%_)
                                               (_%ns128775%_
                                                (if (gx#identifier?
                                                     _%ns128767%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns128767%_))
                                                    (if (gx#stx-string?
                                                         _%ns128767%_)
                                                        (gx#stx-e _%ns128767%_)
                                                        (if (gx#stx-false?
                                                             _%ns128767%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns128767%_))))))
                                          (_%lp128659%_
                                           _%rest128769%_
                                           _%pre128662%_
                                           _%ns128775%_
                                           _%pkg128664%_))))
                                    (_%E128674128747%_))
                                (_%E128674128747%_))))
                        (_%E128674128747%_))))
                 (_%E128666128801%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128665128689%_)
                        (let ((_%e128668128781%_
                               (gx#syntax-e _%e128665128689%_)))
                          (let ((_%hd128669128784%_ (##car _%e128668128781%_))
                                (_%tl128670128786%_ (##cdr _%e128668128781%_)))
                            (if (eq? (gx#stx-e _%hd128669128784%_) 'prelude:)
                                (if (gx#stx-pair? _%tl128670128786%_)
                                    (let ((_%e128671128789%_
                                           (gx#syntax-e _%tl128670128786%_)))
                                      (let ((_%hd128672128792%_
                                             (##car _%e128671128789%_))
                                            (_%tl128673128794%_
                                             (##cdr _%e128671128789%_)))
                                        (let* ((_%prelude128797%_
                                                _%hd128672128792%_)
                                               (_%rest128799%_
                                                _%tl128673128794%_))
                                          (_%lp128659%_
                                           _%rest128799%_
                                           _%prelude128797%_
                                           _%ns128663%_
                                           _%pkg128664%_))))
                                    (_%E128667128777%_))
                                (_%E128667128777%_))))
                        (_%E128667128777%_)))))
            (_%E128666128801%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path128479%_)
        (letrec ((_%default-read-module-body128481%_
                  (lambda (_%inp128649%_)
                    (let _%lp128651%_ ((_%body128653%_ '()))
                      (let ((_%next128655%_ (read-syntax__% _%inp128649%_)))
                        (if (eof-object? _%next128655%_)
                            (reverse _%body128653%_)
                            (_%lp128651%_
                             (cons _%next128655%_ _%body128653%_)))))))
                 (_%read-body128482%_
                  (lambda (_%inp128567%_
                           _%pre128568%_
                           _%ns128569%_
                           _%pkg128570%_
                           _%args128571%_)
                    (let ((_g130049_
                           (if _%pkg128570%_
                               (values _%pre128568%_
                                       _%ns128569%_
                                       _%pkg128570%_)
                               (gx#core-read-module-package
                                _%path128479%_
                                _%pre128568%_
                                _%ns128569%_))))
                      (begin
                        (let ((_g130050_
                               (if (##values? _g130049_)
                                   (##values-length _g130049_)
                                   1)))
                          (if (not (##fx= _g130050_ 3))
                              (error "Context expects 3 values" _g130050_)))
                        (let ((_%pre128573%_ (##values-ref _g130049_ 0))
                              (_%ns128574%_ (##values-ref _g130049_ 1))
                              (_%pkg128575%_ (##values-ref _g130049_ 2)))
                          (let* ((_%prelude128577%_
                                  (gx#import-module__0 _%pre128573%_))
                                 (_%read-module-body128632%_
                                  (let ((_%$e128623%_
                                         (__find (lambda (_%e128578128580%_)
                                                   (let* ((_%g128582128592%_
                                                           _%e128578128580%_)
                                                          (_%else128584128600%_
                                                           (lambda () '#f))
                                                          (_%K128586128604%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g128582128592%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e128587128607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g128582128592%_
                          '1
                          '#f
                          '#f))
                        (_%e128588128610%_
                         (##unchecked-structure-ref
                          _%g128582128592%_
                          '2
                          '#f
                          '#f))
                        (_%e128589128613%_
                         (##unchecked-structure-ref
                          _%g128582128592%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e128589128613%_ '1)
                       (let ((_%e128590128616%_
                              (##unchecked-structure-ref
                               _%g128582128592%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g128618128620%_)
                                (eq? _%g128618128620%_ 'read-module-body))
                              _%e128590128616%_)
                             (_%K128586128604%_)
                             (_%else128584128600%_)))
                       (_%else128584128600%_)))
                 (_%else128584128600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude128577%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e128623%_
                                        ((lambda (_%xport128626%_)
                                           (let ((_%proc128629%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport128626%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc128629%_)
                                                 _%proc128629%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path128479%_
                                                  _%pre128573%_
                                                  _%proc128629%_))))
                                         _%$e128623%_)
                                        _%default-read-module-body128481%_)))
                                 (_%path-id128634%_
                                  (gx#core-module-path->namespace
                                   _%path128479%_))
                                 (_%pkg-id128636%_
                                  (if _%pkg128575%_
                                      (##string-append
                                       _%pkg128575%_
                                       '"/"
                                       _%path-id128634%_)
                                      _%path-id128634%_))
                                 (_%module-id128638%_
                                  (##string->symbol _%pkg-id128636%_))
                                 (_%module-ns128643%_
                                  (let ((_%$e128640%_ _%ns128574%_))
                                    (if _%$e128640%_
                                        _%$e128640%_
                                        _%pkg-id128636%_)))
                                 (_%body128646%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body128632%_
                                      _%inp128567%_))
                                   gx#current-module-reader-path
                                   _%path128479%_
                                   gx#current-module-reader-args
                                   _%args128571%_)))
                            (values _%prelude128577%_
                                    _%module-id128638%_
                                    _%module-ns128643%_
                                    _%body128646%_)))))))
                 (_%string-e128483%_
                  (lambda (_%obj128561%_ _%what128562%_)
                    (if (string? _%obj128561%_)
                        _%obj128561%_
                        (if (symbol? _%obj128561%_)
                            (##symbol->string _%obj128561%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what128562%_)
                             _%path128479%_
                             _%obj128561%_)))))
                 (_%read-lang-args128484%_
                  (lambda (_%inp128516%_ _%args128517%_)
                    (let* ((_%args128518128526%_ _%args128517%_)
                           (_%else128520128534%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path128479%_)))
                           (_%K128522128549%_
                            (lambda (_%args128537%_ _%prelude128538%_)
                              (let* ((_%pkg128540%_
                                      (pgetq__0 'package: _%args128537%_))
                                     (_%pkg128542%_
                                      (if _%pkg128540%_
                                          (_%string-e128483%_
                                           _%pkg128540%_
                                           '"package")
                                          '#f))
                                     (_%ns128544%_
                                      (pgetq__0 'namespace: _%args128537%_))
                                     (_%ns128546%_
                                      (if _%ns128544%_
                                          (_%string-e128483%_
                                           _%ns128544%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body128482%_
                                 _%inp128516%_
                                 _%prelude128538%_
                                 _%ns128546%_
                                 _%pkg128542%_
                                 _%args128537%_)))))
                      (if (pair? _%args128518128526%_)
                          (let ((_%hd128523128552%_
                                 (##car _%args128518128526%_))
                                (_%tl128524128554%_
                                 (##cdr _%args128518128526%_)))
                            (let* ((_%prelude128557%_ _%hd128523128552%_)
                                   (_%args128559%_ _%tl128524128554%_))
                              (_%K128522128549%_
                               _%args128559%_
                               _%prelude128557%_)))
                          (_%else128520128534%_)))))
                 (_%read-lang128485%_
                  (lambda (_%inp128490%_)
                    (let* ((_%head128492%_ (read-line _%inp128490%_))
                           (_%$e128494%_
                            (string-index__0 _%head128492%_ '#\space)))
                      (if _%$e128494%_
                          ((lambda (_%ix128497%_)
                             (let ((_%lang128499%_
                                    (substring
                                     _%head128492%_
                                     '0
                                     _%ix128497%_)))
                               (if (equal? _%lang128499%_ '"#lang")
                                   (let* ((_%rest128501%_
                                           (substring
                                            _%head128492%_
                                            (##fx+ _%ix128497%_ '1)
                                            (string-length _%head128492%_)))
                                          (_%args128512%_
                                           (__with-catch
                                            (lambda (_%g128502128504%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path128479%_
                                               _%g128502128504%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest128501%_
                                               (lambda (_%g128507128509%_)
                                                 (read-all
                                                  _%g128507128509%_
                                                  read)))))))
                                     (_%read-lang-args128484%_
                                      _%inp128490%_
                                      _%args128512%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path128479%_))))
                           _%$e128494%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path128479%_)))))
                 (_%read-e128486%_
                  (lambda (_%inp128488%_)
                    (if (eq? (peek-char _%inp128488%_) '#\#)
                        (_%read-lang128485%_ _%inp128488%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path128479%_)))))
          (gx#call-with-input-source-file _%path128479%_ _%read-e128486%_))))
    (define gx#core-read-module-package
      (lambda (_%path128427%_ _%pre128428%_ _%ns128429%_)
        (letrec ((_%string-e128431%_
                  (lambda (_%e128474%_)
                    (if (symbol? _%e128474%_)
                        (##symbol->string _%e128474%_)
                        (if (string? _%e128474%_)
                            _%e128474%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e128474%_))))))
          (let _%lp128433%_ ((_%dir128435%_ (path-directory _%path128427%_))
                             (_%pkg-path128436%_ '()))
            (let ((_%gerbil.pkg128438%_
                   (path-expand '"gerbil.pkg" _%dir128435%_)))
              (if (##file-exists? _%gerbil.pkg128438%_)
                  (let ((_%plist128440%_
                         (gx#core-library-package-plist__% _%dir128435%_ '#t)))
                    (if (null? _%plist128440%_)
                        (let ((_%pkg128443%_
                               (if (null? _%pkg-path128436%_)
                                   '#f
                                   (string-join _%pkg-path128436%_ '"/"))))
                          (values _%pre128428%_ _%ns128429%_ _%pkg128443%_))
                        (if (list? _%plist128440%_)
                            (let* ((_%root128446%_
                                    (pgetq__0 'package: _%plist128440%_))
                                   (_%pkg128450%_
                                    (let ((_%pkg-path128448%_
                                           (if _%root128446%_
                                               (cons (_%string-e128431%_
                                                      _%root128446%_)
                                                     _%pkg-path128436%_)
                                               _%pkg-path128436%_)))
                                      (if (null? _%pkg-path128448%_)
                                          '#f
                                          (string-join
                                           _%pkg-path128448%_
                                           '"/"))))
                                   (_%ns128457%_
                                    (let ((_%ns128455%_
                                           (let ((_%$e128452%_ _%ns128429%_))
                                             (if _%$e128452%_
                                                 _%$e128452%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist128440%_)))))
                                      (if _%ns128455%_
                                          (_%string-e128431%_ _%ns128455%_)
                                          '#f)))
                                   (_%pre128462%_
                                    (let ((_%$e128459%_ _%pre128428%_))
                                      (if _%$e128459%_
                                          _%$e128459%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist128440%_)))))
                              (values _%pre128462%_
                                      _%ns128457%_
                                      _%pkg128450%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist128440%_))))
                  (let ((_%dir*128466%_
                         (path-strip-trailing-directory-separator
                          _%dir128435%_)))
                    (if (or (__string-empty? _%dir*128466%_)
                            (equal? _%dir128435%_ _%dir*128466%_))
                        (values _%pre128428%_ _%ns128429%_ '#f)
                        (let ((_%xpath128471%_
                               (path-strip-directory _%dir*128466%_))
                              (_%xdir128472%_ (path-directory _%dir*128466%_)))
                          (_%lp128433%_
                           _%xdir128472%_
                           (cons _%xpath128471%_ _%pkg-path128436%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path128425%_)
        (path-strip-extension (path-strip-directory _%path128425%_))))
    (define gx#core-module-path->id
      (lambda (_%path128423%_)
        (##string->symbol (gx#core-module-path->namespace _%path128423%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path128402%_ _%rel128403%_)
        (let* ((_%path128405%_ (gx#stx-e _%stx-path128402%_))
               (_%path128407%_
                (if (__string-empty? (path-extension _%path128405%_))
                    (##string-append _%path128405%_ '".ss")
                    _%path128405%_)))
          (gx#core-resolve-path__%
           _%path128407%_
           (let ((_%$e128410%_ (gx#stx-source _%stx-path128402%_)))
             (if _%$e128410%_ _%$e128410%_ _%rel128403%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path128416%_)
        (let ((_%rel128418%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path128416%_ _%rel128418%_))))
    (define gx#core-resolve-module-path
      (lambda _g130052_
        (let ((_g130051_ (##length _g130052_)))
          (cond ((##fx= _g130051_ 1)
                 (apply gx#core-resolve-module-path__0 _g130052_))
                ((##fx= _g130051_ 2)
                 (apply gx#core-resolve-module-path__% _g130052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g130052_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath128287%_)
        (let* ((_%spath128289%_ (symbol->string (gx#stx-e _%libpath128287%_)))
               (_%spath128291%_
                (substring
                 _%spath128289%_
                 '1
                 (##string-length _%spath128289%_)))
               (_%ext128293%_ (path-extension _%spath128291%_))
               (_%ssi128295%_
                (if (__string-empty? _%ext128293%_)
                    (##string-append _%spath128291%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath128291%_)
                     '".ssi")))
               (_%srcs128299%_
                (if (__string-empty? _%ext128293%_)
                    (##map (lambda (_%ext128297%_)
                             (string-append _%spath128291%_ _%ext128297%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath128291%_ '()))))
          (let _%lp128302%_ ((_%rest128304%_ (load-path)))
            (let* ((_%rest128305128314%_ _%rest128304%_)
                   (_%E128308128318%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest128305128314%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K128310128389%_
                     (lambda (_%rest128329%_ _%dir128330%_)
                       (letrec ((_%resolve128332%_
                                 (lambda (_%ssi128345%_ _%srcs128346%_)
                                   (let ((_%compiled-path128348%_
                                          (path-expand
                                           _%ssi128345%_
                                           _%dir128330%_)))
                                     (if (##file-exists?
                                          _%compiled-path128348%_)
                                         (path-normalize
                                          _%compiled-path128348%_)
                                         (let _%lpr128350%_ ((_%rest-src128352%_
                                                              _%srcs128346%_))
                                           (let* ((_%rest-src128353128361%_
                                                   _%rest-src128352%_)
                                                  (_%else128355128369%_
                                                   (lambda ()
                                                     (_%lp128302%_
                                                      _%rest128329%_)))
                                                  (_%K128357128377%_
                                                   (lambda (_%rest-src128372%_
                                                            _%src128373%_)
                                                     (let ((_%src-path128375%_
                                                            (path-expand
                                                             _%src128373%_
                                                             _%dir128330%_)))
                                                       (if (##file-exists?
                                                            _%src-path128375%_)
                                                           (path-normalize
                                                            _%src-path128375%_)
                                                           (_%lpr128350%_
                                                            _%rest-src128372%_))))))
                                             (if (pair? _%rest-src128353128361%_)
                                                 (let ((_%hd128358128380%_
                                                        (##car _%rest-src128353128361%_))
                                                       (_%tl128359128382%_
                                                        (##cdr _%rest-src128353128361%_)))
                                                   (let* ((_%src128385%_
                                                           _%hd128358128380%_)
                                                          (_%rest-src128387%_
                                                           _%tl128359128382%_))
                                                     (_%K128357128377%_
                                                      _%rest-src128387%_
                                                      _%src128385%_)))
                                                 (_%else128355128369%_)))))))))
                         (let ((_%$e128334%_
                                (gx#core-library-package-path-prefix
                                 _%dir128330%_)))
                           (if _%$e128334%_
                               ((lambda (_%prefix128337%_)
                                  (if (string-prefix?
                                       _%prefix128337%_
                                       _%spath128291%_)
                                      (let ((_%ssi128341%_
                                             (substring
                                              _%ssi128295%_
                                              (string-length _%prefix128337%_)
                                              (##string-length _%ssi128295%_)))
                                            (_%srcs128342%_
                                             (##map (lambda (_%src128339%_)
                                                      (substring
                                                       _%src128339%_
                                                       (string-length
                                                        _%prefix128337%_)
                                                       (string-length
                                                        _%src128339%_)))
                                                    _%srcs128299%_)))
                                        (_%resolve128332%_
                                         _%ssi128341%_
                                         _%srcs128342%_))
                                      (_%lp128302%_ _%rest128329%_)))
                                _%$e128334%_)
                               (_%resolve128332%_
                                _%ssi128295%_
                                _%srcs128299%_))))))
                    (_%K128309128323%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath128287%_))))
                (let ((_%try-match128307128326%_
                       (lambda ()
                         (if (null? _%rest128305128314%_)
                             (_%K128309128323%_)
                             (_%E128308128318%_)))))
                  (if (pair? _%rest128305128314%_)
                      (let ((_%tl128312128394%_ (##cdr _%rest128305128314%_))
                            (_%hd128311128392%_ (##car _%rest128305128314%_)))
                        (let ((_%dir128397%_ _%hd128311128392%_)
                              (_%rest128399%_ _%tl128312128394%_))
                          (_%K128310128389%_ _%rest128399%_ _%dir128397%_)))
                      (_%try-match128307128326%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath128255%_)
        (letrec ((_%resolve128257%_
                  (lambda (_%path128278%_ _%base128279%_)
                    (let ((_%$e128281%_
                           (string-rindex__0 _%base128279%_ '#\/)))
                      (if _%$e128281%_
                          ((lambda (_%idx128284%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base128279%_ '0 _%idx128284%_)
                                '"/"
                                _%path128278%_))))
                           _%$e128281%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path128278%_))))))))
          (let ((_%spath128259%_ (symbol->string (gx#stx-e _%modpath128255%_)))
                (_%mod128260%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod128260%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath128255%_))
            (let ((_%mpath128262%_
                   (symbol->string
                    (##structure-ref
                     _%mod128260%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp128264%_ ((_%spath128266%_ _%spath128259%_)
                                 (_%mpath128267%_ _%mpath128262%_))
                (if (string-prefix? '"../" _%spath128266%_)
                    (let ((_%$e128270%_
                           (string-rindex__0 _%mpath128267%_ '#\/)))
                      (if _%$e128270%_
                          ((lambda (_%idx128273%_)
                             (_%lp128264%_
                              (substring
                               _%spath128266%_
                               '3
                               (string-length _%spath128266%_))
                              (substring _%mpath128267%_ '0 _%idx128273%_)))
                           _%$e128270%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath128255%_)))
                    (if (string-prefix? '"./" _%spath128266%_)
                        (_%lp128264%_
                         (substring
                          _%spath128266%_
                          '2
                          (string-length _%spath128266%_))
                         _%mpath128267%_)
                        (_%resolve128257%_
                         _%spath128266%_
                         _%mpath128267%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir128247%_)
        (let ((_%$e128249%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir128247%_))))
          (if _%$e128249%_
              ((lambda (_%pkg128252%_)
                 (##string-append (symbol->string _%pkg128252%_) '"/"))
               _%$e128249%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir128217%_ _%exists?128218%_)
        (let ((_%$e128220%_ (__hash-get gx#__module-pkg-cache _%dir128217%_)))
          (if _%$e128220%_
              _%$e128220%_
              (let* ((_%gerbil.pkg128224%_
                      (path-expand '"gerbil.pkg" _%dir128217%_))
                     (_%plist128234%_
                      (if (or _%exists?128218%_
                              (##file-exists? _%gerbil.pkg128224%_))
                          (let ((_%e128229%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg128224%_
                                  read)))
                            (if (eof-object? _%e128229%_)
                                '()
                                (if (list? _%e128229%_)
                                    _%e128229%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg128224%_
                                     _%e128229%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir128217%_
                 _%plist128234%_)
                _%plist128234%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir128240%_)
        (let ((_%exists?128242%_ '#f))
          (gx#core-library-package-plist__% _%dir128240%_ _%exists?128242%_))))
    (define gx#core-library-package-plist
      (lambda _g130054_
        (let ((_g130053_ (##length _g130054_)))
          (cond ((##fx= _g130053_ 1)
                 (apply gx#core-library-package-plist__0 _g130054_))
                ((##fx= _g130053_ 2)
                 (apply gx#core-library-package-plist__% _g130054_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g130054_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx128214%_)
        (gx#core-special-module-path? _%stx128214%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx128212%_)
        (gx#core-special-module-path? _%stx128212%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx128207%_ _%char128208%_)
        (if (gx#identifier? _%stx128207%_)
            (if (interned-symbol? (gx#stx-e _%stx128207%_))
                (let ((_%str128210%_
                       (symbol->string (gx#stx-e _%stx128207%_))))
                  (if (##fx> (##string-length _%str128210%_) '1)
                      (eq? (string-ref _%str128210%_ '0) _%char128208%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx128201%_)
        (gx#core-bound-identifier?__%
         _%stx128201%_
         (lambda (_%g128202128204%_)
           (gx#expander-binding?__% _%g128202128204%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx128195%_)
        (gx#core-bound-identifier?__%
         _%stx128195%_
         (lambda (_%g128196128198%_)
           (gx#expander-binding?__% _%g128196128198%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx128182%_)
        (letrec ((_%module-prelude?128184%_
                  (lambda (_%e128190%_)
                    (let ((_%$e128192%_
                           (##structure-instance-of?
                            _%e128190%_
                            'gx#module-context::t)))
                      (if _%$e128192%_
                          _%$e128192%_
                          (##structure-instance-of?
                           _%e128190%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx128182%_
           (lambda (_%g128185128187%_)
             (gx#expander-binding?__%
              _%g128185128187%_
              _%module-prelude?128184%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in128112%_ _%ctx128113%_ _%force-weak?128114%_)
        (let* ((_%in128115128124%_ _%in128112%_)
               (_%E128117128128%_
                (lambda ()
                  (error '"No clause matching"
                         _%in128115128124%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K128118128141%_
                (lambda (_%weak?128131%_
                         _%phi128132%_
                         _%key128133%_
                         _%source128134%_)
                  (gx#core-bind!__%
                   _%key128133%_
                   (let ((_%e128136%_
                          (gx#core-resolve-module-export _%source128134%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e128136%_ '1 '#f '#f)
                      _%key128133%_
                      _%phi128132%_
                      _%e128136%_
                      (##unchecked-structure-ref _%source128134%_ '1 '#f '#f)
                      (let ((_%$e128138%_ _%force-weak?128114%_))
                        (if _%$e128138%_ _%$e128138%_ _%weak?128131%_))))
                   gx#core-context-rebind?
                   _%phi128132%_
                   _%ctx128113%_))))
          (if (##structure-direct-instance-of?
               _%in128115128124%_
               'gx#module-import::t)
              (let* ((_%e128119128144%_
                      (##unchecked-structure-ref
                       _%in128115128124%_
                       '1
                       '#f
                       '#f))
                     (_%source128147%_ _%e128119128144%_)
                     (_%e128120128149%_
                      (##unchecked-structure-ref
                       _%in128115128124%_
                       '2
                       '#f
                       '#f))
                     (_%key128152%_ _%e128120128149%_)
                     (_%e128121128154%_
                      (##unchecked-structure-ref
                       _%in128115128124%_
                       '3
                       '#f
                       '#f))
                     (_%phi128157%_ _%e128121128154%_)
                     (_%e128122128159%_
                      (##unchecked-structure-ref
                       _%in128115128124%_
                       '4
                       '#f
                       '#f))
                     (_%weak?128162%_ _%e128122128159%_))
                (_%K128118128141%_
                 _%weak?128162%_
                 _%phi128157%_
                 _%key128152%_
                 _%source128147%_))
              (_%E128117128128%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in128167%_)
        (let* ((_%ctx128169%_ (gx#current-expander-context))
               (_%force-weak?128171%_ '#f))
          (gx#core-bind-import!__%
           _%in128167%_
           _%ctx128169%_
           _%force-weak?128171%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in128173%_ _%ctx128174%_)
        (let ((_%force-weak?128176%_ '#f))
          (gx#core-bind-import!__%
           _%in128173%_
           _%ctx128174%_
           _%force-weak?128176%_))))
    (define gx#core-bind-import!
      (lambda _g130056_
        (let ((_g130055_ (##length _g130056_)))
          (cond ((##fx= _g130055_ 1) (apply gx#core-bind-import!__0 _g130056_))
                ((##fx= _g130055_ 2) (apply gx#core-bind-import!__1 _g130056_))
                ((##fx= _g130055_ 3) (apply gx#core-bind-import!__% _g130056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g130056_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in128098%_ _%ctx128099%_)
        (gx#core-bind-import!__% _%in128098%_ _%ctx128099%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in128104%_)
        (let ((_%ctx128106%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in128104%_ _%ctx128106%_))))
    (define gx#core-bind-weak-import!
      (lambda _g130058_
        (let ((_g130057_ (##length _g130058_)))
          (cond ((##fx= _g130057_ 1)
                 (apply gx#core-bind-weak-import!__0 _g130058_))
                ((##fx= _g130057_ 2)
                 (apply gx#core-bind-weak-import!__% _g130058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g130058_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out127989%_)
        (letrec ((_%subst127991%_
                  (lambda (_%key128037%_)
                    (let* ((_%key128038128046%_ _%key128037%_)
                           (_%else128040128054%_ (lambda () _%key128037%_))
                           (_%K128042128085%_
                            (lambda (_%mark128057%_ _%id128058%_)
                              (let* ((_%mark128059128065%_ _%mark128057%_)
                                     (_%E128061128069%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark128059128065%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K128062128077%_
                                      (lambda (_%subst128072%_)
                                        (let ((_%$e128074%_
                                               (if _%subst128072%_
                                                   (hash-get
                                                    _%subst128072%_
                                                    _%id128058%_)
                                                   '#f)))
                                          (if _%$e128074%_
                                              _%$e128074%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key128037%_))))))
                                (if (##structure-instance-of?
                                     _%mark128059128065%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e128063128080%_
                                            (##unchecked-structure-ref
                                             _%mark128059128065%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst128083%_ _%e128063128080%_))
                                      (_%K128062128077%_ _%subst128083%_))
                                    (_%E128061128069%_))))))
                      (if (pair? _%key128038128046%_)
                          (let ((_%hd128043128088%_
                                 (##car _%key128038128046%_))
                                (_%tl128044128090%_
                                 (##cdr _%key128038128046%_)))
                            (let* ((_%id128093%_ _%hd128043128088%_)
                                   (_%mark128095%_ _%tl128044128090%_))
                              (_%K128042128085%_ _%mark128095%_ _%id128093%_)))
                          (_%else128040128054%_))))))
          (let* ((_%out127992128002%_ _%out127989%_)
                 (_%E127994128006%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out127992128002%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K127995128013%_
                  (lambda (_%phi128009%_ _%key128010%_ _%ctx128011%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx128011%_ _%phi128009%_)
                     (_%subst127991%_ _%key128010%_)))))
            (if (##structure-direct-instance-of?
                 _%out127992128002%_
                 'gx#module-export::t)
                (let* ((_%e127996128016%_
                        (##unchecked-structure-ref
                         _%out127992128002%_
                         '1
                         '#f
                         '#f))
                       (_%ctx128019%_ _%e127996128016%_)
                       (_%e127997128021%_
                        (##unchecked-structure-ref
                         _%out127992128002%_
                         '2
                         '#f
                         '#f))
                       (_%key128024%_ _%e127997128021%_)
                       (_%e127998128026%_
                        (##unchecked-structure-ref
                         _%out127992128002%_
                         '3
                         '#f
                         '#f))
                       (_%phi128029%_ _%e127998128026%_)
                       (_%e127999128031%_
                        (##unchecked-structure-ref
                         _%out127992128002%_
                         '4
                         '#f
                         '#f))
                       (_%e128000128034%_
                        (##unchecked-structure-ref
                         _%out127992128002%_
                         '5
                         '#f
                         '#f)))
                  (_%K127995128013%_
                   _%phi128029%_
                   _%key128024%_
                   _%ctx128019%_))
                (_%E127994128006%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out127914%_ _%rename127915%_ _%dphi127916%_)
        (let* ((_%out127917127927%_ _%out127914%_)
               (_%E127919127931%_
                (lambda ()
                  (error '"No clause matching"
                         _%out127917127927%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K127920127943%_
                (lambda (_%weak?127934%_
                         _%name127935%_
                         _%phi127936%_
                         _%key127937%_
                         _%ctx127938%_)
                  (##structure
                   gx#module-import::t
                   _%out127914%_
                   (let ((_%$e127940%_ _%rename127915%_))
                     (if _%$e127940%_ _%$e127940%_ _%name127935%_))
                   (fx+ _%phi127936%_ _%dphi127916%_)
                   _%weak?127934%_))))
          (if (##structure-direct-instance-of?
               _%out127917127927%_
               'gx#module-export::t)
              (let* ((_%e127921127946%_
                      (##unchecked-structure-ref
                       _%out127917127927%_
                       '1
                       '#f
                       '#f))
                     (_%ctx127949%_ _%e127921127946%_)
                     (_%e127922127951%_
                      (##unchecked-structure-ref
                       _%out127917127927%_
                       '2
                       '#f
                       '#f))
                     (_%key127954%_ _%e127922127951%_)
                     (_%e127923127956%_
                      (##unchecked-structure-ref
                       _%out127917127927%_
                       '3
                       '#f
                       '#f))
                     (_%phi127959%_ _%e127923127956%_)
                     (_%e127924127961%_
                      (##unchecked-structure-ref
                       _%out127917127927%_
                       '4
                       '#f
                       '#f))
                     (_%name127964%_ _%e127924127961%_)
                     (_%e127925127966%_
                      (##unchecked-structure-ref
                       _%out127917127927%_
                       '5
                       '#f
                       '#f))
                     (_%weak?127969%_ _%e127925127966%_))
                (_%K127920127943%_
                 _%weak?127969%_
                 _%name127964%_
                 _%phi127959%_
                 _%key127954%_
                 _%ctx127949%_))
              (_%E127919127931%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out127974%_)
        (let* ((_%rename127976%_ '#f) (_%dphi127978%_ '0))
          (gx#core-module-export->import__%
           _%out127974%_
           _%rename127976%_
           _%dphi127978%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out127980%_ _%rename127981%_)
        (let ((_%dphi127983%_ '0))
          (gx#core-module-export->import__%
           _%out127980%_
           _%rename127981%_
           _%dphi127983%_))))
    (define gx#core-module-export->import
      (lambda _g130060_
        (let ((_g130059_ (##length _g130060_)))
          (cond ((##fx= _g130059_ 1)
                 (apply gx#core-module-export->import__0 _g130060_))
                ((##fx= _g130059_ 2)
                 (apply gx#core-module-export->import__1 _g130060_))
                ((##fx= _g130059_ 3)
                 (apply gx#core-module-export->import__% _g130060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g130060_))))))
    (define gx#core-expand-module%
      (lambda (_%stx127813%_)
        (letrec ((_%make-context127815%_
                  (lambda (_%id127892%_)
                    (let* ((_%super127894%_ (gx#current-expander-context))
                           (_%bind-id127896%_ (gx#stx-e _%id127892%_))
                           (_%mod-id127898%_
                            (if (##structure-instance-of?
                                 _%super127894%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super127894%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id127896%_)
                                _%bind-id127896%_))
                           (_%ns127900%_ (symbol->string _%mod-id127898%_))
                           (_%path127910%_
                            (if (##structure-instance-of?
                                 _%super127894%_
                                 'gx#module-context::t)
                                (let ((_%path127902%_
                                       (##unchecked-structure-ref
                                        _%super127894%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path127902%_)
                                          (null? _%path127902%_))
                                      (cons _%bind-id127896%_ _%path127902%_)
                                      (if (not _%path127902%_)
                                          _%bind-id127896%_
                                          (cons _%bind-id127896%_
                                                (cons _%path127902%_ '())))))
                                _%bind-id127896%_))
                           (__obj130036
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
                       __obj130036
                       _%mod-id127898%_
                       _%super127894%_
                       _%ns127900%_
                       _%path127910%_)
                      __obj130036)))
                 (_%valid-module-id?127816%_
                  (lambda (_%id127867%_)
                    (let* ((_%str127869%_ (symbol->string _%id127867%_))
                           (_%len127871%_ (##string-length _%str127869%_)))
                      (if (##fx>= _%len127871%_ '1)
                          (let _%loop127874%_ ((_%index127876%_
                                                (##fx- (##string-length
                                                        _%str127869%_)
                                                       '1)))
                            (if (##fx>= _%index127876%_ '0)
                                (let ((_%c127878%_
                                       (string-ref
                                        _%str127869%_
                                        _%index127876%_)))
                                  (if (or (and (##char>=? _%c127878%_ '#\a)
                                               (##char<=? _%c127878%_ '#\z))
                                          (and (##char>=? _%c127878%_ '#\A)
                                               (##char<=? _%c127878%_ '#\Z))
                                          (and (##char>=? _%c127878%_ '#\0)
                                               (##char<=? _%c127878%_ '#\9))
                                          (##char=? _%c127878%_ '#\_)
                                          (##char=? _%c127878%_ '#\-))
                                      (_%loop127874%_
                                       (##fx- _%index127876%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e127817127827%_ _%stx127813%_)
                 (_%E127819127831%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127817127827%_)))
                 (_%E127818127863%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127817127827%_)
                        (let ((_%e127820127835%_
                               (gx#syntax-e _%e127817127827%_)))
                          (let ((_%hd127821127838%_ (##car _%e127820127835%_))
                                (_%tl127822127840%_ (##cdr _%e127820127835%_)))
                            (if (gx#stx-pair? _%tl127822127840%_)
                                (let ((_%e127823127843%_
                                       (gx#syntax-e _%tl127822127840%_)))
                                  (let ((_%hd127824127846%_
                                         (##car _%e127823127843%_))
                                        (_%tl127825127848%_
                                         (##cdr _%e127823127843%_)))
                                    (let* ((_%id127851%_ _%hd127824127846%_)
                                           (_%body127853%_ _%tl127825127848%_))
                                      (if (and (gx#identifier? _%id127851%_)
                                               (gx#stx-list? _%body127853%_))
                                          (if (_%valid-module-id?127816%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx127855%_
                                                      (_%make-context127815%_
                                                       _%id127851%_))
                                                     (_%body127857%_
                                                      (gx#core-expand-module-begin
                                                       _%body127853%_
                                                       _%ctx127855%_))
                                                     (_%body127859%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body127857%_)
                                                       (gx#stx-source
                                                        _%stx127813%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx127855%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body127859%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx127855%_
                                                 _%body127859%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id127851%_
                                                 _%ctx127855%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id127851%_)
                                                  _%body127859%_)
                                                 (gx#stx-source
                                                  _%stx127813%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx127813%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E127819127831%_)))))
                                (_%E127819127831%_))))
                        (_%E127819127831%_)))))
            (_%E127818127863%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body127779%_ _%ctx127780%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx127783%_
                   (gx#core-expand-head (cons '%%begin-module _%body127779%_)))
                  (_%e127784127791%_ _%stx127783%_)
                  (_%E127786127795%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx127783%_)))
                  (_%E127785127809%_
                   (lambda ()
                     (if (gx#stx-pair? _%e127784127791%_)
                         (let ((_%e127787127799%_
                                (gx#syntax-e _%e127784127791%_)))
                           (let ((_%hd127788127802%_ (##car _%e127787127799%_))
                                 (_%tl127789127804%_
                                  (##cdr _%e127787127799%_)))
                             (if (and (gx#identifier? _%hd127788127802%_)
                                      (gx#core-identifier=?
                                       _%hd127788127802%_
                                       '%#begin-module))
                                 (let ((_%body127807%_ _%tl127789127804%_))
                                   (if (gx#sealed-syntax? _%stx127783%_)
                                       _%body127807%_
                                       (gx#core-expand-module-body
                                        _%body127807%_)))
                                 (_%E127786127795%_))))
                         (_%E127786127795%_)))))
             (_%E127785127809%_)))
         gx#current-expander-context
         _%ctx127780%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body127575%_)
        (letrec ((_%expand-special127577%_
                  (lambda (_%hd127706%_ _%K127707%_ _%rest127708%_ _%r127709%_)
                    (let* ((_%e127710127727%_ _%hd127706%_)
                           (_%E127722127731%_
                            (lambda ()
                              (_%K127707%_
                               _%rest127708%_
                               (cons (gx#core-expand-top _%hd127706%_)
                                     _%r127709%_))))
                           (_%E127712127743%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127710127727%_)
                                  (let ((_%e127723127735%_
                                         (gx#syntax-e _%e127710127727%_)))
                                    (let ((_%hd127724127738%_
                                           (##car _%e127723127735%_))
                                          (_%tl127725127740%_
                                           (##cdr _%e127723127735%_)))
                                      (if (and (gx#identifier?
                                                _%hd127724127738%_)
                                               (gx#core-identifier=?
                                                _%hd127724127738%_
                                                '%#export))
                                          (_%K127707%_
                                           _%rest127708%_
                                           (cons _%hd127706%_ _%r127709%_))
                                          (_%E127722127731%_))))
                                  (_%E127722127731%_))))
                           (_%E127711127775%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127710127727%_)
                                  (let ((_%e127713127747%_
                                         (gx#syntax-e _%e127710127727%_)))
                                    (let ((_%hd127714127750%_
                                           (##car _%e127713127747%_))
                                          (_%tl127715127752%_
                                           (##cdr _%e127713127747%_)))
                                      (if (and (gx#identifier?
                                                _%hd127714127750%_)
                                               (gx#core-identifier=?
                                                _%hd127714127750%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl127715127752%_)
                                              (let ((_%e127716127755%_
                                                     (gx#syntax-e
                                                      _%tl127715127752%_)))
                                                (let ((_%hd127717127758%_
                                                       (##car _%e127716127755%_))
                                                      (_%tl127718127760%_
                                                       (##cdr _%e127716127755%_)))
                                                  (let ((_%hd-bind127763%_
                                                         _%hd127717127758%_))
                                                    (if (gx#stx-pair?
                                                         _%tl127718127760%_)
                                                        (let ((_%e127719127765%_
                                                               (gx#syntax-e
                                                                _%tl127718127760%_)))
                                                          (let ((_%hd127720127768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e127719127765%_))
                        (_%tl127721127770%_ (##cdr _%e127719127765%_)))
                    (let ((_%expr127773%_ _%hd127720127768%_))
                      (if (gx#stx-null? _%tl127721127770%_)
                          (if (gx#core-bind-values? _%hd-bind127763%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind127763%_)
                                (_%K127707%_
                                 _%rest127708%_
                                 (cons _%hd127706%_ _%r127709%_)))
                              (_%E127712127743%_))
                          (_%E127712127743%_)))))
                (_%E127712127743%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127712127743%_))
                                          (_%E127712127743%_))))
                                  (_%E127712127743%_)))))
                      (_%E127711127775%_))))
                 (_%expand-body127578%_
                  (lambda (_%rbody127580%_)
                    (let _%lp127582%_ ((_%rest127584%_ _%rbody127580%_)
                                       (_%body127585%_ '()))
                      (let* ((_%rest127586127594%_ _%rest127584%_)
                             (_%else127588127602%_ (lambda () _%body127585%_))
                             (_%K127590127694%_
                              (lambda (_%rest127605%_ _%hd127606%_)
                                (let* ((_%e127607127628%_ _%hd127606%_)
                                       (_%E127623127632%_
                                        (lambda ()
                                          (_%lp127582%_
                                           _%rest127605%_
                                           (cons (gx#core-expand-expression
                                                  _%hd127606%_)
                                                 _%body127585%_))))
                                       (_%E127619127646%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127607127628%_)
                                              (let ((_%e127624127636%_
                                                     (gx#syntax-e
                                                      _%e127607127628%_)))
                                                (let ((_%hd127625127639%_
                                                       (##car _%e127624127636%_))
                                                      (_%tl127626127641%_
                                                       (##cdr _%e127624127636%_)))
                                                  (let ((_%form127644%_
                                                         _%hd127625127639%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form127644%_
                                                         gx#special-form-binding?)
                                                        (_%lp127582%_
                                                         _%rest127605%_
                                                         (cons _%hd127606%_
                                                               _%body127585%_))
                                                        (_%E127623127632%_)))))
                                              (_%E127623127632%_))))
                                       (_%E127609127658%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127607127628%_)
                                              (let ((_%e127620127650%_
                                                     (gx#syntax-e
                                                      _%e127607127628%_)))
                                                (let ((_%hd127621127653%_
                                                       (##car _%e127620127650%_))
                                                      (_%tl127622127655%_
                                                       (##cdr _%e127620127650%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd127621127653%_)
                                                           (gx#core-identifier=?
                                                            _%hd127621127653%_
                                                            '%#export))
                                                      (_%lp127582%_
                                                       _%rest127605%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd127606%_)
                                                             _%body127585%_))
                                                      (_%E127619127646%_))))
                                              (_%E127619127646%_))))
                                       (_%E127608127690%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127607127628%_)
                                              (let ((_%e127610127662%_
                                                     (gx#syntax-e
                                                      _%e127607127628%_)))
                                                (let ((_%hd127611127665%_
                                                       (##car _%e127610127662%_))
                                                      (_%tl127612127667%_
                                                       (##cdr _%e127610127662%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd127611127665%_)
                                                           (gx#core-identifier=?
                                                            _%hd127611127665%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl127612127667%_)
                                                          (let ((_%e127613127670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl127612127667%_)))
                    (let ((_%hd127614127673%_ (##car _%e127613127670%_))
                          (_%tl127615127675%_ (##cdr _%e127613127670%_)))
                      (let ((_%hd-bind127678%_ _%hd127614127673%_))
                        (if (gx#stx-pair? _%tl127615127675%_)
                            (let ((_%e127616127680%_
                                   (gx#syntax-e _%tl127615127675%_)))
                              (let ((_%hd127617127683%_
                                     (##car _%e127616127680%_))
                                    (_%tl127618127685%_
                                     (##cdr _%e127616127680%_)))
                                (let ((_%expr127688%_ _%hd127617127683%_))
                                  (if (gx#stx-null? _%tl127618127685%_)
                                      (_%lp127582%_
                                       _%rest127605%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind127678%_)
                                               (gx#core-expand-expression
                                                _%expr127688%_))
                                              (gx#stx-source _%hd127606%_))
                                             _%body127585%_))
                                      (_%E127609127658%_)))))
                            (_%E127609127658%_)))))
                  (_%E127609127658%_))
              (_%E127609127658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127609127658%_)))))
                                  (_%E127608127690%_)))))
                        (if (pair? _%rest127586127594%_)
                            (let ((_%hd127591127697%_
                                   (##car _%rest127586127594%_))
                                  (_%tl127592127699%_
                                   (##cdr _%rest127586127594%_)))
                              (let* ((_%hd127702%_ _%hd127591127697%_)
                                     (_%rest127704%_ _%tl127592127699%_))
                                (_%K127590127694%_
                                 _%rest127704%_
                                 _%hd127702%_)))
                            (_%else127588127602%_)))))))
          (_%expand-body127578%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body127575%_)
            _%expand-special127577%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx127416%_
               _%expanded?127417%_
               _%method127418%_
               _%current-phi127419%_
               _%expand1127420%_)
        (letrec ((_%K127422%_
                  (lambda (_%rest127542%_ _%r127543%_)
                    (let* ((_%e127544127551%_ _%rest127542%_)
                           (_%E127546127555%_ (lambda () _%r127543%_))
                           (_%E127545127571%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127544127551%_)
                                  (let ((_%e127547127559%_
                                         (gx#syntax-e _%e127544127551%_)))
                                    (let ((_%hd127548127562%_
                                           (##car _%e127547127559%_))
                                          (_%tl127549127564%_
                                           (##cdr _%e127547127559%_)))
                                      (let* ((_%hd127567%_ _%hd127548127562%_)
                                             (_%rest127569%_
                                              _%tl127549127564%_))
                                        (_%step127423%_
                                         _%hd127567%_
                                         _%rest127569%_
                                         _%r127543%_))))
                                  (_%E127546127555%_)))))
                      (_%E127545127571%_))))
                 (_%step127423%_
                  (lambda (_%hd127456%_ _%rest127457%_ _%r127458%_)
                    (let* ((_%e127459127477%_ _%hd127456%_)
                           (_%E127472127481%_
                            (lambda ()
                              (if (_%expanded?127417%_ (gx#stx-e _%hd127456%_))
                                  (_%K127422%_
                                   _%rest127457%_
                                   (cons (gx#stx-e _%hd127456%_) _%r127458%_))
                                  (_%expand1127420%_
                                   _%hd127456%_
                                   _%K127422%_
                                   _%rest127457%_
                                   _%r127458%_))))
                           (_%E127468127497%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127459127477%_)
                                  (let ((_%e127473127485%_
                                         (gx#syntax-e _%e127459127477%_)))
                                    (let ((_%hd127474127488%_
                                           (##car _%e127473127485%_))
                                          (_%tl127475127490%_
                                           (##cdr _%e127473127485%_)))
                                      (let* ((_%macro127493%_
                                              _%hd127474127488%_)
                                             (_%body127495%_
                                              _%tl127475127490%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro127493%_
                                             gx#syntax-binding?)
                                            (_%K127422%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro127493%_)
                                                    _%hd127456%_
                                                    _%method127418%_)
                                                   _%rest127457%_)
                                             _%r127458%_)
                                            (_%E127472127481%_)))))
                                  (_%E127472127481%_))))
                           (_%E127461127511%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127459127477%_)
                                  (let ((_%e127469127501%_
                                         (gx#syntax-e _%e127459127477%_)))
                                    (let ((_%hd127470127504%_
                                           (##car _%e127469127501%_))
                                          (_%tl127471127506%_
                                           (##cdr _%e127469127501%_)))
                                      (if (eq? (gx#stx-e _%hd127470127504%_)
                                               'begin:)
                                          (let ((_%body127509%_
                                                 _%tl127471127506%_))
                                            (_%K127422%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest127457%_
                                              _%body127509%_)
                                             _%r127458%_))
                                          (_%E127468127497%_))))
                                  (_%E127468127497%_))))
                           (_%E127460127538%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127459127477%_)
                                  (let ((_%e127462127515%_
                                         (gx#syntax-e _%e127459127477%_)))
                                    (let ((_%hd127463127518%_
                                           (##car _%e127462127515%_))
                                          (_%tl127464127520%_
                                           (##cdr _%e127462127515%_)))
                                      (if (eq? (gx#stx-e _%hd127463127518%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl127464127520%_)
                                              (let ((_%e127465127523%_
                                                     (gx#syntax-e
                                                      _%tl127464127520%_)))
                                                (let ((_%hd127466127526%_
                                                       (##car _%e127465127523%_))
                                                      (_%tl127467127528%_
                                                       (##cdr _%e127465127523%_)))
                                                  (let* ((_%dphi127531%_
                                                          _%hd127466127526%_)
                                                         (_%body127533%_
                                                          _%tl127467127528%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi127531%_)
                                                        (let ((_%rbody127536%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K127422%_ _%body127533%_ '()))
                        _%current-phi127419%_
                        (fx+ (gx#stx-e _%dphi127531%_)
                             (_%current-phi127419%_)))))
                  (_%K127422%_
                   _%rest127457%_
                   (__foldr1 cons _%r127458%_ _%rbody127536%_)))
                (_%E127461127511%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127461127511%_))
                                          (_%E127461127511%_))))
                                  (_%E127461127511%_)))))
                      (_%E127460127538%_)))))
          (let* ((_%e127424127431%_ _%stx127416%_)
                 (_%E127426127435%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127424127431%_)))
                 (_%E127425127452%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127424127431%_)
                        (let ((_%e127427127439%_
                               (gx#syntax-e _%e127424127431%_)))
                          (let ((_%hd127428127442%_ (##car _%e127427127439%_))
                                (_%tl127429127444%_ (##cdr _%e127427127439%_)))
                            (let ((_%body127447%_ _%tl127429127444%_))
                              (if (_%current-phi127419%_)
                                  (_%K127422%_ _%body127447%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K127422%_ _%body127447%_ '()))
                                   _%current-phi127419%_
                                   (gx#current-expander-phi))))))
                        (_%E127426127435%_)))))
            (_%E127425127452%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx127070%_ _%internal-expand?127071%_)
        (letrec ((_%expand1127073%_
                  (lambda (_%hd127388%_ _%K127389%_ _%rest127390%_ _%r127391%_)
                    (if (gx#core-bound-module? _%hd127388%_)
                        (_%import1127074%_
                         (gx#syntax-local-e__0 _%hd127388%_)
                         _%K127389%_
                         _%rest127390%_
                         _%r127391%_)
                        (if (gx#core-library-module-path? _%hd127388%_)
                            (_%import1127074%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd127388%_))
                             _%K127389%_
                             _%rest127390%_
                             _%r127391%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd127388%_)
                                (_%import1127074%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd127388%_))
                                 _%K127389%_
                                 _%rest127390%_
                                 _%r127391%_)
                                (let ((_%e127397%_ (gx#stx-e _%hd127388%_)))
                                  (if (pair? _%e127397%_)
                                      (let ((_%$e127400%_
                                             (gx#stx-e (##car _%e127397%_))))
                                        (if (eq? 'spec: _%$e127400%_)
                                            (_%import-spec127077%_
                                             _%hd127388%_
                                             _%K127389%_
                                             _%rest127390%_
                                             _%r127391%_)
                                            (if (eq? 'in: _%$e127400%_)
                                                (_%import-submodule127075%_
                                                 _%hd127388%_
                                                 _%K127389%_
                                                 _%rest127390%_
                                                 _%r127391%_)
                                                (if (eq? 'runtime:
                                                         _%$e127400%_)
                                                    (_%import-runtime127076%_
                                                     _%hd127388%_
                                                     _%K127389%_
                                                     _%rest127390%_
                                                     _%r127391%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx127070%_
                                                     _%hd127388%_)))))
                                      (if (string? _%e127397%_)
                                          (_%import1127074%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd127388%_
                                             (gx#stx-source _%stx127070%_)))
                                           _%K127389%_
                                           _%rest127390%_
                                           _%r127391%_)
                                          (if (##structure-instance-of?
                                               _%e127397%_
                                               'gx#module-context::t)
                                              (_%K127389%_
                                               _%rest127390%_
                                               (cons _%e127397%_ _%r127391%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx127070%_
                                               _%hd127388%_))))))))))
                 (_%import1127074%_
                  (lambda (_%ctx127377%_
                           _%K127378%_
                           _%rest127379%_
                           _%r127380%_)
                    (let ((_%dphi127382%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K127378%_
                       _%rest127379%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx127377%_
                              _%dphi127382%_
                              (map (lambda (_%g127383127385%_)
                                     (gx#core-module-export->import__%
                                      _%g127383127385%_
                                      '#f
                                      _%dphi127382%_))
                                   (##unchecked-structure-ref
                                    _%ctx127377%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r127380%_)))))
                 (_%import-submodule127075%_
                  (lambda (_%hd127344%_ _%K127345%_ _%rest127346%_ _%r127347%_)
                    (let* ((_%e127348127355%_ _%hd127344%_)
                           (_%E127350127359%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127348127355%_)))
                           (_%E127349127373%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127348127355%_)
                                  (let ((_%e127351127363%_
                                         (gx#syntax-e _%e127348127355%_)))
                                    (let ((_%hd127352127366%_
                                           (##car _%e127351127363%_))
                                          (_%tl127353127368%_
                                           (##cdr _%e127351127363%_)))
                                      (let ((_%spath127371%_
                                             _%tl127353127368%_))
                                        (_%import1127074%_
                                         (_%import-spec-source127078%_
                                          _%spath127371%_)
                                         _%K127345%_
                                         _%rest127346%_
                                         _%r127347%_))))
                                  (_%E127350127359%_)))))
                      (_%E127349127373%_))))
                 (_%import-runtime127076%_
                  (lambda (_%hd127311%_ _%K127312%_ _%rest127313%_ _%r127314%_)
                    (let* ((_%e127315127322%_ _%hd127311%_)
                           (_%E127317127326%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127315127322%_)))
                           (_%E127316127340%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127315127322%_)
                                  (let ((_%e127318127330%_
                                         (gx#syntax-e _%e127315127322%_)))
                                    (let ((_%hd127319127333%_
                                           (##car _%e127318127330%_))
                                          (_%tl127320127335%_
                                           (##cdr _%e127318127330%_)))
                                      (let ((_%spath127338%_
                                             _%tl127320127335%_))
                                        (_%K127312%_
                                         _%rest127313%_
                                         (cons (_%import-spec-source127078%_
                                                _%spath127338%_)
                                               _%r127314%_)))))
                                  (_%E127317127326%_)))))
                      (_%E127316127340%_))))
                 (_%import-spec127077%_
                  (lambda (_%hd127149%_ _%K127150%_ _%rest127151%_ _%r127152%_)
                    (let* ((_%e127153127170%_ _%hd127149%_)
                           (_%E127162127174%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127153127170%_)))
                           (_%E127155127285%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127153127170%_)
                                  (let ((_%e127163127178%_
                                         (gx#syntax-e _%e127153127170%_)))
                                    (let ((_%hd127164127181%_
                                           (##car _%e127163127178%_))
                                          (_%tl127165127183%_
                                           (##cdr _%e127163127178%_)))
                                      (if (gx#stx-pair? _%tl127165127183%_)
                                          (let ((_%e127166127186%_
                                                 (gx#syntax-e
                                                  _%tl127165127183%_)))
                                            (let ((_%hd127167127189%_
                                                   (##car _%e127166127186%_))
                                                  (_%tl127168127191%_
                                                   (##cdr _%e127166127186%_)))
                                              (let* ((_%path127194%_
                                                      _%hd127167127189%_)
                                                     (_%specs127196%_
                                                      _%tl127168127191%_))
                                                (let ((_%src-ctx127198%_
                                                       (_%import-spec-source127078%_
                                                        _%path127194%_))
                                                      (_%exports127199%_
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
                                                      (_%specs127200%_
                                                       (gx#syntax->list
                                                        _%specs127196%_)))
                                                  (for-each
                                                   (lambda (_%out127202%_)
                                                     (__hash-put!
                                                      _%exports127199%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out127202%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out127202%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out127202%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx127198%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K127150%_
                                                   _%rest127151%_
                                                   (__foldl1
                                                    (lambda (_%spec127204%_
                                                             _%r127205%_)
                                                      (let* ((_%e127206127222%_
                                                              _%spec127204%_)
                                                             (_%E127208127226%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e127206127222%_)))
                     (_%E127207127281%_
                      (lambda ()
                        (if (gx#stx-pair? _%e127206127222%_)
                            (let ((_%e127209127230%_
                                   (gx#syntax-e _%e127206127222%_)))
                              (let ((_%hd127210127233%_
                                     (##car _%e127209127230%_))
                                    (_%tl127211127235%_
                                     (##cdr _%e127209127230%_)))
                                (let ((_%phi127238%_ _%hd127210127233%_))
                                  (if (gx#stx-pair? _%tl127211127235%_)
                                      (let ((_%e127212127240%_
                                             (gx#syntax-e _%tl127211127235%_)))
                                        (let ((_%hd127213127243%_
                                               (##car _%e127212127240%_))
                                              (_%tl127214127245%_
                                               (##cdr _%e127212127240%_)))
                                          (let ((_%name127248%_
                                                 _%hd127213127243%_))
                                            (if (gx#stx-pair?
                                                 _%tl127214127245%_)
                                                (let ((_%e127215127250%_
                                                       (gx#syntax-e
                                                        _%tl127214127245%_)))
                                                  (let ((_%hd127216127253%_
                                                         (##car _%e127215127250%_))
                                                        (_%tl127217127255%_
                                                         (##cdr _%e127215127250%_)))
                                                    (let ((_%src-phi127258%_
                                                           _%hd127216127253%_))
                                                      (if (gx#stx-pair?
                                                           _%tl127217127255%_)
                                                          (let ((_%e127218127260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl127217127255%_)))
                    (let ((_%hd127219127263%_ (##car _%e127218127260%_))
                          (_%tl127220127265%_ (##cdr _%e127218127260%_)))
                      (let ((_%src-name127268%_ _%hd127219127263%_))
                        (if (gx#stx-null? _%tl127220127265%_)
                            (if (and (gx#stx-fixnum? _%src-phi127258%_)
                                     (gx#identifier? _%src-name127268%_)
                                     (gx#stx-fixnum? _%phi127238%_)
                                     (gx#identifier? _%name127248%_))
                                (let ((_%src-phi127270%_
                                       (gx#stx-e _%src-phi127258%_))
                                      (_%src-name127271%_
                                       (gx#core-identifier-key
                                        _%src-name127268%_))
                                      (_%phi127272%_ (gx#stx-e _%phi127238%_))
                                      (_%name127273%_
                                       (gx#core-identifier-key
                                        _%name127248%_)))
                                  (let ((_%$e127275%_
                                         (__hash-get
                                          _%exports127199%_
                                          (cons _%src-phi127270%_
                                                _%src-name127271%_))))
                                    (if _%$e127275%_
                                        ((lambda (_%out127278%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out127278%_
                                                  _%name127273%_
                                                  (fx- _%phi127272%_
                                                       _%src-phi127270%_))
                                                 _%r127205%_))
                                         _%$e127275%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx127070%_
                                         _%hd127149%_))))
                                (_%E127208127226%_))
                            (_%E127208127226%_)))))
                  (_%E127208127226%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E127208127226%_)))))
                                      (_%E127208127226%_)))))
                            (_%E127208127226%_)))))
                (_%E127207127281%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r127152%_
                                                    _%specs127200%_))))))
                                          (_%E127162127174%_))))
                                  (_%E127162127174%_))))
                           (_%E127154127307%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127153127170%_)
                                  (let ((_%e127156127289%_
                                         (gx#syntax-e _%e127153127170%_)))
                                    (let ((_%hd127157127292%_
                                           (##car _%e127156127289%_))
                                          (_%tl127158127294%_
                                           (##cdr _%e127156127289%_)))
                                      (if (gx#stx-pair? _%tl127158127294%_)
                                          (let ((_%e127159127297%_
                                                 (gx#syntax-e
                                                  _%tl127158127294%_)))
                                            (let ((_%hd127160127300%_
                                                   (##car _%e127159127297%_))
                                                  (_%tl127161127302%_
                                                   (##cdr _%e127159127297%_)))
                                              (let ((_%path127305%_
                                                     _%hd127160127300%_))
                                                (if (gx#stx-null?
                                                     _%tl127161127302%_)
                                                    (_%K127150%_
                                                     _%rest127151%_
                                                     (cons (_%import-spec-source127078%_
                                                            _%path127305%_)
                                                           _%r127152%_))
                                                    (_%E127155127285%_)))))
                                          (_%E127155127285%_))))
                                  (_%E127155127285%_)))))
                      (_%E127154127307%_))))
                 (_%import-spec-source127078%_
                  (lambda (_%spath127147%_)
                    (gx#core-import-nested-module
                     _%spath127147%_
                     _%stx127070%_)))
                 (_%import!127079%_
                  (lambda (_%rbody127092%_)
                    (letrec* ((_%current-ctx127094%_
                               (gx#current-expander-context))
                              (_%deps127095%_ (make-hash-table-eq))
                              (_%bind!127096%_
                               (lambda (_%hd127145%_)
                                 (gx#core-bind-import!__1
                                  _%hd127145%_
                                  _%current-ctx127094%_))))
                      (let _%lp127098%_ ((_%rest127100%_ _%rbody127092%_)
                                         (_%body127101%_ '()))
                        (let* ((_%rest127102127110%_ _%rest127100%_)
                               (_%else127104127121%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx127094%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx127094%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx127094%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body127101%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx127118%_ _%_127119%_)
                                     (gx#eval-module _%ctx127118%_))
                                   _%deps127095%_)
                                  _%body127101%_))
                               (_%K127106127133%_
                                (lambda (_%rest127124%_ _%hd127125%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd127125%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!127096%_ _%hd127125%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd127125%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd127125%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps127095%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd127125%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd127125%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!127096%_
                                             (##unchecked-structure-ref
                                              _%hd127125%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd127125%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps127095%_
                                                 (##unchecked-structure-ref
                                                  _%hd127125%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e127129%_
                                                 (##structure-instance-of?
                                                  _%hd127125%_
                                                  'gx#module-context::t)))
                                            (if _%$e127129%_
                                                _%$e127129%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx127070%_
                                                 _%hd127125%_)))))
                                  (_%lp127098%_
                                   _%rest127124%_
                                   (cons _%hd127125%_ _%body127101%_)))))
                          (if (pair? _%rest127102127110%_)
                              (let ((_%hd127107127136%_
                                     (##car _%rest127102127110%_))
                                    (_%tl127108127138%_
                                     (##cdr _%rest127102127110%_)))
                                (let* ((_%hd127141%_ _%hd127107127136%_)
                                       (_%rest127143%_ _%tl127108127138%_))
                                  (_%K127106127133%_
                                   _%rest127143%_
                                   _%hd127141%_)))
                              (_%else127104127121%_)))))))
                 (_%expanded-import?127080%_
                  (lambda (_%e127084%_)
                    (let ((_%$e127086%_
                           (##structure-direct-instance-of?
                            _%e127084%_
                            'gx#import-set::t)))
                      (if _%$e127086%_
                          _%$e127086%_
                          (let ((_%$e127089%_
                                 (##structure-direct-instance-of?
                                  _%e127084%_
                                  'gx#module-import::t)))
                            (if _%$e127089%_
                                _%$e127089%_
                                (##structure-instance-of?
                                 _%e127084%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody127082%_
                 (gx#core-expand-import/export
                  _%stx127070%_
                  _%expanded-import?127080%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1127073%_)))
            (if _%internal-expand?127071%_
                (reverse _%rbody127082%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!127079%_ _%rbody127082%_))
                 (gx#stx-source _%stx127070%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx127409%_)
        (let ((_%internal-expand?127411%_ '#f))
          (gx#core-expand-import%__%
           _%stx127409%_
           _%internal-expand?127411%_))))
    (define gx#core-expand-import%
      (lambda _g130062_
        (let ((_g130061_ (##length _g130062_)))
          (cond ((##fx= _g130061_ 1)
                 (apply gx#core-expand-import%__0 _g130062_))
                ((##fx= _g130061_ 2)
                 (apply gx#core-expand-import%__% _g130062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g130062_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath126997%_ _%where126998%_)
        (let* ((_%e126999127006%_ _%spath126997%_)
               (_%E127001127010%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126999127006%_)))
               (_%E127000127065%_
                (lambda ()
                  (if (gx#stx-pair? _%e126999127006%_)
                      (let ((_%e127002127014%_
                             (gx#syntax-e _%e126999127006%_)))
                        (let ((_%hd127003127017%_ (##car _%e127002127014%_))
                              (_%tl127004127019%_ (##cdr _%e127002127014%_)))
                          (let* ((_%origin127022%_ _%hd127003127017%_)
                                 (_%sub127024%_ _%tl127004127019%_)
                                 (_%origin-ctx127026%_
                                  (if (gx#stx-false? _%origin127022%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin127022%_))))
                            (let _%lp127028%_ ((_%rest127030%_ _%sub127024%_)
                                               (_%ctx127031%_
                                                _%origin-ctx127026%_))
                              (let* ((_%e127032127039%_ _%rest127030%_)
                                     (_%E127034127043%_
                                      (lambda () _%ctx127031%_))
                                     (_%E127033127061%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e127032127039%_)
                                            (let ((_%e127035127047%_
                                                   (gx#syntax-e
                                                    _%e127032127039%_)))
                                              (let ((_%hd127036127050%_
                                                     (##car _%e127035127047%_))
                                                    (_%tl127037127052%_
                                                     (##cdr _%e127035127047%_)))
                                                (let* ((_%id127055%_
                                                        _%hd127036127050%_)
                                                       (_%rest127057%_
                                                        _%tl127037127052%_)
                                                       (_%bind127059%_
                                                        (gx#resolve-identifier__%
                                                         _%id127055%_
                                                         '0
                                                         _%ctx127031%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind127059%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind127059%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where126998%_
                                                       _%spath126997%_
                                                       _%id127055%_))
                                                  (_%lp127028%_
                                                   _%rest127057%_
                                                   (##unchecked-structure-ref
                                                    _%bind127059%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E127034127043%_)))))
                                (_%E127033127061%_))))))
                      (_%E127001127010%_)))))
          (_%E127000127065%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd126995%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd126995%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx126489%_ _%internal-expand?126490%_)
        (letrec* ((_%make-export__129990129991%_
                   (lambda (_%bind126943%_
                            _%phi126944%_
                            _%ctx126945%_
                            _%name126946%_)
                     (let* ((_%key126948%_
                             (##unchecked-structure-ref
                              _%bind126943%_
                              '2
                              '#f
                              '#f))
                            (_%export-key126950%_
                             (if _%name126946%_
                                 (gx#core-identifier-key _%name126946%_)
                                 _%key126948%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx126945%_
                        _%key126948%_
                        _%phi126944%_
                        _%export-key126950%_
                        (let ((_%$e126953%_
                               (##structure-instance-of?
                                _%bind126943%_
                                'gx#extern-binding::t)))
                          (if _%$e126953%_
                              _%$e126953%_
                              (##structure-direct-instance-of?
                               _%bind126943%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__129992129995%_
                   (lambda (_%bind126959%_)
                     (let* ((_%phi126961%_ (gx#current-export-expander-phi))
                            (_%ctx126963%_ (gx#current-expander-context))
                            (_%name126965%_ '#f))
                       (_%make-export__129990129991%_
                        _%bind126959%_
                        _%phi126961%_
                        _%ctx126963%_
                        _%name126965%_))))
                  (_%make-export__1__129993129996%_
                   (lambda (_%bind126967%_ _%phi126968%_)
                     (let* ((_%ctx126970%_ (gx#current-expander-context))
                            (_%name126972%_ '#f))
                       (_%make-export__129990129991%_
                        _%bind126967%_
                        _%phi126968%_
                        _%ctx126970%_
                        _%name126972%_))))
                  (_%make-export__2__129994129997%_
                   (lambda (_%bind126974%_ _%phi126975%_ _%ctx126976%_)
                     (let ((_%name126978%_ '#f))
                       (_%make-export__129990129991%_
                        _%bind126974%_
                        _%phi126975%_
                        _%ctx126976%_
                        _%name126978%_))))
                  (_%make-export126492%_
                   (lambda _g130064_
                     (let ((_g130063_ (##length _g130064_)))
                       (cond ((##fx= _g130063_ 1)
                              (apply _%make-export__0__129992129995%_
                                     _g130064_))
                             ((##fx= _g130063_ 2)
                              (apply _%make-export__1__129993129996%_
                                     _g130064_))
                             ((##fx= _g130063_ 3)
                              (apply _%make-export__2__129994129997%_
                                     _g130064_))
                             ((##fx= _g130063_ 4)
                              (apply _%make-export__129990129991%_ _g130064_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130064_))))))
                  (_%expand1126493%_
                   (lambda (_%hd126648%_
                            _%K126649%_
                            _%rest126650%_
                            _%r126651%_)
                     (let* ((_%e126652126684%_ _%hd126648%_)
                            (_%E126679126688%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx126489%_
                                _%hd126648%_)))
                            (_%E126669126772%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126652126684%_)
                                   (let ((_%e126680126692%_
                                          (gx#syntax-e _%e126652126684%_)))
                                     (let ((_%hd126681126695%_
                                            (##car _%e126680126692%_))
                                           (_%tl126682126697%_
                                            (##cdr _%e126680126692%_)))
                                       (if (eq? (gx#stx-e _%hd126681126695%_)
                                                'import:)
                                           (let ((_%in126700%_
                                                  _%tl126682126697%_))
                                             (if (gx#stx-list? _%in126700%_)
                                                 (let _%lp126702%_ ((_%in-rest126704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in126700%_)
                            (_%r126705%_ _%r126651%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e126706126713%_
                                                           _%in-rest126704%_)
                                                          (_%E126708126717%_
                                                           (lambda ()
                                                             (_%K126649%_
                                                              _%rest126650%_
                                                              _%r126705%_)))
                                                          (_%E126707126768%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e126706126713%_)
                         (let ((_%e126709126721%_
                                (gx#syntax-e _%e126706126713%_)))
                           (let ((_%hd126710126724%_ (##car _%e126709126721%_))
                                 (_%tl126711126726%_
                                  (##cdr _%e126709126721%_)))
                             (let* ((_%hd126729%_ _%hd126710126724%_)
                                    (_%in-rest126731%_ _%tl126711126726%_)
                                    (_%src126766%_
                                     (if (gx#core-bound-module? _%hd126729%_)
                                         (gx#syntax-local-e__0 _%hd126729%_)
                                         (if (gx#core-library-module-path?
                                              _%hd126729%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd126729%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd126729%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd126729%_))
                                                 (if (gx#stx-string?
                                                      _%hd126729%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd126729%_
                                                       (gx#stx-source
                                                        _%stx126489%_)))
                                                     (let* ((_%e126737126744%_
                                                             _%hd126729%_)
                                                            (_%E126739126748%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx126489%_
                                                                _%hd126729%_)))
                                                            (_%E126738126762%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e126737126744%_)
                           (let ((_%e126740126752%_
                                  (gx#syntax-e _%e126737126744%_)))
                             (let ((_%hd126741126755%_
                                    (##car _%e126740126752%_))
                                   (_%tl126742126757%_
                                    (##cdr _%e126740126752%_)))
                               (if (eq? (gx#stx-e _%hd126741126755%_) 'in:)
                                   (let ((_%spath126760%_ _%tl126742126757%_))
                                     (gx#core-import-nested-module
                                      _%spath126760%_
                                      _%stx126489%_))
                                   (_%E126739126748%_))))
                           (_%E126739126748%_)))))
               (_%E126738126762%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp126702%_
                                _%in-rest126731%_
                                (_%export-imports126494%_
                                 _%src126766%_
                                 _%r126705%_)))))
                         (_%E126708126717%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E126707126768%_)))
                                                 (_%E126679126688%_)))
                                           (_%E126679126688%_))))
                                   (_%E126679126688%_))))
                            (_%E126656126812%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126652126684%_)
                                   (let ((_%e126670126776%_
                                          (gx#syntax-e _%e126652126684%_)))
                                     (let ((_%hd126671126779%_
                                            (##car _%e126670126776%_))
                                           (_%tl126672126781%_
                                            (##cdr _%e126670126776%_)))
                                       (if (eq? (gx#stx-e _%hd126671126779%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl126672126781%_)
                                               (let ((_%e126673126784%_
                                                      (gx#syntax-e
                                                       _%tl126672126781%_)))
                                                 (let ((_%hd126674126787%_
                                                        (##car _%e126673126784%_))
                                                       (_%tl126675126789%_
                                                        (##cdr _%e126673126784%_)))
                                                   (let ((_%id126792%_
                                                          _%hd126674126787%_))
                                                     (if (gx#stx-pair?
                                                          _%tl126675126789%_)
                                                         (let ((_%e126676126794%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl126675126789%_)))
                   (let ((_%hd126677126797%_ (##car _%e126676126794%_))
                         (_%tl126678126799%_ (##cdr _%e126676126794%_)))
                     (let ((_%name126802%_ _%hd126677126797%_))
                       (if (gx#stx-null? _%tl126678126799%_)
                           (let* ((_%phi126804%_
                                   (gx#current-export-expander-phi))
                                  (_%$e126806%_
                                   (gx#core-resolve-identifier__1
                                    _%id126792%_
                                    _%phi126804%_)))
                             (if _%$e126806%_
                                 ((lambda (_%bind126809%_)
                                    (_%K126649%_
                                     _%rest126650%_
                                     (cons (_%make-export__129990129991%_
                                            _%bind126809%_
                                            _%phi126804%_
                                            (gx#current-expander-context)
                                            _%name126802%_)
                                           _%r126651%_)))
                                  _%$e126806%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx126489%_
                                  _%hd126648%_
                                  _%id126792%_)))
                           (_%E126669126772%_)))))
                 (_%E126669126772%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E126669126772%_))
                                           (_%E126669126772%_))))
                                   (_%E126669126772%_))))
                            (_%E126655126862%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126652126684%_)
                                   (let ((_%e126657126816%_
                                          (gx#syntax-e _%e126652126684%_)))
                                     (let ((_%hd126658126819%_
                                            (##car _%e126657126816%_))
                                           (_%tl126659126821%_
                                            (##cdr _%e126657126816%_)))
                                       (if (eq? (gx#stx-e _%hd126658126819%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl126659126821%_)
                                               (let ((_%e126660126824%_
                                                      (gx#syntax-e
                                                       _%tl126659126821%_)))
                                                 (let ((_%hd126661126827%_
                                                        (##car _%e126660126824%_))
                                                       (_%tl126662126829%_
                                                        (##cdr _%e126660126824%_)))
                                                   (let ((_%phi126832%_
                                                          _%hd126661126827%_))
                                                     (if (gx#stx-pair?
                                                          _%tl126662126829%_)
                                                         (let ((_%e126663126834%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl126662126829%_)))
                   (let ((_%hd126664126837%_ (##car _%e126663126834%_))
                         (_%tl126665126839%_ (##cdr _%e126663126834%_)))
                     (let ((_%id126842%_ _%hd126664126837%_))
                       (if (gx#stx-pair? _%tl126665126839%_)
                           (let ((_%e126666126844%_
                                  (gx#syntax-e _%tl126665126839%_)))
                             (let ((_%hd126667126847%_
                                    (##car _%e126666126844%_))
                                   (_%tl126668126849%_
                                    (##cdr _%e126666126844%_)))
                               (let ((_%name126852%_ _%hd126667126847%_))
                                 (if (gx#stx-null? _%tl126668126849%_)
                                     (if (and (gx#stx-fixnum? _%phi126832%_)
                                              (gx#identifier? _%id126842%_)
                                              (gx#identifier? _%name126852%_))
                                         (let* ((_%phi126854%_
                                                 (gx#stx-e _%phi126832%_))
                                                (_%$e126856%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id126842%_
                                                  _%phi126854%_)))
                                           (if _%$e126856%_
                                               ((lambda (_%bind126859%_)
                                                  (_%K126649%_
                                                   _%rest126650%_
                                                   (cons (_%make-export__129990129991%_
                                                          _%bind126859%_
                                                          _%phi126854%_
                                                          (gx#current-expander-context)
                                                          _%name126852%_)
                                                         _%r126651%_)))
                                                _%$e126856%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx126489%_
                                                _%hd126648%_
                                                _%id126842%_)))
                                         (_%E126656126812%_))
                                     (_%E126656126812%_)))))
                           (_%E126656126812%_)))))
                 (_%E126656126812%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E126656126812%_))
                                           (_%E126656126812%_))))
                                   (_%E126656126812%_))))
                            (_%E126654126874%_
                             (lambda ()
                               (let ((_%id126866%_ _%e126652126684%_))
                                 (if (gx#identifier? _%id126866%_)
                                     (let ((_%$e126868%_
                                            (gx#core-resolve-identifier__1
                                             _%id126866%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e126868%_
                                           ((lambda (_%bind126871%_)
                                              (_%K126649%_
                                               _%rest126650%_
                                               (cons (_%make-export__0__129992129995%_
                                                      _%bind126871%_)
                                                     _%r126651%_)))
                                            _%$e126868%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx126489%_
                                            _%hd126648%_)))
                                     (_%E126655126862%_)))))
                            (_%E126653126938%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e126652126684%_) '#t)
                                   (let* ((_%current-ctx126878%_
                                           (gx#current-expander-context))
                                          (_%current-phi126880%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx126882%_
                                           (gx#core-context-shift
                                            _%current-ctx126878%_
                                            _%current-phi126880%_))
                                          (_%phi-bind126884%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx126882%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp126887%_ ((_%bind-rest126889%_
                                                         _%phi-bind126884%_)
                                                        (_%set126890%_ '()))
                                       (let* ((_%bind-rest126891126901%_
                                               _%bind-rest126889%_)
                                              (_%else126893126909%_
                                               (lambda ()
                                                 (_%K126649%_
                                                  _%rest126650%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi126880%_
                                                         _%set126890%_)
                                                        _%r126651%_))))
                                              (_%K126895126919%_
                                               (lambda (_%bind-rest126912%_
                                                        _%bind126913%_
                                                        _%key126914%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind126913%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind126913%_))
                                                     (_%lp126887%_
                                                      _%bind-rest126912%_
                                                      _%set126890%_)
                                                     (_%lp126887%_
                                                      _%bind-rest126912%_
                                                      (cons (_%make-export__2__129994129997%_
                                                             _%bind126913%_
                                                             _%current-phi126880%_
                                                             _%current-ctx126878%_)
                                                            _%set126890%_))))))
                                         (if (pair? _%bind-rest126891126901%_)
                                             (let ((_%hd126896126922%_
                                                    (##car _%bind-rest126891126901%_))
                                                   (_%tl126897126924%_
                                                    (##cdr _%bind-rest126891126901%_)))
                                               (if (pair? _%hd126896126922%_)
                                                   (let ((_%hd126898126927%_
                                                          (##car _%hd126896126922%_))
                                                         (_%tl126899126929%_
                                                          (##cdr _%hd126896126922%_)))
                                                     (let* ((_%key126932%_
                                                             _%hd126898126927%_)
                                                            (_%bind126934%_
                                                             _%tl126899126929%_)
                                                            (_%bind-rest126936%_
                                                             _%tl126897126924%_))
                                                       (_%K126895126919%_
                                                        _%bind-rest126936%_
                                                        _%bind126934%_
                                                        _%key126932%_)))
                                                   (_%else126893126909%_)))
                                             (_%else126893126909%_)))))
                                   (_%E126654126874%_)))))
                       (_%E126653126938%_))))
                  (_%export-imports126494%_
                   (lambda (_%src126524%_ _%r126525%_)
                     (letrec* ((_%current-ctx126527%_
                                (gx#current-expander-context))
                               (_%current-phi126528%_
                                (gx#current-export-expander-phi))
                               (_%import->export126529%_
                                (lambda (_%in126610%_)
                                  (let* ((_%in126611126619%_ _%in126610%_)
                                         (_%E126613126623%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in126611126619%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K126614126630%_
                                          (lambda (_%phi126626%_
                                                   _%key126627%_
                                                   _%out126628%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx126527%_
                                             _%key126627%_
                                             _%phi126626%_
                                             _%key126627%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in126611126619%_
                                         'gx#module-import::t)
                                        (let* ((_%e126615126633%_
                                                (##unchecked-structure-ref
                                                 _%in126611126619%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out126636%_
                                                _%e126615126633%_)
                                               (_%e126616126638%_
                                                (##unchecked-structure-ref
                                                 _%in126611126619%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key126641%_
                                                _%e126616126638%_)
                                               (_%e126617126643%_
                                                (##unchecked-structure-ref
                                                 _%in126611126619%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi126646%_
                                                _%e126617126643%_))
                                          (_%K126614126630%_
                                           _%phi126646%_
                                           _%key126641%_
                                           _%out126636%_))
                                        (_%E126613126623%_)))))
                               (_%fold-e126530%_
                                (lambda (_%in126532%_ _%r126533%_)
                                  (let* ((_%in126534126548%_ _%in126532%_)
                                         (_%else126537126556%_
                                          (lambda () _%r126533%_)))
                                    (let ((_%K126543126592%_
                                           (lambda (_%phi126588%_
                                                    _%key126589%_
                                                    _%out126590%_)
                                             (if (and (fx= _%phi126588%_
                                                           _%current-phi126528%_)
                                                      (eq? _%src126524%_
                                                           (##unchecked-structure-ref
                                                            _%out126590%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export126529%_
                                                        _%in126532%_)
                                                       _%r126533%_)
                                                 _%r126533%_)))
                                          (_%K126539126567%_
                                           (lambda (_%imports126560%_
                                                    _%phi126561%_
                                                    _%ctx126562%_)
                                             (if (and (fx= _%phi126561%_
                                                           _%current-phi126528%_)
                                                      (eq? _%src126524%_
                                                           _%ctx126562%_))
                                                 (__foldl1
                                                  (lambda (_%in126564%_
                                                           _%r126565%_)
                                                    (cons (_%import->export126529%_
                                                           _%in126564%_)
                                                          _%r126565%_))
                                                  _%r126533%_
                                                  _%imports126560%_)
                                                 _%r126533%_))))
                                      (let ((_%try-match126536126585%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in126534126548%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e126540126570%_
                                                           (##unchecked-structure-ref
                                                            _%in126534126548%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e126541126575%_
                                                           (##unchecked-structure-ref
                                                            _%in126534126548%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e126542126580%_
                                                           (##unchecked-structure-ref
                                                            _%in126534126548%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx126573%_
                                                            _%e126540126570%_)
                                                           (_%phi126578%_
                                                            _%e126541126575%_)
                                                           (_%imports126583%_
                                                            _%e126542126580%_))
                                                       (_%K126539126567%_
                                                        _%imports126583%_
                                                        _%phi126578%_
                                                        _%ctx126573%_)))
                                                   (_%else126537126556%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in126534126548%_
                                             'gx#module-import::t)
                                            (let* ((_%e126544126595%_
                                                    (##unchecked-structure-ref
                                                     _%in126534126548%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e126545126600%_
                                                    (##unchecked-structure-ref
                                                     _%in126534126548%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e126546126605%_
                                                    (##unchecked-structure-ref
                                                     _%in126534126548%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out126598%_
                                                     _%e126544126595%_)
                                                    (_%key126603%_
                                                     _%e126545126600%_)
                                                    (_%phi126608%_
                                                     _%e126546126605%_))
                                                (_%K126543126592%_
                                                 _%phi126608%_
                                                 _%key126603%_
                                                 _%out126598%_)))
                                            (_%try-match126536126585%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src126524%_
                              _%current-phi126528%_
                              (__foldl1
                               _%fold-e126530%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx126527%_
                                '8
                                '#f
                                '#f)))
                             _%r126525%_))))
                  (_%export!126495%_
                   (lambda (_%rbody126511%_)
                     (letrec* ((_%current-ctx126513%_
                                (gx#current-expander-context))
                               (_%fold-e126514%_
                                (lambda (_%out126518%_ _%r126519%_)
                                  (if (##structure-direct-instance-of?
                                       _%out126518%_
                                       'gx#module-export::t)
                                      (cons _%out126518%_ _%r126519%_)
                                      (if (##structure-direct-instance-of?
                                           _%out126518%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r126519%_
                                           (##unchecked-structure-ref
                                            _%out126518%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r126519%_)))))
                       (let ((_%body126516%_ (reverse _%rbody126511%_)))
                         (##unchecked-structure-set!
                          _%current-ctx126513%_
                          (__foldl1
                           _%fold-e126514%_
                           (##unchecked-structure-ref
                            _%current-ctx126513%_
                            '9
                            '#f
                            '#f)
                           _%body126516%_)
                          '9
                          '#f
                          '#f)
                         _%body126516%_))))
                  (_%expanded-export?126496%_
                   (lambda (_%e126506%_)
                     (let ((_%$e126508%_
                            (##structure-direct-instance-of?
                             _%e126506%_
                             'gx#module-export::t)))
                       (if _%$e126508%_
                           _%$e126508%_
                           (##structure-direct-instance-of?
                            _%e126506%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?126490%_)
              (let ((_%rbody126502%_
                     (gx#core-expand-import/export
                      _%stx126489%_
                      _%expanded-export?126496%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1126493%_)))
                (if _%internal-expand?126490%_
                    (reverse _%rbody126502%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!126495%_ _%rbody126502%_))
                     (gx#stx-source _%stx126489%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx126489%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx126489%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx126988%_)
        (let ((_%internal-expand?126990%_ '#f))
          (gx#core-expand-export%__%
           _%stx126988%_
           _%internal-expand?126990%_))))
    (define gx#core-expand-export%
      (lambda _g130066_
        (let ((_g130065_ (##length _g130066_)))
          (cond ((##fx= _g130065_ 1)
                 (apply gx#core-expand-export%__0 _g130066_))
                ((##fx= _g130065_ 2)
                 (apply gx#core-expand-export%__% _g130066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g130066_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd126486%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd126486%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx126456%_)
        (let* ((_%e126457126464%_ _%stx126456%_)
               (_%E126459126468%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126457126464%_)))
               (_%E126458126482%_
                (lambda ()
                  (if (gx#stx-pair? _%e126457126464%_)
                      (let ((_%e126460126472%_
                             (gx#syntax-e _%e126457126464%_)))
                        (let ((_%hd126461126475%_ (##car _%e126460126472%_))
                              (_%tl126462126477%_ (##cdr _%e126460126472%_)))
                          (let ((_%body126480%_ _%tl126462126477%_))
                            (if (gx#identifier-list? _%body126480%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body126480%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body126480%_))
                                   (gx#stx-source _%stx126456%_)))
                                (_%E126459126468%_)))))
                      (_%E126459126468%_)))))
          (_%E126458126482%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id126422%_ _%private?126423%_ _%phi126424%_ _%ctx126425%_)
        (gx#core-bind-syntax!__%
         _%id126422%_
         ((if _%private?126423%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id126422%_))
         _%private?126423%_
         _%phi126424%_
         _%ctx126425%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id126430%_)
        (let* ((_%private?126432%_ '#f)
               (_%phi126434%_ (gx#current-expander-phi))
               (_%ctx126436%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126430%_
           _%private?126432%_
           _%phi126434%_
           _%ctx126436%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id126438%_ _%private?126439%_)
        (let* ((_%phi126441%_ (gx#current-expander-phi))
               (_%ctx126443%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126438%_
           _%private?126439%_
           _%phi126441%_
           _%ctx126443%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id126445%_ _%private?126446%_ _%phi126447%_)
        (let ((_%ctx126449%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126445%_
           _%private?126446%_
           _%phi126447%_
           _%ctx126449%_))))
    (define gx#core-bind-feature!
      (lambda _g130068_
        (let ((_g130067_ (##length _g130068_)))
          (cond ((##fx= _g130067_ 1)
                 (apply gx#core-bind-feature!__0 _g130068_))
                ((##fx= _g130067_ 2)
                 (apply gx#core-bind-feature!__1 _g130068_))
                ((##fx= _g130067_ 3)
                 (apply gx#core-bind-feature!__2 _g130068_))
                ((##fx= _g130067_ 4)
                 (apply gx#core-bind-feature!__% _g130068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g130068_))))))))
