(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1742237313)
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
      (lambda _%$args130006%_
        (apply make-instance gx#module-import::t _%$args130006%_)))
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
      (lambda _%$args130003%_
        (apply make-instance gx#module-export::t _%$args130003%_)))
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
      (lambda _%$args130000%_
        (apply make-instance gx#import-set::t _%$args130000%_)))
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
      (lambda _%$args129997%_
        (apply make-instance gx#export-set::t _%$args129997%_)))
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
      (lambda _%$args129994%_
        (apply make-instance gx#import-expander::t _%$args129994%_)))
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
      (lambda _%$args129991%_
        (apply make-instance gx#export-expander::t _%$args129991%_)))
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
      (lambda _%$args129988%_
        (apply make-instance gx#import-export-expander::t _%$args129988%_)))
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
      (lambda (_%path129985%_ _%fun129986%_)
        (call-with-input-file
         (cons 'path: (cons _%path129985%_ gx#source-file-settings))
         _%fun129986%_)))
    (define gx#module-context:::init!
      (lambda (_%self126437129966%_
               _%id129968%_
               _%super129969%_
               _%ns129970%_
               _%path129971%_)
        (let* ((_%self129973%_ _%self126437129966%_)
               (_%self129975%_ _%self129973%_))
          (if (##fx< '11 (##structure-length _%self129975%_))
              (begin
                (##unchecked-structure-set!
                 _%self129975%_
                 _%id129968%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129975%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129975%_
                 _%super129969%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129975%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self129975%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self129975%_
                 _%ns129970%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129975%_
                 _%path129971%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129975%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self129975%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self129975%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self129975%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129975%_
                     '11
                     (##structure-length _%self129975%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self126438129797%_ _%ctx129799%_ _%root129800%_)
        (let* ((_%self129802%_ _%self126438129797%_)
               (_%self129804%_ _%self129802%_)
               (_%super129820%_
                (let ((_%$e129814%_ _%root129800%_))
                  (if _%$e129814%_
                      _%$e129814%_
                      (let ((_%$e129817%_ (gx#core-context-root__0)))
                        (if _%$e129817%_
                            _%$e129817%_
                            (let ((__obj130050
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor130051
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj130050
                                      ':init!)))
                                (if __constructor130051
                                    (__constructor130051 __obj130050)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj130050)))))))
          (if _%ctx129799%_
              (let ((_%id129823%_
                     (##structure-ref
                      _%ctx129799%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path129824%_
                     (##structure-ref
                      _%ctx129799%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in129825%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx129799%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e129826%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx129799%_)))))
                (if (##fx< '8 (##structure-length _%self129804%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self129804%_
                       _%id129823%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129804%_
                       (make-hash-table-eq 'size: (##length _%in129825%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129804%_
                       _%super129820%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129804%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129804%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129804%_
                       _%path129824%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129804%_
                       _%in129825%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129804%_
                       _%e129826%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self129804%_
                           '8
                           (##structure-length _%self129804%_)))
                (##for-each
                 (lambda (_%g129827129829%_)
                   (gx#core-bind-weak-import!__%
                    _%g129827129829%_
                    _%self129804%_))
                 _%in129825%_))
              (if (##fx< '8 (##structure-length _%self129804%_))
                  (begin
                    (##unchecked-structure-set! _%self129804%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self129804%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self129804%_
                     _%super129820%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self129804%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self129804%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self129804%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self129804%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self129804%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self129804%_
                         '8
                         (##structure-length _%self129804%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self126438129835%_ _%ctx129836%_)
        (let ((_%root129838%_ '#f))
          (gx#prelude-context:::init!__%
           _%self126438129835%_
           _%ctx129836%_
           _%root129838%_))))
    (define gx#prelude-context:::init!
      (lambda _g130057_
        (let ((_g130056_ (##length _g130057_)))
          (cond ((##fx= _g130056_ 2)
                 (apply gx#prelude-context:::init!__0 _g130057_))
                ((##fx= _g130056_ 3)
                 (apply gx#prelude-context:::init!__% _g130057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g130057_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self129671%_ _%e129672%_)
        (if (##fx< '3 (##structure-length _%self129671%_))
            (begin
              (##unchecked-structure-set!
               _%self129671%_
               _%e129672%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self129671%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self129671%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self129671%_
                   '3
                   (##structure-length _%self129671%_)))))
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
      (lambda (_%g129297129300%_ _%g129298129302%_)
        (gx#core-apply-user-expander__%
         _%g129297129300%_
         _%g129298129302%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g129168129171%_ _%g129169129173%_)
        (gx#core-apply-user-expander__%
         _%g129168129171%_
         _%g129169129173%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx129039%_)
        (let* ((_%path129041%_
                (##structure-ref _%ctx129039%_ '7 gx#module-context::t '#f))
               (_%path129043%_
                (if (pair? _%path129041%_)
                    (##last _%path129041%_)
                    _%path129041%_)))
          (if (string? _%path129043%_) _%path129043%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path129015%_ _%reload?129016%_ _%eval?129017%_)
        (let ((_%ctx129019%_
               ((gx#current-expander-module-import)
                _%path129015%_
                _%reload?129016%_)))
          (if (and _%ctx129019%_ _%eval?129017%_)
              (gx#eval-module _%ctx129019%_)
              '#!void)
          _%ctx129019%_)))
    (define gx#import-module__0
      (lambda (_%path129024%_)
        (let* ((_%reload?129026%_ '#f) (_%eval?129028%_ '#f))
          (gx#import-module__%
           _%path129024%_
           _%reload?129026%_
           _%eval?129028%_))))
    (define gx#import-module__1
      (lambda (_%path129030%_ _%reload?129031%_)
        (let ((_%eval?129033%_ '#f))
          (gx#import-module__%
           _%path129030%_
           _%reload?129031%_
           _%eval?129033%_))))
    (define gx#import-module
      (lambda _g130059_
        (let ((_g130058_ (##length _g130059_)))
          (cond ((##fx= _g130058_ 1) (apply gx#import-module__0 _g130059_))
                ((##fx= _g130058_ 2) (apply gx#import-module__1 _g130059_))
                ((##fx= _g130058_ 3) (apply gx#import-module__% _g130059_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g130059_))))))
    (define gx#eval-module
      (lambda (_%mod129012%_)
        ((gx#current-expander-module-eval) _%mod129012%_)))
    (define gx#core-eval-module
      (lambda (_%obj128992%_)
        (letrec ((_%force-e128994%_
                  (lambda (_%getf129008%_ _%e129009%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf129008%_ _%e129009%_)))
                     gx#current-expander-context
                     _%e129009%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur128996%_ ((_%e128998%_ _%obj128992%_))
            (if (##structure-instance-of? _%e128998%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e129001%_
                         (gx#core-context-prelude__% _%e128998%_)))
                    (if _%$e129001%_ (_%recur128996%_ _%$e129001%_) '#!void))
                  (_%force-e128994%_ gx#module-context-e _%e128998%_))
                (if (##structure-instance-of?
                     _%e128998%_
                     'gx#prelude-context::t)
                    (_%force-e128994%_ gx#prelude-context-e _%e128998%_)
                    (if (gx#stx-string? _%e128998%_)
                        (_%recur128996%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e128998%_)))
                        (if (gx#core-library-module-path? _%e128998%_)
                            (_%recur128996%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e128998%_)))
                            (error '"cannot eval module" _%obj128992%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx128972%_)
        (let _%lp128974%_ ((_%e128976%_ _%ctx128972%_))
          (if (or (##structure-instance-of? _%e128976%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e128976%_ 'gx#local-context::t))
              (_%lp128974%_ (##unchecked-structure-ref _%e128976%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e128976%_ 'gx#prelude-context::t)
                  _%e128976%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx128988%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx128988%_))))
    (define gx#core-context-prelude
      (lambda _g130061_
        (let ((_g130060_ (##length _g130061_)))
          (cond ((##fx= _g130060_ 0)
                 (apply gx#core-context-prelude__0 _g130061_))
                ((##fx= _g130060_ 1)
                 (apply gx#core-context-prelude__% _g130061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g130061_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx128963%_)
        (let ((_%$e128965%_ (__hash-get gx#__module-registry _%ctx128963%_)))
          (if _%$e128965%_
              _%$e128965%_
              (let ((_%pre128969%_
                     (let ((__obj130052
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
                        __obj130052
                        _%ctx128963%_)
                       __obj130052)))
                (__hash-put! gx#__module-registry _%ctx128963%_ _%pre128969%_)
                _%pre128969%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath128835%_ _%reload?128836%_)
        (letrec ((_%import-source128838%_
                  (lambda (_%path128927%_)
                    (if (member _%path128927%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path128927%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g130062_ (gx#core-read-module _%path128927%_)))
                         (begin
                           (let ((_g130063_
                                  (if (##values? _g130062_)
                                      (##values-length _g130062_)
                                      1)))
                             (if (not (##fx= _g130063_ 4))
                                 (error "Context expects 4 values" _g130063_)))
                           (let ((_%pre128930%_ (##values-ref _g130062_ 0))
                                 (_%id128931%_ (##values-ref _g130062_ 1))
                                 (_%ns128932%_ (##values-ref _g130062_ 2))
                                 (_%body128933%_ (##values-ref _g130062_ 3)))
                             (let* ((_%prelude128943%_
                                     (if (##structure-instance-of?
                                          _%pre128930%_
                                          'gx#prelude-context::t)
                                         _%pre128930%_
                                         (if (##structure-instance-of?
                                              _%pre128930%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre128930%_)
                                             (if (string? _%pre128930%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre128930%_))
                                                 (if (not _%pre128930%_)
                                                     (let ((_%$e128939%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e128939%_
                                                           _%$e128939%_
                                                           (let ((__obj130053
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
                     (gx#prelude-context:::init!__0 __obj130053 '#f)
                     __obj130053)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath128835%_
                                                            _%pre128930%_))))))
                                    (_%ctx128945%_
                                     (let ((__obj130054
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
                                        __obj130054
                                        _%id128931%_
                                        _%prelude128943%_
                                        _%ns128932%_
                                        _%path128927%_)
                                       __obj130054))
                                    (_%body128947%_
                                     (gx#core-expand-module-begin
                                      _%body128933%_
                                      _%ctx128945%_))
                                    (_%body128949%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body128947%_)
                                      _%path128927%_
                                      _%ctx128945%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx128945%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body128949%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx128945%_
                                _%body128949%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path128927%_
                                _%ctx128945%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id128931%_
                                _%ctx128945%_)
                               _%ctx128945%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path128927%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule128839%_
                  (lambda (_%rpath128855%_)
                    (let* ((_%rpath128856128863%_ _%rpath128855%_)
                           (_%E128858128867%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath128856128863%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K128859128915%_
                            (lambda (_%refs128870%_ _%origin128871%_)
                              (let ((_%ctx128873%_
                                     (if _%origin128871%_
                                         (gx#core-import-module__%
                                          _%origin128871%_
                                          _%reload?128836%_)
                                         (gx#current-expander-context))))
                                (let _%lp128875%_ ((_%rest128877%_
                                                    _%refs128870%_)
                                                   (_%ctx128878%_
                                                    _%ctx128873%_))
                                  (let* ((_%rest128879128887%_ _%rest128877%_)
                                         (_%else128881128895%_
                                          (lambda () _%ctx128878%_))
                                         (_%K128883128903%_
                                          (lambda (_%rest128898%_ _%id128899%_)
                                            (let ((_%bind128901%_
                                                   (gx#resolve-identifier__%
                                                    _%id128899%_
                                                    '0
                                                    _%ctx128878%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind128901%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind128901%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp128875%_
                                                   _%rest128898%_
                                                   (##unchecked-structure-ref
                                                    _%bind128901%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath128855%_
                                                         _%id128899%_
                                                         _%bind128901%_))))))
                                    (if (pair? _%rest128879128887%_)
                                        (let ((_%hd128884128906%_
                                               (##car _%rest128879128887%_))
                                              (_%tl128885128908%_
                                               (##cdr _%rest128879128887%_)))
                                          (let* ((_%id128911%_
                                                  _%hd128884128906%_)
                                                 (_%rest128913%_
                                                  _%tl128885128908%_))
                                            (_%K128883128903%_
                                             _%rest128913%_
                                             _%id128911%_)))
                                        (_%else128881128895%_))))))))
                      (if (pair? _%rpath128856128863%_)
                          (let ((_%hd128860128918%_
                                 (##car _%rpath128856128863%_))
                                (_%tl128861128920%_
                                 (##cdr _%rpath128856128863%_)))
                            (let* ((_%origin128923%_ _%hd128860128918%_)
                                   (_%refs128925%_ _%tl128861128920%_))
                              (_%K128859128915%_
                               _%refs128925%_
                               _%origin128923%_)))
                          (_%E128858128867%_))))))
          (let ((_%$e128841%_
                 (if (not _%reload?128836%_)
                     (__hash-get gx#__module-registry _%rpath128835%_)
                     '#f)))
            (if _%$e128841%_
                _%$e128841%_
                (if (list? _%rpath128835%_)
                    (_%import-submodule128839%_ _%rpath128835%_)
                    (if (gx#core-library-module-path? _%rpath128835%_)
                        (let ((_%ctx128846%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath128835%_)
                                _%reload?128836%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath128835%_
                           _%ctx128846%_)
                          _%ctx128846%_)
                        (let* ((_%npath128849%_
                                (path-normalize _%rpath128835%_))
                               (_%$e128851%_
                                (if (not _%reload?128836%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath128849%_)
                                    '#f)))
                          (if _%$e128851%_
                              _%$e128851%_
                              (_%import-source128838%_
                               _%npath128849%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath128956%_)
        (let ((_%reload?128958%_ '#f))
          (gx#core-import-module__% _%rpath128956%_ _%reload?128958%_))))
    (define gx#core-import-module
      (lambda _g130065_
        (let ((_g130064_ (##length _g130065_)))
          (cond ((##fx= _g130064_ 1)
                 (apply gx#core-import-module__0 _g130065_))
                ((##fx= _g130064_ 2)
                 (apply gx#core-import-module__% _g130065_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g130065_))))))
    (define gx#core-read-module
      (lambda (_%path128824%_)
        (__with-catch
         (lambda (_%exn128826%_)
           (if (and (datum-parsing-exception? _%exn128826%_)
                    (eq? (datum-parsing-exception-filepos _%exn128826%_) '0))
               (gx#core-read-module/lang _%path128824%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path128824%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g128828128830%_)
                      (display-exception__% _%exn128826%_ _%g128828128830%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path128824%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path128676%_)
        (let _%lp128678%_ ((_%body128680%_
                            (read-syntax-from-file _%path128676%_))
                           (_%pre128681%_ '#f)
                           (_%ns128682%_ '#f)
                           (_%pkg128683%_ '#f))
          (let* ((_%e128684128708%_ _%body128680%_)
                 (_%E128700128734%_
                  (lambda ()
                    (let ((_g130066_
                           (if _%pkg128683%_
                               (values _%pre128681%_
                                       _%ns128682%_
                                       _%pkg128683%_)
                               (gx#core-read-module-package
                                _%path128676%_
                                _%pre128681%_
                                _%ns128682%_))))
                      (begin
                        (let ((_g130067_
                               (if (##values? _g130066_)
                                   (##values-length _g130066_)
                                   1)))
                          (if (not (##fx= _g130067_ 3))
                              (error "Context expects 3 values" _g130067_)))
                        (let ((_%pre128712%_ (##values-ref _g130066_ 0))
                              (_%ns128713%_ (##values-ref _g130066_ 1))
                              (_%pkg128714%_ (##values-ref _g130066_ 2)))
                          (let* ((_%prelude128720%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre128712%_)
                                      (gx#syntax-local-e__0 _%pre128712%_)
                                      (if (gx#core-library-module-path?
                                           _%pre128712%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre128712%_)
                                          (if (gx#stx-string? _%pre128712%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre128712%_
                                               _%path128676%_)
                                              (gx#stx-e _%pre128712%_)))))
                                 (_%path-id128722%_
                                  (gx#core-module-path->namespace
                                   _%path128676%_))
                                 (_%pkg-id128724%_
                                  (if _%pkg128714%_
                                      (##string-append
                                       _%pkg128714%_
                                       '"/"
                                       _%path-id128722%_)
                                      _%path-id128722%_))
                                 (_%module-id128726%_
                                  (##string->symbol _%pkg-id128724%_))
                                 (_%module-ns128731%_
                                  (if (eq? _%ns128713%_ '#!void)
                                      '#f
                                      (let ((_%$e128728%_ _%ns128713%_))
                                        (if _%$e128728%_
                                            _%$e128728%_
                                            _%pkg-id128724%_)))))
                            (values _%prelude128720%_
                                    _%module-id128726%_
                                    _%module-ns128731%_
                                    _%body128680%_)))))))
                 (_%E128693128766%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128684128708%_)
                        (let ((_%e128701128738%_
                               (gx#syntax-e _%e128684128708%_)))
                          (let ((_%hd128702128741%_ (##car _%e128701128738%_))
                                (_%tl128703128743%_ (##cdr _%e128701128738%_)))
                            (if (eq? (gx#stx-e _%hd128702128741%_) 'package:)
                                (if (gx#stx-pair? _%tl128703128743%_)
                                    (let ((_%e128704128746%_
                                           (gx#syntax-e _%tl128703128743%_)))
                                      (let ((_%hd128705128749%_
                                             (##car _%e128704128746%_))
                                            (_%tl128706128751%_
                                             (##cdr _%e128704128746%_)))
                                        (let* ((_%pkg128754%_
                                                _%hd128705128749%_)
                                               (_%rest128756%_
                                                _%tl128706128751%_)
                                               (_%pkg128764%_
                                                (if (gx#identifier?
                                                     _%pkg128754%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg128754%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg128754%_)
                                                            (gx#stx-false?
                                                             _%pkg128754%_))
                                                        (gx#stx-e
                                                         _%pkg128754%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg128754%_)))))
                                          (_%lp128678%_
                                           _%rest128756%_
                                           _%pre128681%_
                                           _%ns128682%_
                                           _%pkg128764%_))))
                                    (_%E128700128734%_))
                                (_%E128700128734%_))))
                        (_%E128700128734%_))))
                 (_%E128686128796%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128684128708%_)
                        (let ((_%e128694128770%_
                               (gx#syntax-e _%e128684128708%_)))
                          (let ((_%hd128695128773%_ (##car _%e128694128770%_))
                                (_%tl128696128775%_ (##cdr _%e128694128770%_)))
                            (if (eq? (gx#stx-e _%hd128695128773%_) 'namespace:)
                                (if (gx#stx-pair? _%tl128696128775%_)
                                    (let ((_%e128697128778%_
                                           (gx#syntax-e _%tl128696128775%_)))
                                      (let ((_%hd128698128781%_
                                             (##car _%e128697128778%_))
                                            (_%tl128699128783%_
                                             (##cdr _%e128697128778%_)))
                                        (let* ((_%ns128786%_
                                                _%hd128698128781%_)
                                               (_%rest128788%_
                                                _%tl128699128783%_)
                                               (_%ns128794%_
                                                (if (gx#identifier?
                                                     _%ns128786%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns128786%_))
                                                    (if (gx#stx-string?
                                                         _%ns128786%_)
                                                        (gx#stx-e _%ns128786%_)
                                                        (if (gx#stx-false?
                                                             _%ns128786%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns128786%_))))))
                                          (_%lp128678%_
                                           _%rest128788%_
                                           _%pre128681%_
                                           _%ns128794%_
                                           _%pkg128683%_))))
                                    (_%E128693128766%_))
                                (_%E128693128766%_))))
                        (_%E128693128766%_))))
                 (_%E128685128820%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128684128708%_)
                        (let ((_%e128687128800%_
                               (gx#syntax-e _%e128684128708%_)))
                          (let ((_%hd128688128803%_ (##car _%e128687128800%_))
                                (_%tl128689128805%_ (##cdr _%e128687128800%_)))
                            (if (eq? (gx#stx-e _%hd128688128803%_) 'prelude:)
                                (if (gx#stx-pair? _%tl128689128805%_)
                                    (let ((_%e128690128808%_
                                           (gx#syntax-e _%tl128689128805%_)))
                                      (let ((_%hd128691128811%_
                                             (##car _%e128690128808%_))
                                            (_%tl128692128813%_
                                             (##cdr _%e128690128808%_)))
                                        (let* ((_%prelude128816%_
                                                _%hd128691128811%_)
                                               (_%rest128818%_
                                                _%tl128692128813%_))
                                          (_%lp128678%_
                                           _%rest128818%_
                                           _%prelude128816%_
                                           _%ns128682%_
                                           _%pkg128683%_))))
                                    (_%E128686128796%_))
                                (_%E128686128796%_))))
                        (_%E128686128796%_)))))
            (_%E128685128820%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path128498%_)
        (letrec ((_%default-read-module-body128500%_
                  (lambda (_%inp128668%_)
                    (let _%lp128670%_ ((_%body128672%_ '()))
                      (let ((_%next128674%_ (read-syntax__% _%inp128668%_)))
                        (if (eof-object? _%next128674%_)
                            (reverse _%body128672%_)
                            (_%lp128670%_
                             (cons _%next128674%_ _%body128672%_)))))))
                 (_%read-body128501%_
                  (lambda (_%inp128586%_
                           _%pre128587%_
                           _%ns128588%_
                           _%pkg128589%_
                           _%args128590%_)
                    (let ((_g130068_
                           (if _%pkg128589%_
                               (values _%pre128587%_
                                       _%ns128588%_
                                       _%pkg128589%_)
                               (gx#core-read-module-package
                                _%path128498%_
                                _%pre128587%_
                                _%ns128588%_))))
                      (begin
                        (let ((_g130069_
                               (if (##values? _g130068_)
                                   (##values-length _g130068_)
                                   1)))
                          (if (not (##fx= _g130069_ 3))
                              (error "Context expects 3 values" _g130069_)))
                        (let ((_%pre128592%_ (##values-ref _g130068_ 0))
                              (_%ns128593%_ (##values-ref _g130068_ 1))
                              (_%pkg128594%_ (##values-ref _g130068_ 2)))
                          (let* ((_%prelude128596%_
                                  (gx#import-module__0 _%pre128592%_))
                                 (_%read-module-body128651%_
                                  (let ((_%$e128642%_
                                         (__find (lambda (_%e128597128599%_)
                                                   (let* ((_%g128601128611%_
                                                           _%e128597128599%_)
                                                          (_%else128603128619%_
                                                           (lambda () '#f))
                                                          (_%K128605128623%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g128601128611%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e128606128626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g128601128611%_
                          '1
                          '#f
                          '#f))
                        (_%e128607128629%_
                         (##unchecked-structure-ref
                          _%g128601128611%_
                          '2
                          '#f
                          '#f))
                        (_%e128608128632%_
                         (##unchecked-structure-ref
                          _%g128601128611%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e128608128632%_ '1)
                       (let ((_%e128609128635%_
                              (##unchecked-structure-ref
                               _%g128601128611%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g128637128639%_)
                                (eq? _%g128637128639%_ 'read-module-body))
                              _%e128609128635%_)
                             (_%K128605128623%_)
                             (_%else128603128619%_)))
                       (_%else128603128619%_)))
                 (_%else128603128619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude128596%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e128642%_
                                        ((lambda (_%xport128645%_)
                                           (let ((_%proc128648%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport128645%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc128648%_)
                                                 _%proc128648%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path128498%_
                                                  _%pre128592%_
                                                  _%proc128648%_))))
                                         _%$e128642%_)
                                        _%default-read-module-body128500%_)))
                                 (_%path-id128653%_
                                  (gx#core-module-path->namespace
                                   _%path128498%_))
                                 (_%pkg-id128655%_
                                  (if _%pkg128594%_
                                      (##string-append
                                       _%pkg128594%_
                                       '"/"
                                       _%path-id128653%_)
                                      _%path-id128653%_))
                                 (_%module-id128657%_
                                  (##string->symbol _%pkg-id128655%_))
                                 (_%module-ns128662%_
                                  (let ((_%$e128659%_ _%ns128593%_))
                                    (if _%$e128659%_
                                        _%$e128659%_
                                        _%pkg-id128655%_)))
                                 (_%body128665%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body128651%_
                                      _%inp128586%_))
                                   gx#current-module-reader-path
                                   _%path128498%_
                                   gx#current-module-reader-args
                                   _%args128590%_)))
                            (values _%prelude128596%_
                                    _%module-id128657%_
                                    _%module-ns128662%_
                                    _%body128665%_)))))))
                 (_%string-e128502%_
                  (lambda (_%obj128580%_ _%what128581%_)
                    (if (string? _%obj128580%_)
                        _%obj128580%_
                        (if (symbol? _%obj128580%_)
                            (##symbol->string _%obj128580%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what128581%_)
                             _%path128498%_
                             _%obj128580%_)))))
                 (_%read-lang-args128503%_
                  (lambda (_%inp128535%_ _%args128536%_)
                    (let* ((_%args128537128545%_ _%args128536%_)
                           (_%else128539128553%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path128498%_)))
                           (_%K128541128568%_
                            (lambda (_%args128556%_ _%prelude128557%_)
                              (let* ((_%pkg128559%_
                                      (pgetq__0 'package: _%args128556%_))
                                     (_%pkg128561%_
                                      (if _%pkg128559%_
                                          (_%string-e128502%_
                                           _%pkg128559%_
                                           '"package")
                                          '#f))
                                     (_%ns128563%_
                                      (pgetq__0 'namespace: _%args128556%_))
                                     (_%ns128565%_
                                      (if _%ns128563%_
                                          (_%string-e128502%_
                                           _%ns128563%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body128501%_
                                 _%inp128535%_
                                 _%prelude128557%_
                                 _%ns128565%_
                                 _%pkg128561%_
                                 _%args128556%_)))))
                      (if (pair? _%args128537128545%_)
                          (let ((_%hd128542128571%_
                                 (##car _%args128537128545%_))
                                (_%tl128543128573%_
                                 (##cdr _%args128537128545%_)))
                            (let* ((_%prelude128576%_ _%hd128542128571%_)
                                   (_%args128578%_ _%tl128543128573%_))
                              (_%K128541128568%_
                               _%args128578%_
                               _%prelude128576%_)))
                          (_%else128539128553%_)))))
                 (_%read-lang128504%_
                  (lambda (_%inp128509%_)
                    (let* ((_%head128511%_ (read-line _%inp128509%_))
                           (_%$e128513%_
                            (string-index__0 _%head128511%_ '#\space)))
                      (if _%$e128513%_
                          ((lambda (_%ix128516%_)
                             (let ((_%lang128518%_
                                    (substring
                                     _%head128511%_
                                     '0
                                     _%ix128516%_)))
                               (if (equal? _%lang128518%_ '"#lang")
                                   (let* ((_%rest128520%_
                                           (substring
                                            _%head128511%_
                                            (##fx+ _%ix128516%_ '1)
                                            (string-length _%head128511%_)))
                                          (_%args128531%_
                                           (__with-catch
                                            (lambda (_%g128521128523%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path128498%_
                                               _%g128521128523%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest128520%_
                                               (lambda (_%g128526128528%_)
                                                 (read-all
                                                  _%g128526128528%_
                                                  read)))))))
                                     (_%read-lang-args128503%_
                                      _%inp128509%_
                                      _%args128531%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path128498%_))))
                           _%$e128513%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path128498%_)))))
                 (_%read-e128505%_
                  (lambda (_%inp128507%_)
                    (if (eq? (peek-char _%inp128507%_) '#\#)
                        (_%read-lang128504%_ _%inp128507%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path128498%_)))))
          (gx#call-with-input-source-file _%path128498%_ _%read-e128505%_))))
    (define gx#core-read-module-package
      (lambda (_%path128446%_ _%pre128447%_ _%ns128448%_)
        (letrec ((_%string-e128450%_
                  (lambda (_%e128493%_)
                    (if (symbol? _%e128493%_)
                        (##symbol->string _%e128493%_)
                        (if (string? _%e128493%_)
                            _%e128493%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e128493%_))))))
          (let _%lp128452%_ ((_%dir128454%_ (path-directory _%path128446%_))
                             (_%pkg-path128455%_ '()))
            (let ((_%gerbil.pkg128457%_
                   (path-expand '"gerbil.pkg" _%dir128454%_)))
              (if (##file-exists? _%gerbil.pkg128457%_)
                  (let ((_%plist128459%_
                         (gx#core-library-package-plist__% _%dir128454%_ '#t)))
                    (if (null? _%plist128459%_)
                        (let ((_%pkg128462%_
                               (if (null? _%pkg-path128455%_)
                                   '#f
                                   (string-join _%pkg-path128455%_ '"/"))))
                          (values _%pre128447%_ _%ns128448%_ _%pkg128462%_))
                        (if (list? _%plist128459%_)
                            (let* ((_%root128465%_
                                    (pgetq__0 'package: _%plist128459%_))
                                   (_%pkg128469%_
                                    (let ((_%pkg-path128467%_
                                           (if _%root128465%_
                                               (cons (_%string-e128450%_
                                                      _%root128465%_)
                                                     _%pkg-path128455%_)
                                               _%pkg-path128455%_)))
                                      (if (null? _%pkg-path128467%_)
                                          '#f
                                          (string-join
                                           _%pkg-path128467%_
                                           '"/"))))
                                   (_%ns128476%_
                                    (let ((_%ns128474%_
                                           (let ((_%$e128471%_ _%ns128448%_))
                                             (if _%$e128471%_
                                                 _%$e128471%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist128459%_)))))
                                      (if _%ns128474%_
                                          (_%string-e128450%_ _%ns128474%_)
                                          '#f)))
                                   (_%pre128481%_
                                    (let ((_%$e128478%_ _%pre128447%_))
                                      (if _%$e128478%_
                                          _%$e128478%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist128459%_)))))
                              (values _%pre128481%_
                                      _%ns128476%_
                                      _%pkg128469%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist128459%_))))
                  (let ((_%dir*128485%_
                         (path-strip-trailing-directory-separator
                          _%dir128454%_)))
                    (if (or (__string-empty? _%dir*128485%_)
                            (equal? _%dir128454%_ _%dir*128485%_))
                        (values _%pre128447%_ _%ns128448%_ '#f)
                        (let ((_%xpath128490%_
                               (path-strip-directory _%dir*128485%_))
                              (_%xdir128491%_ (path-directory _%dir*128485%_)))
                          (_%lp128452%_
                           _%xdir128491%_
                           (cons _%xpath128490%_ _%pkg-path128455%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path128444%_)
        (path-strip-extension (path-strip-directory _%path128444%_))))
    (define gx#core-module-path->id
      (lambda (_%path128442%_)
        (##string->symbol (gx#core-module-path->namespace _%path128442%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path128421%_ _%rel128422%_)
        (let* ((_%path128424%_ (gx#stx-e _%stx-path128421%_))
               (_%path128426%_
                (if (__string-empty? (path-extension _%path128424%_))
                    (##string-append _%path128424%_ '".ss")
                    _%path128424%_)))
          (gx#core-resolve-path__%
           _%path128426%_
           (let ((_%$e128429%_ (gx#stx-source _%stx-path128421%_)))
             (if _%$e128429%_ _%$e128429%_ _%rel128422%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path128435%_)
        (let ((_%rel128437%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path128435%_ _%rel128437%_))))
    (define gx#core-resolve-module-path
      (lambda _g130071_
        (let ((_g130070_ (##length _g130071_)))
          (cond ((##fx= _g130070_ 1)
                 (apply gx#core-resolve-module-path__0 _g130071_))
                ((##fx= _g130070_ 2)
                 (apply gx#core-resolve-module-path__% _g130071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g130071_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath128306%_)
        (let* ((_%spath128308%_ (symbol->string (gx#stx-e _%libpath128306%_)))
               (_%spath128310%_
                (substring
                 _%spath128308%_
                 '1
                 (##string-length _%spath128308%_)))
               (_%ext128312%_ (path-extension _%spath128310%_))
               (_%ssi128314%_
                (if (__string-empty? _%ext128312%_)
                    (##string-append _%spath128310%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath128310%_)
                     '".ssi")))
               (_%srcs128318%_
                (if (__string-empty? _%ext128312%_)
                    (##map (lambda (_%ext128316%_)
                             (string-append _%spath128310%_ _%ext128316%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath128310%_ '()))))
          (let _%lp128321%_ ((_%rest128323%_ (load-path)))
            (let* ((_%rest128324128333%_ _%rest128323%_)
                   (_%E128327128337%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest128324128333%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K128329128408%_
                     (lambda (_%rest128348%_ _%dir128349%_)
                       (letrec ((_%resolve128351%_
                                 (lambda (_%ssi128364%_ _%srcs128365%_)
                                   (let ((_%compiled-path128367%_
                                          (path-expand
                                           _%ssi128364%_
                                           _%dir128349%_)))
                                     (if (##file-exists?
                                          _%compiled-path128367%_)
                                         (path-normalize
                                          _%compiled-path128367%_)
                                         (let _%lpr128369%_ ((_%rest-src128371%_
                                                              _%srcs128365%_))
                                           (let* ((_%rest-src128372128380%_
                                                   _%rest-src128371%_)
                                                  (_%else128374128388%_
                                                   (lambda ()
                                                     (_%lp128321%_
                                                      _%rest128348%_)))
                                                  (_%K128376128396%_
                                                   (lambda (_%rest-src128391%_
                                                            _%src128392%_)
                                                     (let ((_%src-path128394%_
                                                            (path-expand
                                                             _%src128392%_
                                                             _%dir128349%_)))
                                                       (if (##file-exists?
                                                            _%src-path128394%_)
                                                           (path-normalize
                                                            _%src-path128394%_)
                                                           (_%lpr128369%_
                                                            _%rest-src128391%_))))))
                                             (if (pair? _%rest-src128372128380%_)
                                                 (let ((_%hd128377128399%_
                                                        (##car _%rest-src128372128380%_))
                                                       (_%tl128378128401%_
                                                        (##cdr _%rest-src128372128380%_)))
                                                   (let* ((_%src128404%_
                                                           _%hd128377128399%_)
                                                          (_%rest-src128406%_
                                                           _%tl128378128401%_))
                                                     (_%K128376128396%_
                                                      _%rest-src128406%_
                                                      _%src128404%_)))
                                                 (_%else128374128388%_)))))))))
                         (let ((_%$e128353%_
                                (gx#core-library-package-path-prefix
                                 _%dir128349%_)))
                           (if _%$e128353%_
                               ((lambda (_%prefix128356%_)
                                  (if (string-prefix?
                                       _%prefix128356%_
                                       _%spath128310%_)
                                      (let ((_%ssi128360%_
                                             (substring
                                              _%ssi128314%_
                                              (string-length _%prefix128356%_)
                                              (##string-length _%ssi128314%_)))
                                            (_%srcs128361%_
                                             (##map (lambda (_%src128358%_)
                                                      (substring
                                                       _%src128358%_
                                                       (string-length
                                                        _%prefix128356%_)
                                                       (string-length
                                                        _%src128358%_)))
                                                    _%srcs128318%_)))
                                        (_%resolve128351%_
                                         _%ssi128360%_
                                         _%srcs128361%_))
                                      (_%lp128321%_ _%rest128348%_)))
                                _%$e128353%_)
                               (_%resolve128351%_
                                _%ssi128314%_
                                _%srcs128318%_))))))
                    (_%K128328128342%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath128306%_))))
                (let ((_%try-match128326128345%_
                       (lambda ()
                         (if (null? _%rest128324128333%_)
                             (_%K128328128342%_)
                             (_%E128327128337%_)))))
                  (if (pair? _%rest128324128333%_)
                      (let ((_%tl128331128413%_ (##cdr _%rest128324128333%_))
                            (_%hd128330128411%_ (##car _%rest128324128333%_)))
                        (let ((_%dir128416%_ _%hd128330128411%_)
                              (_%rest128418%_ _%tl128331128413%_))
                          (_%K128329128408%_ _%rest128418%_ _%dir128416%_)))
                      (_%try-match128326128345%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath128274%_)
        (letrec ((_%resolve128276%_
                  (lambda (_%path128297%_ _%base128298%_)
                    (let ((_%$e128300%_
                           (string-rindex__0 _%base128298%_ '#\/)))
                      (if _%$e128300%_
                          ((lambda (_%idx128303%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base128298%_ '0 _%idx128303%_)
                                '"/"
                                _%path128297%_))))
                           _%$e128300%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path128297%_))))))))
          (let ((_%spath128278%_ (symbol->string (gx#stx-e _%modpath128274%_)))
                (_%mod128279%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod128279%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath128274%_))
            (let ((_%mpath128281%_
                   (symbol->string
                    (##structure-ref
                     _%mod128279%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp128283%_ ((_%spath128285%_ _%spath128278%_)
                                 (_%mpath128286%_ _%mpath128281%_))
                (if (string-prefix? '"../" _%spath128285%_)
                    (let ((_%$e128289%_
                           (string-rindex__0 _%mpath128286%_ '#\/)))
                      (if _%$e128289%_
                          ((lambda (_%idx128292%_)
                             (_%lp128283%_
                              (substring
                               _%spath128285%_
                               '3
                               (string-length _%spath128285%_))
                              (substring _%mpath128286%_ '0 _%idx128292%_)))
                           _%$e128289%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath128274%_)))
                    (if (string-prefix? '"./" _%spath128285%_)
                        (_%lp128283%_
                         (substring
                          _%spath128285%_
                          '2
                          (string-length _%spath128285%_))
                         _%mpath128286%_)
                        (_%resolve128276%_
                         _%spath128285%_
                         _%mpath128286%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir128266%_)
        (let ((_%$e128268%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir128266%_))))
          (if _%$e128268%_
              ((lambda (_%pkg128271%_)
                 (##string-append (symbol->string _%pkg128271%_) '"/"))
               _%$e128268%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir128236%_ _%exists?128237%_)
        (let ((_%$e128239%_ (__hash-get gx#__module-pkg-cache _%dir128236%_)))
          (if _%$e128239%_
              _%$e128239%_
              (let* ((_%gerbil.pkg128243%_
                      (path-expand '"gerbil.pkg" _%dir128236%_))
                     (_%plist128253%_
                      (if (or _%exists?128237%_
                              (##file-exists? _%gerbil.pkg128243%_))
                          (let ((_%e128248%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg128243%_
                                  read)))
                            (if (eof-object? _%e128248%_)
                                '()
                                (if (list? _%e128248%_)
                                    _%e128248%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg128243%_
                                     _%e128248%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir128236%_
                 _%plist128253%_)
                _%plist128253%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir128259%_)
        (let ((_%exists?128261%_ '#f))
          (gx#core-library-package-plist__% _%dir128259%_ _%exists?128261%_))))
    (define gx#core-library-package-plist
      (lambda _g130073_
        (let ((_g130072_ (##length _g130073_)))
          (cond ((##fx= _g130072_ 1)
                 (apply gx#core-library-package-plist__0 _g130073_))
                ((##fx= _g130072_ 2)
                 (apply gx#core-library-package-plist__% _g130073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g130073_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx128233%_)
        (gx#core-special-module-path? _%stx128233%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx128231%_)
        (gx#core-special-module-path? _%stx128231%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx128226%_ _%char128227%_)
        (if (gx#identifier? _%stx128226%_)
            (if (interned-symbol? (gx#stx-e _%stx128226%_))
                (let ((_%str128229%_
                       (symbol->string (gx#stx-e _%stx128226%_))))
                  (if (##fx> (##string-length _%str128229%_) '1)
                      (eq? (string-ref _%str128229%_ '0) _%char128227%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx128220%_)
        (gx#core-bound-identifier?__%
         _%stx128220%_
         (lambda (_%g128221128223%_)
           (gx#expander-binding?__% _%g128221128223%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx128214%_)
        (gx#core-bound-identifier?__%
         _%stx128214%_
         (lambda (_%g128215128217%_)
           (gx#expander-binding?__% _%g128215128217%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx128201%_)
        (letrec ((_%module-prelude?128203%_
                  (lambda (_%e128209%_)
                    (let ((_%$e128211%_
                           (##structure-instance-of?
                            _%e128209%_
                            'gx#module-context::t)))
                      (if _%$e128211%_
                          _%$e128211%_
                          (##structure-instance-of?
                           _%e128209%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx128201%_
           (lambda (_%g128204128206%_)
             (gx#expander-binding?__%
              _%g128204128206%_
              _%module-prelude?128203%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in128131%_ _%ctx128132%_ _%force-weak?128133%_)
        (let* ((_%in128134128143%_ _%in128131%_)
               (_%E128136128147%_
                (lambda ()
                  (error '"No clause matching"
                         _%in128134128143%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K128137128160%_
                (lambda (_%weak?128150%_
                         _%phi128151%_
                         _%key128152%_
                         _%source128153%_)
                  (gx#core-bind!__%
                   _%key128152%_
                   (let ((_%e128155%_
                          (gx#core-resolve-module-export _%source128153%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e128155%_ '1 '#f '#f)
                      _%key128152%_
                      _%phi128151%_
                      _%e128155%_
                      (##unchecked-structure-ref _%source128153%_ '1 '#f '#f)
                      (let ((_%$e128157%_ _%force-weak?128133%_))
                        (if _%$e128157%_ _%$e128157%_ _%weak?128150%_))))
                   gx#core-context-rebind?
                   _%phi128151%_
                   _%ctx128132%_))))
          (if (##structure-direct-instance-of?
               _%in128134128143%_
               'gx#module-import::t)
              (let* ((_%e128138128163%_
                      (##unchecked-structure-ref
                       _%in128134128143%_
                       '1
                       '#f
                       '#f))
                     (_%source128166%_ _%e128138128163%_)
                     (_%e128139128168%_
                      (##unchecked-structure-ref
                       _%in128134128143%_
                       '2
                       '#f
                       '#f))
                     (_%key128171%_ _%e128139128168%_)
                     (_%e128140128173%_
                      (##unchecked-structure-ref
                       _%in128134128143%_
                       '3
                       '#f
                       '#f))
                     (_%phi128176%_ _%e128140128173%_)
                     (_%e128141128178%_
                      (##unchecked-structure-ref
                       _%in128134128143%_
                       '4
                       '#f
                       '#f))
                     (_%weak?128181%_ _%e128141128178%_))
                (_%K128137128160%_
                 _%weak?128181%_
                 _%phi128176%_
                 _%key128171%_
                 _%source128166%_))
              (_%E128136128147%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in128186%_)
        (let* ((_%ctx128188%_ (gx#current-expander-context))
               (_%force-weak?128190%_ '#f))
          (gx#core-bind-import!__%
           _%in128186%_
           _%ctx128188%_
           _%force-weak?128190%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in128192%_ _%ctx128193%_)
        (let ((_%force-weak?128195%_ '#f))
          (gx#core-bind-import!__%
           _%in128192%_
           _%ctx128193%_
           _%force-weak?128195%_))))
    (define gx#core-bind-import!
      (lambda _g130075_
        (let ((_g130074_ (##length _g130075_)))
          (cond ((##fx= _g130074_ 1) (apply gx#core-bind-import!__0 _g130075_))
                ((##fx= _g130074_ 2) (apply gx#core-bind-import!__1 _g130075_))
                ((##fx= _g130074_ 3) (apply gx#core-bind-import!__% _g130075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g130075_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in128117%_ _%ctx128118%_)
        (gx#core-bind-import!__% _%in128117%_ _%ctx128118%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in128123%_)
        (let ((_%ctx128125%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in128123%_ _%ctx128125%_))))
    (define gx#core-bind-weak-import!
      (lambda _g130077_
        (let ((_g130076_ (##length _g130077_)))
          (cond ((##fx= _g130076_ 1)
                 (apply gx#core-bind-weak-import!__0 _g130077_))
                ((##fx= _g130076_ 2)
                 (apply gx#core-bind-weak-import!__% _g130077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g130077_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out128008%_)
        (letrec ((_%subst128010%_
                  (lambda (_%key128056%_)
                    (let* ((_%key128057128065%_ _%key128056%_)
                           (_%else128059128073%_ (lambda () _%key128056%_))
                           (_%K128061128104%_
                            (lambda (_%mark128076%_ _%id128077%_)
                              (let* ((_%mark128078128084%_ _%mark128076%_)
                                     (_%E128080128088%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark128078128084%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K128081128096%_
                                      (lambda (_%subst128091%_)
                                        (let ((_%$e128093%_
                                               (if _%subst128091%_
                                                   (hash-get
                                                    _%subst128091%_
                                                    _%id128077%_)
                                                   '#f)))
                                          (if _%$e128093%_
                                              _%$e128093%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key128056%_))))))
                                (if (##structure-instance-of?
                                     _%mark128078128084%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e128082128099%_
                                            (##unchecked-structure-ref
                                             _%mark128078128084%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst128102%_ _%e128082128099%_))
                                      (_%K128081128096%_ _%subst128102%_))
                                    (_%E128080128088%_))))))
                      (if (pair? _%key128057128065%_)
                          (let ((_%hd128062128107%_
                                 (##car _%key128057128065%_))
                                (_%tl128063128109%_
                                 (##cdr _%key128057128065%_)))
                            (let* ((_%id128112%_ _%hd128062128107%_)
                                   (_%mark128114%_ _%tl128063128109%_))
                              (_%K128061128104%_ _%mark128114%_ _%id128112%_)))
                          (_%else128059128073%_))))))
          (let* ((_%out128011128021%_ _%out128008%_)
                 (_%E128013128025%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out128011128021%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K128014128032%_
                  (lambda (_%phi128028%_ _%key128029%_ _%ctx128030%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx128030%_ _%phi128028%_)
                     (_%subst128010%_ _%key128029%_)))))
            (if (##structure-direct-instance-of?
                 _%out128011128021%_
                 'gx#module-export::t)
                (let* ((_%e128015128035%_
                        (##unchecked-structure-ref
                         _%out128011128021%_
                         '1
                         '#f
                         '#f))
                       (_%ctx128038%_ _%e128015128035%_)
                       (_%e128016128040%_
                        (##unchecked-structure-ref
                         _%out128011128021%_
                         '2
                         '#f
                         '#f))
                       (_%key128043%_ _%e128016128040%_)
                       (_%e128017128045%_
                        (##unchecked-structure-ref
                         _%out128011128021%_
                         '3
                         '#f
                         '#f))
                       (_%phi128048%_ _%e128017128045%_)
                       (_%e128018128050%_
                        (##unchecked-structure-ref
                         _%out128011128021%_
                         '4
                         '#f
                         '#f))
                       (_%e128019128053%_
                        (##unchecked-structure-ref
                         _%out128011128021%_
                         '5
                         '#f
                         '#f)))
                  (_%K128014128032%_
                   _%phi128048%_
                   _%key128043%_
                   _%ctx128038%_))
                (_%E128013128025%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out127933%_ _%rename127934%_ _%dphi127935%_)
        (let* ((_%out127936127946%_ _%out127933%_)
               (_%E127938127950%_
                (lambda ()
                  (error '"No clause matching"
                         _%out127936127946%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K127939127962%_
                (lambda (_%weak?127953%_
                         _%name127954%_
                         _%phi127955%_
                         _%key127956%_
                         _%ctx127957%_)
                  (##structure
                   gx#module-import::t
                   _%out127933%_
                   (let ((_%$e127959%_ _%rename127934%_))
                     (if _%$e127959%_ _%$e127959%_ _%name127954%_))
                   (fx+ _%phi127955%_ _%dphi127935%_)
                   _%weak?127953%_))))
          (if (##structure-direct-instance-of?
               _%out127936127946%_
               'gx#module-export::t)
              (let* ((_%e127940127965%_
                      (##unchecked-structure-ref
                       _%out127936127946%_
                       '1
                       '#f
                       '#f))
                     (_%ctx127968%_ _%e127940127965%_)
                     (_%e127941127970%_
                      (##unchecked-structure-ref
                       _%out127936127946%_
                       '2
                       '#f
                       '#f))
                     (_%key127973%_ _%e127941127970%_)
                     (_%e127942127975%_
                      (##unchecked-structure-ref
                       _%out127936127946%_
                       '3
                       '#f
                       '#f))
                     (_%phi127978%_ _%e127942127975%_)
                     (_%e127943127980%_
                      (##unchecked-structure-ref
                       _%out127936127946%_
                       '4
                       '#f
                       '#f))
                     (_%name127983%_ _%e127943127980%_)
                     (_%e127944127985%_
                      (##unchecked-structure-ref
                       _%out127936127946%_
                       '5
                       '#f
                       '#f))
                     (_%weak?127988%_ _%e127944127985%_))
                (_%K127939127962%_
                 _%weak?127988%_
                 _%name127983%_
                 _%phi127978%_
                 _%key127973%_
                 _%ctx127968%_))
              (_%E127938127950%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out127993%_)
        (let* ((_%rename127995%_ '#f) (_%dphi127997%_ '0))
          (gx#core-module-export->import__%
           _%out127993%_
           _%rename127995%_
           _%dphi127997%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out127999%_ _%rename128000%_)
        (let ((_%dphi128002%_ '0))
          (gx#core-module-export->import__%
           _%out127999%_
           _%rename128000%_
           _%dphi128002%_))))
    (define gx#core-module-export->import
      (lambda _g130079_
        (let ((_g130078_ (##length _g130079_)))
          (cond ((##fx= _g130078_ 1)
                 (apply gx#core-module-export->import__0 _g130079_))
                ((##fx= _g130078_ 2)
                 (apply gx#core-module-export->import__1 _g130079_))
                ((##fx= _g130078_ 3)
                 (apply gx#core-module-export->import__% _g130079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g130079_))))))
    (define gx#core-expand-module%
      (lambda (_%stx127832%_)
        (letrec ((_%make-context127834%_
                  (lambda (_%id127911%_)
                    (let* ((_%super127913%_ (gx#current-expander-context))
                           (_%bind-id127915%_ (gx#stx-e _%id127911%_))
                           (_%mod-id127917%_
                            (if (##structure-instance-of?
                                 _%super127913%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super127913%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id127915%_)
                                _%bind-id127915%_))
                           (_%ns127919%_ (symbol->string _%mod-id127917%_))
                           (_%path127929%_
                            (if (##structure-instance-of?
                                 _%super127913%_
                                 'gx#module-context::t)
                                (let ((_%path127921%_
                                       (##unchecked-structure-ref
                                        _%super127913%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path127921%_)
                                          (null? _%path127921%_))
                                      (cons _%bind-id127915%_ _%path127921%_)
                                      (if (not _%path127921%_)
                                          _%bind-id127915%_
                                          (cons _%bind-id127915%_
                                                (cons _%path127921%_ '())))))
                                _%bind-id127915%_))
                           (__obj130055
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
                       __obj130055
                       _%mod-id127917%_
                       _%super127913%_
                       _%ns127919%_
                       _%path127929%_)
                      __obj130055)))
                 (_%valid-module-id?127835%_
                  (lambda (_%id127886%_)
                    (let* ((_%str127888%_ (symbol->string _%id127886%_))
                           (_%len127890%_ (##string-length _%str127888%_)))
                      (if (##fx>= _%len127890%_ '1)
                          (let _%loop127893%_ ((_%index127895%_
                                                (##fx- (##string-length
                                                        _%str127888%_)
                                                       '1)))
                            (if (##fx>= _%index127895%_ '0)
                                (let ((_%c127897%_
                                       (string-ref
                                        _%str127888%_
                                        _%index127895%_)))
                                  (if (or (and (##char>=? _%c127897%_ '#\a)
                                               (##char<=? _%c127897%_ '#\z))
                                          (and (##char>=? _%c127897%_ '#\A)
                                               (##char<=? _%c127897%_ '#\Z))
                                          (and (##char>=? _%c127897%_ '#\0)
                                               (##char<=? _%c127897%_ '#\9))
                                          (##char=? _%c127897%_ '#\_)
                                          (##char=? _%c127897%_ '#\-))
                                      (_%loop127893%_
                                       (##fx- _%index127895%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e127836127846%_ _%stx127832%_)
                 (_%E127838127850%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127836127846%_)))
                 (_%E127837127882%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127836127846%_)
                        (let ((_%e127839127854%_
                               (gx#syntax-e _%e127836127846%_)))
                          (let ((_%hd127840127857%_ (##car _%e127839127854%_))
                                (_%tl127841127859%_ (##cdr _%e127839127854%_)))
                            (if (gx#stx-pair? _%tl127841127859%_)
                                (let ((_%e127842127862%_
                                       (gx#syntax-e _%tl127841127859%_)))
                                  (let ((_%hd127843127865%_
                                         (##car _%e127842127862%_))
                                        (_%tl127844127867%_
                                         (##cdr _%e127842127862%_)))
                                    (let* ((_%id127870%_ _%hd127843127865%_)
                                           (_%body127872%_ _%tl127844127867%_))
                                      (if (and (gx#identifier? _%id127870%_)
                                               (gx#stx-list? _%body127872%_))
                                          (if (_%valid-module-id?127835%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx127874%_
                                                      (_%make-context127834%_
                                                       _%id127870%_))
                                                     (_%body127876%_
                                                      (gx#core-expand-module-begin
                                                       _%body127872%_
                                                       _%ctx127874%_))
                                                     (_%body127878%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body127876%_)
                                                       (gx#stx-source
                                                        _%stx127832%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx127874%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body127878%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx127874%_
                                                 _%body127878%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id127870%_
                                                 _%ctx127874%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id127870%_)
                                                  _%body127878%_)
                                                 (gx#stx-source
                                                  _%stx127832%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx127832%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E127838127850%_)))))
                                (_%E127838127850%_))))
                        (_%E127838127850%_)))))
            (_%E127837127882%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body127798%_ _%ctx127799%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx127802%_
                   (gx#core-expand-head (cons '%%begin-module _%body127798%_)))
                  (_%e127803127810%_ _%stx127802%_)
                  (_%E127805127814%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx127802%_)))
                  (_%E127804127828%_
                   (lambda ()
                     (if (gx#stx-pair? _%e127803127810%_)
                         (let ((_%e127806127818%_
                                (gx#syntax-e _%e127803127810%_)))
                           (let ((_%hd127807127821%_ (##car _%e127806127818%_))
                                 (_%tl127808127823%_
                                  (##cdr _%e127806127818%_)))
                             (if (and (gx#identifier? _%hd127807127821%_)
                                      (gx#core-identifier=?
                                       _%hd127807127821%_
                                       '%#begin-module))
                                 (let ((_%body127826%_ _%tl127808127823%_))
                                   (if (gx#sealed-syntax? _%stx127802%_)
                                       _%body127826%_
                                       (gx#core-expand-module-body
                                        _%body127826%_)))
                                 (_%E127805127814%_))))
                         (_%E127805127814%_)))))
             (_%E127804127828%_)))
         gx#current-expander-context
         _%ctx127799%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body127594%_)
        (letrec ((_%expand-special127596%_
                  (lambda (_%hd127725%_ _%K127726%_ _%rest127727%_ _%r127728%_)
                    (let* ((_%e127729127746%_ _%hd127725%_)
                           (_%E127741127750%_
                            (lambda ()
                              (_%K127726%_
                               _%rest127727%_
                               (cons (gx#core-expand-top _%hd127725%_)
                                     _%r127728%_))))
                           (_%E127731127762%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127729127746%_)
                                  (let ((_%e127742127754%_
                                         (gx#syntax-e _%e127729127746%_)))
                                    (let ((_%hd127743127757%_
                                           (##car _%e127742127754%_))
                                          (_%tl127744127759%_
                                           (##cdr _%e127742127754%_)))
                                      (if (and (gx#identifier?
                                                _%hd127743127757%_)
                                               (gx#core-identifier=?
                                                _%hd127743127757%_
                                                '%#export))
                                          (_%K127726%_
                                           _%rest127727%_
                                           (cons _%hd127725%_ _%r127728%_))
                                          (_%E127741127750%_))))
                                  (_%E127741127750%_))))
                           (_%E127730127794%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127729127746%_)
                                  (let ((_%e127732127766%_
                                         (gx#syntax-e _%e127729127746%_)))
                                    (let ((_%hd127733127769%_
                                           (##car _%e127732127766%_))
                                          (_%tl127734127771%_
                                           (##cdr _%e127732127766%_)))
                                      (if (and (gx#identifier?
                                                _%hd127733127769%_)
                                               (gx#core-identifier=?
                                                _%hd127733127769%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl127734127771%_)
                                              (let ((_%e127735127774%_
                                                     (gx#syntax-e
                                                      _%tl127734127771%_)))
                                                (let ((_%hd127736127777%_
                                                       (##car _%e127735127774%_))
                                                      (_%tl127737127779%_
                                                       (##cdr _%e127735127774%_)))
                                                  (let ((_%hd-bind127782%_
                                                         _%hd127736127777%_))
                                                    (if (gx#stx-pair?
                                                         _%tl127737127779%_)
                                                        (let ((_%e127738127784%_
                                                               (gx#syntax-e
                                                                _%tl127737127779%_)))
                                                          (let ((_%hd127739127787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e127738127784%_))
                        (_%tl127740127789%_ (##cdr _%e127738127784%_)))
                    (let ((_%expr127792%_ _%hd127739127787%_))
                      (if (gx#stx-null? _%tl127740127789%_)
                          (if (gx#core-bind-values? _%hd-bind127782%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind127782%_)
                                (_%K127726%_
                                 _%rest127727%_
                                 (cons _%hd127725%_ _%r127728%_)))
                              (_%E127731127762%_))
                          (_%E127731127762%_)))))
                (_%E127731127762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127731127762%_))
                                          (_%E127731127762%_))))
                                  (_%E127731127762%_)))))
                      (_%E127730127794%_))))
                 (_%expand-body127597%_
                  (lambda (_%rbody127599%_)
                    (let _%lp127601%_ ((_%rest127603%_ _%rbody127599%_)
                                       (_%body127604%_ '()))
                      (let* ((_%rest127605127613%_ _%rest127603%_)
                             (_%else127607127621%_ (lambda () _%body127604%_))
                             (_%K127609127713%_
                              (lambda (_%rest127624%_ _%hd127625%_)
                                (let* ((_%e127626127647%_ _%hd127625%_)
                                       (_%E127642127651%_
                                        (lambda ()
                                          (_%lp127601%_
                                           _%rest127624%_
                                           (cons (gx#core-expand-expression
                                                  _%hd127625%_)
                                                 _%body127604%_))))
                                       (_%E127638127665%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127626127647%_)
                                              (let ((_%e127643127655%_
                                                     (gx#syntax-e
                                                      _%e127626127647%_)))
                                                (let ((_%hd127644127658%_
                                                       (##car _%e127643127655%_))
                                                      (_%tl127645127660%_
                                                       (##cdr _%e127643127655%_)))
                                                  (let ((_%form127663%_
                                                         _%hd127644127658%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form127663%_
                                                         gx#special-form-binding?)
                                                        (_%lp127601%_
                                                         _%rest127624%_
                                                         (cons _%hd127625%_
                                                               _%body127604%_))
                                                        (_%E127642127651%_)))))
                                              (_%E127642127651%_))))
                                       (_%E127628127677%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127626127647%_)
                                              (let ((_%e127639127669%_
                                                     (gx#syntax-e
                                                      _%e127626127647%_)))
                                                (let ((_%hd127640127672%_
                                                       (##car _%e127639127669%_))
                                                      (_%tl127641127674%_
                                                       (##cdr _%e127639127669%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd127640127672%_)
                                                           (gx#core-identifier=?
                                                            _%hd127640127672%_
                                                            '%#export))
                                                      (_%lp127601%_
                                                       _%rest127624%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd127625%_)
                                                             _%body127604%_))
                                                      (_%E127638127665%_))))
                                              (_%E127638127665%_))))
                                       (_%E127627127709%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127626127647%_)
                                              (let ((_%e127629127681%_
                                                     (gx#syntax-e
                                                      _%e127626127647%_)))
                                                (let ((_%hd127630127684%_
                                                       (##car _%e127629127681%_))
                                                      (_%tl127631127686%_
                                                       (##cdr _%e127629127681%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd127630127684%_)
                                                           (gx#core-identifier=?
                                                            _%hd127630127684%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl127631127686%_)
                                                          (let ((_%e127632127689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl127631127686%_)))
                    (let ((_%hd127633127692%_ (##car _%e127632127689%_))
                          (_%tl127634127694%_ (##cdr _%e127632127689%_)))
                      (let ((_%hd-bind127697%_ _%hd127633127692%_))
                        (if (gx#stx-pair? _%tl127634127694%_)
                            (let ((_%e127635127699%_
                                   (gx#syntax-e _%tl127634127694%_)))
                              (let ((_%hd127636127702%_
                                     (##car _%e127635127699%_))
                                    (_%tl127637127704%_
                                     (##cdr _%e127635127699%_)))
                                (let ((_%expr127707%_ _%hd127636127702%_))
                                  (if (gx#stx-null? _%tl127637127704%_)
                                      (_%lp127601%_
                                       _%rest127624%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind127697%_)
                                               (gx#core-expand-expression
                                                _%expr127707%_))
                                              (gx#stx-source _%hd127625%_))
                                             _%body127604%_))
                                      (_%E127628127677%_)))))
                            (_%E127628127677%_)))))
                  (_%E127628127677%_))
              (_%E127628127677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127628127677%_)))))
                                  (_%E127627127709%_)))))
                        (if (pair? _%rest127605127613%_)
                            (let ((_%hd127610127716%_
                                   (##car _%rest127605127613%_))
                                  (_%tl127611127718%_
                                   (##cdr _%rest127605127613%_)))
                              (let* ((_%hd127721%_ _%hd127610127716%_)
                                     (_%rest127723%_ _%tl127611127718%_))
                                (_%K127609127713%_
                                 _%rest127723%_
                                 _%hd127721%_)))
                            (_%else127607127621%_)))))))
          (_%expand-body127597%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body127594%_)
            _%expand-special127596%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx127435%_
               _%expanded?127436%_
               _%method127437%_
               _%current-phi127438%_
               _%expand1127439%_)
        (letrec ((_%K127441%_
                  (lambda (_%rest127561%_ _%r127562%_)
                    (let* ((_%e127563127570%_ _%rest127561%_)
                           (_%E127565127574%_ (lambda () _%r127562%_))
                           (_%E127564127590%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127563127570%_)
                                  (let ((_%e127566127578%_
                                         (gx#syntax-e _%e127563127570%_)))
                                    (let ((_%hd127567127581%_
                                           (##car _%e127566127578%_))
                                          (_%tl127568127583%_
                                           (##cdr _%e127566127578%_)))
                                      (let* ((_%hd127586%_ _%hd127567127581%_)
                                             (_%rest127588%_
                                              _%tl127568127583%_))
                                        (_%step127442%_
                                         _%hd127586%_
                                         _%rest127588%_
                                         _%r127562%_))))
                                  (_%E127565127574%_)))))
                      (_%E127564127590%_))))
                 (_%step127442%_
                  (lambda (_%hd127475%_ _%rest127476%_ _%r127477%_)
                    (let* ((_%e127478127496%_ _%hd127475%_)
                           (_%E127491127500%_
                            (lambda ()
                              (if (_%expanded?127436%_ (gx#stx-e _%hd127475%_))
                                  (_%K127441%_
                                   _%rest127476%_
                                   (cons (gx#stx-e _%hd127475%_) _%r127477%_))
                                  (_%expand1127439%_
                                   _%hd127475%_
                                   _%K127441%_
                                   _%rest127476%_
                                   _%r127477%_))))
                           (_%E127487127516%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127478127496%_)
                                  (let ((_%e127492127504%_
                                         (gx#syntax-e _%e127478127496%_)))
                                    (let ((_%hd127493127507%_
                                           (##car _%e127492127504%_))
                                          (_%tl127494127509%_
                                           (##cdr _%e127492127504%_)))
                                      (let* ((_%macro127512%_
                                              _%hd127493127507%_)
                                             (_%body127514%_
                                              _%tl127494127509%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro127512%_
                                             gx#syntax-binding?)
                                            (_%K127441%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro127512%_)
                                                    _%hd127475%_
                                                    _%method127437%_)
                                                   _%rest127476%_)
                                             _%r127477%_)
                                            (_%E127491127500%_)))))
                                  (_%E127491127500%_))))
                           (_%E127480127530%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127478127496%_)
                                  (let ((_%e127488127520%_
                                         (gx#syntax-e _%e127478127496%_)))
                                    (let ((_%hd127489127523%_
                                           (##car _%e127488127520%_))
                                          (_%tl127490127525%_
                                           (##cdr _%e127488127520%_)))
                                      (if (eq? (gx#stx-e _%hd127489127523%_)
                                               'begin:)
                                          (let ((_%body127528%_
                                                 _%tl127490127525%_))
                                            (_%K127441%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest127476%_
                                              _%body127528%_)
                                             _%r127477%_))
                                          (_%E127487127516%_))))
                                  (_%E127487127516%_))))
                           (_%E127479127557%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127478127496%_)
                                  (let ((_%e127481127534%_
                                         (gx#syntax-e _%e127478127496%_)))
                                    (let ((_%hd127482127537%_
                                           (##car _%e127481127534%_))
                                          (_%tl127483127539%_
                                           (##cdr _%e127481127534%_)))
                                      (if (eq? (gx#stx-e _%hd127482127537%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl127483127539%_)
                                              (let ((_%e127484127542%_
                                                     (gx#syntax-e
                                                      _%tl127483127539%_)))
                                                (let ((_%hd127485127545%_
                                                       (##car _%e127484127542%_))
                                                      (_%tl127486127547%_
                                                       (##cdr _%e127484127542%_)))
                                                  (let* ((_%dphi127550%_
                                                          _%hd127485127545%_)
                                                         (_%body127552%_
                                                          _%tl127486127547%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi127550%_)
                                                        (let ((_%rbody127555%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K127441%_ _%body127552%_ '()))
                        _%current-phi127438%_
                        (fx+ (gx#stx-e _%dphi127550%_)
                             (_%current-phi127438%_)))))
                  (_%K127441%_
                   _%rest127476%_
                   (__foldr1 cons _%r127477%_ _%rbody127555%_)))
                (_%E127480127530%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127480127530%_))
                                          (_%E127480127530%_))))
                                  (_%E127480127530%_)))))
                      (_%E127479127557%_)))))
          (let* ((_%e127443127450%_ _%stx127435%_)
                 (_%E127445127454%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127443127450%_)))
                 (_%E127444127471%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127443127450%_)
                        (let ((_%e127446127458%_
                               (gx#syntax-e _%e127443127450%_)))
                          (let ((_%hd127447127461%_ (##car _%e127446127458%_))
                                (_%tl127448127463%_ (##cdr _%e127446127458%_)))
                            (let ((_%body127466%_ _%tl127448127463%_))
                              (if (_%current-phi127438%_)
                                  (_%K127441%_ _%body127466%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K127441%_ _%body127466%_ '()))
                                   _%current-phi127438%_
                                   (gx#current-expander-phi))))))
                        (_%E127445127454%_)))))
            (_%E127444127471%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx127089%_ _%internal-expand?127090%_)
        (letrec ((_%expand1127092%_
                  (lambda (_%hd127407%_ _%K127408%_ _%rest127409%_ _%r127410%_)
                    (if (gx#core-bound-module? _%hd127407%_)
                        (_%import1127093%_
                         (gx#syntax-local-e__0 _%hd127407%_)
                         _%K127408%_
                         _%rest127409%_
                         _%r127410%_)
                        (if (gx#core-library-module-path? _%hd127407%_)
                            (_%import1127093%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd127407%_))
                             _%K127408%_
                             _%rest127409%_
                             _%r127410%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd127407%_)
                                (_%import1127093%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd127407%_))
                                 _%K127408%_
                                 _%rest127409%_
                                 _%r127410%_)
                                (let ((_%e127416%_ (gx#stx-e _%hd127407%_)))
                                  (if (pair? _%e127416%_)
                                      (let ((_%$e127419%_
                                             (gx#stx-e (##car _%e127416%_))))
                                        (if (eq? 'spec: _%$e127419%_)
                                            (_%import-spec127096%_
                                             _%hd127407%_
                                             _%K127408%_
                                             _%rest127409%_
                                             _%r127410%_)
                                            (if (eq? 'in: _%$e127419%_)
                                                (_%import-submodule127094%_
                                                 _%hd127407%_
                                                 _%K127408%_
                                                 _%rest127409%_
                                                 _%r127410%_)
                                                (if (eq? 'runtime:
                                                         _%$e127419%_)
                                                    (_%import-runtime127095%_
                                                     _%hd127407%_
                                                     _%K127408%_
                                                     _%rest127409%_
                                                     _%r127410%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx127089%_
                                                     _%hd127407%_)))))
                                      (if (string? _%e127416%_)
                                          (_%import1127093%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd127407%_
                                             (gx#stx-source _%stx127089%_)))
                                           _%K127408%_
                                           _%rest127409%_
                                           _%r127410%_)
                                          (if (##structure-instance-of?
                                               _%e127416%_
                                               'gx#module-context::t)
                                              (_%K127408%_
                                               _%rest127409%_
                                               (cons _%e127416%_ _%r127410%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx127089%_
                                               _%hd127407%_))))))))))
                 (_%import1127093%_
                  (lambda (_%ctx127396%_
                           _%K127397%_
                           _%rest127398%_
                           _%r127399%_)
                    (let ((_%dphi127401%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K127397%_
                       _%rest127398%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx127396%_
                              _%dphi127401%_
                              (map (lambda (_%g127402127404%_)
                                     (gx#core-module-export->import__%
                                      _%g127402127404%_
                                      '#f
                                      _%dphi127401%_))
                                   (##unchecked-structure-ref
                                    _%ctx127396%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r127399%_)))))
                 (_%import-submodule127094%_
                  (lambda (_%hd127363%_ _%K127364%_ _%rest127365%_ _%r127366%_)
                    (let* ((_%e127367127374%_ _%hd127363%_)
                           (_%E127369127378%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127367127374%_)))
                           (_%E127368127392%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127367127374%_)
                                  (let ((_%e127370127382%_
                                         (gx#syntax-e _%e127367127374%_)))
                                    (let ((_%hd127371127385%_
                                           (##car _%e127370127382%_))
                                          (_%tl127372127387%_
                                           (##cdr _%e127370127382%_)))
                                      (let ((_%spath127390%_
                                             _%tl127372127387%_))
                                        (_%import1127093%_
                                         (_%import-spec-source127097%_
                                          _%spath127390%_)
                                         _%K127364%_
                                         _%rest127365%_
                                         _%r127366%_))))
                                  (_%E127369127378%_)))))
                      (_%E127368127392%_))))
                 (_%import-runtime127095%_
                  (lambda (_%hd127330%_ _%K127331%_ _%rest127332%_ _%r127333%_)
                    (let* ((_%e127334127341%_ _%hd127330%_)
                           (_%E127336127345%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127334127341%_)))
                           (_%E127335127359%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127334127341%_)
                                  (let ((_%e127337127349%_
                                         (gx#syntax-e _%e127334127341%_)))
                                    (let ((_%hd127338127352%_
                                           (##car _%e127337127349%_))
                                          (_%tl127339127354%_
                                           (##cdr _%e127337127349%_)))
                                      (let ((_%spath127357%_
                                             _%tl127339127354%_))
                                        (_%K127331%_
                                         _%rest127332%_
                                         (cons (_%import-spec-source127097%_
                                                _%spath127357%_)
                                               _%r127333%_)))))
                                  (_%E127336127345%_)))))
                      (_%E127335127359%_))))
                 (_%import-spec127096%_
                  (lambda (_%hd127168%_ _%K127169%_ _%rest127170%_ _%r127171%_)
                    (let* ((_%e127172127189%_ _%hd127168%_)
                           (_%E127181127193%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127172127189%_)))
                           (_%E127174127304%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127172127189%_)
                                  (let ((_%e127182127197%_
                                         (gx#syntax-e _%e127172127189%_)))
                                    (let ((_%hd127183127200%_
                                           (##car _%e127182127197%_))
                                          (_%tl127184127202%_
                                           (##cdr _%e127182127197%_)))
                                      (if (gx#stx-pair? _%tl127184127202%_)
                                          (let ((_%e127185127205%_
                                                 (gx#syntax-e
                                                  _%tl127184127202%_)))
                                            (let ((_%hd127186127208%_
                                                   (##car _%e127185127205%_))
                                                  (_%tl127187127210%_
                                                   (##cdr _%e127185127205%_)))
                                              (let* ((_%path127213%_
                                                      _%hd127186127208%_)
                                                     (_%specs127215%_
                                                      _%tl127187127210%_))
                                                (let ((_%src-ctx127217%_
                                                       (_%import-spec-source127097%_
                                                        _%path127213%_))
                                                      (_%exports127218%_
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
                                                      (_%specs127219%_
                                                       (gx#syntax->list
                                                        _%specs127215%_)))
                                                  (for-each
                                                   (lambda (_%out127221%_)
                                                     (__hash-put!
                                                      _%exports127218%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out127221%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out127221%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out127221%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx127217%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K127169%_
                                                   _%rest127170%_
                                                   (__foldl1
                                                    (lambda (_%spec127223%_
                                                             _%r127224%_)
                                                      (let* ((_%e127225127241%_
                                                              _%spec127223%_)
                                                             (_%E127227127245%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e127225127241%_)))
                     (_%E127226127300%_
                      (lambda ()
                        (if (gx#stx-pair? _%e127225127241%_)
                            (let ((_%e127228127249%_
                                   (gx#syntax-e _%e127225127241%_)))
                              (let ((_%hd127229127252%_
                                     (##car _%e127228127249%_))
                                    (_%tl127230127254%_
                                     (##cdr _%e127228127249%_)))
                                (let ((_%phi127257%_ _%hd127229127252%_))
                                  (if (gx#stx-pair? _%tl127230127254%_)
                                      (let ((_%e127231127259%_
                                             (gx#syntax-e _%tl127230127254%_)))
                                        (let ((_%hd127232127262%_
                                               (##car _%e127231127259%_))
                                              (_%tl127233127264%_
                                               (##cdr _%e127231127259%_)))
                                          (let ((_%name127267%_
                                                 _%hd127232127262%_))
                                            (if (gx#stx-pair?
                                                 _%tl127233127264%_)
                                                (let ((_%e127234127269%_
                                                       (gx#syntax-e
                                                        _%tl127233127264%_)))
                                                  (let ((_%hd127235127272%_
                                                         (##car _%e127234127269%_))
                                                        (_%tl127236127274%_
                                                         (##cdr _%e127234127269%_)))
                                                    (let ((_%src-phi127277%_
                                                           _%hd127235127272%_))
                                                      (if (gx#stx-pair?
                                                           _%tl127236127274%_)
                                                          (let ((_%e127237127279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl127236127274%_)))
                    (let ((_%hd127238127282%_ (##car _%e127237127279%_))
                          (_%tl127239127284%_ (##cdr _%e127237127279%_)))
                      (let ((_%src-name127287%_ _%hd127238127282%_))
                        (if (gx#stx-null? _%tl127239127284%_)
                            (if (and (gx#stx-fixnum? _%src-phi127277%_)
                                     (gx#identifier? _%src-name127287%_)
                                     (gx#stx-fixnum? _%phi127257%_)
                                     (gx#identifier? _%name127267%_))
                                (let ((_%src-phi127289%_
                                       (gx#stx-e _%src-phi127277%_))
                                      (_%src-name127290%_
                                       (gx#core-identifier-key
                                        _%src-name127287%_))
                                      (_%phi127291%_ (gx#stx-e _%phi127257%_))
                                      (_%name127292%_
                                       (gx#core-identifier-key
                                        _%name127267%_)))
                                  (let ((_%$e127294%_
                                         (__hash-get
                                          _%exports127218%_
                                          (cons _%src-phi127289%_
                                                _%src-name127290%_))))
                                    (if _%$e127294%_
                                        ((lambda (_%out127297%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out127297%_
                                                  _%name127292%_
                                                  (fx- _%phi127291%_
                                                       _%src-phi127289%_))
                                                 _%r127224%_))
                                         _%$e127294%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx127089%_
                                         _%hd127168%_))))
                                (_%E127227127245%_))
                            (_%E127227127245%_)))))
                  (_%E127227127245%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E127227127245%_)))))
                                      (_%E127227127245%_)))))
                            (_%E127227127245%_)))))
                (_%E127226127300%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r127171%_
                                                    _%specs127219%_))))))
                                          (_%E127181127193%_))))
                                  (_%E127181127193%_))))
                           (_%E127173127326%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127172127189%_)
                                  (let ((_%e127175127308%_
                                         (gx#syntax-e _%e127172127189%_)))
                                    (let ((_%hd127176127311%_
                                           (##car _%e127175127308%_))
                                          (_%tl127177127313%_
                                           (##cdr _%e127175127308%_)))
                                      (if (gx#stx-pair? _%tl127177127313%_)
                                          (let ((_%e127178127316%_
                                                 (gx#syntax-e
                                                  _%tl127177127313%_)))
                                            (let ((_%hd127179127319%_
                                                   (##car _%e127178127316%_))
                                                  (_%tl127180127321%_
                                                   (##cdr _%e127178127316%_)))
                                              (let ((_%path127324%_
                                                     _%hd127179127319%_))
                                                (if (gx#stx-null?
                                                     _%tl127180127321%_)
                                                    (_%K127169%_
                                                     _%rest127170%_
                                                     (cons (_%import-spec-source127097%_
                                                            _%path127324%_)
                                                           _%r127171%_))
                                                    (_%E127174127304%_)))))
                                          (_%E127174127304%_))))
                                  (_%E127174127304%_)))))
                      (_%E127173127326%_))))
                 (_%import-spec-source127097%_
                  (lambda (_%spath127166%_)
                    (gx#core-import-nested-module
                     _%spath127166%_
                     _%stx127089%_)))
                 (_%import!127098%_
                  (lambda (_%rbody127111%_)
                    (letrec* ((_%current-ctx127113%_
                               (gx#current-expander-context))
                              (_%deps127114%_ (make-hash-table-eq))
                              (_%bind!127115%_
                               (lambda (_%hd127164%_)
                                 (gx#core-bind-import!__1
                                  _%hd127164%_
                                  _%current-ctx127113%_))))
                      (let _%lp127117%_ ((_%rest127119%_ _%rbody127111%_)
                                         (_%body127120%_ '()))
                        (let* ((_%rest127121127129%_ _%rest127119%_)
                               (_%else127123127140%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx127113%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx127113%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx127113%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body127120%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx127137%_ _%_127138%_)
                                     (gx#eval-module _%ctx127137%_))
                                   _%deps127114%_)
                                  _%body127120%_))
                               (_%K127125127152%_
                                (lambda (_%rest127143%_ _%hd127144%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd127144%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!127115%_ _%hd127144%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd127144%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd127144%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps127114%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd127144%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd127144%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!127115%_
                                             (##unchecked-structure-ref
                                              _%hd127144%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd127144%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps127114%_
                                                 (##unchecked-structure-ref
                                                  _%hd127144%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e127148%_
                                                 (##structure-instance-of?
                                                  _%hd127144%_
                                                  'gx#module-context::t)))
                                            (if _%$e127148%_
                                                _%$e127148%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx127089%_
                                                 _%hd127144%_)))))
                                  (_%lp127117%_
                                   _%rest127143%_
                                   (cons _%hd127144%_ _%body127120%_)))))
                          (if (pair? _%rest127121127129%_)
                              (let ((_%hd127126127155%_
                                     (##car _%rest127121127129%_))
                                    (_%tl127127127157%_
                                     (##cdr _%rest127121127129%_)))
                                (let* ((_%hd127160%_ _%hd127126127155%_)
                                       (_%rest127162%_ _%tl127127127157%_))
                                  (_%K127125127152%_
                                   _%rest127162%_
                                   _%hd127160%_)))
                              (_%else127123127140%_)))))))
                 (_%expanded-import?127099%_
                  (lambda (_%e127103%_)
                    (let ((_%$e127105%_
                           (##structure-direct-instance-of?
                            _%e127103%_
                            'gx#import-set::t)))
                      (if _%$e127105%_
                          _%$e127105%_
                          (let ((_%$e127108%_
                                 (##structure-direct-instance-of?
                                  _%e127103%_
                                  'gx#module-import::t)))
                            (if _%$e127108%_
                                _%$e127108%_
                                (##structure-instance-of?
                                 _%e127103%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody127101%_
                 (gx#core-expand-import/export
                  _%stx127089%_
                  _%expanded-import?127099%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1127092%_)))
            (if _%internal-expand?127090%_
                (reverse _%rbody127101%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!127098%_ _%rbody127101%_))
                 (gx#stx-source _%stx127089%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx127428%_)
        (let ((_%internal-expand?127430%_ '#f))
          (gx#core-expand-import%__%
           _%stx127428%_
           _%internal-expand?127430%_))))
    (define gx#core-expand-import%
      (lambda _g130081_
        (let ((_g130080_ (##length _g130081_)))
          (cond ((##fx= _g130080_ 1)
                 (apply gx#core-expand-import%__0 _g130081_))
                ((##fx= _g130080_ 2)
                 (apply gx#core-expand-import%__% _g130081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g130081_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath127016%_ _%where127017%_)
        (let* ((_%e127018127025%_ _%spath127016%_)
               (_%E127020127029%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127018127025%_)))
               (_%E127019127084%_
                (lambda ()
                  (if (gx#stx-pair? _%e127018127025%_)
                      (let ((_%e127021127033%_
                             (gx#syntax-e _%e127018127025%_)))
                        (let ((_%hd127022127036%_ (##car _%e127021127033%_))
                              (_%tl127023127038%_ (##cdr _%e127021127033%_)))
                          (let* ((_%origin127041%_ _%hd127022127036%_)
                                 (_%sub127043%_ _%tl127023127038%_)
                                 (_%origin-ctx127045%_
                                  (if (gx#stx-false? _%origin127041%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin127041%_))))
                            (let _%lp127047%_ ((_%rest127049%_ _%sub127043%_)
                                               (_%ctx127050%_
                                                _%origin-ctx127045%_))
                              (let* ((_%e127051127058%_ _%rest127049%_)
                                     (_%E127053127062%_
                                      (lambda () _%ctx127050%_))
                                     (_%E127052127080%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e127051127058%_)
                                            (let ((_%e127054127066%_
                                                   (gx#syntax-e
                                                    _%e127051127058%_)))
                                              (let ((_%hd127055127069%_
                                                     (##car _%e127054127066%_))
                                                    (_%tl127056127071%_
                                                     (##cdr _%e127054127066%_)))
                                                (let* ((_%id127074%_
                                                        _%hd127055127069%_)
                                                       (_%rest127076%_
                                                        _%tl127056127071%_)
                                                       (_%bind127078%_
                                                        (gx#resolve-identifier__%
                                                         _%id127074%_
                                                         '0
                                                         _%ctx127050%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind127078%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind127078%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where127017%_
                                                       _%spath127016%_
                                                       _%id127074%_))
                                                  (_%lp127047%_
                                                   _%rest127076%_
                                                   (##unchecked-structure-ref
                                                    _%bind127078%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E127053127062%_)))))
                                (_%E127052127080%_))))))
                      (_%E127020127029%_)))))
          (_%E127019127084%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd127014%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd127014%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx126508%_ _%internal-expand?126509%_)
        (letrec* ((_%make-export__130009130010%_
                   (lambda (_%bind126962%_
                            _%phi126963%_
                            _%ctx126964%_
                            _%name126965%_)
                     (let* ((_%key126967%_
                             (##unchecked-structure-ref
                              _%bind126962%_
                              '2
                              '#f
                              '#f))
                            (_%export-key126969%_
                             (if _%name126965%_
                                 (gx#core-identifier-key _%name126965%_)
                                 _%key126967%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx126964%_
                        _%key126967%_
                        _%phi126963%_
                        _%export-key126969%_
                        (let ((_%$e126972%_
                               (##structure-instance-of?
                                _%bind126962%_
                                'gx#extern-binding::t)))
                          (if _%$e126972%_
                              _%$e126972%_
                              (##structure-direct-instance-of?
                               _%bind126962%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__130011130014%_
                   (lambda (_%bind126978%_)
                     (let* ((_%phi126980%_ (gx#current-export-expander-phi))
                            (_%ctx126982%_ (gx#current-expander-context))
                            (_%name126984%_ '#f))
                       (_%make-export__130009130010%_
                        _%bind126978%_
                        _%phi126980%_
                        _%ctx126982%_
                        _%name126984%_))))
                  (_%make-export__1__130012130015%_
                   (lambda (_%bind126986%_ _%phi126987%_)
                     (let* ((_%ctx126989%_ (gx#current-expander-context))
                            (_%name126991%_ '#f))
                       (_%make-export__130009130010%_
                        _%bind126986%_
                        _%phi126987%_
                        _%ctx126989%_
                        _%name126991%_))))
                  (_%make-export__2__130013130016%_
                   (lambda (_%bind126993%_ _%phi126994%_ _%ctx126995%_)
                     (let ((_%name126997%_ '#f))
                       (_%make-export__130009130010%_
                        _%bind126993%_
                        _%phi126994%_
                        _%ctx126995%_
                        _%name126997%_))))
                  (_%make-export126511%_
                   (lambda _g130083_
                     (let ((_g130082_ (##length _g130083_)))
                       (cond ((##fx= _g130082_ 1)
                              (apply _%make-export__0__130011130014%_
                                     _g130083_))
                             ((##fx= _g130082_ 2)
                              (apply _%make-export__1__130012130015%_
                                     _g130083_))
                             ((##fx= _g130082_ 3)
                              (apply _%make-export__2__130013130016%_
                                     _g130083_))
                             ((##fx= _g130082_ 4)
                              (apply _%make-export__130009130010%_ _g130083_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130083_))))))
                  (_%expand1126512%_
                   (lambda (_%hd126667%_
                            _%K126668%_
                            _%rest126669%_
                            _%r126670%_)
                     (let* ((_%e126671126703%_ _%hd126667%_)
                            (_%E126698126707%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx126508%_
                                _%hd126667%_)))
                            (_%E126688126791%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126671126703%_)
                                   (let ((_%e126699126711%_
                                          (gx#syntax-e _%e126671126703%_)))
                                     (let ((_%hd126700126714%_
                                            (##car _%e126699126711%_))
                                           (_%tl126701126716%_
                                            (##cdr _%e126699126711%_)))
                                       (if (eq? (gx#stx-e _%hd126700126714%_)
                                                'import:)
                                           (let ((_%in126719%_
                                                  _%tl126701126716%_))
                                             (if (gx#stx-list? _%in126719%_)
                                                 (let _%lp126721%_ ((_%in-rest126723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in126719%_)
                            (_%r126724%_ _%r126670%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e126725126732%_
                                                           _%in-rest126723%_)
                                                          (_%E126727126736%_
                                                           (lambda ()
                                                             (_%K126668%_
                                                              _%rest126669%_
                                                              _%r126724%_)))
                                                          (_%E126726126787%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e126725126732%_)
                         (let ((_%e126728126740%_
                                (gx#syntax-e _%e126725126732%_)))
                           (let ((_%hd126729126743%_ (##car _%e126728126740%_))
                                 (_%tl126730126745%_
                                  (##cdr _%e126728126740%_)))
                             (let* ((_%hd126748%_ _%hd126729126743%_)
                                    (_%in-rest126750%_ _%tl126730126745%_)
                                    (_%src126785%_
                                     (if (gx#core-bound-module? _%hd126748%_)
                                         (gx#syntax-local-e__0 _%hd126748%_)
                                         (if (gx#core-library-module-path?
                                              _%hd126748%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd126748%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd126748%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd126748%_))
                                                 (if (gx#stx-string?
                                                      _%hd126748%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd126748%_
                                                       (gx#stx-source
                                                        _%stx126508%_)))
                                                     (let* ((_%e126756126763%_
                                                             _%hd126748%_)
                                                            (_%E126758126767%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx126508%_
                                                                _%hd126748%_)))
                                                            (_%E126757126781%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e126756126763%_)
                           (let ((_%e126759126771%_
                                  (gx#syntax-e _%e126756126763%_)))
                             (let ((_%hd126760126774%_
                                    (##car _%e126759126771%_))
                                   (_%tl126761126776%_
                                    (##cdr _%e126759126771%_)))
                               (if (eq? (gx#stx-e _%hd126760126774%_) 'in:)
                                   (let ((_%spath126779%_ _%tl126761126776%_))
                                     (gx#core-import-nested-module
                                      _%spath126779%_
                                      _%stx126508%_))
                                   (_%E126758126767%_))))
                           (_%E126758126767%_)))))
               (_%E126757126781%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp126721%_
                                _%in-rest126750%_
                                (_%export-imports126513%_
                                 _%src126785%_
                                 _%r126724%_)))))
                         (_%E126727126736%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E126726126787%_)))
                                                 (_%E126698126707%_)))
                                           (_%E126698126707%_))))
                                   (_%E126698126707%_))))
                            (_%E126675126831%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126671126703%_)
                                   (let ((_%e126689126795%_
                                          (gx#syntax-e _%e126671126703%_)))
                                     (let ((_%hd126690126798%_
                                            (##car _%e126689126795%_))
                                           (_%tl126691126800%_
                                            (##cdr _%e126689126795%_)))
                                       (if (eq? (gx#stx-e _%hd126690126798%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl126691126800%_)
                                               (let ((_%e126692126803%_
                                                      (gx#syntax-e
                                                       _%tl126691126800%_)))
                                                 (let ((_%hd126693126806%_
                                                        (##car _%e126692126803%_))
                                                       (_%tl126694126808%_
                                                        (##cdr _%e126692126803%_)))
                                                   (let ((_%id126811%_
                                                          _%hd126693126806%_))
                                                     (if (gx#stx-pair?
                                                          _%tl126694126808%_)
                                                         (let ((_%e126695126813%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl126694126808%_)))
                   (let ((_%hd126696126816%_ (##car _%e126695126813%_))
                         (_%tl126697126818%_ (##cdr _%e126695126813%_)))
                     (let ((_%name126821%_ _%hd126696126816%_))
                       (if (gx#stx-null? _%tl126697126818%_)
                           (let* ((_%phi126823%_
                                   (gx#current-export-expander-phi))
                                  (_%$e126825%_
                                   (gx#core-resolve-identifier__1
                                    _%id126811%_
                                    _%phi126823%_)))
                             (if _%$e126825%_
                                 ((lambda (_%bind126828%_)
                                    (_%K126668%_
                                     _%rest126669%_
                                     (cons (_%make-export__130009130010%_
                                            _%bind126828%_
                                            _%phi126823%_
                                            (gx#current-expander-context)
                                            _%name126821%_)
                                           _%r126670%_)))
                                  _%$e126825%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx126508%_
                                  _%hd126667%_
                                  _%id126811%_)))
                           (_%E126688126791%_)))))
                 (_%E126688126791%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E126688126791%_))
                                           (_%E126688126791%_))))
                                   (_%E126688126791%_))))
                            (_%E126674126881%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126671126703%_)
                                   (let ((_%e126676126835%_
                                          (gx#syntax-e _%e126671126703%_)))
                                     (let ((_%hd126677126838%_
                                            (##car _%e126676126835%_))
                                           (_%tl126678126840%_
                                            (##cdr _%e126676126835%_)))
                                       (if (eq? (gx#stx-e _%hd126677126838%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl126678126840%_)
                                               (let ((_%e126679126843%_
                                                      (gx#syntax-e
                                                       _%tl126678126840%_)))
                                                 (let ((_%hd126680126846%_
                                                        (##car _%e126679126843%_))
                                                       (_%tl126681126848%_
                                                        (##cdr _%e126679126843%_)))
                                                   (let ((_%phi126851%_
                                                          _%hd126680126846%_))
                                                     (if (gx#stx-pair?
                                                          _%tl126681126848%_)
                                                         (let ((_%e126682126853%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl126681126848%_)))
                   (let ((_%hd126683126856%_ (##car _%e126682126853%_))
                         (_%tl126684126858%_ (##cdr _%e126682126853%_)))
                     (let ((_%id126861%_ _%hd126683126856%_))
                       (if (gx#stx-pair? _%tl126684126858%_)
                           (let ((_%e126685126863%_
                                  (gx#syntax-e _%tl126684126858%_)))
                             (let ((_%hd126686126866%_
                                    (##car _%e126685126863%_))
                                   (_%tl126687126868%_
                                    (##cdr _%e126685126863%_)))
                               (let ((_%name126871%_ _%hd126686126866%_))
                                 (if (gx#stx-null? _%tl126687126868%_)
                                     (if (and (gx#stx-fixnum? _%phi126851%_)
                                              (gx#identifier? _%id126861%_)
                                              (gx#identifier? _%name126871%_))
                                         (let* ((_%phi126873%_
                                                 (gx#stx-e _%phi126851%_))
                                                (_%$e126875%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id126861%_
                                                  _%phi126873%_)))
                                           (if _%$e126875%_
                                               ((lambda (_%bind126878%_)
                                                  (_%K126668%_
                                                   _%rest126669%_
                                                   (cons (_%make-export__130009130010%_
                                                          _%bind126878%_
                                                          _%phi126873%_
                                                          (gx#current-expander-context)
                                                          _%name126871%_)
                                                         _%r126670%_)))
                                                _%$e126875%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx126508%_
                                                _%hd126667%_
                                                _%id126861%_)))
                                         (_%E126675126831%_))
                                     (_%E126675126831%_)))))
                           (_%E126675126831%_)))))
                 (_%E126675126831%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E126675126831%_))
                                           (_%E126675126831%_))))
                                   (_%E126675126831%_))))
                            (_%E126673126893%_
                             (lambda ()
                               (let ((_%id126885%_ _%e126671126703%_))
                                 (if (gx#identifier? _%id126885%_)
                                     (let ((_%$e126887%_
                                            (gx#core-resolve-identifier__1
                                             _%id126885%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e126887%_
                                           ((lambda (_%bind126890%_)
                                              (_%K126668%_
                                               _%rest126669%_
                                               (cons (_%make-export__0__130011130014%_
                                                      _%bind126890%_)
                                                     _%r126670%_)))
                                            _%$e126887%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx126508%_
                                            _%hd126667%_)))
                                     (_%E126674126881%_)))))
                            (_%E126672126957%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e126671126703%_) '#t)
                                   (let* ((_%current-ctx126897%_
                                           (gx#current-expander-context))
                                          (_%current-phi126899%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx126901%_
                                           (gx#core-context-shift
                                            _%current-ctx126897%_
                                            _%current-phi126899%_))
                                          (_%phi-bind126903%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx126901%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp126906%_ ((_%bind-rest126908%_
                                                         _%phi-bind126903%_)
                                                        (_%set126909%_ '()))
                                       (let* ((_%bind-rest126910126920%_
                                               _%bind-rest126908%_)
                                              (_%else126912126928%_
                                               (lambda ()
                                                 (_%K126668%_
                                                  _%rest126669%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi126899%_
                                                         _%set126909%_)
                                                        _%r126670%_))))
                                              (_%K126914126938%_
                                               (lambda (_%bind-rest126931%_
                                                        _%bind126932%_
                                                        _%key126933%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind126932%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind126932%_))
                                                     (_%lp126906%_
                                                      _%bind-rest126931%_
                                                      _%set126909%_)
                                                     (_%lp126906%_
                                                      _%bind-rest126931%_
                                                      (cons (_%make-export__2__130013130016%_
                                                             _%bind126932%_
                                                             _%current-phi126899%_
                                                             _%current-ctx126897%_)
                                                            _%set126909%_))))))
                                         (if (pair? _%bind-rest126910126920%_)
                                             (let ((_%hd126915126941%_
                                                    (##car _%bind-rest126910126920%_))
                                                   (_%tl126916126943%_
                                                    (##cdr _%bind-rest126910126920%_)))
                                               (if (pair? _%hd126915126941%_)
                                                   (let ((_%hd126917126946%_
                                                          (##car _%hd126915126941%_))
                                                         (_%tl126918126948%_
                                                          (##cdr _%hd126915126941%_)))
                                                     (let* ((_%key126951%_
                                                             _%hd126917126946%_)
                                                            (_%bind126953%_
                                                             _%tl126918126948%_)
                                                            (_%bind-rest126955%_
                                                             _%tl126916126943%_))
                                                       (_%K126914126938%_
                                                        _%bind-rest126955%_
                                                        _%bind126953%_
                                                        _%key126951%_)))
                                                   (_%else126912126928%_)))
                                             (_%else126912126928%_)))))
                                   (_%E126673126893%_)))))
                       (_%E126672126957%_))))
                  (_%export-imports126513%_
                   (lambda (_%src126543%_ _%r126544%_)
                     (letrec* ((_%current-ctx126546%_
                                (gx#current-expander-context))
                               (_%current-phi126547%_
                                (gx#current-export-expander-phi))
                               (_%import->export126548%_
                                (lambda (_%in126629%_)
                                  (let* ((_%in126630126638%_ _%in126629%_)
                                         (_%E126632126642%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in126630126638%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K126633126649%_
                                          (lambda (_%phi126645%_
                                                   _%key126646%_
                                                   _%out126647%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx126546%_
                                             _%key126646%_
                                             _%phi126645%_
                                             _%key126646%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in126630126638%_
                                         'gx#module-import::t)
                                        (let* ((_%e126634126652%_
                                                (##unchecked-structure-ref
                                                 _%in126630126638%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out126655%_
                                                _%e126634126652%_)
                                               (_%e126635126657%_
                                                (##unchecked-structure-ref
                                                 _%in126630126638%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key126660%_
                                                _%e126635126657%_)
                                               (_%e126636126662%_
                                                (##unchecked-structure-ref
                                                 _%in126630126638%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi126665%_
                                                _%e126636126662%_))
                                          (_%K126633126649%_
                                           _%phi126665%_
                                           _%key126660%_
                                           _%out126655%_))
                                        (_%E126632126642%_)))))
                               (_%fold-e126549%_
                                (lambda (_%in126551%_ _%r126552%_)
                                  (let* ((_%in126553126567%_ _%in126551%_)
                                         (_%else126556126575%_
                                          (lambda () _%r126552%_)))
                                    (let ((_%K126562126611%_
                                           (lambda (_%phi126607%_
                                                    _%key126608%_
                                                    _%out126609%_)
                                             (if (and (fx= _%phi126607%_
                                                           _%current-phi126547%_)
                                                      (eq? _%src126543%_
                                                           (##unchecked-structure-ref
                                                            _%out126609%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export126548%_
                                                        _%in126551%_)
                                                       _%r126552%_)
                                                 _%r126552%_)))
                                          (_%K126558126586%_
                                           (lambda (_%imports126579%_
                                                    _%phi126580%_
                                                    _%ctx126581%_)
                                             (if (and (fx= _%phi126580%_
                                                           _%current-phi126547%_)
                                                      (eq? _%src126543%_
                                                           _%ctx126581%_))
                                                 (__foldl1
                                                  (lambda (_%in126583%_
                                                           _%r126584%_)
                                                    (cons (_%import->export126548%_
                                                           _%in126583%_)
                                                          _%r126584%_))
                                                  _%r126552%_
                                                  _%imports126579%_)
                                                 _%r126552%_))))
                                      (let ((_%try-match126555126604%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in126553126567%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e126559126589%_
                                                           (##unchecked-structure-ref
                                                            _%in126553126567%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e126560126594%_
                                                           (##unchecked-structure-ref
                                                            _%in126553126567%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e126561126599%_
                                                           (##unchecked-structure-ref
                                                            _%in126553126567%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx126592%_
                                                            _%e126559126589%_)
                                                           (_%phi126597%_
                                                            _%e126560126594%_)
                                                           (_%imports126602%_
                                                            _%e126561126599%_))
                                                       (_%K126558126586%_
                                                        _%imports126602%_
                                                        _%phi126597%_
                                                        _%ctx126592%_)))
                                                   (_%else126556126575%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in126553126567%_
                                             'gx#module-import::t)
                                            (let* ((_%e126563126614%_
                                                    (##unchecked-structure-ref
                                                     _%in126553126567%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e126564126619%_
                                                    (##unchecked-structure-ref
                                                     _%in126553126567%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e126565126624%_
                                                    (##unchecked-structure-ref
                                                     _%in126553126567%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out126617%_
                                                     _%e126563126614%_)
                                                    (_%key126622%_
                                                     _%e126564126619%_)
                                                    (_%phi126627%_
                                                     _%e126565126624%_))
                                                (_%K126562126611%_
                                                 _%phi126627%_
                                                 _%key126622%_
                                                 _%out126617%_)))
                                            (_%try-match126555126604%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src126543%_
                              _%current-phi126547%_
                              (__foldl1
                               _%fold-e126549%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx126546%_
                                '8
                                '#f
                                '#f)))
                             _%r126544%_))))
                  (_%export!126514%_
                   (lambda (_%rbody126530%_)
                     (letrec* ((_%current-ctx126532%_
                                (gx#current-expander-context))
                               (_%fold-e126533%_
                                (lambda (_%out126537%_ _%r126538%_)
                                  (if (##structure-direct-instance-of?
                                       _%out126537%_
                                       'gx#module-export::t)
                                      (cons _%out126537%_ _%r126538%_)
                                      (if (##structure-direct-instance-of?
                                           _%out126537%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r126538%_
                                           (##unchecked-structure-ref
                                            _%out126537%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r126538%_)))))
                       (let ((_%body126535%_ (reverse _%rbody126530%_)))
                         (##unchecked-structure-set!
                          _%current-ctx126532%_
                          (__foldl1
                           _%fold-e126533%_
                           (##unchecked-structure-ref
                            _%current-ctx126532%_
                            '9
                            '#f
                            '#f)
                           _%body126535%_)
                          '9
                          '#f
                          '#f)
                         _%body126535%_))))
                  (_%expanded-export?126515%_
                   (lambda (_%e126525%_)
                     (let ((_%$e126527%_
                            (##structure-direct-instance-of?
                             _%e126525%_
                             'gx#module-export::t)))
                       (if _%$e126527%_
                           _%$e126527%_
                           (##structure-direct-instance-of?
                            _%e126525%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?126509%_)
              (let ((_%rbody126521%_
                     (gx#core-expand-import/export
                      _%stx126508%_
                      _%expanded-export?126515%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1126512%_)))
                (if _%internal-expand?126509%_
                    (reverse _%rbody126521%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!126514%_ _%rbody126521%_))
                     (gx#stx-source _%stx126508%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx126508%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx126508%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx127007%_)
        (let ((_%internal-expand?127009%_ '#f))
          (gx#core-expand-export%__%
           _%stx127007%_
           _%internal-expand?127009%_))))
    (define gx#core-expand-export%
      (lambda _g130085_
        (let ((_g130084_ (##length _g130085_)))
          (cond ((##fx= _g130084_ 1)
                 (apply gx#core-expand-export%__0 _g130085_))
                ((##fx= _g130084_ 2)
                 (apply gx#core-expand-export%__% _g130085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g130085_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd126505%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd126505%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx126475%_)
        (let* ((_%e126476126483%_ _%stx126475%_)
               (_%E126478126487%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126476126483%_)))
               (_%E126477126501%_
                (lambda ()
                  (if (gx#stx-pair? _%e126476126483%_)
                      (let ((_%e126479126491%_
                             (gx#syntax-e _%e126476126483%_)))
                        (let ((_%hd126480126494%_ (##car _%e126479126491%_))
                              (_%tl126481126496%_ (##cdr _%e126479126491%_)))
                          (let ((_%body126499%_ _%tl126481126496%_))
                            (if (gx#identifier-list? _%body126499%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body126499%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body126499%_))
                                   (gx#stx-source _%stx126475%_)))
                                (_%E126478126487%_)))))
                      (_%E126478126487%_)))))
          (_%E126477126501%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id126441%_ _%private?126442%_ _%phi126443%_ _%ctx126444%_)
        (gx#core-bind-syntax!__%
         _%id126441%_
         ((if _%private?126442%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id126441%_))
         _%private?126442%_
         _%phi126443%_
         _%ctx126444%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id126449%_)
        (let* ((_%private?126451%_ '#f)
               (_%phi126453%_ (gx#current-expander-phi))
               (_%ctx126455%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126449%_
           _%private?126451%_
           _%phi126453%_
           _%ctx126455%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id126457%_ _%private?126458%_)
        (let* ((_%phi126460%_ (gx#current-expander-phi))
               (_%ctx126462%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126457%_
           _%private?126458%_
           _%phi126460%_
           _%ctx126462%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id126464%_ _%private?126465%_ _%phi126466%_)
        (let ((_%ctx126468%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126464%_
           _%private?126465%_
           _%phi126466%_
           _%ctx126468%_))))
    (define gx#core-bind-feature!
      (lambda _g130087_
        (let ((_g130086_ (##length _g130087_)))
          (cond ((##fx= _g130086_ 1)
                 (apply gx#core-bind-feature!__0 _g130087_))
                ((##fx= _g130086_ 2)
                 (apply gx#core-bind-feature!__1 _g130087_))
                ((##fx= _g130086_ 3)
                 (apply gx#core-bind-feature!__2 _g130087_))
                ((##fx= _g130086_ 4)
                 (apply gx#core-bind-feature!__% _g130087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g130087_))))))))
