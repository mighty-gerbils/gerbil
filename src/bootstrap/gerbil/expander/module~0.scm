(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712846034)
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
      (lambda _%$args126954%_
        (apply make-instance gx#module-import::t _%$args126954%_)))
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
      (lambda _%$args126951%_
        (apply make-instance gx#module-export::t _%$args126951%_)))
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
      (lambda _%$args126948%_
        (apply make-instance gx#import-set::t _%$args126948%_)))
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
      (lambda _%$args126945%_
        (apply make-instance gx#export-set::t _%$args126945%_)))
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
      (lambda _%$args126942%_
        (apply make-instance gx#import-expander::t _%$args126942%_)))
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
      (lambda _%$args126939%_
        (apply make-instance gx#export-expander::t _%$args126939%_)))
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
      (lambda _%$args126936%_
        (apply make-instance gx#import-export-expander::t _%$args126936%_)))
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
      (lambda (_%path126933%_ _%fun126934%_)
        (call-with-input-file
         (cons 'path: (cons _%path126933%_ gx#source-file-settings))
         _%fun126934%_)))
    (define gx#module-context:::init!
      (lambda (_%self123385126914%_
               _%id126916%_
               _%super126917%_
               _%ns126918%_
               _%path126919%_)
        (let* ((_%self126921%_ _%self123385126914%_)
               (_%self126923%_ _%self126921%_))
          (if (##fx< '11 (##structure-length _%self126923%_))
              (begin
                (##unchecked-structure-set!
                 _%self126923%_
                 _%id126916%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self126923%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self126923%_
                 _%super126917%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self126923%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self126923%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self126923%_
                 _%ns126918%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self126923%_
                 _%path126919%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self126923%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self126923%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self126923%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self126923%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self126923%_
                     '11
                     (##vector-length _%self126923%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self123386126745%_ _%ctx126747%_ _%root126748%_)
        (let* ((_%self126750%_ _%self123386126745%_)
               (_%self126752%_ _%self126750%_)
               (_%super126768%_
                (let ((_%$e126762%_ _%root126748%_))
                  (if _%$e126762%_
                      _%$e126762%_
                      (let ((_%$e126765%_ (gx#core-context-root__0)))
                        (if _%$e126765%_
                            _%$e126765%_
                            (let ((__obj126998
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor126999
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj126998
                                      ':init!)))
                                (if __constructor126999
                                    (__constructor126999 __obj126998)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj126998)))))))
          (if _%ctx126747%_
              (let ((_%id126771%_
                     (##structure-ref
                      _%ctx126747%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path126772%_
                     (##structure-ref
                      _%ctx126747%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in126773%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx126747%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e126774%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx126747%_)))))
                (if (##fx< '8 (##structure-length _%self126752%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self126752%_
                       _%id126771%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126752%_
                       (make-hash-table-eq 'size: (##length _%in126773%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126752%_
                       _%super126768%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126752%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126752%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126752%_
                       _%path126772%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126752%_
                       _%in126773%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126752%_
                       _%e126774%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self126752%_
                           '8
                           (##vector-length _%self126752%_)))
                (##for-each
                 (lambda (_%g126775126777%_)
                   (gx#core-bind-weak-import!__%
                    _%g126775126777%_
                    _%self126752%_))
                 _%in126773%_))
              (if (##fx< '8 (##structure-length _%self126752%_))
                  (begin
                    (##unchecked-structure-set! _%self126752%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self126752%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self126752%_
                     _%super126768%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self126752%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self126752%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self126752%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self126752%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self126752%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self126752%_
                         '8
                         (##vector-length _%self126752%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self123386126783%_ _%ctx126784%_)
        (let ((_%root126786%_ '#f))
          (gx#prelude-context:::init!__%
           _%self123386126783%_
           _%ctx126784%_
           _%root126786%_))))
    (define gx#prelude-context:::init!
      (lambda _g127005_
        (let ((_g127004_ (##length _g127005_)))
          (cond ((##fx= _g127004_ 2)
                 (apply gx#prelude-context:::init!__0 _g127005_))
                ((##fx= _g127004_ 3)
                 (apply gx#prelude-context:::init!__% _g127005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g127005_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self126619%_ _%e126620%_)
        (if (##fx< '3 (##structure-length _%self126619%_))
            (begin
              (##unchecked-structure-set!
               _%self126619%_
               _%e126620%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self126619%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self126619%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self126619%_
                   '3
                   (##vector-length _%self126619%_)))))
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
      (lambda (_%g126245126248%_ _%g126246126250%_)
        (gx#core-apply-user-expander__%
         _%g126245126248%_
         _%g126246126250%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g126116126119%_ _%g126117126121%_)
        (gx#core-apply-user-expander__%
         _%g126116126119%_
         _%g126117126121%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx125987%_)
        (let* ((_%path125989%_
                (##structure-ref _%ctx125987%_ '7 gx#module-context::t '#f))
               (_%path125991%_
                (if (pair? _%path125989%_)
                    (##last _%path125989%_)
                    _%path125989%_)))
          (if (string? _%path125991%_) _%path125991%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path125963%_ _%reload?125964%_ _%eval?125965%_)
        (let ((_%ctx125967%_
               ((gx#current-expander-module-import)
                _%path125963%_
                _%reload?125964%_)))
          (if (and _%ctx125967%_ _%eval?125965%_)
              (gx#eval-module _%ctx125967%_)
              '#!void)
          _%ctx125967%_)))
    (define gx#import-module__0
      (lambda (_%path125972%_)
        (let* ((_%reload?125974%_ '#f) (_%eval?125976%_ '#f))
          (gx#import-module__%
           _%path125972%_
           _%reload?125974%_
           _%eval?125976%_))))
    (define gx#import-module__1
      (lambda (_%path125978%_ _%reload?125979%_)
        (let ((_%eval?125981%_ '#f))
          (gx#import-module__%
           _%path125978%_
           _%reload?125979%_
           _%eval?125981%_))))
    (define gx#import-module
      (lambda _g127007_
        (let ((_g127006_ (##length _g127007_)))
          (cond ((##fx= _g127006_ 1) (apply gx#import-module__0 _g127007_))
                ((##fx= _g127006_ 2) (apply gx#import-module__1 _g127007_))
                ((##fx= _g127006_ 3) (apply gx#import-module__% _g127007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g127007_))))))
    (define gx#eval-module
      (lambda (_%mod125960%_)
        ((gx#current-expander-module-eval) _%mod125960%_)))
    (define gx#core-eval-module
      (lambda (_%obj125940%_)
        (letrec ((_%force-e125942%_
                  (lambda (_%getf125956%_ _%e125957%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf125956%_ _%e125957%_)))
                     gx#current-expander-context
                     _%e125957%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur125944%_ ((_%e125946%_ _%obj125940%_))
            (if (##structure-instance-of? _%e125946%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e125949%_
                         (gx#core-context-prelude__% _%e125946%_)))
                    (if _%$e125949%_ (_%recur125944%_ _%$e125949%_) '#!void))
                  (_%force-e125942%_ gx#module-context-e _%e125946%_))
                (if (##structure-instance-of?
                     _%e125946%_
                     'gx#prelude-context::t)
                    (_%force-e125942%_ gx#prelude-context-e _%e125946%_)
                    (if (gx#stx-string? _%e125946%_)
                        (_%recur125944%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e125946%_)))
                        (if (gx#core-library-module-path? _%e125946%_)
                            (_%recur125944%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e125946%_)))
                            (error '"cannot eval module" _%obj125940%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx125920%_)
        (let _%lp125922%_ ((_%e125924%_ _%ctx125920%_))
          (if (or (##structure-instance-of? _%e125924%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e125924%_ 'gx#local-context::t))
              (_%lp125922%_ (##unchecked-structure-ref _%e125924%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e125924%_ 'gx#prelude-context::t)
                  _%e125924%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx125936%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx125936%_))))
    (define gx#core-context-prelude
      (lambda _g127009_
        (let ((_g127008_ (##length _g127009_)))
          (cond ((##fx= _g127008_ 0)
                 (apply gx#core-context-prelude__0 _g127009_))
                ((##fx= _g127008_ 1)
                 (apply gx#core-context-prelude__% _g127009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g127009_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx125911%_)
        (let ((_%$e125913%_ (hash-get gx#__module-registry _%ctx125911%_)))
          (if _%$e125913%_
              _%$e125913%_
              (let ((_%pre125917%_
                     (let ((__obj127000
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
                        __obj127000
                        _%ctx125911%_)
                       __obj127000)))
                (hash-put! gx#__module-registry _%ctx125911%_ _%pre125917%_)
                _%pre125917%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath125783%_ _%reload?125784%_)
        (letrec ((_%import-source125786%_
                  (lambda (_%path125875%_)
                    (if (member _%path125875%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path125875%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g127010_ (gx#core-read-module _%path125875%_)))
                         (begin
                           (let ((_g127011_
                                  (if (##values? _g127010_)
                                      (##vector-length _g127010_)
                                      1)))
                             (if (not (##fx= _g127011_ 4))
                                 (error "Context expects 4 values" _g127011_)))
                           (let ((_%pre125878%_ (##vector-ref _g127010_ 0))
                                 (_%id125879%_ (##vector-ref _g127010_ 1))
                                 (_%ns125880%_ (##vector-ref _g127010_ 2))
                                 (_%body125881%_ (##vector-ref _g127010_ 3)))
                             (let* ((_%prelude125891%_
                                     (if (##structure-instance-of?
                                          _%pre125878%_
                                          'gx#prelude-context::t)
                                         _%pre125878%_
                                         (if (##structure-instance-of?
                                              _%pre125878%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre125878%_)
                                             (if (string? _%pre125878%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre125878%_))
                                                 (if (not _%pre125878%_)
                                                     (let ((_%$e125887%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e125887%_
                                                           _%$e125887%_
                                                           (let ((__obj127001
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
                     (gx#prelude-context:::init!__0 __obj127001 '#f)
                     __obj127001)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath125783%_
                                                            _%pre125878%_))))))
                                    (_%ctx125893%_
                                     (let ((__obj127002
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
                                        __obj127002
                                        _%id125879%_
                                        _%prelude125891%_
                                        _%ns125880%_
                                        _%path125875%_)
                                       __obj127002))
                                    (_%body125895%_
                                     (gx#core-expand-module-begin
                                      _%body125881%_
                                      _%ctx125893%_))
                                    (_%body125897%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body125895%_)
                                      _%path125875%_
                                      _%ctx125893%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx125893%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body125897%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx125893%_
                                _%body125897%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path125875%_
                                _%ctx125893%_)
                               (hash-put!
                                gx#__module-registry
                                _%id125879%_
                                _%ctx125893%_)
                               _%ctx125893%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path125875%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule125787%_
                  (lambda (_%rpath125803%_)
                    (let* ((_%rpath125804125811%_ _%rpath125803%_)
                           (_%E125806125815%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath125804125811%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K125807125863%_
                            (lambda (_%refs125818%_ _%origin125819%_)
                              (let ((_%ctx125821%_
                                     (if _%origin125819%_
                                         (gx#core-import-module__%
                                          _%origin125819%_
                                          _%reload?125784%_)
                                         (gx#current-expander-context))))
                                (let _%lp125823%_ ((_%rest125825%_
                                                    _%refs125818%_)
                                                   (_%ctx125826%_
                                                    _%ctx125821%_))
                                  (let* ((_%rest125827125835%_ _%rest125825%_)
                                         (_%else125829125843%_
                                          (lambda () _%ctx125826%_))
                                         (_%K125831125851%_
                                          (lambda (_%rest125846%_ _%id125847%_)
                                            (let ((_%bind125849%_
                                                   (gx#resolve-identifier__%
                                                    _%id125847%_
                                                    '0
                                                    _%ctx125826%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind125849%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind125849%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp125823%_
                                                   _%rest125846%_
                                                   (##unchecked-structure-ref
                                                    _%bind125849%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath125803%_
                                                         _%id125847%_
                                                         _%bind125849%_))))))
                                    (if (##pair? _%rest125827125835%_)
                                        (let ((_%hd125832125854%_
                                               (##car _%rest125827125835%_))
                                              (_%tl125833125856%_
                                               (##cdr _%rest125827125835%_)))
                                          (let* ((_%id125859%_
                                                  _%hd125832125854%_)
                                                 (_%rest125861%_
                                                  _%tl125833125856%_))
                                            (_%K125831125851%_
                                             _%rest125861%_
                                             _%id125859%_)))
                                        (_%else125829125843%_))))))))
                      (if (##pair? _%rpath125804125811%_)
                          (let ((_%hd125808125866%_
                                 (##car _%rpath125804125811%_))
                                (_%tl125809125868%_
                                 (##cdr _%rpath125804125811%_)))
                            (let* ((_%origin125871%_ _%hd125808125866%_)
                                   (_%refs125873%_ _%tl125809125868%_))
                              (_%K125807125863%_
                               _%refs125873%_
                               _%origin125871%_)))
                          (_%E125806125815%_))))))
          (let ((_%$e125789%_
                 (if (not _%reload?125784%_)
                     (hash-get gx#__module-registry _%rpath125783%_)
                     '#f)))
            (if _%$e125789%_
                _%$e125789%_
                (if (list? _%rpath125783%_)
                    (_%import-submodule125787%_ _%rpath125783%_)
                    (if (gx#core-library-module-path? _%rpath125783%_)
                        (let ((_%ctx125794%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath125783%_)
                                _%reload?125784%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath125783%_
                           _%ctx125794%_)
                          _%ctx125794%_)
                        (let* ((_%npath125797%_
                                (path-normalize _%rpath125783%_))
                               (_%$e125799%_
                                (if (not _%reload?125784%_)
                                    (hash-get
                                     gx#__module-registry
                                     _%npath125797%_)
                                    '#f)))
                          (if _%$e125799%_
                              _%$e125799%_
                              (_%import-source125786%_
                               _%npath125797%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath125904%_)
        (let ((_%reload?125906%_ '#f))
          (gx#core-import-module__% _%rpath125904%_ _%reload?125906%_))))
    (define gx#core-import-module
      (lambda _g127013_
        (let ((_g127012_ (##length _g127013_)))
          (cond ((##fx= _g127012_ 1)
                 (apply gx#core-import-module__0 _g127013_))
                ((##fx= _g127012_ 2)
                 (apply gx#core-import-module__% _g127013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g127013_))))))
    (define gx#core-read-module
      (lambda (_%path125772%_)
        (__with-catch
         (lambda (_%exn125774%_)
           (if (and (datum-parsing-exception? _%exn125774%_)
                    (eq? (datum-parsing-exception-filepos _%exn125774%_) '0))
               (gx#core-read-module/lang _%path125772%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path125772%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g125776125778%_)
                      (display-exception _%exn125774%_ _%g125776125778%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path125772%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path125624%_)
        (let _%lp125626%_ ((_%body125628%_
                            (read-syntax-from-file _%path125624%_))
                           (_%pre125629%_ '#f)
                           (_%ns125630%_ '#f)
                           (_%pkg125631%_ '#f))
          (let* ((_%e125632125656%_ _%body125628%_)
                 (_%E125648125682%_
                  (lambda ()
                    (let ((_g127014_
                           (if _%pkg125631%_
                               (values _%pre125629%_
                                       _%ns125630%_
                                       _%pkg125631%_)
                               (gx#core-read-module-package
                                _%path125624%_
                                _%pre125629%_
                                _%ns125630%_))))
                      (begin
                        (let ((_g127015_
                               (if (##values? _g127014_)
                                   (##vector-length _g127014_)
                                   1)))
                          (if (not (##fx= _g127015_ 3))
                              (error "Context expects 3 values" _g127015_)))
                        (let ((_%pre125660%_ (##vector-ref _g127014_ 0))
                              (_%ns125661%_ (##vector-ref _g127014_ 1))
                              (_%pkg125662%_ (##vector-ref _g127014_ 2)))
                          (let* ((_%prelude125668%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre125660%_)
                                      (gx#syntax-local-e__0 _%pre125660%_)
                                      (if (gx#core-library-module-path?
                                           _%pre125660%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre125660%_)
                                          (if (gx#stx-string? _%pre125660%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre125660%_
                                               _%path125624%_)
                                              (gx#stx-e _%pre125660%_)))))
                                 (_%path-id125670%_
                                  (gx#core-module-path->namespace
                                   _%path125624%_))
                                 (_%pkg-id125672%_
                                  (if _%pkg125662%_
                                      (##string-append
                                       _%pkg125662%_
                                       '"/"
                                       _%path-id125670%_)
                                      _%path-id125670%_))
                                 (_%module-id125674%_
                                  (##string->symbol _%pkg-id125672%_))
                                 (_%module-ns125679%_
                                  (if (eq? _%ns125661%_ '#!void)
                                      '#f
                                      (let ((_%$e125676%_ _%ns125661%_))
                                        (if _%$e125676%_
                                            _%$e125676%_
                                            _%pkg-id125672%_)))))
                            (values _%prelude125668%_
                                    _%module-id125674%_
                                    _%module-ns125679%_
                                    _%body125628%_)))))))
                 (_%E125641125714%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125632125656%_)
                        (let ((_%e125649125686%_
                               (gx#syntax-e _%e125632125656%_)))
                          (let ((_%hd125650125689%_ (##car _%e125649125686%_))
                                (_%tl125651125691%_ (##cdr _%e125649125686%_)))
                            (if (eq? (gx#stx-e _%hd125650125689%_) 'package:)
                                (if (gx#stx-pair? _%tl125651125691%_)
                                    (let ((_%e125652125694%_
                                           (gx#syntax-e _%tl125651125691%_)))
                                      (let ((_%hd125653125697%_
                                             (##car _%e125652125694%_))
                                            (_%tl125654125699%_
                                             (##cdr _%e125652125694%_)))
                                        (let* ((_%pkg125702%_
                                                _%hd125653125697%_)
                                               (_%rest125704%_
                                                _%tl125654125699%_)
                                               (_%pkg125712%_
                                                (if (gx#identifier?
                                                     _%pkg125702%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg125702%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg125702%_)
                                                            (gx#stx-false?
                                                             _%pkg125702%_))
                                                        (gx#stx-e
                                                         _%pkg125702%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg125702%_)))))
                                          (_%lp125626%_
                                           _%rest125704%_
                                           _%pre125629%_
                                           _%ns125630%_
                                           _%pkg125712%_))))
                                    (_%E125648125682%_))
                                (_%E125648125682%_))))
                        (_%E125648125682%_))))
                 (_%E125634125744%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125632125656%_)
                        (let ((_%e125642125718%_
                               (gx#syntax-e _%e125632125656%_)))
                          (let ((_%hd125643125721%_ (##car _%e125642125718%_))
                                (_%tl125644125723%_ (##cdr _%e125642125718%_)))
                            (if (eq? (gx#stx-e _%hd125643125721%_) 'namespace:)
                                (if (gx#stx-pair? _%tl125644125723%_)
                                    (let ((_%e125645125726%_
                                           (gx#syntax-e _%tl125644125723%_)))
                                      (let ((_%hd125646125729%_
                                             (##car _%e125645125726%_))
                                            (_%tl125647125731%_
                                             (##cdr _%e125645125726%_)))
                                        (let* ((_%ns125734%_
                                                _%hd125646125729%_)
                                               (_%rest125736%_
                                                _%tl125647125731%_)
                                               (_%ns125742%_
                                                (if (gx#identifier?
                                                     _%ns125734%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns125734%_))
                                                    (if (gx#stx-string?
                                                         _%ns125734%_)
                                                        (gx#stx-e _%ns125734%_)
                                                        (if (gx#stx-false?
                                                             _%ns125734%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns125734%_))))))
                                          (_%lp125626%_
                                           _%rest125736%_
                                           _%pre125629%_
                                           _%ns125742%_
                                           _%pkg125631%_))))
                                    (_%E125641125714%_))
                                (_%E125641125714%_))))
                        (_%E125641125714%_))))
                 (_%E125633125768%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125632125656%_)
                        (let ((_%e125635125748%_
                               (gx#syntax-e _%e125632125656%_)))
                          (let ((_%hd125636125751%_ (##car _%e125635125748%_))
                                (_%tl125637125753%_ (##cdr _%e125635125748%_)))
                            (if (eq? (gx#stx-e _%hd125636125751%_) 'prelude:)
                                (if (gx#stx-pair? _%tl125637125753%_)
                                    (let ((_%e125638125756%_
                                           (gx#syntax-e _%tl125637125753%_)))
                                      (let ((_%hd125639125759%_
                                             (##car _%e125638125756%_))
                                            (_%tl125640125761%_
                                             (##cdr _%e125638125756%_)))
                                        (let* ((_%prelude125764%_
                                                _%hd125639125759%_)
                                               (_%rest125766%_
                                                _%tl125640125761%_))
                                          (_%lp125626%_
                                           _%rest125766%_
                                           _%prelude125764%_
                                           _%ns125630%_
                                           _%pkg125631%_))))
                                    (_%E125634125744%_))
                                (_%E125634125744%_))))
                        (_%E125634125744%_)))))
            (_%E125633125768%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path125446%_)
        (letrec ((_%default-read-module-body125448%_
                  (lambda (_%inp125616%_)
                    (let _%lp125618%_ ((_%body125620%_ '()))
                      (let ((_%next125622%_ (read-syntax__% _%inp125616%_)))
                        (if (eof-object? _%next125622%_)
                            (reverse _%body125620%_)
                            (_%lp125618%_
                             (cons _%next125622%_ _%body125620%_)))))))
                 (_%read-body125449%_
                  (lambda (_%inp125534%_
                           _%pre125535%_
                           _%ns125536%_
                           _%pkg125537%_
                           _%args125538%_)
                    (let ((_g127016_
                           (if _%pkg125537%_
                               (values _%pre125535%_
                                       _%ns125536%_
                                       _%pkg125537%_)
                               (gx#core-read-module-package
                                _%path125446%_
                                _%pre125535%_
                                _%ns125536%_))))
                      (begin
                        (let ((_g127017_
                               (if (##values? _g127016_)
                                   (##vector-length _g127016_)
                                   1)))
                          (if (not (##fx= _g127017_ 3))
                              (error "Context expects 3 values" _g127017_)))
                        (let ((_%pre125540%_ (##vector-ref _g127016_ 0))
                              (_%ns125541%_ (##vector-ref _g127016_ 1))
                              (_%pkg125542%_ (##vector-ref _g127016_ 2)))
                          (let* ((_%prelude125544%_
                                  (gx#import-module__0 _%pre125540%_))
                                 (_%read-module-body125599%_
                                  (let ((_%$e125590%_
                                         (__find (lambda (_%e125545125547%_)
                                                   (let* ((_%g125549125559%_
                                                           _%e125545125547%_)
                                                          (_%else125551125567%_
                                                           (lambda () '#f))
                                                          (_%K125553125571%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g125549125559%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e125554125574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g125549125559%_
                          '1
                          '#f
                          '#f))
                        (_%e125555125577%_
                         (##unchecked-structure-ref
                          _%g125549125559%_
                          '2
                          '#f
                          '#f))
                        (_%e125556125580%_
                         (##unchecked-structure-ref
                          _%g125549125559%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e125556125580%_ '1)
                       (let ((_%e125557125583%_
                              (##unchecked-structure-ref
                               _%g125549125559%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g125585125587%_)
                                (eq? _%g125585125587%_ 'read-module-body))
                              _%e125557125583%_)
                             (_%K125553125571%_)
                             (_%else125551125567%_)))
                       (_%else125551125567%_)))
                 (_%else125551125567%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude125544%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e125590%_
                                        ((lambda (_%xport125593%_)
                                           (let ((_%proc125596%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport125593%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc125596%_)
                                                 _%proc125596%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path125446%_
                                                  _%pre125540%_
                                                  _%proc125596%_))))
                                         _%$e125590%_)
                                        _%default-read-module-body125448%_)))
                                 (_%path-id125601%_
                                  (gx#core-module-path->namespace
                                   _%path125446%_))
                                 (_%pkg-id125603%_
                                  (if _%pkg125542%_
                                      (##string-append
                                       _%pkg125542%_
                                       '"/"
                                       _%path-id125601%_)
                                      _%path-id125601%_))
                                 (_%module-id125605%_
                                  (##string->symbol _%pkg-id125603%_))
                                 (_%module-ns125610%_
                                  (let ((_%$e125607%_ _%ns125541%_))
                                    (if _%$e125607%_
                                        _%$e125607%_
                                        _%pkg-id125603%_)))
                                 (_%body125613%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body125599%_
                                      _%inp125534%_))
                                   gx#current-module-reader-path
                                   _%path125446%_
                                   gx#current-module-reader-args
                                   _%args125538%_)))
                            (values _%prelude125544%_
                                    _%module-id125605%_
                                    _%module-ns125610%_
                                    _%body125613%_)))))))
                 (_%string-e125450%_
                  (lambda (_%obj125528%_ _%what125529%_)
                    (if (string? _%obj125528%_)
                        _%obj125528%_
                        (if (symbol? _%obj125528%_)
                            (##symbol->string _%obj125528%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what125529%_)
                             _%path125446%_
                             _%obj125528%_)))))
                 (_%read-lang-args125451%_
                  (lambda (_%inp125483%_ _%args125484%_)
                    (let* ((_%args125485125493%_ _%args125484%_)
                           (_%else125487125501%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path125446%_)))
                           (_%K125489125516%_
                            (lambda (_%args125504%_ _%prelude125505%_)
                              (let* ((_%pkg125507%_
                                      (pgetq__0 'package: _%args125504%_))
                                     (_%pkg125509%_
                                      (if _%pkg125507%_
                                          (_%string-e125450%_
                                           _%pkg125507%_
                                           '"package")
                                          '#f))
                                     (_%ns125511%_
                                      (pgetq__0 'namespace: _%args125504%_))
                                     (_%ns125513%_
                                      (if _%ns125511%_
                                          (_%string-e125450%_
                                           _%ns125511%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body125449%_
                                 _%inp125483%_
                                 _%prelude125505%_
                                 _%ns125513%_
                                 _%pkg125509%_
                                 _%args125504%_)))))
                      (if (##pair? _%args125485125493%_)
                          (let ((_%hd125490125519%_
                                 (##car _%args125485125493%_))
                                (_%tl125491125521%_
                                 (##cdr _%args125485125493%_)))
                            (let* ((_%prelude125524%_ _%hd125490125519%_)
                                   (_%args125526%_ _%tl125491125521%_))
                              (_%K125489125516%_
                               _%args125526%_
                               _%prelude125524%_)))
                          (_%else125487125501%_)))))
                 (_%read-lang125452%_
                  (lambda (_%inp125457%_)
                    (let* ((_%head125459%_ (read-line _%inp125457%_))
                           (_%$e125461%_
                            (string-index__0 _%head125459%_ '#\space)))
                      (if _%$e125461%_
                          ((lambda (_%ix125464%_)
                             (let ((_%lang125466%_
                                    (substring
                                     _%head125459%_
                                     '0
                                     _%ix125464%_)))
                               (if (equal? _%lang125466%_ '"#lang")
                                   (let* ((_%rest125468%_
                                           (substring
                                            _%head125459%_
                                            (##fx+ _%ix125464%_ '1)
                                            (string-length _%head125459%_)))
                                          (_%args125479%_
                                           (__with-catch
                                            (lambda (_%g125469125471%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path125446%_
                                               _%g125469125471%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest125468%_
                                               (lambda (_%g125474125476%_)
                                                 (read-all
                                                  _%g125474125476%_
                                                  read)))))))
                                     (_%read-lang-args125451%_
                                      _%inp125457%_
                                      _%args125479%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path125446%_))))
                           _%$e125461%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path125446%_)))))
                 (_%read-e125453%_
                  (lambda (_%inp125455%_)
                    (if (eq? (peek-char _%inp125455%_) '#\#)
                        (_%read-lang125452%_ _%inp125455%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path125446%_)))))
          (gx#call-with-input-source-file _%path125446%_ _%read-e125453%_))))
    (define gx#core-read-module-package
      (lambda (_%path125394%_ _%pre125395%_ _%ns125396%_)
        (letrec ((_%string-e125398%_
                  (lambda (_%e125441%_)
                    (if (symbol? _%e125441%_)
                        (##symbol->string _%e125441%_)
                        (if (string? _%e125441%_)
                            _%e125441%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e125441%_))))))
          (let _%lp125400%_ ((_%dir125402%_ (path-directory _%path125394%_))
                             (_%pkg-path125403%_ '()))
            (let ((_%gerbil.pkg125405%_
                   (path-expand '"gerbil.pkg" _%dir125402%_)))
              (if (##file-exists? _%gerbil.pkg125405%_)
                  (let ((_%plist125407%_
                         (gx#core-library-package-plist__% _%dir125402%_ '#t)))
                    (if (null? _%plist125407%_)
                        (let ((_%pkg125410%_
                               (if (null? _%pkg-path125403%_)
                                   '#f
                                   (string-join _%pkg-path125403%_ '"/"))))
                          (values _%pre125395%_ _%ns125396%_ _%pkg125410%_))
                        (if (list? _%plist125407%_)
                            (let* ((_%root125413%_
                                    (pgetq__0 'package: _%plist125407%_))
                                   (_%pkg125417%_
                                    (let ((_%pkg-path125415%_
                                           (if _%root125413%_
                                               (cons (_%string-e125398%_
                                                      _%root125413%_)
                                                     _%pkg-path125403%_)
                                               _%pkg-path125403%_)))
                                      (if (null? _%pkg-path125415%_)
                                          '#f
                                          (string-join
                                           _%pkg-path125415%_
                                           '"/"))))
                                   (_%ns125424%_
                                    (let ((_%ns125422%_
                                           (let ((_%$e125419%_ _%ns125396%_))
                                             (if _%$e125419%_
                                                 _%$e125419%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist125407%_)))))
                                      (if _%ns125422%_
                                          (_%string-e125398%_ _%ns125422%_)
                                          '#f)))
                                   (_%pre125429%_
                                    (let ((_%$e125426%_ _%pre125395%_))
                                      (if _%$e125426%_
                                          _%$e125426%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist125407%_)))))
                              (values _%pre125429%_
                                      _%ns125424%_
                                      _%pkg125417%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist125407%_))))
                  (let ((_%dir*125433%_
                         (path-strip-trailing-directory-separator
                          _%dir125402%_)))
                    (if (or (__string-empty? _%dir*125433%_)
                            (equal? _%dir125402%_ _%dir*125433%_))
                        (values _%pre125395%_ _%ns125396%_ '#f)
                        (let ((_%xpath125438%_
                               (path-strip-directory _%dir*125433%_))
                              (_%xdir125439%_ (path-directory _%dir*125433%_)))
                          (_%lp125400%_
                           _%xdir125439%_
                           (cons _%xpath125438%_ _%pkg-path125403%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path125392%_)
        (path-strip-extension (path-strip-directory _%path125392%_))))
    (define gx#core-module-path->id
      (lambda (_%path125390%_)
        (##string->symbol (gx#core-module-path->namespace _%path125390%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path125369%_ _%rel125370%_)
        (let* ((_%path125372%_ (gx#stx-e _%stx-path125369%_))
               (_%path125374%_
                (if (__string-empty? (path-extension _%path125372%_))
                    (##string-append _%path125372%_ '".ss")
                    _%path125372%_)))
          (gx#core-resolve-path__%
           _%path125374%_
           (let ((_%$e125377%_ (gx#stx-source _%stx-path125369%_)))
             (if _%$e125377%_ _%$e125377%_ _%rel125370%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path125383%_)
        (let ((_%rel125385%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path125383%_ _%rel125385%_))))
    (define gx#core-resolve-module-path
      (lambda _g127019_
        (let ((_g127018_ (##length _g127019_)))
          (cond ((##fx= _g127018_ 1)
                 (apply gx#core-resolve-module-path__0 _g127019_))
                ((##fx= _g127018_ 2)
                 (apply gx#core-resolve-module-path__% _g127019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g127019_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath125254%_)
        (let* ((_%spath125256%_ (symbol->string (gx#stx-e _%libpath125254%_)))
               (_%spath125258%_
                (substring
                 _%spath125256%_
                 '1
                 (##string-length _%spath125256%_)))
               (_%ext125260%_ (path-extension _%spath125258%_))
               (_%ssi125262%_
                (if (__string-empty? _%ext125260%_)
                    (##string-append _%spath125258%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath125258%_)
                     '".ssi")))
               (_%srcs125266%_
                (if (__string-empty? _%ext125260%_)
                    (##map (lambda (_%ext125264%_)
                             (string-append _%spath125258%_ _%ext125264%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath125258%_ '()))))
          (let _%lp125269%_ ((_%rest125271%_ (load-path)))
            (let* ((_%rest125272125281%_ _%rest125271%_)
                   (_%E125275125285%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest125272125281%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K125277125356%_
                     (lambda (_%rest125296%_ _%dir125297%_)
                       (letrec ((_%resolve125299%_
                                 (lambda (_%ssi125312%_ _%srcs125313%_)
                                   (let ((_%compiled-path125315%_
                                          (path-expand
                                           _%ssi125312%_
                                           _%dir125297%_)))
                                     (if (##file-exists?
                                          _%compiled-path125315%_)
                                         (path-normalize
                                          _%compiled-path125315%_)
                                         (let _%lpr125317%_ ((_%rest-src125319%_
                                                              _%srcs125313%_))
                                           (let* ((_%rest-src125320125328%_
                                                   _%rest-src125319%_)
                                                  (_%else125322125336%_
                                                   (lambda ()
                                                     (_%lp125269%_
                                                      _%rest125296%_)))
                                                  (_%K125324125344%_
                                                   (lambda (_%rest-src125339%_
                                                            _%src125340%_)
                                                     (let ((_%src-path125342%_
                                                            (path-expand
                                                             _%src125340%_
                                                             _%dir125297%_)))
                                                       (if (##file-exists?
                                                            _%src-path125342%_)
                                                           (path-normalize
                                                            _%src-path125342%_)
                                                           (_%lpr125317%_
                                                            _%rest-src125339%_))))))
                                             (if (##pair? _%rest-src125320125328%_)
                                                 (let ((_%hd125325125347%_
                                                        (##car _%rest-src125320125328%_))
                                                       (_%tl125326125349%_
                                                        (##cdr _%rest-src125320125328%_)))
                                                   (let* ((_%src125352%_
                                                           _%hd125325125347%_)
                                                          (_%rest-src125354%_
                                                           _%tl125326125349%_))
                                                     (_%K125324125344%_
                                                      _%rest-src125354%_
                                                      _%src125352%_)))
                                                 (_%else125322125336%_)))))))))
                         (let ((_%$e125301%_
                                (gx#core-library-package-path-prefix
                                 _%dir125297%_)))
                           (if _%$e125301%_
                               ((lambda (_%prefix125304%_)
                                  (if (string-prefix?
                                       _%prefix125304%_
                                       _%spath125258%_)
                                      (let ((_%ssi125308%_
                                             (substring
                                              _%ssi125262%_
                                              (string-length _%prefix125304%_)
                                              (##string-length _%ssi125262%_)))
                                            (_%srcs125309%_
                                             (##map (lambda (_%src125306%_)
                                                      (substring
                                                       _%src125306%_
                                                       (string-length
                                                        _%prefix125304%_)
                                                       (string-length
                                                        _%src125306%_)))
                                                    _%srcs125266%_)))
                                        (_%resolve125299%_
                                         _%ssi125308%_
                                         _%srcs125309%_))
                                      (_%lp125269%_ _%rest125296%_)))
                                _%$e125301%_)
                               (_%resolve125299%_
                                _%ssi125262%_
                                _%srcs125266%_))))))
                    (_%K125276125290%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath125254%_))))
                (let ((_%try-match125274125293%_
                       (lambda ()
                         (if (##null? _%rest125272125281%_)
                             (_%K125276125290%_)
                             (_%E125275125285%_)))))
                  (if (##pair? _%rest125272125281%_)
                      (let ((_%tl125279125361%_ (##cdr _%rest125272125281%_))
                            (_%hd125278125359%_ (##car _%rest125272125281%_)))
                        (let ((_%dir125364%_ _%hd125278125359%_)
                              (_%rest125366%_ _%tl125279125361%_))
                          (_%K125277125356%_ _%rest125366%_ _%dir125364%_)))
                      (_%try-match125274125293%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath125222%_)
        (letrec ((_%resolve125224%_
                  (lambda (_%path125245%_ _%base125246%_)
                    (let ((_%$e125248%_
                           (string-rindex__0 _%base125246%_ '#\/)))
                      (if _%$e125248%_
                          ((lambda (_%idx125251%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base125246%_ '0 _%idx125251%_)
                                '"/"
                                _%path125245%_))))
                           _%$e125248%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path125245%_))))))))
          (let ((_%spath125226%_ (symbol->string (gx#stx-e _%modpath125222%_)))
                (_%mod125227%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod125227%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath125222%_))
            (let ((_%mpath125229%_
                   (symbol->string
                    (##structure-ref
                     _%mod125227%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp125231%_ ((_%spath125233%_ _%spath125226%_)
                                 (_%mpath125234%_ _%mpath125229%_))
                (if (string-prefix? '"../" _%spath125233%_)
                    (let ((_%$e125237%_
                           (string-rindex__0 _%mpath125234%_ '#\/)))
                      (if _%$e125237%_
                          ((lambda (_%idx125240%_)
                             (_%lp125231%_
                              (substring
                               _%spath125233%_
                               '3
                               (string-length _%spath125233%_))
                              (substring _%mpath125234%_ '0 _%idx125240%_)))
                           _%$e125237%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath125222%_)))
                    (if (string-prefix? '"./" _%spath125233%_)
                        (_%lp125231%_
                         (substring
                          _%spath125233%_
                          '2
                          (string-length _%spath125233%_))
                         _%mpath125234%_)
                        (_%resolve125224%_
                         _%spath125233%_
                         _%mpath125234%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir125214%_)
        (let ((_%$e125216%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir125214%_))))
          (if _%$e125216%_
              ((lambda (_%pkg125219%_)
                 (##string-append (symbol->string _%pkg125219%_) '"/"))
               _%$e125216%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir125184%_ _%exists?125185%_)
        (let ((_%$e125187%_ (hash-get gx#__module-pkg-cache _%dir125184%_)))
          (if _%$e125187%_
              (values _%$e125187%_)
              (let* ((_%gerbil.pkg125191%_
                      (path-expand '"gerbil.pkg" _%dir125184%_))
                     (_%plist125201%_
                      (if (or _%exists?125185%_
                              (##file-exists? _%gerbil.pkg125191%_))
                          (let ((_%e125196%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg125191%_
                                  read)))
                            (if (eof-object? _%e125196%_)
                                '()
                                (if (list? _%e125196%_)
                                    _%e125196%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg125191%_
                                     _%e125196%_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _%dir125184%_ _%plist125201%_)
                _%plist125201%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir125207%_)
        (let ((_%exists?125209%_ '#f))
          (gx#core-library-package-plist__% _%dir125207%_ _%exists?125209%_))))
    (define gx#core-library-package-plist
      (lambda _g127021_
        (let ((_g127020_ (##length _g127021_)))
          (cond ((##fx= _g127020_ 1)
                 (apply gx#core-library-package-plist__0 _g127021_))
                ((##fx= _g127020_ 2)
                 (apply gx#core-library-package-plist__% _g127021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g127021_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx125181%_)
        (gx#core-special-module-path? _%stx125181%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx125179%_)
        (gx#core-special-module-path? _%stx125179%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx125174%_ _%char125175%_)
        (if (gx#identifier? _%stx125174%_)
            (if (interned-symbol? (gx#stx-e _%stx125174%_))
                (let ((_%str125177%_
                       (symbol->string (gx#stx-e _%stx125174%_))))
                  (if (##fx> (##string-length _%str125177%_) '1)
                      (eq? (string-ref _%str125177%_ '0) _%char125175%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx125168%_)
        (gx#core-bound-identifier?__%
         _%stx125168%_
         (lambda (_%g125169125171%_)
           (gx#expander-binding?__% _%g125169125171%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx125162%_)
        (gx#core-bound-identifier?__%
         _%stx125162%_
         (lambda (_%g125163125165%_)
           (gx#expander-binding?__% _%g125163125165%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx125149%_)
        (letrec ((_%module-prelude?125151%_
                  (lambda (_%e125157%_)
                    (let ((_%$e125159%_
                           (##structure-instance-of?
                            _%e125157%_
                            'gx#module-context::t)))
                      (if _%$e125159%_
                          _%$e125159%_
                          (##structure-instance-of?
                           _%e125157%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx125149%_
           (lambda (_%g125152125154%_)
             (gx#expander-binding?__%
              _%g125152125154%_
              _%module-prelude?125151%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in125079%_ _%ctx125080%_ _%force-weak?125081%_)
        (let* ((_%in125082125091%_ _%in125079%_)
               (_%E125084125095%_
                (lambda ()
                  (error '"No clause matching"
                         _%in125082125091%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K125085125108%_
                (lambda (_%weak?125098%_
                         _%phi125099%_
                         _%key125100%_
                         _%source125101%_)
                  (gx#core-bind!__%
                   _%key125100%_
                   (let ((_%e125103%_
                          (gx#core-resolve-module-export _%source125101%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e125103%_ '1 '#f '#f)
                      _%key125100%_
                      _%phi125099%_
                      _%e125103%_
                      (##unchecked-structure-ref _%source125101%_ '1 '#f '#f)
                      (let ((_%$e125105%_ _%force-weak?125081%_))
                        (if _%$e125105%_ _%$e125105%_ _%weak?125098%_))))
                   gx#core-context-rebind?
                   _%phi125099%_
                   _%ctx125080%_))))
          (if (##structure-direct-instance-of?
               _%in125082125091%_
               'gx#module-import::t)
              (let* ((_%e125086125111%_
                      (##unchecked-structure-ref
                       _%in125082125091%_
                       '1
                       '#f
                       '#f))
                     (_%source125114%_ _%e125086125111%_)
                     (_%e125087125116%_
                      (##unchecked-structure-ref
                       _%in125082125091%_
                       '2
                       '#f
                       '#f))
                     (_%key125119%_ _%e125087125116%_)
                     (_%e125088125121%_
                      (##unchecked-structure-ref
                       _%in125082125091%_
                       '3
                       '#f
                       '#f))
                     (_%phi125124%_ _%e125088125121%_)
                     (_%e125089125126%_
                      (##unchecked-structure-ref
                       _%in125082125091%_
                       '4
                       '#f
                       '#f))
                     (_%weak?125129%_ _%e125089125126%_))
                (_%K125085125108%_
                 _%weak?125129%_
                 _%phi125124%_
                 _%key125119%_
                 _%source125114%_))
              (_%E125084125095%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in125134%_)
        (let* ((_%ctx125136%_ (gx#current-expander-context))
               (_%force-weak?125138%_ '#f))
          (gx#core-bind-import!__%
           _%in125134%_
           _%ctx125136%_
           _%force-weak?125138%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in125140%_ _%ctx125141%_)
        (let ((_%force-weak?125143%_ '#f))
          (gx#core-bind-import!__%
           _%in125140%_
           _%ctx125141%_
           _%force-weak?125143%_))))
    (define gx#core-bind-import!
      (lambda _g127023_
        (let ((_g127022_ (##length _g127023_)))
          (cond ((##fx= _g127022_ 1) (apply gx#core-bind-import!__0 _g127023_))
                ((##fx= _g127022_ 2) (apply gx#core-bind-import!__1 _g127023_))
                ((##fx= _g127022_ 3) (apply gx#core-bind-import!__% _g127023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g127023_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in125065%_ _%ctx125066%_)
        (gx#core-bind-import!__% _%in125065%_ _%ctx125066%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in125071%_)
        (let ((_%ctx125073%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in125071%_ _%ctx125073%_))))
    (define gx#core-bind-weak-import!
      (lambda _g127025_
        (let ((_g127024_ (##length _g127025_)))
          (cond ((##fx= _g127024_ 1)
                 (apply gx#core-bind-weak-import!__0 _g127025_))
                ((##fx= _g127024_ 2)
                 (apply gx#core-bind-weak-import!__% _g127025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g127025_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out124956%_)
        (letrec ((_%subst124958%_
                  (lambda (_%key125004%_)
                    (let* ((_%key125005125013%_ _%key125004%_)
                           (_%else125007125021%_ (lambda () _%key125004%_))
                           (_%K125009125052%_
                            (lambda (_%mark125024%_ _%id125025%_)
                              (let* ((_%mark125026125032%_ _%mark125024%_)
                                     (_%E125028125036%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark125026125032%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K125029125044%_
                                      (lambda (_%subst125039%_)
                                        (let ((_%$e125041%_
                                               (if _%subst125039%_
                                                   (hash-get
                                                    _%subst125039%_
                                                    _%id125025%_)
                                                   '#f)))
                                          (if _%$e125041%_
                                              _%$e125041%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key125004%_))))))
                                (if (##structure-instance-of?
                                     _%mark125026125032%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e125030125047%_
                                            (##unchecked-structure-ref
                                             _%mark125026125032%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst125050%_ _%e125030125047%_))
                                      (_%K125029125044%_ _%subst125050%_))
                                    (_%E125028125036%_))))))
                      (if (##pair? _%key125005125013%_)
                          (let ((_%hd125010125055%_
                                 (##car _%key125005125013%_))
                                (_%tl125011125057%_
                                 (##cdr _%key125005125013%_)))
                            (let* ((_%id125060%_ _%hd125010125055%_)
                                   (_%mark125062%_ _%tl125011125057%_))
                              (_%K125009125052%_ _%mark125062%_ _%id125060%_)))
                          (_%else125007125021%_))))))
          (let* ((_%out124959124969%_ _%out124956%_)
                 (_%E124961124973%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out124959124969%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K124962124980%_
                  (lambda (_%phi124976%_ _%key124977%_ _%ctx124978%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx124978%_ _%phi124976%_)
                     (_%subst124958%_ _%key124977%_)))))
            (if (##structure-direct-instance-of?
                 _%out124959124969%_
                 'gx#module-export::t)
                (let* ((_%e124963124983%_
                        (##unchecked-structure-ref
                         _%out124959124969%_
                         '1
                         '#f
                         '#f))
                       (_%ctx124986%_ _%e124963124983%_)
                       (_%e124964124988%_
                        (##unchecked-structure-ref
                         _%out124959124969%_
                         '2
                         '#f
                         '#f))
                       (_%key124991%_ _%e124964124988%_)
                       (_%e124965124993%_
                        (##unchecked-structure-ref
                         _%out124959124969%_
                         '3
                         '#f
                         '#f))
                       (_%phi124996%_ _%e124965124993%_)
                       (_%e124966124998%_
                        (##unchecked-structure-ref
                         _%out124959124969%_
                         '4
                         '#f
                         '#f))
                       (_%e124967125001%_
                        (##unchecked-structure-ref
                         _%out124959124969%_
                         '5
                         '#f
                         '#f)))
                  (_%K124962124980%_
                   _%phi124996%_
                   _%key124991%_
                   _%ctx124986%_))
                (_%E124961124973%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out124881%_ _%rename124882%_ _%dphi124883%_)
        (let* ((_%out124884124894%_ _%out124881%_)
               (_%E124886124898%_
                (lambda ()
                  (error '"No clause matching"
                         _%out124884124894%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K124887124910%_
                (lambda (_%weak?124901%_
                         _%name124902%_
                         _%phi124903%_
                         _%key124904%_
                         _%ctx124905%_)
                  (##structure
                   gx#module-import::t
                   _%out124881%_
                   (let ((_%$e124907%_ _%rename124882%_))
                     (if _%$e124907%_ _%$e124907%_ _%name124902%_))
                   (fx+ _%phi124903%_ _%dphi124883%_)
                   _%weak?124901%_))))
          (if (##structure-direct-instance-of?
               _%out124884124894%_
               'gx#module-export::t)
              (let* ((_%e124888124913%_
                      (##unchecked-structure-ref
                       _%out124884124894%_
                       '1
                       '#f
                       '#f))
                     (_%ctx124916%_ _%e124888124913%_)
                     (_%e124889124918%_
                      (##unchecked-structure-ref
                       _%out124884124894%_
                       '2
                       '#f
                       '#f))
                     (_%key124921%_ _%e124889124918%_)
                     (_%e124890124923%_
                      (##unchecked-structure-ref
                       _%out124884124894%_
                       '3
                       '#f
                       '#f))
                     (_%phi124926%_ _%e124890124923%_)
                     (_%e124891124928%_
                      (##unchecked-structure-ref
                       _%out124884124894%_
                       '4
                       '#f
                       '#f))
                     (_%name124931%_ _%e124891124928%_)
                     (_%e124892124933%_
                      (##unchecked-structure-ref
                       _%out124884124894%_
                       '5
                       '#f
                       '#f))
                     (_%weak?124936%_ _%e124892124933%_))
                (_%K124887124910%_
                 _%weak?124936%_
                 _%name124931%_
                 _%phi124926%_
                 _%key124921%_
                 _%ctx124916%_))
              (_%E124886124898%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out124941%_)
        (let* ((_%rename124943%_ '#f) (_%dphi124945%_ '0))
          (gx#core-module-export->import__%
           _%out124941%_
           _%rename124943%_
           _%dphi124945%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out124947%_ _%rename124948%_)
        (let ((_%dphi124950%_ '0))
          (gx#core-module-export->import__%
           _%out124947%_
           _%rename124948%_
           _%dphi124950%_))))
    (define gx#core-module-export->import
      (lambda _g127027_
        (let ((_g127026_ (##length _g127027_)))
          (cond ((##fx= _g127026_ 1)
                 (apply gx#core-module-export->import__0 _g127027_))
                ((##fx= _g127026_ 2)
                 (apply gx#core-module-export->import__1 _g127027_))
                ((##fx= _g127026_ 3)
                 (apply gx#core-module-export->import__% _g127027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g127027_))))))
    (define gx#core-expand-module%
      (lambda (_%stx124780%_)
        (letrec ((_%make-context124782%_
                  (lambda (_%id124859%_)
                    (let* ((_%super124861%_ (gx#current-expander-context))
                           (_%bind-id124863%_ (gx#stx-e _%id124859%_))
                           (_%mod-id124865%_
                            (if (##structure-instance-of?
                                 _%super124861%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super124861%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id124863%_)
                                _%bind-id124863%_))
                           (_%ns124867%_ (symbol->string _%mod-id124865%_))
                           (_%path124877%_
                            (if (##structure-instance-of?
                                 _%super124861%_
                                 'gx#module-context::t)
                                (let ((_%path124869%_
                                       (##unchecked-structure-ref
                                        _%super124861%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path124869%_)
                                          (null? _%path124869%_))
                                      (cons _%bind-id124863%_ _%path124869%_)
                                      (if (not _%path124869%_)
                                          _%bind-id124863%_
                                          (cons _%bind-id124863%_
                                                (cons _%path124869%_ '())))))
                                _%bind-id124863%_))
                           (__obj127003
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
                       __obj127003
                       _%mod-id124865%_
                       _%super124861%_
                       _%ns124867%_
                       _%path124877%_)
                      __obj127003)))
                 (_%valid-module-id?124783%_
                  (lambda (_%id124834%_)
                    (let* ((_%str124836%_ (symbol->string _%id124834%_))
                           (_%len124838%_ (##string-length _%str124836%_)))
                      (if (##fx>= _%len124838%_ '1)
                          (let _%loop124841%_ ((_%index124843%_
                                                (##fx- (##string-length
                                                        _%str124836%_)
                                                       '1)))
                            (if (##fx>= _%index124843%_ '0)
                                (let ((_%c124845%_
                                       (string-ref
                                        _%str124836%_
                                        _%index124843%_)))
                                  (if (or (and (##char>=? _%c124845%_ '#\a)
                                               (##char<=? _%c124845%_ '#\z))
                                          (and (##char>=? _%c124845%_ '#\A)
                                               (##char<=? _%c124845%_ '#\Z))
                                          (and (##char>=? _%c124845%_ '#\0)
                                               (##char<=? _%c124845%_ '#\9))
                                          (##char=? _%c124845%_ '#\_)
                                          (##char=? _%c124845%_ '#\-))
                                      (_%loop124841%_
                                       (##fx- _%index124843%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e124784124794%_ _%stx124780%_)
                 (_%E124786124798%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124784124794%_)))
                 (_%E124785124830%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124784124794%_)
                        (let ((_%e124787124802%_
                               (gx#syntax-e _%e124784124794%_)))
                          (let ((_%hd124788124805%_ (##car _%e124787124802%_))
                                (_%tl124789124807%_ (##cdr _%e124787124802%_)))
                            (if (gx#stx-pair? _%tl124789124807%_)
                                (let ((_%e124790124810%_
                                       (gx#syntax-e _%tl124789124807%_)))
                                  (let ((_%hd124791124813%_
                                         (##car _%e124790124810%_))
                                        (_%tl124792124815%_
                                         (##cdr _%e124790124810%_)))
                                    (let* ((_%id124818%_ _%hd124791124813%_)
                                           (_%body124820%_ _%tl124792124815%_))
                                      (if (and (gx#identifier? _%id124818%_)
                                               (gx#stx-list? _%body124820%_))
                                          (if (_%valid-module-id?124783%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx124822%_
                                                      (_%make-context124782%_
                                                       _%id124818%_))
                                                     (_%body124824%_
                                                      (gx#core-expand-module-begin
                                                       _%body124820%_
                                                       _%ctx124822%_))
                                                     (_%body124826%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body124824%_)
                                                       (gx#stx-source
                                                        _%stx124780%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx124822%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body124826%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx124822%_
                                                 _%body124826%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id124818%_
                                                 _%ctx124822%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id124818%_)
                                                  _%body124826%_)
                                                 (gx#stx-source
                                                  _%stx124780%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx124780%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E124786124798%_)))))
                                (_%E124786124798%_))))
                        (_%E124786124798%_)))))
            (_%E124785124830%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body124746%_ _%ctx124747%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx124750%_
                   (gx#core-expand-head (cons '%%begin-module _%body124746%_)))
                  (_%e124751124758%_ _%stx124750%_)
                  (_%E124753124762%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx124750%_)))
                  (_%E124752124776%_
                   (lambda ()
                     (if (gx#stx-pair? _%e124751124758%_)
                         (let ((_%e124754124766%_
                                (gx#syntax-e _%e124751124758%_)))
                           (let ((_%hd124755124769%_ (##car _%e124754124766%_))
                                 (_%tl124756124771%_
                                  (##cdr _%e124754124766%_)))
                             (if (and (gx#identifier? _%hd124755124769%_)
                                      (gx#core-identifier=?
                                       _%hd124755124769%_
                                       '%#begin-module))
                                 (let ((_%body124774%_ _%tl124756124771%_))
                                   (if (gx#sealed-syntax? _%stx124750%_)
                                       _%body124774%_
                                       (gx#core-expand-module-body
                                        _%body124774%_)))
                                 (_%E124753124762%_))))
                         (_%E124753124762%_)))))
             (_%E124752124776%_)))
         gx#current-expander-context
         _%ctx124747%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body124542%_)
        (letrec ((_%expand-special124544%_
                  (lambda (_%hd124673%_ _%K124674%_ _%rest124675%_ _%r124676%_)
                    (let* ((_%e124677124694%_ _%hd124673%_)
                           (_%E124689124698%_
                            (lambda ()
                              (_%K124674%_
                               _%rest124675%_
                               (cons (gx#core-expand-top _%hd124673%_)
                                     _%r124676%_))))
                           (_%E124679124710%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124677124694%_)
                                  (let ((_%e124690124702%_
                                         (gx#syntax-e _%e124677124694%_)))
                                    (let ((_%hd124691124705%_
                                           (##car _%e124690124702%_))
                                          (_%tl124692124707%_
                                           (##cdr _%e124690124702%_)))
                                      (if (and (gx#identifier?
                                                _%hd124691124705%_)
                                               (gx#core-identifier=?
                                                _%hd124691124705%_
                                                '%#export))
                                          (_%K124674%_
                                           _%rest124675%_
                                           (cons _%hd124673%_ _%r124676%_))
                                          (_%E124689124698%_))))
                                  (_%E124689124698%_))))
                           (_%E124678124742%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124677124694%_)
                                  (let ((_%e124680124714%_
                                         (gx#syntax-e _%e124677124694%_)))
                                    (let ((_%hd124681124717%_
                                           (##car _%e124680124714%_))
                                          (_%tl124682124719%_
                                           (##cdr _%e124680124714%_)))
                                      (if (and (gx#identifier?
                                                _%hd124681124717%_)
                                               (gx#core-identifier=?
                                                _%hd124681124717%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl124682124719%_)
                                              (let ((_%e124683124722%_
                                                     (gx#syntax-e
                                                      _%tl124682124719%_)))
                                                (let ((_%hd124684124725%_
                                                       (##car _%e124683124722%_))
                                                      (_%tl124685124727%_
                                                       (##cdr _%e124683124722%_)))
                                                  (let ((_%hd-bind124730%_
                                                         _%hd124684124725%_))
                                                    (if (gx#stx-pair?
                                                         _%tl124685124727%_)
                                                        (let ((_%e124686124732%_
                                                               (gx#syntax-e
                                                                _%tl124685124727%_)))
                                                          (let ((_%hd124687124735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e124686124732%_))
                        (_%tl124688124737%_ (##cdr _%e124686124732%_)))
                    (let ((_%expr124740%_ _%hd124687124735%_))
                      (if (gx#stx-null? _%tl124688124737%_)
                          (if (gx#core-bind-values? _%hd-bind124730%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind124730%_)
                                (_%K124674%_
                                 _%rest124675%_
                                 (cons _%hd124673%_ _%r124676%_)))
                              (_%E124679124710%_))
                          (_%E124679124710%_)))))
                (_%E124679124710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124679124710%_))
                                          (_%E124679124710%_))))
                                  (_%E124679124710%_)))))
                      (_%E124678124742%_))))
                 (_%expand-body124545%_
                  (lambda (_%rbody124547%_)
                    (let _%lp124549%_ ((_%rest124551%_ _%rbody124547%_)
                                       (_%body124552%_ '()))
                      (let* ((_%rest124553124561%_ _%rest124551%_)
                             (_%else124555124569%_ (lambda () _%body124552%_))
                             (_%K124557124661%_
                              (lambda (_%rest124572%_ _%hd124573%_)
                                (let* ((_%e124574124595%_ _%hd124573%_)
                                       (_%E124590124599%_
                                        (lambda ()
                                          (_%lp124549%_
                                           _%rest124572%_
                                           (cons (gx#core-expand-expression
                                                  _%hd124573%_)
                                                 _%body124552%_))))
                                       (_%E124586124613%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124574124595%_)
                                              (let ((_%e124591124603%_
                                                     (gx#syntax-e
                                                      _%e124574124595%_)))
                                                (let ((_%hd124592124606%_
                                                       (##car _%e124591124603%_))
                                                      (_%tl124593124608%_
                                                       (##cdr _%e124591124603%_)))
                                                  (let ((_%form124611%_
                                                         _%hd124592124606%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form124611%_
                                                         gx#special-form-binding?)
                                                        (_%lp124549%_
                                                         _%rest124572%_
                                                         (cons _%hd124573%_
                                                               _%body124552%_))
                                                        (_%E124590124599%_)))))
                                              (_%E124590124599%_))))
                                       (_%E124576124625%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124574124595%_)
                                              (let ((_%e124587124617%_
                                                     (gx#syntax-e
                                                      _%e124574124595%_)))
                                                (let ((_%hd124588124620%_
                                                       (##car _%e124587124617%_))
                                                      (_%tl124589124622%_
                                                       (##cdr _%e124587124617%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124588124620%_)
                                                           (gx#core-identifier=?
                                                            _%hd124588124620%_
                                                            '%#export))
                                                      (_%lp124549%_
                                                       _%rest124572%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd124573%_)
                                                             _%body124552%_))
                                                      (_%E124586124613%_))))
                                              (_%E124586124613%_))))
                                       (_%E124575124657%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124574124595%_)
                                              (let ((_%e124577124629%_
                                                     (gx#syntax-e
                                                      _%e124574124595%_)))
                                                (let ((_%hd124578124632%_
                                                       (##car _%e124577124629%_))
                                                      (_%tl124579124634%_
                                                       (##cdr _%e124577124629%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124578124632%_)
                                                           (gx#core-identifier=?
                                                            _%hd124578124632%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl124579124634%_)
                                                          (let ((_%e124580124637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl124579124634%_)))
                    (let ((_%hd124581124640%_ (##car _%e124580124637%_))
                          (_%tl124582124642%_ (##cdr _%e124580124637%_)))
                      (let ((_%hd-bind124645%_ _%hd124581124640%_))
                        (if (gx#stx-pair? _%tl124582124642%_)
                            (let ((_%e124583124647%_
                                   (gx#syntax-e _%tl124582124642%_)))
                              (let ((_%hd124584124650%_
                                     (##car _%e124583124647%_))
                                    (_%tl124585124652%_
                                     (##cdr _%e124583124647%_)))
                                (let ((_%expr124655%_ _%hd124584124650%_))
                                  (if (gx#stx-null? _%tl124585124652%_)
                                      (_%lp124549%_
                                       _%rest124572%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind124645%_)
                                               (gx#core-expand-expression
                                                _%expr124655%_))
                                              (gx#stx-source _%hd124573%_))
                                             _%body124552%_))
                                      (_%E124576124625%_)))))
                            (_%E124576124625%_)))))
                  (_%E124576124625%_))
              (_%E124576124625%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124576124625%_)))))
                                  (_%E124575124657%_)))))
                        (if (##pair? _%rest124553124561%_)
                            (let ((_%hd124558124664%_
                                   (##car _%rest124553124561%_))
                                  (_%tl124559124666%_
                                   (##cdr _%rest124553124561%_)))
                              (let* ((_%hd124669%_ _%hd124558124664%_)
                                     (_%rest124671%_ _%tl124559124666%_))
                                (_%K124557124661%_
                                 _%rest124671%_
                                 _%hd124669%_)))
                            (_%else124555124569%_)))))))
          (_%expand-body124545%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body124542%_)
            _%expand-special124544%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx124383%_
               _%expanded?124384%_
               _%method124385%_
               _%current-phi124386%_
               _%expand1124387%_)
        (letrec ((_%K124389%_
                  (lambda (_%rest124509%_ _%r124510%_)
                    (let* ((_%e124511124518%_ _%rest124509%_)
                           (_%E124513124522%_ (lambda () _%r124510%_))
                           (_%E124512124538%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124511124518%_)
                                  (let ((_%e124514124526%_
                                         (gx#syntax-e _%e124511124518%_)))
                                    (let ((_%hd124515124529%_
                                           (##car _%e124514124526%_))
                                          (_%tl124516124531%_
                                           (##cdr _%e124514124526%_)))
                                      (let* ((_%hd124534%_ _%hd124515124529%_)
                                             (_%rest124536%_
                                              _%tl124516124531%_))
                                        (_%step124390%_
                                         _%hd124534%_
                                         _%rest124536%_
                                         _%r124510%_))))
                                  (_%E124513124522%_)))))
                      (_%E124512124538%_))))
                 (_%step124390%_
                  (lambda (_%hd124423%_ _%rest124424%_ _%r124425%_)
                    (let* ((_%e124426124444%_ _%hd124423%_)
                           (_%E124439124448%_
                            (lambda ()
                              (if (_%expanded?124384%_ (gx#stx-e _%hd124423%_))
                                  (_%K124389%_
                                   _%rest124424%_
                                   (cons (gx#stx-e _%hd124423%_) _%r124425%_))
                                  (_%expand1124387%_
                                   _%hd124423%_
                                   _%K124389%_
                                   _%rest124424%_
                                   _%r124425%_))))
                           (_%E124435124464%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124426124444%_)
                                  (let ((_%e124440124452%_
                                         (gx#syntax-e _%e124426124444%_)))
                                    (let ((_%hd124441124455%_
                                           (##car _%e124440124452%_))
                                          (_%tl124442124457%_
                                           (##cdr _%e124440124452%_)))
                                      (let* ((_%macro124460%_
                                              _%hd124441124455%_)
                                             (_%body124462%_
                                              _%tl124442124457%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro124460%_
                                             gx#syntax-binding?)
                                            (_%K124389%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro124460%_)
                                                    _%hd124423%_
                                                    _%method124385%_)
                                                   _%rest124424%_)
                                             _%r124425%_)
                                            (_%E124439124448%_)))))
                                  (_%E124439124448%_))))
                           (_%E124428124478%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124426124444%_)
                                  (let ((_%e124436124468%_
                                         (gx#syntax-e _%e124426124444%_)))
                                    (let ((_%hd124437124471%_
                                           (##car _%e124436124468%_))
                                          (_%tl124438124473%_
                                           (##cdr _%e124436124468%_)))
                                      (if (eq? (gx#stx-e _%hd124437124471%_)
                                               'begin:)
                                          (let ((_%body124476%_
                                                 _%tl124438124473%_))
                                            (_%K124389%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest124424%_
                                              _%body124476%_)
                                             _%r124425%_))
                                          (_%E124435124464%_))))
                                  (_%E124435124464%_))))
                           (_%E124427124505%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124426124444%_)
                                  (let ((_%e124429124482%_
                                         (gx#syntax-e _%e124426124444%_)))
                                    (let ((_%hd124430124485%_
                                           (##car _%e124429124482%_))
                                          (_%tl124431124487%_
                                           (##cdr _%e124429124482%_)))
                                      (if (eq? (gx#stx-e _%hd124430124485%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl124431124487%_)
                                              (let ((_%e124432124490%_
                                                     (gx#syntax-e
                                                      _%tl124431124487%_)))
                                                (let ((_%hd124433124493%_
                                                       (##car _%e124432124490%_))
                                                      (_%tl124434124495%_
                                                       (##cdr _%e124432124490%_)))
                                                  (let* ((_%dphi124498%_
                                                          _%hd124433124493%_)
                                                         (_%body124500%_
                                                          _%tl124434124495%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi124498%_)
                                                        (let ((_%rbody124503%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K124389%_ _%body124500%_ '()))
                        _%current-phi124386%_
                        (fx+ (gx#stx-e _%dphi124498%_)
                             (_%current-phi124386%_)))))
                  (_%K124389%_
                   _%rest124424%_
                   (__foldr1 cons _%r124425%_ _%rbody124503%_)))
                (_%E124428124478%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124428124478%_))
                                          (_%E124428124478%_))))
                                  (_%E124428124478%_)))))
                      (_%E124427124505%_)))))
          (let* ((_%e124391124398%_ _%stx124383%_)
                 (_%E124393124402%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124391124398%_)))
                 (_%E124392124419%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124391124398%_)
                        (let ((_%e124394124406%_
                               (gx#syntax-e _%e124391124398%_)))
                          (let ((_%hd124395124409%_ (##car _%e124394124406%_))
                                (_%tl124396124411%_ (##cdr _%e124394124406%_)))
                            (let ((_%body124414%_ _%tl124396124411%_))
                              (if (_%current-phi124386%_)
                                  (_%K124389%_ _%body124414%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K124389%_ _%body124414%_ '()))
                                   _%current-phi124386%_
                                   (gx#current-expander-phi))))))
                        (_%E124393124402%_)))))
            (_%E124392124419%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx124037%_ _%internal-expand?124038%_)
        (letrec ((_%expand1124040%_
                  (lambda (_%hd124355%_ _%K124356%_ _%rest124357%_ _%r124358%_)
                    (if (gx#core-bound-module? _%hd124355%_)
                        (_%import1124041%_
                         (gx#syntax-local-e__0 _%hd124355%_)
                         _%K124356%_
                         _%rest124357%_
                         _%r124358%_)
                        (if (gx#core-library-module-path? _%hd124355%_)
                            (_%import1124041%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd124355%_))
                             _%K124356%_
                             _%rest124357%_
                             _%r124358%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd124355%_)
                                (_%import1124041%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd124355%_))
                                 _%K124356%_
                                 _%rest124357%_
                                 _%r124358%_)
                                (let ((_%e124364%_ (gx#stx-e _%hd124355%_)))
                                  (if (pair? _%e124364%_)
                                      (let ((_%$e124367%_
                                             (gx#stx-e (##car _%e124364%_))))
                                        (if (eq? 'spec: _%$e124367%_)
                                            (_%import-spec124044%_
                                             _%hd124355%_
                                             _%K124356%_
                                             _%rest124357%_
                                             _%r124358%_)
                                            (if (eq? 'in: _%$e124367%_)
                                                (_%import-submodule124042%_
                                                 _%hd124355%_
                                                 _%K124356%_
                                                 _%rest124357%_
                                                 _%r124358%_)
                                                (if (eq? 'runtime:
                                                         _%$e124367%_)
                                                    (_%import-runtime124043%_
                                                     _%hd124355%_
                                                     _%K124356%_
                                                     _%rest124357%_
                                                     _%r124358%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx124037%_
                                                     _%hd124355%_)))))
                                      (if (string? _%e124364%_)
                                          (_%import1124041%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd124355%_
                                             (gx#stx-source _%stx124037%_)))
                                           _%K124356%_
                                           _%rest124357%_
                                           _%r124358%_)
                                          (if (##structure-instance-of?
                                               _%e124364%_
                                               'gx#module-context::t)
                                              (_%K124356%_
                                               _%rest124357%_
                                               (cons _%e124364%_ _%r124358%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx124037%_
                                               _%hd124355%_))))))))))
                 (_%import1124041%_
                  (lambda (_%ctx124344%_
                           _%K124345%_
                           _%rest124346%_
                           _%r124347%_)
                    (let ((_%dphi124349%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K124345%_
                       _%rest124346%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx124344%_
                              _%dphi124349%_
                              (map (lambda (_%g124350124352%_)
                                     (gx#core-module-export->import__%
                                      _%g124350124352%_
                                      '#f
                                      _%dphi124349%_))
                                   (##unchecked-structure-ref
                                    _%ctx124344%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r124347%_)))))
                 (_%import-submodule124042%_
                  (lambda (_%hd124311%_ _%K124312%_ _%rest124313%_ _%r124314%_)
                    (let* ((_%e124315124322%_ _%hd124311%_)
                           (_%E124317124326%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124315124322%_)))
                           (_%E124316124340%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124315124322%_)
                                  (let ((_%e124318124330%_
                                         (gx#syntax-e _%e124315124322%_)))
                                    (let ((_%hd124319124333%_
                                           (##car _%e124318124330%_))
                                          (_%tl124320124335%_
                                           (##cdr _%e124318124330%_)))
                                      (let ((_%spath124338%_
                                             _%tl124320124335%_))
                                        (_%import1124041%_
                                         (_%import-spec-source124045%_
                                          _%spath124338%_)
                                         _%K124312%_
                                         _%rest124313%_
                                         _%r124314%_))))
                                  (_%E124317124326%_)))))
                      (_%E124316124340%_))))
                 (_%import-runtime124043%_
                  (lambda (_%hd124278%_ _%K124279%_ _%rest124280%_ _%r124281%_)
                    (let* ((_%e124282124289%_ _%hd124278%_)
                           (_%E124284124293%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124282124289%_)))
                           (_%E124283124307%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124282124289%_)
                                  (let ((_%e124285124297%_
                                         (gx#syntax-e _%e124282124289%_)))
                                    (let ((_%hd124286124300%_
                                           (##car _%e124285124297%_))
                                          (_%tl124287124302%_
                                           (##cdr _%e124285124297%_)))
                                      (let ((_%spath124305%_
                                             _%tl124287124302%_))
                                        (_%K124279%_
                                         _%rest124280%_
                                         (cons (_%import-spec-source124045%_
                                                _%spath124305%_)
                                               _%r124281%_)))))
                                  (_%E124284124293%_)))))
                      (_%E124283124307%_))))
                 (_%import-spec124044%_
                  (lambda (_%hd124116%_ _%K124117%_ _%rest124118%_ _%r124119%_)
                    (let* ((_%e124120124137%_ _%hd124116%_)
                           (_%E124129124141%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124120124137%_)))
                           (_%E124122124252%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124120124137%_)
                                  (let ((_%e124130124145%_
                                         (gx#syntax-e _%e124120124137%_)))
                                    (let ((_%hd124131124148%_
                                           (##car _%e124130124145%_))
                                          (_%tl124132124150%_
                                           (##cdr _%e124130124145%_)))
                                      (if (gx#stx-pair? _%tl124132124150%_)
                                          (let ((_%e124133124153%_
                                                 (gx#syntax-e
                                                  _%tl124132124150%_)))
                                            (let ((_%hd124134124156%_
                                                   (##car _%e124133124153%_))
                                                  (_%tl124135124158%_
                                                   (##cdr _%e124133124153%_)))
                                              (let* ((_%path124161%_
                                                      _%hd124134124156%_)
                                                     (_%specs124163%_
                                                      _%tl124135124158%_))
                                                (let ((_%src-ctx124165%_
                                                       (_%import-spec-source124045%_
                                                        _%path124161%_))
                                                      (_%exports124166%_
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
                                                      (_%specs124167%_
                                                       (gx#syntax->list
                                                        _%specs124163%_)))
                                                  (for-each
                                                   (lambda (_%out124169%_)
                                                     (hash-put!
                                                      _%exports124166%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out124169%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out124169%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out124169%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx124165%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K124117%_
                                                   _%rest124118%_
                                                   (__foldl1
                                                    (lambda (_%spec124171%_
                                                             _%r124172%_)
                                                      (let* ((_%e124173124189%_
                                                              _%spec124171%_)
                                                             (_%E124175124193%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e124173124189%_)))
                     (_%E124174124248%_
                      (lambda ()
                        (if (gx#stx-pair? _%e124173124189%_)
                            (let ((_%e124176124197%_
                                   (gx#syntax-e _%e124173124189%_)))
                              (let ((_%hd124177124200%_
                                     (##car _%e124176124197%_))
                                    (_%tl124178124202%_
                                     (##cdr _%e124176124197%_)))
                                (let ((_%phi124205%_ _%hd124177124200%_))
                                  (if (gx#stx-pair? _%tl124178124202%_)
                                      (let ((_%e124179124207%_
                                             (gx#syntax-e _%tl124178124202%_)))
                                        (let ((_%hd124180124210%_
                                               (##car _%e124179124207%_))
                                              (_%tl124181124212%_
                                               (##cdr _%e124179124207%_)))
                                          (let ((_%name124215%_
                                                 _%hd124180124210%_))
                                            (if (gx#stx-pair?
                                                 _%tl124181124212%_)
                                                (let ((_%e124182124217%_
                                                       (gx#syntax-e
                                                        _%tl124181124212%_)))
                                                  (let ((_%hd124183124220%_
                                                         (##car _%e124182124217%_))
                                                        (_%tl124184124222%_
                                                         (##cdr _%e124182124217%_)))
                                                    (let ((_%src-phi124225%_
                                                           _%hd124183124220%_))
                                                      (if (gx#stx-pair?
                                                           _%tl124184124222%_)
                                                          (let ((_%e124185124227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl124184124222%_)))
                    (let ((_%hd124186124230%_ (##car _%e124185124227%_))
                          (_%tl124187124232%_ (##cdr _%e124185124227%_)))
                      (let ((_%src-name124235%_ _%hd124186124230%_))
                        (if (gx#stx-null? _%tl124187124232%_)
                            (if (and (gx#stx-fixnum? _%src-phi124225%_)
                                     (gx#identifier? _%src-name124235%_)
                                     (gx#stx-fixnum? _%phi124205%_)
                                     (gx#identifier? _%name124215%_))
                                (let ((_%src-phi124237%_
                                       (gx#stx-e _%src-phi124225%_))
                                      (_%src-name124238%_
                                       (gx#core-identifier-key
                                        _%src-name124235%_))
                                      (_%phi124239%_ (gx#stx-e _%phi124205%_))
                                      (_%name124240%_
                                       (gx#core-identifier-key
                                        _%name124215%_)))
                                  (let ((_%$e124242%_
                                         (hash-get
                                          _%exports124166%_
                                          (cons _%src-phi124237%_
                                                _%src-name124238%_))))
                                    (if _%$e124242%_
                                        ((lambda (_%out124245%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out124245%_
                                                  _%name124240%_
                                                  (fx- _%phi124239%_
                                                       _%src-phi124237%_))
                                                 _%r124172%_))
                                         _%$e124242%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx124037%_
                                         _%hd124116%_))))
                                (_%E124175124193%_))
                            (_%E124175124193%_)))))
                  (_%E124175124193%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124175124193%_)))))
                                      (_%E124175124193%_)))))
                            (_%E124175124193%_)))))
                (_%E124174124248%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r124119%_
                                                    _%specs124167%_))))))
                                          (_%E124129124141%_))))
                                  (_%E124129124141%_))))
                           (_%E124121124274%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124120124137%_)
                                  (let ((_%e124123124256%_
                                         (gx#syntax-e _%e124120124137%_)))
                                    (let ((_%hd124124124259%_
                                           (##car _%e124123124256%_))
                                          (_%tl124125124261%_
                                           (##cdr _%e124123124256%_)))
                                      (if (gx#stx-pair? _%tl124125124261%_)
                                          (let ((_%e124126124264%_
                                                 (gx#syntax-e
                                                  _%tl124125124261%_)))
                                            (let ((_%hd124127124267%_
                                                   (##car _%e124126124264%_))
                                                  (_%tl124128124269%_
                                                   (##cdr _%e124126124264%_)))
                                              (let ((_%path124272%_
                                                     _%hd124127124267%_))
                                                (if (gx#stx-null?
                                                     _%tl124128124269%_)
                                                    (_%K124117%_
                                                     _%rest124118%_
                                                     (cons (_%import-spec-source124045%_
                                                            _%path124272%_)
                                                           _%r124119%_))
                                                    (_%E124122124252%_)))))
                                          (_%E124122124252%_))))
                                  (_%E124122124252%_)))))
                      (_%E124121124274%_))))
                 (_%import-spec-source124045%_
                  (lambda (_%spath124114%_)
                    (gx#core-import-nested-module
                     _%spath124114%_
                     _%stx124037%_)))
                 (_%import!124046%_
                  (lambda (_%rbody124059%_)
                    (letrec* ((_%current-ctx124061%_
                               (gx#current-expander-context))
                              (_%deps124062%_ (make-hash-table-eq))
                              (_%bind!124063%_
                               (lambda (_%hd124112%_)
                                 (gx#core-bind-import!__1
                                  _%hd124112%_
                                  _%current-ctx124061%_))))
                      (let _%lp124065%_ ((_%rest124067%_ _%rbody124059%_)
                                         (_%body124068%_ '()))
                        (let* ((_%rest124069124077%_ _%rest124067%_)
                               (_%else124071124088%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx124061%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx124061%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx124061%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body124068%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx124085%_ _%_124086%_)
                                     (gx#eval-module _%ctx124085%_))
                                   _%deps124062%_)
                                  _%body124068%_))
                               (_%K124073124100%_
                                (lambda (_%rest124091%_ _%hd124092%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd124092%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!124063%_ _%hd124092%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd124092%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd124092%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps124062%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd124092%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd124092%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!124063%_
                                             (##unchecked-structure-ref
                                              _%hd124092%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd124092%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps124062%_
                                                 (##unchecked-structure-ref
                                                  _%hd124092%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e124096%_
                                                 (##structure-instance-of?
                                                  _%hd124092%_
                                                  'gx#module-context::t)))
                                            (if _%$e124096%_
                                                _%$e124096%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx124037%_
                                                 _%hd124092%_)))))
                                  (_%lp124065%_
                                   _%rest124091%_
                                   (cons _%hd124092%_ _%body124068%_)))))
                          (if (##pair? _%rest124069124077%_)
                              (let ((_%hd124074124103%_
                                     (##car _%rest124069124077%_))
                                    (_%tl124075124105%_
                                     (##cdr _%rest124069124077%_)))
                                (let* ((_%hd124108%_ _%hd124074124103%_)
                                       (_%rest124110%_ _%tl124075124105%_))
                                  (_%K124073124100%_
                                   _%rest124110%_
                                   _%hd124108%_)))
                              (_%else124071124088%_)))))))
                 (_%expanded-import?124047%_
                  (lambda (_%e124051%_)
                    (let ((_%$e124053%_
                           (##structure-direct-instance-of?
                            _%e124051%_
                            'gx#import-set::t)))
                      (if _%$e124053%_
                          _%$e124053%_
                          (let ((_%$e124056%_
                                 (##structure-direct-instance-of?
                                  _%e124051%_
                                  'gx#module-import::t)))
                            (if _%$e124056%_
                                _%$e124056%_
                                (##structure-instance-of?
                                 _%e124051%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody124049%_
                 (gx#core-expand-import/export
                  _%stx124037%_
                  _%expanded-import?124047%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1124040%_)))
            (if _%internal-expand?124038%_
                (reverse _%rbody124049%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!124046%_ _%rbody124049%_))
                 (gx#stx-source _%stx124037%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx124376%_)
        (let ((_%internal-expand?124378%_ '#f))
          (gx#core-expand-import%__%
           _%stx124376%_
           _%internal-expand?124378%_))))
    (define gx#core-expand-import%
      (lambda _g127029_
        (let ((_g127028_ (##length _g127029_)))
          (cond ((##fx= _g127028_ 1)
                 (apply gx#core-expand-import%__0 _g127029_))
                ((##fx= _g127028_ 2)
                 (apply gx#core-expand-import%__% _g127029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g127029_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath123964%_ _%where123965%_)
        (let* ((_%e123966123973%_ _%spath123964%_)
               (_%E123968123977%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123966123973%_)))
               (_%E123967124032%_
                (lambda ()
                  (if (gx#stx-pair? _%e123966123973%_)
                      (let ((_%e123969123981%_
                             (gx#syntax-e _%e123966123973%_)))
                        (let ((_%hd123970123984%_ (##car _%e123969123981%_))
                              (_%tl123971123986%_ (##cdr _%e123969123981%_)))
                          (let* ((_%origin123989%_ _%hd123970123984%_)
                                 (_%sub123991%_ _%tl123971123986%_)
                                 (_%origin-ctx123993%_
                                  (if (gx#stx-false? _%origin123989%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin123989%_))))
                            (let _%lp123995%_ ((_%rest123997%_ _%sub123991%_)
                                               (_%ctx123998%_
                                                _%origin-ctx123993%_))
                              (let* ((_%e123999124006%_ _%rest123997%_)
                                     (_%E124001124010%_
                                      (lambda () _%ctx123998%_))
                                     (_%E124000124028%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e123999124006%_)
                                            (let ((_%e124002124014%_
                                                   (gx#syntax-e
                                                    _%e123999124006%_)))
                                              (let ((_%hd124003124017%_
                                                     (##car _%e124002124014%_))
                                                    (_%tl124004124019%_
                                                     (##cdr _%e124002124014%_)))
                                                (let* ((_%id124022%_
                                                        _%hd124003124017%_)
                                                       (_%rest124024%_
                                                        _%tl124004124019%_)
                                                       (_%bind124026%_
                                                        (gx#resolve-identifier__%
                                                         _%id124022%_
                                                         '0
                                                         _%ctx123998%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind124026%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind124026%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where123965%_
                                                       _%spath123964%_
                                                       _%id124022%_))
                                                  (_%lp123995%_
                                                   _%rest124024%_
                                                   (##unchecked-structure-ref
                                                    _%bind124026%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E124001124010%_)))))
                                (_%E124000124028%_))))))
                      (_%E123968123977%_)))))
          (_%E123967124032%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd123962%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd123962%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx123456%_ _%internal-expand?123457%_)
        (letrec* ((_%make-export__126957126958%_
                   (lambda (_%bind123910%_
                            _%phi123911%_
                            _%ctx123912%_
                            _%name123913%_)
                     (let* ((_%key123915%_
                             (##unchecked-structure-ref
                              _%bind123910%_
                              '2
                              '#f
                              '#f))
                            (_%export-key123917%_
                             (if _%name123913%_
                                 (gx#core-identifier-key _%name123913%_)
                                 _%key123915%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx123912%_
                        _%key123915%_
                        _%phi123911%_
                        _%export-key123917%_
                        (let ((_%$e123920%_
                               (##structure-instance-of?
                                _%bind123910%_
                                'gx#extern-binding::t)))
                          (if _%$e123920%_
                              _%$e123920%_
                              (##structure-direct-instance-of?
                               _%bind123910%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__126959126962%_
                   (lambda (_%bind123926%_)
                     (let* ((_%phi123928%_ (gx#current-export-expander-phi))
                            (_%ctx123930%_ (gx#current-expander-context))
                            (_%name123932%_ '#f))
                       (_%make-export__126957126958%_
                        _%bind123926%_
                        _%phi123928%_
                        _%ctx123930%_
                        _%name123932%_))))
                  (_%make-export__1__126960126963%_
                   (lambda (_%bind123934%_ _%phi123935%_)
                     (let* ((_%ctx123937%_ (gx#current-expander-context))
                            (_%name123939%_ '#f))
                       (_%make-export__126957126958%_
                        _%bind123934%_
                        _%phi123935%_
                        _%ctx123937%_
                        _%name123939%_))))
                  (_%make-export__2__126961126964%_
                   (lambda (_%bind123941%_ _%phi123942%_ _%ctx123943%_)
                     (let ((_%name123945%_ '#f))
                       (_%make-export__126957126958%_
                        _%bind123941%_
                        _%phi123942%_
                        _%ctx123943%_
                        _%name123945%_))))
                  (_%make-export123459%_
                   (lambda _g127031_
                     (let ((_g127030_ (##length _g127031_)))
                       (cond ((##fx= _g127030_ 1)
                              (apply _%make-export__0__126959126962%_
                                     _g127031_))
                             ((##fx= _g127030_ 2)
                              (apply _%make-export__1__126960126963%_
                                     _g127031_))
                             ((##fx= _g127030_ 3)
                              (apply _%make-export__2__126961126964%_
                                     _g127031_))
                             ((##fx= _g127030_ 4)
                              (apply _%make-export__126957126958%_ _g127031_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g127031_))))))
                  (_%expand1123460%_
                   (lambda (_%hd123615%_
                            _%K123616%_
                            _%rest123617%_
                            _%r123618%_)
                     (let* ((_%e123619123651%_ _%hd123615%_)
                            (_%E123646123655%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx123456%_
                                _%hd123615%_)))
                            (_%E123636123739%_
                             (lambda ()
                               (if (gx#stx-pair? _%e123619123651%_)
                                   (let ((_%e123647123659%_
                                          (gx#syntax-e _%e123619123651%_)))
                                     (let ((_%hd123648123662%_
                                            (##car _%e123647123659%_))
                                           (_%tl123649123664%_
                                            (##cdr _%e123647123659%_)))
                                       (if (eq? (gx#stx-e _%hd123648123662%_)
                                                'import:)
                                           (let ((_%in123667%_
                                                  _%tl123649123664%_))
                                             (if (gx#stx-list? _%in123667%_)
                                                 (let _%lp123669%_ ((_%in-rest123671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in123667%_)
                            (_%r123672%_ _%r123618%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e123673123680%_
                                                           _%in-rest123671%_)
                                                          (_%E123675123684%_
                                                           (lambda ()
                                                             (_%K123616%_
                                                              _%rest123617%_
                                                              _%r123672%_)))
                                                          (_%E123674123735%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e123673123680%_)
                         (let ((_%e123676123688%_
                                (gx#syntax-e _%e123673123680%_)))
                           (let ((_%hd123677123691%_ (##car _%e123676123688%_))
                                 (_%tl123678123693%_
                                  (##cdr _%e123676123688%_)))
                             (let* ((_%hd123696%_ _%hd123677123691%_)
                                    (_%in-rest123698%_ _%tl123678123693%_)
                                    (_%src123733%_
                                     (if (gx#core-bound-module? _%hd123696%_)
                                         (gx#syntax-local-e__0 _%hd123696%_)
                                         (if (gx#core-library-module-path?
                                              _%hd123696%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd123696%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd123696%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd123696%_))
                                                 (if (gx#stx-string?
                                                      _%hd123696%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd123696%_
                                                       (gx#stx-source
                                                        _%stx123456%_)))
                                                     (let* ((_%e123704123711%_
                                                             _%hd123696%_)
                                                            (_%E123706123715%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx123456%_
                                                                _%hd123696%_)))
                                                            (_%E123705123729%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e123704123711%_)
                           (let ((_%e123707123719%_
                                  (gx#syntax-e _%e123704123711%_)))
                             (let ((_%hd123708123722%_
                                    (##car _%e123707123719%_))
                                   (_%tl123709123724%_
                                    (##cdr _%e123707123719%_)))
                               (if (eq? (gx#stx-e _%hd123708123722%_) 'in:)
                                   (let ((_%spath123727%_ _%tl123709123724%_))
                                     (gx#core-import-nested-module
                                      _%spath123727%_
                                      _%stx123456%_))
                                   (_%E123706123715%_))))
                           (_%E123706123715%_)))))
               (_%E123705123729%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp123669%_
                                _%in-rest123698%_
                                (_%export-imports123461%_
                                 _%src123733%_
                                 _%r123672%_)))))
                         (_%E123675123684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E123674123735%_)))
                                                 (_%E123646123655%_)))
                                           (_%E123646123655%_))))
                                   (_%E123646123655%_))))
                            (_%E123623123779%_
                             (lambda ()
                               (if (gx#stx-pair? _%e123619123651%_)
                                   (let ((_%e123637123743%_
                                          (gx#syntax-e _%e123619123651%_)))
                                     (let ((_%hd123638123746%_
                                            (##car _%e123637123743%_))
                                           (_%tl123639123748%_
                                            (##cdr _%e123637123743%_)))
                                       (if (eq? (gx#stx-e _%hd123638123746%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl123639123748%_)
                                               (let ((_%e123640123751%_
                                                      (gx#syntax-e
                                                       _%tl123639123748%_)))
                                                 (let ((_%hd123641123754%_
                                                        (##car _%e123640123751%_))
                                                       (_%tl123642123756%_
                                                        (##cdr _%e123640123751%_)))
                                                   (let ((_%id123759%_
                                                          _%hd123641123754%_))
                                                     (if (gx#stx-pair?
                                                          _%tl123642123756%_)
                                                         (let ((_%e123643123761%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl123642123756%_)))
                   (let ((_%hd123644123764%_ (##car _%e123643123761%_))
                         (_%tl123645123766%_ (##cdr _%e123643123761%_)))
                     (let ((_%name123769%_ _%hd123644123764%_))
                       (if (gx#stx-null? _%tl123645123766%_)
                           (let* ((_%phi123771%_
                                   (gx#current-export-expander-phi))
                                  (_%$e123773%_
                                   (gx#core-resolve-identifier__1
                                    _%id123759%_
                                    _%phi123771%_)))
                             (if _%$e123773%_
                                 ((lambda (_%bind123776%_)
                                    (_%K123616%_
                                     _%rest123617%_
                                     (cons (_%make-export__126957126958%_
                                            _%bind123776%_
                                            _%phi123771%_
                                            (gx#current-expander-context)
                                            _%name123769%_)
                                           _%r123618%_)))
                                  _%$e123773%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx123456%_
                                  _%hd123615%_
                                  _%id123759%_)))
                           (_%E123636123739%_)))))
                 (_%E123636123739%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123636123739%_))
                                           (_%E123636123739%_))))
                                   (_%E123636123739%_))))
                            (_%E123622123829%_
                             (lambda ()
                               (if (gx#stx-pair? _%e123619123651%_)
                                   (let ((_%e123624123783%_
                                          (gx#syntax-e _%e123619123651%_)))
                                     (let ((_%hd123625123786%_
                                            (##car _%e123624123783%_))
                                           (_%tl123626123788%_
                                            (##cdr _%e123624123783%_)))
                                       (if (eq? (gx#stx-e _%hd123625123786%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl123626123788%_)
                                               (let ((_%e123627123791%_
                                                      (gx#syntax-e
                                                       _%tl123626123788%_)))
                                                 (let ((_%hd123628123794%_
                                                        (##car _%e123627123791%_))
                                                       (_%tl123629123796%_
                                                        (##cdr _%e123627123791%_)))
                                                   (let ((_%phi123799%_
                                                          _%hd123628123794%_))
                                                     (if (gx#stx-pair?
                                                          _%tl123629123796%_)
                                                         (let ((_%e123630123801%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl123629123796%_)))
                   (let ((_%hd123631123804%_ (##car _%e123630123801%_))
                         (_%tl123632123806%_ (##cdr _%e123630123801%_)))
                     (let ((_%id123809%_ _%hd123631123804%_))
                       (if (gx#stx-pair? _%tl123632123806%_)
                           (let ((_%e123633123811%_
                                  (gx#syntax-e _%tl123632123806%_)))
                             (let ((_%hd123634123814%_
                                    (##car _%e123633123811%_))
                                   (_%tl123635123816%_
                                    (##cdr _%e123633123811%_)))
                               (let ((_%name123819%_ _%hd123634123814%_))
                                 (if (gx#stx-null? _%tl123635123816%_)
                                     (if (and (gx#stx-fixnum? _%phi123799%_)
                                              (gx#identifier? _%id123809%_)
                                              (gx#identifier? _%name123819%_))
                                         (let* ((_%phi123821%_
                                                 (gx#stx-e _%phi123799%_))
                                                (_%$e123823%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id123809%_
                                                  _%phi123821%_)))
                                           (if _%$e123823%_
                                               ((lambda (_%bind123826%_)
                                                  (_%K123616%_
                                                   _%rest123617%_
                                                   (cons (_%make-export__126957126958%_
                                                          _%bind123826%_
                                                          _%phi123821%_
                                                          (gx#current-expander-context)
                                                          _%name123819%_)
                                                         _%r123618%_)))
                                                _%$e123823%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx123456%_
                                                _%hd123615%_
                                                _%id123809%_)))
                                         (_%E123623123779%_))
                                     (_%E123623123779%_)))))
                           (_%E123623123779%_)))))
                 (_%E123623123779%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123623123779%_))
                                           (_%E123623123779%_))))
                                   (_%E123623123779%_))))
                            (_%E123621123841%_
                             (lambda ()
                               (let ((_%id123833%_ _%e123619123651%_))
                                 (if (gx#identifier? _%id123833%_)
                                     (let ((_%$e123835%_
                                            (gx#core-resolve-identifier__1
                                             _%id123833%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e123835%_
                                           ((lambda (_%bind123838%_)
                                              (_%K123616%_
                                               _%rest123617%_
                                               (cons (_%make-export__0__126959126962%_
                                                      _%bind123838%_)
                                                     _%r123618%_)))
                                            _%$e123835%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx123456%_
                                            _%hd123615%_)))
                                     (_%E123622123829%_)))))
                            (_%E123620123905%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e123619123651%_) '#t)
                                   (let* ((_%current-ctx123845%_
                                           (gx#current-expander-context))
                                          (_%current-phi123847%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx123849%_
                                           (gx#core-context-shift
                                            _%current-ctx123845%_
                                            _%current-phi123847%_))
                                          (_%phi-bind123851%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx123849%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp123854%_ ((_%bind-rest123856%_
                                                         _%phi-bind123851%_)
                                                        (_%set123857%_ '()))
                                       (let* ((_%bind-rest123858123868%_
                                               _%bind-rest123856%_)
                                              (_%else123860123876%_
                                               (lambda ()
                                                 (_%K123616%_
                                                  _%rest123617%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi123847%_
                                                         _%set123857%_)
                                                        _%r123618%_))))
                                              (_%K123862123886%_
                                               (lambda (_%bind-rest123879%_
                                                        _%bind123880%_
                                                        _%key123881%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind123880%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind123880%_))
                                                     (_%lp123854%_
                                                      _%bind-rest123879%_
                                                      _%set123857%_)
                                                     (_%lp123854%_
                                                      _%bind-rest123879%_
                                                      (cons (_%make-export__2__126961126964%_
                                                             _%bind123880%_
                                                             _%current-phi123847%_
                                                             _%current-ctx123845%_)
                                                            _%set123857%_))))))
                                         (if (##pair? _%bind-rest123858123868%_)
                                             (let ((_%hd123863123889%_
                                                    (##car _%bind-rest123858123868%_))
                                                   (_%tl123864123891%_
                                                    (##cdr _%bind-rest123858123868%_)))
                                               (if (##pair? _%hd123863123889%_)
                                                   (let ((_%hd123865123894%_
                                                          (##car _%hd123863123889%_))
                                                         (_%tl123866123896%_
                                                          (##cdr _%hd123863123889%_)))
                                                     (let* ((_%key123899%_
                                                             _%hd123865123894%_)
                                                            (_%bind123901%_
                                                             _%tl123866123896%_)
                                                            (_%bind-rest123903%_
                                                             _%tl123864123891%_))
                                                       (_%K123862123886%_
                                                        _%bind-rest123903%_
                                                        _%bind123901%_
                                                        _%key123899%_)))
                                                   (_%else123860123876%_)))
                                             (_%else123860123876%_)))))
                                   (_%E123621123841%_)))))
                       (_%E123620123905%_))))
                  (_%export-imports123461%_
                   (lambda (_%src123491%_ _%r123492%_)
                     (letrec* ((_%current-ctx123494%_
                                (gx#current-expander-context))
                               (_%current-phi123495%_
                                (gx#current-export-expander-phi))
                               (_%import->export123496%_
                                (lambda (_%in123577%_)
                                  (let* ((_%in123578123586%_ _%in123577%_)
                                         (_%E123580123590%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in123578123586%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K123581123597%_
                                          (lambda (_%phi123593%_
                                                   _%key123594%_
                                                   _%out123595%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx123494%_
                                             _%key123594%_
                                             _%phi123593%_
                                             _%key123594%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in123578123586%_
                                         'gx#module-import::t)
                                        (let* ((_%e123582123600%_
                                                (##unchecked-structure-ref
                                                 _%in123578123586%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out123603%_
                                                _%e123582123600%_)
                                               (_%e123583123605%_
                                                (##unchecked-structure-ref
                                                 _%in123578123586%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key123608%_
                                                _%e123583123605%_)
                                               (_%e123584123610%_
                                                (##unchecked-structure-ref
                                                 _%in123578123586%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi123613%_
                                                _%e123584123610%_))
                                          (_%K123581123597%_
                                           _%phi123613%_
                                           _%key123608%_
                                           _%out123603%_))
                                        (_%E123580123590%_)))))
                               (_%fold-e123497%_
                                (lambda (_%in123499%_ _%r123500%_)
                                  (let* ((_%in123501123515%_ _%in123499%_)
                                         (_%else123504123523%_
                                          (lambda () _%r123500%_)))
                                    (let ((_%K123510123559%_
                                           (lambda (_%phi123555%_
                                                    _%key123556%_
                                                    _%out123557%_)
                                             (if (and (fx= _%phi123555%_
                                                           _%current-phi123495%_)
                                                      (eq? _%src123491%_
                                                           (##unchecked-structure-ref
                                                            _%out123557%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export123496%_
                                                        _%in123499%_)
                                                       _%r123500%_)
                                                 _%r123500%_)))
                                          (_%K123506123534%_
                                           (lambda (_%imports123527%_
                                                    _%phi123528%_
                                                    _%ctx123529%_)
                                             (if (and (fx= _%phi123528%_
                                                           _%current-phi123495%_)
                                                      (eq? _%src123491%_
                                                           _%ctx123529%_))
                                                 (__foldl1
                                                  (lambda (_%in123531%_
                                                           _%r123532%_)
                                                    (cons (_%import->export123496%_
                                                           _%in123531%_)
                                                          _%r123532%_))
                                                  _%r123500%_
                                                  _%imports123527%_)
                                                 _%r123500%_))))
                                      (let ((_%try-match123503123552%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in123501123515%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e123507123537%_
                                                           (##unchecked-structure-ref
                                                            _%in123501123515%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e123508123542%_
                                                           (##unchecked-structure-ref
                                                            _%in123501123515%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e123509123547%_
                                                           (##unchecked-structure-ref
                                                            _%in123501123515%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx123540%_
                                                            _%e123507123537%_)
                                                           (_%phi123545%_
                                                            _%e123508123542%_)
                                                           (_%imports123550%_
                                                            _%e123509123547%_))
                                                       (_%K123506123534%_
                                                        _%imports123550%_
                                                        _%phi123545%_
                                                        _%ctx123540%_)))
                                                   (_%else123504123523%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in123501123515%_
                                             'gx#module-import::t)
                                            (let* ((_%e123511123562%_
                                                    (##unchecked-structure-ref
                                                     _%in123501123515%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e123512123567%_
                                                    (##unchecked-structure-ref
                                                     _%in123501123515%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e123513123572%_
                                                    (##unchecked-structure-ref
                                                     _%in123501123515%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out123565%_
                                                     _%e123511123562%_)
                                                    (_%key123570%_
                                                     _%e123512123567%_)
                                                    (_%phi123575%_
                                                     _%e123513123572%_))
                                                (_%K123510123559%_
                                                 _%phi123575%_
                                                 _%key123570%_
                                                 _%out123565%_)))
                                            (_%try-match123503123552%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src123491%_
                              _%current-phi123495%_
                              (__foldl1
                               _%fold-e123497%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx123494%_
                                '8
                                '#f
                                '#f)))
                             _%r123492%_))))
                  (_%export!123462%_
                   (lambda (_%rbody123478%_)
                     (letrec* ((_%current-ctx123480%_
                                (gx#current-expander-context))
                               (_%fold-e123481%_
                                (lambda (_%out123485%_ _%r123486%_)
                                  (if (##structure-direct-instance-of?
                                       _%out123485%_
                                       'gx#module-export::t)
                                      (cons _%out123485%_ _%r123486%_)
                                      (if (##structure-direct-instance-of?
                                           _%out123485%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r123486%_
                                           (##unchecked-structure-ref
                                            _%out123485%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r123486%_)))))
                       (let ((_%body123483%_ (reverse _%rbody123478%_)))
                         (##unchecked-structure-set!
                          _%current-ctx123480%_
                          (__foldl1
                           _%fold-e123481%_
                           (##unchecked-structure-ref
                            _%current-ctx123480%_
                            '9
                            '#f
                            '#f)
                           _%body123483%_)
                          '9
                          '#f
                          '#f)
                         _%body123483%_))))
                  (_%expanded-export?123463%_
                   (lambda (_%e123473%_)
                     (let ((_%$e123475%_
                            (##structure-direct-instance-of?
                             _%e123473%_
                             'gx#module-export::t)))
                       (if _%$e123475%_
                           _%$e123475%_
                           (##structure-direct-instance-of?
                            _%e123473%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?123457%_)
              (let ((_%rbody123469%_
                     (gx#core-expand-import/export
                      _%stx123456%_
                      _%expanded-export?123463%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1123460%_)))
                (if _%internal-expand?123457%_
                    (reverse _%rbody123469%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!123462%_ _%rbody123469%_))
                     (gx#stx-source _%stx123456%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx123456%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx123456%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx123955%_)
        (let ((_%internal-expand?123957%_ '#f))
          (gx#core-expand-export%__%
           _%stx123955%_
           _%internal-expand?123957%_))))
    (define gx#core-expand-export%
      (lambda _g127033_
        (let ((_g127032_ (##length _g127033_)))
          (cond ((##fx= _g127032_ 1)
                 (apply gx#core-expand-export%__0 _g127033_))
                ((##fx= _g127032_ 2)
                 (apply gx#core-expand-export%__% _g127033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g127033_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd123453%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd123453%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx123423%_)
        (let* ((_%e123424123431%_ _%stx123423%_)
               (_%E123426123435%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123424123431%_)))
               (_%E123425123449%_
                (lambda ()
                  (if (gx#stx-pair? _%e123424123431%_)
                      (let ((_%e123427123439%_
                             (gx#syntax-e _%e123424123431%_)))
                        (let ((_%hd123428123442%_ (##car _%e123427123439%_))
                              (_%tl123429123444%_ (##cdr _%e123427123439%_)))
                          (let ((_%body123447%_ _%tl123429123444%_))
                            (if (gx#identifier-list? _%body123447%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body123447%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body123447%_))
                                   (gx#stx-source _%stx123423%_)))
                                (_%E123426123435%_)))))
                      (_%E123426123435%_)))))
          (_%E123425123449%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id123389%_ _%private?123390%_ _%phi123391%_ _%ctx123392%_)
        (gx#core-bind-syntax!__%
         _%id123389%_
         ((if _%private?123390%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id123389%_))
         _%private?123390%_
         _%phi123391%_
         _%ctx123392%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id123397%_)
        (let* ((_%private?123399%_ '#f)
               (_%phi123401%_ (gx#current-expander-phi))
               (_%ctx123403%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123397%_
           _%private?123399%_
           _%phi123401%_
           _%ctx123403%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id123405%_ _%private?123406%_)
        (let* ((_%phi123408%_ (gx#current-expander-phi))
               (_%ctx123410%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123405%_
           _%private?123406%_
           _%phi123408%_
           _%ctx123410%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id123412%_ _%private?123413%_ _%phi123414%_)
        (let ((_%ctx123416%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123412%_
           _%private?123413%_
           _%phi123414%_
           _%ctx123416%_))))
    (define gx#core-bind-feature!
      (lambda _g127035_
        (let ((_g127034_ (##length _g127035_)))
          (cond ((##fx= _g127034_ 1)
                 (apply gx#core-bind-feature!__0 _g127035_))
                ((##fx= _g127034_ 2)
                 (apply gx#core-bind-feature!__1 _g127035_))
                ((##fx= _g127034_ 3)
                 (apply gx#core-bind-feature!__2 _g127035_))
                ((##fx= _g127034_ 4)
                 (apply gx#core-bind-feature!__% _g127035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g127035_))))))))
