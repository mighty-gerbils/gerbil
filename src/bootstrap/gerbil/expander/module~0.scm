(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712823027)
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
      (lambda _%$args126951%_
        (apply make-instance gx#module-import::t _%$args126951%_)))
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
      (lambda _%$args126948%_
        (apply make-instance gx#module-export::t _%$args126948%_)))
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
      (lambda _%$args126945%_
        (apply make-instance gx#import-set::t _%$args126945%_)))
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
      (lambda _%$args126942%_
        (apply make-instance gx#export-set::t _%$args126942%_)))
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
      (lambda _%$args126939%_
        (apply make-instance gx#import-expander::t _%$args126939%_)))
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
      (lambda _%$args126936%_
        (apply make-instance gx#export-expander::t _%$args126936%_)))
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
      (lambda _%$args126933%_
        (apply make-instance gx#import-export-expander::t _%$args126933%_)))
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
      (lambda (_%path126930%_ _%fun126931%_)
        (call-with-input-file
         (cons 'path: (cons _%path126930%_ gx#source-file-settings))
         _%fun126931%_)))
    (define gx#module-context:::init!
      (lambda (_%self123382126911%_
               _%id126913%_
               _%super126914%_
               _%ns126915%_
               _%path126916%_)
        (let* ((_%self126918%_ _%self123382126911%_)
               (_%self126920%_ _%self126918%_))
          (if (##fx< '11 (##structure-length _%self126920%_))
              (begin
                (##unchecked-structure-set!
                 _%self126920%_
                 _%id126913%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self126920%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self126920%_
                 _%super126914%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self126920%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self126920%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self126920%_
                 _%ns126915%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self126920%_
                 _%path126916%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self126920%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self126920%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self126920%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self126920%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self126920%_
                     '11
                     (##vector-length _%self126920%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self123383126742%_ _%ctx126744%_ _%root126745%_)
        (let* ((_%self126747%_ _%self123383126742%_)
               (_%self126749%_ _%self126747%_)
               (_%super126765%_
                (let ((_%$e126759%_ _%root126745%_))
                  (if _%$e126759%_
                      _%$e126759%_
                      (let ((_%$e126762%_ (gx#core-context-root__0)))
                        (if _%$e126762%_
                            _%$e126762%_
                            (let ((__obj126995
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor126996
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj126995
                                      ':init!)))
                                (if __constructor126996
                                    (__constructor126996 __obj126995)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj126995)))))))
          (if _%ctx126744%_
              (let ((_%id126768%_
                     (##structure-ref
                      _%ctx126744%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path126769%_
                     (##structure-ref
                      _%ctx126744%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in126770%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx126744%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e126771%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx126744%_)))))
                (if (##fx< '8 (##structure-length _%self126749%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self126749%_
                       _%id126768%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126749%_
                       (make-hash-table-eq 'size: (##length _%in126770%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126749%_
                       _%super126765%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126749%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126749%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126749%_
                       _%path126769%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126749%_
                       _%in126770%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self126749%_
                       _%e126771%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self126749%_
                           '8
                           (##vector-length _%self126749%_)))
                (##for-each
                 (lambda (_%g126772126774%_)
                   (gx#core-bind-weak-import!__%
                    _%g126772126774%_
                    _%self126749%_))
                 _%in126770%_))
              (if (##fx< '8 (##structure-length _%self126749%_))
                  (begin
                    (##unchecked-structure-set! _%self126749%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self126749%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self126749%_
                     _%super126765%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self126749%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self126749%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self126749%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self126749%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self126749%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self126749%_
                         '8
                         (##vector-length _%self126749%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self123383126780%_ _%ctx126781%_)
        (let ((_%root126783%_ '#f))
          (gx#prelude-context:::init!__%
           _%self123383126780%_
           _%ctx126781%_
           _%root126783%_))))
    (define gx#prelude-context:::init!
      (lambda _g127002_
        (let ((_g127001_ (##length _g127002_)))
          (cond ((##fx= _g127001_ 2)
                 (apply gx#prelude-context:::init!__0 _g127002_))
                ((##fx= _g127001_ 3)
                 (apply gx#prelude-context:::init!__% _g127002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g127002_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self126616%_ _%e126617%_)
        (if (##fx< '3 (##structure-length _%self126616%_))
            (begin
              (##unchecked-structure-set!
               _%self126616%_
               _%e126617%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self126616%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self126616%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self126616%_
                   '3
                   (##vector-length _%self126616%_)))))
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
      (lambda (_%g126242126245%_ _%g126243126247%_)
        (gx#core-apply-user-expander__%
         _%g126242126245%_
         _%g126243126247%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g126113126116%_ _%g126114126118%_)
        (gx#core-apply-user-expander__%
         _%g126113126116%_
         _%g126114126118%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx125984%_)
        (let* ((_%path125986%_
                (##structure-ref _%ctx125984%_ '7 gx#module-context::t '#f))
               (_%path125988%_
                (if (pair? _%path125986%_)
                    (last _%path125986%_)
                    _%path125986%_)))
          (if (string? _%path125988%_) _%path125988%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path125960%_ _%reload?125961%_ _%eval?125962%_)
        (let ((_%ctx125964%_
               ((gx#current-expander-module-import)
                _%path125960%_
                _%reload?125961%_)))
          (if (and _%ctx125964%_ _%eval?125962%_)
              (gx#eval-module _%ctx125964%_)
              '#!void)
          _%ctx125964%_)))
    (define gx#import-module__0
      (lambda (_%path125969%_)
        (let* ((_%reload?125971%_ '#f) (_%eval?125973%_ '#f))
          (gx#import-module__%
           _%path125969%_
           _%reload?125971%_
           _%eval?125973%_))))
    (define gx#import-module__1
      (lambda (_%path125975%_ _%reload?125976%_)
        (let ((_%eval?125978%_ '#f))
          (gx#import-module__%
           _%path125975%_
           _%reload?125976%_
           _%eval?125978%_))))
    (define gx#import-module
      (lambda _g127004_
        (let ((_g127003_ (##length _g127004_)))
          (cond ((##fx= _g127003_ 1) (apply gx#import-module__0 _g127004_))
                ((##fx= _g127003_ 2) (apply gx#import-module__1 _g127004_))
                ((##fx= _g127003_ 3) (apply gx#import-module__% _g127004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g127004_))))))
    (define gx#eval-module
      (lambda (_%mod125957%_)
        ((gx#current-expander-module-eval) _%mod125957%_)))
    (define gx#core-eval-module
      (lambda (_%obj125937%_)
        (letrec ((_%force-e125939%_
                  (lambda (_%getf125953%_ _%e125954%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf125953%_ _%e125954%_)))
                     gx#current-expander-context
                     _%e125954%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur125941%_ ((_%e125943%_ _%obj125937%_))
            (if (##structure-instance-of? _%e125943%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e125946%_
                         (gx#core-context-prelude__% _%e125943%_)))
                    (if _%$e125946%_ (_%recur125941%_ _%$e125946%_) '#!void))
                  (_%force-e125939%_ gx#module-context-e _%e125943%_))
                (if (##structure-instance-of?
                     _%e125943%_
                     'gx#prelude-context::t)
                    (_%force-e125939%_ gx#prelude-context-e _%e125943%_)
                    (if (gx#stx-string? _%e125943%_)
                        (_%recur125941%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e125943%_)))
                        (if (gx#core-library-module-path? _%e125943%_)
                            (_%recur125941%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e125943%_)))
                            (error '"cannot eval module" _%obj125937%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx125917%_)
        (let _%lp125919%_ ((_%e125921%_ _%ctx125917%_))
          (if (or (##structure-instance-of? _%e125921%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e125921%_ 'gx#local-context::t))
              (_%lp125919%_ (##unchecked-structure-ref _%e125921%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e125921%_ 'gx#prelude-context::t)
                  _%e125921%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx125933%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx125933%_))))
    (define gx#core-context-prelude
      (lambda _g127006_
        (let ((_g127005_ (##length _g127006_)))
          (cond ((##fx= _g127005_ 0)
                 (apply gx#core-context-prelude__0 _g127006_))
                ((##fx= _g127005_ 1)
                 (apply gx#core-context-prelude__% _g127006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g127006_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx125908%_)
        (let ((_%$e125910%_ (hash-get gx#__module-registry _%ctx125908%_)))
          (if _%$e125910%_
              _%$e125910%_
              (let ((_%pre125914%_
                     (let ((__obj126997
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
                        __obj126997
                        _%ctx125908%_)
                       __obj126997)))
                (hash-put! gx#__module-registry _%ctx125908%_ _%pre125914%_)
                _%pre125914%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath125780%_ _%reload?125781%_)
        (letrec ((_%import-source125783%_
                  (lambda (_%path125872%_)
                    (if (member _%path125872%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path125872%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g127007_ (gx#core-read-module _%path125872%_)))
                         (begin
                           (let ((_g127008_
                                  (if (##values? _g127007_)
                                      (##vector-length _g127007_)
                                      1)))
                             (if (not (##fx= _g127008_ 4))
                                 (error "Context expects 4 values" _g127008_)))
                           (let ((_%pre125875%_ (##vector-ref _g127007_ 0))
                                 (_%id125876%_ (##vector-ref _g127007_ 1))
                                 (_%ns125877%_ (##vector-ref _g127007_ 2))
                                 (_%body125878%_ (##vector-ref _g127007_ 3)))
                             (let* ((_%prelude125888%_
                                     (if (##structure-instance-of?
                                          _%pre125875%_
                                          'gx#prelude-context::t)
                                         _%pre125875%_
                                         (if (##structure-instance-of?
                                              _%pre125875%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre125875%_)
                                             (if (string? _%pre125875%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre125875%_))
                                                 (if (not _%pre125875%_)
                                                     (let ((_%$e125884%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e125884%_
                                                           _%$e125884%_
                                                           (let ((__obj126998
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
                     (gx#prelude-context:::init!__0 __obj126998 '#f)
                     __obj126998)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath125780%_
                                                            _%pre125875%_))))))
                                    (_%ctx125890%_
                                     (let ((__obj126999
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
                                        __obj126999
                                        _%id125876%_
                                        _%prelude125888%_
                                        _%ns125877%_
                                        _%path125872%_)
                                       __obj126999))
                                    (_%body125892%_
                                     (gx#core-expand-module-begin
                                      _%body125878%_
                                      _%ctx125890%_))
                                    (_%body125894%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body125892%_)
                                      _%path125872%_
                                      _%ctx125890%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx125890%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body125894%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx125890%_
                                _%body125894%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path125872%_
                                _%ctx125890%_)
                               (hash-put!
                                gx#__module-registry
                                _%id125876%_
                                _%ctx125890%_)
                               _%ctx125890%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path125872%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule125784%_
                  (lambda (_%rpath125800%_)
                    (let* ((_%rpath125801125808%_ _%rpath125800%_)
                           (_%E125803125812%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath125801125808%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K125804125860%_
                            (lambda (_%refs125815%_ _%origin125816%_)
                              (let ((_%ctx125818%_
                                     (if _%origin125816%_
                                         (gx#core-import-module__%
                                          _%origin125816%_
                                          _%reload?125781%_)
                                         (gx#current-expander-context))))
                                (let _%lp125820%_ ((_%rest125822%_
                                                    _%refs125815%_)
                                                   (_%ctx125823%_
                                                    _%ctx125818%_))
                                  (let* ((_%rest125824125832%_ _%rest125822%_)
                                         (_%else125826125840%_
                                          (lambda () _%ctx125823%_))
                                         (_%K125828125848%_
                                          (lambda (_%rest125843%_ _%id125844%_)
                                            (let ((_%bind125846%_
                                                   (gx#resolve-identifier__%
                                                    _%id125844%_
                                                    '0
                                                    _%ctx125823%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind125846%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind125846%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp125820%_
                                                   _%rest125843%_
                                                   (##unchecked-structure-ref
                                                    _%bind125846%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath125800%_
                                                         _%id125844%_
                                                         _%bind125846%_))))))
                                    (if (##pair? _%rest125824125832%_)
                                        (let ((_%hd125829125851%_
                                               (##car _%rest125824125832%_))
                                              (_%tl125830125853%_
                                               (##cdr _%rest125824125832%_)))
                                          (let* ((_%id125856%_
                                                  _%hd125829125851%_)
                                                 (_%rest125858%_
                                                  _%tl125830125853%_))
                                            (_%K125828125848%_
                                             _%rest125858%_
                                             _%id125856%_)))
                                        (_%else125826125840%_))))))))
                      (if (##pair? _%rpath125801125808%_)
                          (let ((_%hd125805125863%_
                                 (##car _%rpath125801125808%_))
                                (_%tl125806125865%_
                                 (##cdr _%rpath125801125808%_)))
                            (let* ((_%origin125868%_ _%hd125805125863%_)
                                   (_%refs125870%_ _%tl125806125865%_))
                              (_%K125804125860%_
                               _%refs125870%_
                               _%origin125868%_)))
                          (_%E125803125812%_))))))
          (let ((_%$e125786%_
                 (if (not _%reload?125781%_)
                     (hash-get gx#__module-registry _%rpath125780%_)
                     '#f)))
            (if _%$e125786%_
                _%$e125786%_
                (if (list? _%rpath125780%_)
                    (_%import-submodule125784%_ _%rpath125780%_)
                    (if (gx#core-library-module-path? _%rpath125780%_)
                        (let ((_%ctx125791%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath125780%_)
                                _%reload?125781%_)))
                          (hash-put!
                           gx#__module-registry
                           _%rpath125780%_
                           _%ctx125791%_)
                          _%ctx125791%_)
                        (let* ((_%npath125794%_
                                (path-normalize _%rpath125780%_))
                               (_%$e125796%_
                                (if (not _%reload?125781%_)
                                    (hash-get
                                     gx#__module-registry
                                     _%npath125794%_)
                                    '#f)))
                          (if _%$e125796%_
                              _%$e125796%_
                              (_%import-source125783%_
                               _%npath125794%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath125901%_)
        (let ((_%reload?125903%_ '#f))
          (gx#core-import-module__% _%rpath125901%_ _%reload?125903%_))))
    (define gx#core-import-module
      (lambda _g127010_
        (let ((_g127009_ (##length _g127010_)))
          (cond ((##fx= _g127009_ 1)
                 (apply gx#core-import-module__0 _g127010_))
                ((##fx= _g127009_ 2)
                 (apply gx#core-import-module__% _g127010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g127010_))))))
    (define gx#core-read-module
      (lambda (_%path125769%_)
        (__with-catch
         (lambda (_%exn125771%_)
           (if (and (datum-parsing-exception? _%exn125771%_)
                    (eq? (datum-parsing-exception-filepos _%exn125771%_) '0))
               (gx#core-read-module/lang _%path125769%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path125769%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g125773125775%_)
                      (display-exception _%exn125771%_ _%g125773125775%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path125769%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path125621%_)
        (let _%lp125623%_ ((_%body125625%_
                            (read-syntax-from-file _%path125621%_))
                           (_%pre125626%_ '#f)
                           (_%ns125627%_ '#f)
                           (_%pkg125628%_ '#f))
          (let* ((_%e125629125653%_ _%body125625%_)
                 (_%E125645125679%_
                  (lambda ()
                    (let ((_g127011_
                           (if _%pkg125628%_
                               (values _%pre125626%_
                                       _%ns125627%_
                                       _%pkg125628%_)
                               (gx#core-read-module-package
                                _%path125621%_
                                _%pre125626%_
                                _%ns125627%_))))
                      (begin
                        (let ((_g127012_
                               (if (##values? _g127011_)
                                   (##vector-length _g127011_)
                                   1)))
                          (if (not (##fx= _g127012_ 3))
                              (error "Context expects 3 values" _g127012_)))
                        (let ((_%pre125657%_ (##vector-ref _g127011_ 0))
                              (_%ns125658%_ (##vector-ref _g127011_ 1))
                              (_%pkg125659%_ (##vector-ref _g127011_ 2)))
                          (let* ((_%prelude125665%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre125657%_)
                                      (gx#syntax-local-e__0 _%pre125657%_)
                                      (if (gx#core-library-module-path?
                                           _%pre125657%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre125657%_)
                                          (if (gx#stx-string? _%pre125657%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre125657%_
                                               _%path125621%_)
                                              (gx#stx-e _%pre125657%_)))))
                                 (_%path-id125667%_
                                  (gx#core-module-path->namespace
                                   _%path125621%_))
                                 (_%pkg-id125669%_
                                  (if _%pkg125659%_
                                      (##string-append
                                       _%pkg125659%_
                                       '"/"
                                       _%path-id125667%_)
                                      _%path-id125667%_))
                                 (_%module-id125671%_
                                  (##string->symbol _%pkg-id125669%_))
                                 (_%module-ns125676%_
                                  (if (eq? _%ns125658%_ '#!void)
                                      '#f
                                      (let ((_%$e125673%_ _%ns125658%_))
                                        (if _%$e125673%_
                                            _%$e125673%_
                                            _%pkg-id125669%_)))))
                            (values _%prelude125665%_
                                    _%module-id125671%_
                                    _%module-ns125676%_
                                    _%body125625%_)))))))
                 (_%E125638125711%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125629125653%_)
                        (let ((_%e125646125683%_
                               (gx#syntax-e _%e125629125653%_)))
                          (let ((_%hd125647125686%_ (##car _%e125646125683%_))
                                (_%tl125648125688%_ (##cdr _%e125646125683%_)))
                            (if (eq? (gx#stx-e _%hd125647125686%_) 'package:)
                                (if (gx#stx-pair? _%tl125648125688%_)
                                    (let ((_%e125649125691%_
                                           (gx#syntax-e _%tl125648125688%_)))
                                      (let ((_%hd125650125694%_
                                             (##car _%e125649125691%_))
                                            (_%tl125651125696%_
                                             (##cdr _%e125649125691%_)))
                                        (let* ((_%pkg125699%_
                                                _%hd125650125694%_)
                                               (_%rest125701%_
                                                _%tl125651125696%_))
                                          (if '#t
                                              (let ((_%pkg125709%_
                                                     (if (gx#identifier?
                                                          _%pkg125699%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%pkg125699%_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg125699%_)
                         (gx#stx-false? _%pkg125699%_))
                     (gx#stx-e _%pkg125699%_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _%pkg125699%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp125623%_
                                                 _%rest125701%_
                                                 _%pre125626%_
                                                 _%ns125627%_
                                                 _%pkg125709%_))
                                              (_%E125645125679%_)))))
                                    (_%E125645125679%_))
                                (_%E125645125679%_))))
                        (_%E125645125679%_))))
                 (_%E125631125741%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125629125653%_)
                        (let ((_%e125639125715%_
                               (gx#syntax-e _%e125629125653%_)))
                          (let ((_%hd125640125718%_ (##car _%e125639125715%_))
                                (_%tl125641125720%_ (##cdr _%e125639125715%_)))
                            (if (eq? (gx#stx-e _%hd125640125718%_) 'namespace:)
                                (if (gx#stx-pair? _%tl125641125720%_)
                                    (let ((_%e125642125723%_
                                           (gx#syntax-e _%tl125641125720%_)))
                                      (let ((_%hd125643125726%_
                                             (##car _%e125642125723%_))
                                            (_%tl125644125728%_
                                             (##cdr _%e125642125723%_)))
                                        (let* ((_%ns125731%_
                                                _%hd125643125726%_)
                                               (_%rest125733%_
                                                _%tl125644125728%_))
                                          (if '#t
                                              (let ((_%ns125739%_
                                                     (if (gx#identifier?
                                                          _%ns125731%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%ns125731%_))
                                                         (if (gx#stx-string?
                                                              _%ns125731%_)
                                                             (gx#stx-e
                                                              _%ns125731%_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns125731%_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _%ns125731%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp125623%_
                                                 _%rest125733%_
                                                 _%pre125626%_
                                                 _%ns125739%_
                                                 _%pkg125628%_))
                                              (_%E125638125711%_)))))
                                    (_%E125638125711%_))
                                (_%E125638125711%_))))
                        (_%E125638125711%_))))
                 (_%E125630125765%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125629125653%_)
                        (let ((_%e125632125745%_
                               (gx#syntax-e _%e125629125653%_)))
                          (let ((_%hd125633125748%_ (##car _%e125632125745%_))
                                (_%tl125634125750%_ (##cdr _%e125632125745%_)))
                            (if (eq? (gx#stx-e _%hd125633125748%_) 'prelude:)
                                (if (gx#stx-pair? _%tl125634125750%_)
                                    (let ((_%e125635125753%_
                                           (gx#syntax-e _%tl125634125750%_)))
                                      (let ((_%hd125636125756%_
                                             (##car _%e125635125753%_))
                                            (_%tl125637125758%_
                                             (##cdr _%e125635125753%_)))
                                        (let* ((_%prelude125761%_
                                                _%hd125636125756%_)
                                               (_%rest125763%_
                                                _%tl125637125758%_))
                                          (if '#t
                                              (_%lp125623%_
                                               _%rest125763%_
                                               _%prelude125761%_
                                               _%ns125627%_
                                               _%pkg125628%_)
                                              (_%E125631125741%_)))))
                                    (_%E125631125741%_))
                                (_%E125631125741%_))))
                        (_%E125631125741%_)))))
            (_%E125630125765%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path125443%_)
        (letrec ((_%default-read-module-body125445%_
                  (lambda (_%inp125613%_)
                    (let _%lp125615%_ ((_%body125617%_ '()))
                      (let ((_%next125619%_ (read-syntax__% _%inp125613%_)))
                        (if (eof-object? _%next125619%_)
                            (reverse _%body125617%_)
                            (_%lp125615%_
                             (cons _%next125619%_ _%body125617%_)))))))
                 (_%read-body125446%_
                  (lambda (_%inp125531%_
                           _%pre125532%_
                           _%ns125533%_
                           _%pkg125534%_
                           _%args125535%_)
                    (let ((_g127013_
                           (if _%pkg125534%_
                               (values _%pre125532%_
                                       _%ns125533%_
                                       _%pkg125534%_)
                               (gx#core-read-module-package
                                _%path125443%_
                                _%pre125532%_
                                _%ns125533%_))))
                      (begin
                        (let ((_g127014_
                               (if (##values? _g127013_)
                                   (##vector-length _g127013_)
                                   1)))
                          (if (not (##fx= _g127014_ 3))
                              (error "Context expects 3 values" _g127014_)))
                        (let ((_%pre125537%_ (##vector-ref _g127013_ 0))
                              (_%ns125538%_ (##vector-ref _g127013_ 1))
                              (_%pkg125539%_ (##vector-ref _g127013_ 2)))
                          (let* ((_%prelude125541%_
                                  (gx#import-module__0 _%pre125537%_))
                                 (_%read-module-body125596%_
                                  (let ((_%$e125587%_
                                         (__find (lambda (_%e125542125544%_)
                                                   (let* ((_%g125546125556%_
                                                           _%e125542125544%_)
                                                          (_%else125548125564%_
                                                           (lambda () '#f))
                                                          (_%K125550125568%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g125546125556%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e125551125571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g125546125556%_
                          '1
                          '#f
                          '#f))
                        (_%e125552125574%_
                         (##unchecked-structure-ref
                          _%g125546125556%_
                          '2
                          '#f
                          '#f))
                        (_%e125553125577%_
                         (##unchecked-structure-ref
                          _%g125546125556%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e125553125577%_ '1)
                       (let ((_%e125554125580%_
                              (##unchecked-structure-ref
                               _%g125546125556%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g125582125584%_)
                                (eq? _%g125582125584%_ 'read-module-body))
                              _%e125554125580%_)
                             (_%K125550125568%_)
                             (_%else125548125564%_)))
                       (_%else125548125564%_)))
                 (_%else125548125564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude125541%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e125587%_
                                        ((lambda (_%xport125590%_)
                                           (let ((_%proc125593%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport125590%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc125593%_)
                                                 _%proc125593%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path125443%_
                                                  _%pre125537%_
                                                  _%proc125593%_))))
                                         _%$e125587%_)
                                        _%default-read-module-body125445%_)))
                                 (_%path-id125598%_
                                  (gx#core-module-path->namespace
                                   _%path125443%_))
                                 (_%pkg-id125600%_
                                  (if _%pkg125539%_
                                      (##string-append
                                       _%pkg125539%_
                                       '"/"
                                       _%path-id125598%_)
                                      _%path-id125598%_))
                                 (_%module-id125602%_
                                  (##string->symbol _%pkg-id125600%_))
                                 (_%module-ns125607%_
                                  (let ((_%$e125604%_ _%ns125538%_))
                                    (if _%$e125604%_
                                        _%$e125604%_
                                        _%pkg-id125600%_)))
                                 (_%body125610%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body125596%_
                                      _%inp125531%_))
                                   gx#current-module-reader-path
                                   _%path125443%_
                                   gx#current-module-reader-args
                                   _%args125535%_)))
                            (values _%prelude125541%_
                                    _%module-id125602%_
                                    _%module-ns125607%_
                                    _%body125610%_)))))))
                 (_%string-e125447%_
                  (lambda (_%obj125525%_ _%what125526%_)
                    (if (string? _%obj125525%_)
                        _%obj125525%_
                        (if (symbol? _%obj125525%_)
                            (symbol->string _%obj125525%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what125526%_)
                             _%path125443%_
                             _%obj125525%_)))))
                 (_%read-lang-args125448%_
                  (lambda (_%inp125480%_ _%args125481%_)
                    (let* ((_%args125482125490%_ _%args125481%_)
                           (_%else125484125498%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path125443%_)))
                           (_%K125486125513%_
                            (lambda (_%args125501%_ _%prelude125502%_)
                              (let* ((_%pkg125504%_
                                      (pgetq__0 'package: _%args125501%_))
                                     (_%pkg125506%_
                                      (if _%pkg125504%_
                                          (_%string-e125447%_
                                           _%pkg125504%_
                                           '"package")
                                          '#f))
                                     (_%ns125508%_
                                      (pgetq__0 'namespace: _%args125501%_))
                                     (_%ns125510%_
                                      (if _%ns125508%_
                                          (_%string-e125447%_
                                           _%ns125508%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body125446%_
                                 _%inp125480%_
                                 _%prelude125502%_
                                 _%ns125510%_
                                 _%pkg125506%_
                                 _%args125501%_)))))
                      (if (##pair? _%args125482125490%_)
                          (let ((_%hd125487125516%_
                                 (##car _%args125482125490%_))
                                (_%tl125488125518%_
                                 (##cdr _%args125482125490%_)))
                            (let* ((_%prelude125521%_ _%hd125487125516%_)
                                   (_%args125523%_ _%tl125488125518%_))
                              (_%K125486125513%_
                               _%args125523%_
                               _%prelude125521%_)))
                          (_%else125484125498%_)))))
                 (_%read-lang125449%_
                  (lambda (_%inp125454%_)
                    (let* ((_%head125456%_ (read-line _%inp125454%_))
                           (_%$e125458%_
                            (string-index__0 _%head125456%_ '#\space)))
                      (if _%$e125458%_
                          ((lambda (_%ix125461%_)
                             (let ((_%lang125463%_
                                    (substring
                                     _%head125456%_
                                     '0
                                     _%ix125461%_)))
                               (if (equal? _%lang125463%_ '"#lang")
                                   (let* ((_%rest125465%_
                                           (substring
                                            _%head125456%_
                                            (##fx+ _%ix125461%_ '1)
                                            (string-length _%head125456%_)))
                                          (_%args125476%_
                                           (__with-catch
                                            (lambda (_%g125466125468%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path125443%_
                                               _%g125466125468%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest125465%_
                                               (lambda (_%g125471125473%_)
                                                 (read-all
                                                  _%g125471125473%_
                                                  read)))))))
                                     (_%read-lang-args125448%_
                                      _%inp125454%_
                                      _%args125476%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path125443%_))))
                           _%$e125458%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path125443%_)))))
                 (_%read-e125450%_
                  (lambda (_%inp125452%_)
                    (if (eq? (peek-char _%inp125452%_) '#\#)
                        (_%read-lang125449%_ _%inp125452%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path125443%_)))))
          (gx#call-with-input-source-file _%path125443%_ _%read-e125450%_))))
    (define gx#core-read-module-package
      (lambda (_%path125391%_ _%pre125392%_ _%ns125393%_)
        (letrec ((_%string-e125395%_
                  (lambda (_%e125438%_)
                    (if (symbol? _%e125438%_)
                        (symbol->string _%e125438%_)
                        (if (string? _%e125438%_)
                            _%e125438%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e125438%_))))))
          (let _%lp125397%_ ((_%dir125399%_ (path-directory _%path125391%_))
                             (_%pkg-path125400%_ '()))
            (let ((_%gerbil.pkg125402%_
                   (path-expand '"gerbil.pkg" _%dir125399%_)))
              (if (##file-exists? _%gerbil.pkg125402%_)
                  (let ((_%plist125404%_
                         (gx#core-library-package-plist__% _%dir125399%_ '#t)))
                    (if (null? _%plist125404%_)
                        (let ((_%pkg125407%_
                               (if (not (null? _%pkg-path125400%_))
                                   (string-join _%pkg-path125400%_ '"/")
                                   '#f)))
                          (values _%pre125392%_ _%ns125393%_ _%pkg125407%_))
                        (if (list? _%plist125404%_)
                            (let* ((_%root125410%_
                                    (pgetq__0 'package: _%plist125404%_))
                                   (_%pkg125414%_
                                    (let ((_%pkg-path125412%_
                                           (if _%root125410%_
                                               (cons (_%string-e125395%_
                                                      _%root125410%_)
                                                     _%pkg-path125400%_)
                                               _%pkg-path125400%_)))
                                      (if (not (null? _%pkg-path125412%_))
                                          (string-join _%pkg-path125412%_ '"/")
                                          '#f)))
                                   (_%ns125421%_
                                    (let ((_%ns125419%_
                                           (let ((_%$e125416%_ _%ns125393%_))
                                             (if _%$e125416%_
                                                 _%$e125416%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist125404%_)))))
                                      (if _%ns125419%_
                                          (_%string-e125395%_ _%ns125419%_)
                                          '#f)))
                                   (_%pre125426%_
                                    (let ((_%$e125423%_ _%pre125392%_))
                                      (if _%$e125423%_
                                          _%$e125423%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist125404%_)))))
                              (values _%pre125426%_
                                      _%ns125421%_
                                      _%pkg125414%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist125404%_))))
                  (let ((_%dir*125430%_
                         (path-strip-trailing-directory-separator
                          _%dir125399%_)))
                    (if (or (__string-empty? _%dir*125430%_)
                            (equal? _%dir125399%_ _%dir*125430%_))
                        (values _%pre125392%_ _%ns125393%_ '#f)
                        (let ((_%xpath125435%_
                               (path-strip-directory _%dir*125430%_))
                              (_%xdir125436%_ (path-directory _%dir*125430%_)))
                          (_%lp125397%_
                           _%xdir125436%_
                           (cons _%xpath125435%_ _%pkg-path125400%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path125389%_)
        (path-strip-extension (path-strip-directory _%path125389%_))))
    (define gx#core-module-path->id
      (lambda (_%path125387%_)
        (##string->symbol (gx#core-module-path->namespace _%path125387%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path125366%_ _%rel125367%_)
        (let* ((_%path125369%_ (gx#stx-e _%stx-path125366%_))
               (_%path125371%_
                (if (__string-empty? (path-extension _%path125369%_))
                    (##string-append _%path125369%_ '".ss")
                    _%path125369%_)))
          (gx#core-resolve-path__%
           _%path125371%_
           (let ((_%$e125374%_ (gx#stx-source _%stx-path125366%_)))
             (if _%$e125374%_ _%$e125374%_ _%rel125367%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path125380%_)
        (let ((_%rel125382%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path125380%_ _%rel125382%_))))
    (define gx#core-resolve-module-path
      (lambda _g127016_
        (let ((_g127015_ (##length _g127016_)))
          (cond ((##fx= _g127015_ 1)
                 (apply gx#core-resolve-module-path__0 _g127016_))
                ((##fx= _g127015_ 2)
                 (apply gx#core-resolve-module-path__% _g127016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g127016_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath125251%_)
        (let* ((_%spath125253%_ (symbol->string (gx#stx-e _%libpath125251%_)))
               (_%spath125255%_
                (substring
                 _%spath125253%_
                 '1
                 (##string-length _%spath125253%_)))
               (_%ext125257%_ (path-extension _%spath125255%_))
               (_%ssi125259%_
                (if (__string-empty? _%ext125257%_)
                    (##string-append _%spath125255%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath125255%_)
                     '".ssi")))
               (_%srcs125263%_
                (if (__string-empty? _%ext125257%_)
                    (##map (lambda (_%ext125261%_)
                             (string-append _%spath125255%_ _%ext125261%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath125255%_ '()))))
          (let _%lp125266%_ ((_%rest125268%_ (load-path)))
            (let* ((_%rest125269125278%_ _%rest125268%_)
                   (_%E125272125282%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest125269125278%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K125274125353%_
                     (lambda (_%rest125293%_ _%dir125294%_)
                       (letrec ((_%resolve125296%_
                                 (lambda (_%ssi125309%_ _%srcs125310%_)
                                   (let ((_%compiled-path125312%_
                                          (path-expand
                                           _%ssi125309%_
                                           _%dir125294%_)))
                                     (if (##file-exists?
                                          _%compiled-path125312%_)
                                         (path-normalize
                                          _%compiled-path125312%_)
                                         (let _%lpr125314%_ ((_%rest-src125316%_
                                                              _%srcs125310%_))
                                           (let* ((_%rest-src125317125325%_
                                                   _%rest-src125316%_)
                                                  (_%else125319125333%_
                                                   (lambda ()
                                                     (_%lp125266%_
                                                      _%rest125293%_)))
                                                  (_%K125321125341%_
                                                   (lambda (_%rest-src125336%_
                                                            _%src125337%_)
                                                     (let ((_%src-path125339%_
                                                            (path-expand
                                                             _%src125337%_
                                                             _%dir125294%_)))
                                                       (if (##file-exists?
                                                            _%src-path125339%_)
                                                           (path-normalize
                                                            _%src-path125339%_)
                                                           (_%lpr125314%_
                                                            _%rest-src125336%_))))))
                                             (if (##pair? _%rest-src125317125325%_)
                                                 (let ((_%hd125322125344%_
                                                        (##car _%rest-src125317125325%_))
                                                       (_%tl125323125346%_
                                                        (##cdr _%rest-src125317125325%_)))
                                                   (let* ((_%src125349%_
                                                           _%hd125322125344%_)
                                                          (_%rest-src125351%_
                                                           _%tl125323125346%_))
                                                     (_%K125321125341%_
                                                      _%rest-src125351%_
                                                      _%src125349%_)))
                                                 (_%else125319125333%_)))))))))
                         (let ((_%$e125298%_
                                (gx#core-library-package-path-prefix
                                 _%dir125294%_)))
                           (if _%$e125298%_
                               ((lambda (_%prefix125301%_)
                                  (if (string-prefix?
                                       _%prefix125301%_
                                       _%spath125255%_)
                                      (let ((_%ssi125305%_
                                             (substring
                                              _%ssi125259%_
                                              (string-length _%prefix125301%_)
                                              (##string-length _%ssi125259%_)))
                                            (_%srcs125306%_
                                             (##map (lambda (_%src125303%_)
                                                      (substring
                                                       _%src125303%_
                                                       (string-length
                                                        _%prefix125301%_)
                                                       (string-length
                                                        _%src125303%_)))
                                                    _%srcs125263%_)))
                                        (_%resolve125296%_
                                         _%ssi125305%_
                                         _%srcs125306%_))
                                      (_%lp125266%_ _%rest125293%_)))
                                _%$e125298%_)
                               (_%resolve125296%_
                                _%ssi125259%_
                                _%srcs125263%_))))))
                    (_%K125273125287%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath125251%_))))
                (let ((_%try-match125271125290%_
                       (lambda ()
                         (if (##null? _%rest125269125278%_)
                             (_%K125273125287%_)
                             (_%E125272125282%_)))))
                  (if (##pair? _%rest125269125278%_)
                      (let ((_%tl125276125358%_ (##cdr _%rest125269125278%_))
                            (_%hd125275125356%_ (##car _%rest125269125278%_)))
                        (let ((_%dir125361%_ _%hd125275125356%_)
                              (_%rest125363%_ _%tl125276125358%_))
                          (_%K125274125353%_ _%rest125363%_ _%dir125361%_)))
                      (_%try-match125271125290%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath125219%_)
        (letrec ((_%resolve125221%_
                  (lambda (_%path125242%_ _%base125243%_)
                    (let ((_%$e125245%_
                           (string-rindex__0 _%base125243%_ '#\/)))
                      (if _%$e125245%_
                          ((lambda (_%idx125248%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base125243%_ '0 _%idx125248%_)
                                '"/"
                                _%path125242%_))))
                           _%$e125245%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path125242%_))))))))
          (let ((_%spath125223%_ (symbol->string (gx#stx-e _%modpath125219%_)))
                (_%mod125224%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod125224%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath125219%_))
            (let ((_%mpath125226%_
                   (symbol->string
                    (##structure-ref
                     _%mod125224%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp125228%_ ((_%spath125230%_ _%spath125223%_)
                                 (_%mpath125231%_ _%mpath125226%_))
                (if (string-prefix? '"../" _%spath125230%_)
                    (let ((_%$e125234%_
                           (string-rindex__0 _%mpath125231%_ '#\/)))
                      (if _%$e125234%_
                          ((lambda (_%idx125237%_)
                             (_%lp125228%_
                              (substring
                               _%spath125230%_
                               '3
                               (string-length _%spath125230%_))
                              (substring _%mpath125231%_ '0 _%idx125237%_)))
                           _%$e125234%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath125219%_)))
                    (if (string-prefix? '"./" _%spath125230%_)
                        (_%lp125228%_
                         (substring
                          _%spath125230%_
                          '2
                          (string-length _%spath125230%_))
                         _%mpath125231%_)
                        (_%resolve125221%_
                         _%spath125230%_
                         _%mpath125231%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir125211%_)
        (let ((_%$e125213%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir125211%_))))
          (if _%$e125213%_
              ((lambda (_%pkg125216%_)
                 (##string-append (symbol->string _%pkg125216%_) '"/"))
               _%$e125213%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir125181%_ _%exists?125182%_)
        (let ((_%$e125184%_ (hash-get gx#__module-pkg-cache _%dir125181%_)))
          (if _%$e125184%_
              (values _%$e125184%_)
              (let* ((_%gerbil.pkg125188%_
                      (path-expand '"gerbil.pkg" _%dir125181%_))
                     (_%plist125198%_
                      (if (or _%exists?125182%_
                              (##file-exists? _%gerbil.pkg125188%_))
                          (let ((_%e125193%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg125188%_
                                  read)))
                            (if (eof-object? _%e125193%_)
                                '()
                                (if (list? _%e125193%_)
                                    _%e125193%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg125188%_
                                     _%e125193%_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _%dir125181%_ _%plist125198%_)
                _%plist125198%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir125204%_)
        (let ((_%exists?125206%_ '#f))
          (gx#core-library-package-plist__% _%dir125204%_ _%exists?125206%_))))
    (define gx#core-library-package-plist
      (lambda _g127018_
        (let ((_g127017_ (##length _g127018_)))
          (cond ((##fx= _g127017_ 1)
                 (apply gx#core-library-package-plist__0 _g127018_))
                ((##fx= _g127017_ 2)
                 (apply gx#core-library-package-plist__% _g127018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g127018_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx125178%_)
        (gx#core-special-module-path? _%stx125178%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx125176%_)
        (gx#core-special-module-path? _%stx125176%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx125171%_ _%char125172%_)
        (if (gx#identifier? _%stx125171%_)
            (if (interned-symbol? (gx#stx-e _%stx125171%_))
                (let ((_%str125174%_
                       (symbol->string (gx#stx-e _%stx125171%_))))
                  (if (##fx> (##string-length _%str125174%_) '1)
                      (eq? (string-ref _%str125174%_ '0) _%char125172%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx125165%_)
        (gx#core-bound-identifier?__%
         _%stx125165%_
         (lambda (_%g125166125168%_)
           (gx#expander-binding?__% _%g125166125168%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx125159%_)
        (gx#core-bound-identifier?__%
         _%stx125159%_
         (lambda (_%g125160125162%_)
           (gx#expander-binding?__% _%g125160125162%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx125146%_)
        (letrec ((_%module-prelude?125148%_
                  (lambda (_%e125154%_)
                    (let ((_%$e125156%_
                           (##structure-instance-of?
                            _%e125154%_
                            'gx#module-context::t)))
                      (if _%$e125156%_
                          _%$e125156%_
                          (##structure-instance-of?
                           _%e125154%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx125146%_
           (lambda (_%g125149125151%_)
             (gx#expander-binding?__%
              _%g125149125151%_
              _%module-prelude?125148%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in125076%_ _%ctx125077%_ _%force-weak?125078%_)
        (let* ((_%in125079125088%_ _%in125076%_)
               (_%E125081125092%_
                (lambda ()
                  (error '"No clause matching"
                         _%in125079125088%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K125082125105%_
                (lambda (_%weak?125095%_
                         _%phi125096%_
                         _%key125097%_
                         _%source125098%_)
                  (gx#core-bind!__%
                   _%key125097%_
                   (let ((_%e125100%_
                          (gx#core-resolve-module-export _%source125098%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e125100%_ '1 '#f '#f)
                      _%key125097%_
                      _%phi125096%_
                      _%e125100%_
                      (##unchecked-structure-ref _%source125098%_ '1 '#f '#f)
                      (let ((_%$e125102%_ _%force-weak?125078%_))
                        (if _%$e125102%_ _%$e125102%_ _%weak?125095%_))))
                   gx#core-context-rebind?
                   _%phi125096%_
                   _%ctx125077%_))))
          (if (##structure-direct-instance-of?
               _%in125079125088%_
               'gx#module-import::t)
              (let* ((_%e125083125108%_
                      (##unchecked-structure-ref
                       _%in125079125088%_
                       '1
                       '#f
                       '#f))
                     (_%source125111%_ _%e125083125108%_)
                     (_%e125084125113%_
                      (##unchecked-structure-ref
                       _%in125079125088%_
                       '2
                       '#f
                       '#f))
                     (_%key125116%_ _%e125084125113%_)
                     (_%e125085125118%_
                      (##unchecked-structure-ref
                       _%in125079125088%_
                       '3
                       '#f
                       '#f))
                     (_%phi125121%_ _%e125085125118%_)
                     (_%e125086125123%_
                      (##unchecked-structure-ref
                       _%in125079125088%_
                       '4
                       '#f
                       '#f))
                     (_%weak?125126%_ _%e125086125123%_))
                (_%K125082125105%_
                 _%weak?125126%_
                 _%phi125121%_
                 _%key125116%_
                 _%source125111%_))
              (_%E125081125092%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in125131%_)
        (let* ((_%ctx125133%_ (gx#current-expander-context))
               (_%force-weak?125135%_ '#f))
          (gx#core-bind-import!__%
           _%in125131%_
           _%ctx125133%_
           _%force-weak?125135%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in125137%_ _%ctx125138%_)
        (let ((_%force-weak?125140%_ '#f))
          (gx#core-bind-import!__%
           _%in125137%_
           _%ctx125138%_
           _%force-weak?125140%_))))
    (define gx#core-bind-import!
      (lambda _g127020_
        (let ((_g127019_ (##length _g127020_)))
          (cond ((##fx= _g127019_ 1) (apply gx#core-bind-import!__0 _g127020_))
                ((##fx= _g127019_ 2) (apply gx#core-bind-import!__1 _g127020_))
                ((##fx= _g127019_ 3) (apply gx#core-bind-import!__% _g127020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g127020_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in125062%_ _%ctx125063%_)
        (gx#core-bind-import!__% _%in125062%_ _%ctx125063%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in125068%_)
        (let ((_%ctx125070%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in125068%_ _%ctx125070%_))))
    (define gx#core-bind-weak-import!
      (lambda _g127022_
        (let ((_g127021_ (##length _g127022_)))
          (cond ((##fx= _g127021_ 1)
                 (apply gx#core-bind-weak-import!__0 _g127022_))
                ((##fx= _g127021_ 2)
                 (apply gx#core-bind-weak-import!__% _g127022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g127022_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out124953%_)
        (letrec ((_%subst124955%_
                  (lambda (_%key125001%_)
                    (let* ((_%key125002125010%_ _%key125001%_)
                           (_%else125004125018%_ (lambda () _%key125001%_))
                           (_%K125006125049%_
                            (lambda (_%mark125021%_ _%id125022%_)
                              (let* ((_%mark125023125029%_ _%mark125021%_)
                                     (_%E125025125033%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark125023125029%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K125026125041%_
                                      (lambda (_%subst125036%_)
                                        (let ((_%$e125038%_
                                               (if _%subst125036%_
                                                   (hash-get
                                                    _%subst125036%_
                                                    _%id125022%_)
                                                   '#f)))
                                          (if _%$e125038%_
                                              _%$e125038%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key125001%_))))))
                                (if (##structure-instance-of?
                                     _%mark125023125029%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e125027125044%_
                                            (##unchecked-structure-ref
                                             _%mark125023125029%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst125047%_ _%e125027125044%_))
                                      (_%K125026125041%_ _%subst125047%_))
                                    (_%E125025125033%_))))))
                      (if (##pair? _%key125002125010%_)
                          (let ((_%hd125007125052%_
                                 (##car _%key125002125010%_))
                                (_%tl125008125054%_
                                 (##cdr _%key125002125010%_)))
                            (let* ((_%id125057%_ _%hd125007125052%_)
                                   (_%mark125059%_ _%tl125008125054%_))
                              (_%K125006125049%_ _%mark125059%_ _%id125057%_)))
                          (_%else125004125018%_))))))
          (let* ((_%out124956124966%_ _%out124953%_)
                 (_%E124958124970%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out124956124966%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K124959124977%_
                  (lambda (_%phi124973%_ _%key124974%_ _%ctx124975%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx124975%_ _%phi124973%_)
                     (_%subst124955%_ _%key124974%_)))))
            (if (##structure-direct-instance-of?
                 _%out124956124966%_
                 'gx#module-export::t)
                (let* ((_%e124960124980%_
                        (##unchecked-structure-ref
                         _%out124956124966%_
                         '1
                         '#f
                         '#f))
                       (_%ctx124983%_ _%e124960124980%_)
                       (_%e124961124985%_
                        (##unchecked-structure-ref
                         _%out124956124966%_
                         '2
                         '#f
                         '#f))
                       (_%key124988%_ _%e124961124985%_)
                       (_%e124962124990%_
                        (##unchecked-structure-ref
                         _%out124956124966%_
                         '3
                         '#f
                         '#f))
                       (_%phi124993%_ _%e124962124990%_)
                       (_%e124963124995%_
                        (##unchecked-structure-ref
                         _%out124956124966%_
                         '4
                         '#f
                         '#f))
                       (_%e124964124998%_
                        (##unchecked-structure-ref
                         _%out124956124966%_
                         '5
                         '#f
                         '#f)))
                  (_%K124959124977%_
                   _%phi124993%_
                   _%key124988%_
                   _%ctx124983%_))
                (_%E124958124970%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out124878%_ _%rename124879%_ _%dphi124880%_)
        (let* ((_%out124881124891%_ _%out124878%_)
               (_%E124883124895%_
                (lambda ()
                  (error '"No clause matching"
                         _%out124881124891%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K124884124907%_
                (lambda (_%weak?124898%_
                         _%name124899%_
                         _%phi124900%_
                         _%key124901%_
                         _%ctx124902%_)
                  (##structure
                   gx#module-import::t
                   _%out124878%_
                   (let ((_%$e124904%_ _%rename124879%_))
                     (if _%$e124904%_ _%$e124904%_ _%name124899%_))
                   (fx+ _%phi124900%_ _%dphi124880%_)
                   _%weak?124898%_))))
          (if (##structure-direct-instance-of?
               _%out124881124891%_
               'gx#module-export::t)
              (let* ((_%e124885124910%_
                      (##unchecked-structure-ref
                       _%out124881124891%_
                       '1
                       '#f
                       '#f))
                     (_%ctx124913%_ _%e124885124910%_)
                     (_%e124886124915%_
                      (##unchecked-structure-ref
                       _%out124881124891%_
                       '2
                       '#f
                       '#f))
                     (_%key124918%_ _%e124886124915%_)
                     (_%e124887124920%_
                      (##unchecked-structure-ref
                       _%out124881124891%_
                       '3
                       '#f
                       '#f))
                     (_%phi124923%_ _%e124887124920%_)
                     (_%e124888124925%_
                      (##unchecked-structure-ref
                       _%out124881124891%_
                       '4
                       '#f
                       '#f))
                     (_%name124928%_ _%e124888124925%_)
                     (_%e124889124930%_
                      (##unchecked-structure-ref
                       _%out124881124891%_
                       '5
                       '#f
                       '#f))
                     (_%weak?124933%_ _%e124889124930%_))
                (_%K124884124907%_
                 _%weak?124933%_
                 _%name124928%_
                 _%phi124923%_
                 _%key124918%_
                 _%ctx124913%_))
              (_%E124883124895%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out124938%_)
        (let* ((_%rename124940%_ '#f) (_%dphi124942%_ '0))
          (gx#core-module-export->import__%
           _%out124938%_
           _%rename124940%_
           _%dphi124942%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out124944%_ _%rename124945%_)
        (let ((_%dphi124947%_ '0))
          (gx#core-module-export->import__%
           _%out124944%_
           _%rename124945%_
           _%dphi124947%_))))
    (define gx#core-module-export->import
      (lambda _g127024_
        (let ((_g127023_ (##length _g127024_)))
          (cond ((##fx= _g127023_ 1)
                 (apply gx#core-module-export->import__0 _g127024_))
                ((##fx= _g127023_ 2)
                 (apply gx#core-module-export->import__1 _g127024_))
                ((##fx= _g127023_ 3)
                 (apply gx#core-module-export->import__% _g127024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g127024_))))))
    (define gx#core-expand-module%
      (lambda (_%stx124777%_)
        (letrec ((_%make-context124779%_
                  (lambda (_%id124856%_)
                    (let* ((_%super124858%_ (gx#current-expander-context))
                           (_%bind-id124860%_ (gx#stx-e _%id124856%_))
                           (_%mod-id124862%_
                            (if (##structure-instance-of?
                                 _%super124858%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super124858%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id124860%_)
                                _%bind-id124860%_))
                           (_%ns124864%_ (symbol->string _%mod-id124862%_))
                           (_%path124874%_
                            (if (##structure-instance-of?
                                 _%super124858%_
                                 'gx#module-context::t)
                                (let ((_%path124866%_
                                       (##unchecked-structure-ref
                                        _%super124858%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path124866%_)
                                          (null? _%path124866%_))
                                      (cons _%bind-id124860%_ _%path124866%_)
                                      (if (not _%path124866%_)
                                          _%bind-id124860%_
                                          (cons _%bind-id124860%_
                                                (cons _%path124866%_ '())))))
                                _%bind-id124860%_))
                           (__obj127000
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
                       __obj127000
                       _%mod-id124862%_
                       _%super124858%_
                       _%ns124864%_
                       _%path124874%_)
                      __obj127000)))
                 (_%valid-module-id?124780%_
                  (lambda (_%id124831%_)
                    (let* ((_%str124833%_ (symbol->string _%id124831%_))
                           (_%len124835%_ (##string-length _%str124833%_)))
                      (if (##fx>= _%len124835%_ '1)
                          (let _%loop124838%_ ((_%index124840%_
                                                (##fx- (##string-length
                                                        _%str124833%_)
                                                       '1)))
                            (if (##fx>= _%index124840%_ '0)
                                (let ((_%c124842%_
                                       (string-ref
                                        _%str124833%_
                                        _%index124840%_)))
                                  (if (or (and (##char>=? _%c124842%_ '#\a)
                                               (##char<=? _%c124842%_ '#\z))
                                          (and (##char>=? _%c124842%_ '#\A)
                                               (##char<=? _%c124842%_ '#\Z))
                                          (and (##char>=? _%c124842%_ '#\0)
                                               (##char<=? _%c124842%_ '#\9))
                                          (##char=? _%c124842%_ '#\_)
                                          (##char=? _%c124842%_ '#\-))
                                      (_%loop124838%_
                                       (##fx- _%index124840%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e124781124791%_ _%stx124777%_)
                 (_%E124783124795%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124781124791%_)))
                 (_%E124782124827%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124781124791%_)
                        (let ((_%e124784124799%_
                               (gx#syntax-e _%e124781124791%_)))
                          (let ((_%hd124785124802%_ (##car _%e124784124799%_))
                                (_%tl124786124804%_ (##cdr _%e124784124799%_)))
                            (if (gx#stx-pair? _%tl124786124804%_)
                                (let ((_%e124787124807%_
                                       (gx#syntax-e _%tl124786124804%_)))
                                  (let ((_%hd124788124810%_
                                         (##car _%e124787124807%_))
                                        (_%tl124789124812%_
                                         (##cdr _%e124787124807%_)))
                                    (let* ((_%id124815%_ _%hd124788124810%_)
                                           (_%body124817%_ _%tl124789124812%_))
                                      (if (and (gx#identifier? _%id124815%_)
                                               (gx#stx-list? _%body124817%_))
                                          (if (_%valid-module-id?124780%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx124819%_
                                                      (_%make-context124779%_
                                                       _%id124815%_))
                                                     (_%body124821%_
                                                      (gx#core-expand-module-begin
                                                       _%body124817%_
                                                       _%ctx124819%_))
                                                     (_%body124823%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body124821%_)
                                                       (gx#stx-source
                                                        _%stx124777%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx124819%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body124823%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx124819%_
                                                 _%body124823%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id124815%_
                                                 _%ctx124819%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id124815%_)
                                                  _%body124823%_)
                                                 (gx#stx-source
                                                  _%stx124777%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx124777%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E124783124795%_)))))
                                (_%E124783124795%_))))
                        (_%E124783124795%_)))))
            (_%E124782124827%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body124743%_ _%ctx124744%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx124747%_
                   (gx#core-expand-head (cons '%%begin-module _%body124743%_)))
                  (_%e124748124755%_ _%stx124747%_)
                  (_%E124750124759%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx124747%_)))
                  (_%E124749124773%_
                   (lambda ()
                     (if (gx#stx-pair? _%e124748124755%_)
                         (let ((_%e124751124763%_
                                (gx#syntax-e _%e124748124755%_)))
                           (let ((_%hd124752124766%_ (##car _%e124751124763%_))
                                 (_%tl124753124768%_
                                  (##cdr _%e124751124763%_)))
                             (if (and (gx#identifier? _%hd124752124766%_)
                                      (gx#core-identifier=?
                                       _%hd124752124766%_
                                       '%#begin-module))
                                 (let ((_%body124771%_ _%tl124753124768%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx124747%_)
                                           _%body124771%_
                                           (gx#core-expand-module-body
                                            _%body124771%_))
                                       (_%E124750124759%_)))
                                 (_%E124750124759%_))))
                         (_%E124750124759%_)))))
             (_%E124749124773%_)))
         gx#current-expander-context
         _%ctx124744%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body124539%_)
        (letrec ((_%expand-special124541%_
                  (lambda (_%hd124670%_ _%K124671%_ _%rest124672%_ _%r124673%_)
                    (let* ((_%e124674124691%_ _%hd124670%_)
                           (_%E124686124695%_
                            (lambda ()
                              (_%K124671%_
                               _%rest124672%_
                               (cons (gx#core-expand-top _%hd124670%_)
                                     _%r124673%_))))
                           (_%E124676124707%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124674124691%_)
                                  (let ((_%e124687124699%_
                                         (gx#syntax-e _%e124674124691%_)))
                                    (let ((_%hd124688124702%_
                                           (##car _%e124687124699%_))
                                          (_%tl124689124704%_
                                           (##cdr _%e124687124699%_)))
                                      (if (and (gx#identifier?
                                                _%hd124688124702%_)
                                               (gx#core-identifier=?
                                                _%hd124688124702%_
                                                '%#export))
                                          (if '#t
                                              (_%K124671%_
                                               _%rest124672%_
                                               (cons _%hd124670%_ _%r124673%_))
                                              (_%E124686124695%_))
                                          (_%E124686124695%_))))
                                  (_%E124686124695%_))))
                           (_%E124675124739%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124674124691%_)
                                  (let ((_%e124677124711%_
                                         (gx#syntax-e _%e124674124691%_)))
                                    (let ((_%hd124678124714%_
                                           (##car _%e124677124711%_))
                                          (_%tl124679124716%_
                                           (##cdr _%e124677124711%_)))
                                      (if (and (gx#identifier?
                                                _%hd124678124714%_)
                                               (gx#core-identifier=?
                                                _%hd124678124714%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl124679124716%_)
                                              (let ((_%e124680124719%_
                                                     (gx#syntax-e
                                                      _%tl124679124716%_)))
                                                (let ((_%hd124681124722%_
                                                       (##car _%e124680124719%_))
                                                      (_%tl124682124724%_
                                                       (##cdr _%e124680124719%_)))
                                                  (let ((_%hd-bind124727%_
                                                         _%hd124681124722%_))
                                                    (if (gx#stx-pair?
                                                         _%tl124682124724%_)
                                                        (let ((_%e124683124729%_
                                                               (gx#syntax-e
                                                                _%tl124682124724%_)))
                                                          (let ((_%hd124684124732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e124683124729%_))
                        (_%tl124685124734%_ (##cdr _%e124683124729%_)))
                    (let ((_%expr124737%_ _%hd124684124732%_))
                      (if (gx#stx-null? _%tl124685124734%_)
                          (if (gx#core-bind-values? _%hd-bind124727%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind124727%_)
                                (_%K124671%_
                                 _%rest124672%_
                                 (cons _%hd124670%_ _%r124673%_)))
                              (_%E124676124707%_))
                          (_%E124676124707%_)))))
                (_%E124676124707%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124676124707%_))
                                          (_%E124676124707%_))))
                                  (_%E124676124707%_)))))
                      (_%E124675124739%_))))
                 (_%expand-body124542%_
                  (lambda (_%rbody124544%_)
                    (let _%lp124546%_ ((_%rest124548%_ _%rbody124544%_)
                                       (_%body124549%_ '()))
                      (let* ((_%rest124550124558%_ _%rest124548%_)
                             (_%else124552124566%_ (lambda () _%body124549%_))
                             (_%K124554124658%_
                              (lambda (_%rest124569%_ _%hd124570%_)
                                (let* ((_%e124571124592%_ _%hd124570%_)
                                       (_%E124587124596%_
                                        (lambda ()
                                          (_%lp124546%_
                                           _%rest124569%_
                                           (cons (gx#core-expand-expression
                                                  _%hd124570%_)
                                                 _%body124549%_))))
                                       (_%E124583124610%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124571124592%_)
                                              (let ((_%e124588124600%_
                                                     (gx#syntax-e
                                                      _%e124571124592%_)))
                                                (let ((_%hd124589124603%_
                                                       (##car _%e124588124600%_))
                                                      (_%tl124590124605%_
                                                       (##cdr _%e124588124600%_)))
                                                  (let ((_%form124608%_
                                                         _%hd124589124603%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form124608%_
                                                         gx#special-form-binding?)
                                                        (_%lp124546%_
                                                         _%rest124569%_
                                                         (cons _%hd124570%_
                                                               _%body124549%_))
                                                        (_%E124587124596%_)))))
                                              (_%E124587124596%_))))
                                       (_%E124573124622%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124571124592%_)
                                              (let ((_%e124584124614%_
                                                     (gx#syntax-e
                                                      _%e124571124592%_)))
                                                (let ((_%hd124585124617%_
                                                       (##car _%e124584124614%_))
                                                      (_%tl124586124619%_
                                                       (##cdr _%e124584124614%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124585124617%_)
                                                           (gx#core-identifier=?
                                                            _%hd124585124617%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp124546%_
                                                           _%rest124569%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd124570%_)
                         _%body124549%_))
                  (_%E124583124610%_))
              (_%E124583124610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124583124610%_))))
                                       (_%E124572124654%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124571124592%_)
                                              (let ((_%e124574124626%_
                                                     (gx#syntax-e
                                                      _%e124571124592%_)))
                                                (let ((_%hd124575124629%_
                                                       (##car _%e124574124626%_))
                                                      (_%tl124576124631%_
                                                       (##cdr _%e124574124626%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124575124629%_)
                                                           (gx#core-identifier=?
                                                            _%hd124575124629%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl124576124631%_)
                                                          (let ((_%e124577124634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl124576124631%_)))
                    (let ((_%hd124578124637%_ (##car _%e124577124634%_))
                          (_%tl124579124639%_ (##cdr _%e124577124634%_)))
                      (let ((_%hd-bind124642%_ _%hd124578124637%_))
                        (if (gx#stx-pair? _%tl124579124639%_)
                            (let ((_%e124580124644%_
                                   (gx#syntax-e _%tl124579124639%_)))
                              (let ((_%hd124581124647%_
                                     (##car _%e124580124644%_))
                                    (_%tl124582124649%_
                                     (##cdr _%e124580124644%_)))
                                (let ((_%expr124652%_ _%hd124581124647%_))
                                  (if (gx#stx-null? _%tl124582124649%_)
                                      (if '#t
                                          (_%lp124546%_
                                           _%rest124569%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind124642%_)
                                                   (gx#core-expand-expression
                                                    _%expr124652%_))
                                                  (gx#stx-source _%hd124570%_))
                                                 _%body124549%_))
                                          (_%E124573124622%_))
                                      (_%E124573124622%_)))))
                            (_%E124573124622%_)))))
                  (_%E124573124622%_))
              (_%E124573124622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124573124622%_)))))
                                  (_%E124572124654%_)))))
                        (if (##pair? _%rest124550124558%_)
                            (let ((_%hd124555124661%_
                                   (##car _%rest124550124558%_))
                                  (_%tl124556124663%_
                                   (##cdr _%rest124550124558%_)))
                              (let* ((_%hd124666%_ _%hd124555124661%_)
                                     (_%rest124668%_ _%tl124556124663%_))
                                (_%K124554124658%_
                                 _%rest124668%_
                                 _%hd124666%_)))
                            (_%else124552124566%_)))))))
          (_%expand-body124542%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body124539%_)
            _%expand-special124541%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx124380%_
               _%expanded?124381%_
               _%method124382%_
               _%current-phi124383%_
               _%expand1124384%_)
        (letrec ((_%K124386%_
                  (lambda (_%rest124506%_ _%r124507%_)
                    (let* ((_%e124508124515%_ _%rest124506%_)
                           (_%E124510124519%_ (lambda () _%r124507%_))
                           (_%E124509124535%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124508124515%_)
                                  (let ((_%e124511124523%_
                                         (gx#syntax-e _%e124508124515%_)))
                                    (let ((_%hd124512124526%_
                                           (##car _%e124511124523%_))
                                          (_%tl124513124528%_
                                           (##cdr _%e124511124523%_)))
                                      (let* ((_%hd124531%_ _%hd124512124526%_)
                                             (_%rest124533%_
                                              _%tl124513124528%_))
                                        (if '#t
                                            (_%step124387%_
                                             _%hd124531%_
                                             _%rest124533%_
                                             _%r124507%_)
                                            (_%E124510124519%_)))))
                                  (_%E124510124519%_)))))
                      (_%E124509124535%_))))
                 (_%step124387%_
                  (lambda (_%hd124420%_ _%rest124421%_ _%r124422%_)
                    (let* ((_%e124423124441%_ _%hd124420%_)
                           (_%E124436124445%_
                            (lambda ()
                              (if (_%expanded?124381%_ (gx#stx-e _%hd124420%_))
                                  (_%K124386%_
                                   _%rest124421%_
                                   (cons (gx#stx-e _%hd124420%_) _%r124422%_))
                                  (_%expand1124384%_
                                   _%hd124420%_
                                   _%K124386%_
                                   _%rest124421%_
                                   _%r124422%_))))
                           (_%E124432124461%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124423124441%_)
                                  (let ((_%e124437124449%_
                                         (gx#syntax-e _%e124423124441%_)))
                                    (let ((_%hd124438124452%_
                                           (##car _%e124437124449%_))
                                          (_%tl124439124454%_
                                           (##cdr _%e124437124449%_)))
                                      (let* ((_%macro124457%_
                                              _%hd124438124452%_)
                                             (_%body124459%_
                                              _%tl124439124454%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro124457%_
                                             gx#syntax-binding?)
                                            (_%K124386%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro124457%_)
                                                    _%hd124420%_
                                                    _%method124382%_)
                                                   _%rest124421%_)
                                             _%r124422%_)
                                            (_%E124436124445%_)))))
                                  (_%E124436124445%_))))
                           (_%E124425124475%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124423124441%_)
                                  (let ((_%e124433124465%_
                                         (gx#syntax-e _%e124423124441%_)))
                                    (let ((_%hd124434124468%_
                                           (##car _%e124433124465%_))
                                          (_%tl124435124470%_
                                           (##cdr _%e124433124465%_)))
                                      (if (eq? (gx#stx-e _%hd124434124468%_)
                                               'begin:)
                                          (let ((_%body124473%_
                                                 _%tl124435124470%_))
                                            (if '#t
                                                (_%K124386%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest124421%_
                                                  _%body124473%_)
                                                 _%r124422%_)
                                                (_%E124432124461%_)))
                                          (_%E124432124461%_))))
                                  (_%E124432124461%_))))
                           (_%E124424124502%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124423124441%_)
                                  (let ((_%e124426124479%_
                                         (gx#syntax-e _%e124423124441%_)))
                                    (let ((_%hd124427124482%_
                                           (##car _%e124426124479%_))
                                          (_%tl124428124484%_
                                           (##cdr _%e124426124479%_)))
                                      (if (eq? (gx#stx-e _%hd124427124482%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl124428124484%_)
                                              (let ((_%e124429124487%_
                                                     (gx#syntax-e
                                                      _%tl124428124484%_)))
                                                (let ((_%hd124430124490%_
                                                       (##car _%e124429124487%_))
                                                      (_%tl124431124492%_
                                                       (##cdr _%e124429124487%_)))
                                                  (let* ((_%dphi124495%_
                                                          _%hd124430124490%_)
                                                         (_%body124497%_
                                                          _%tl124431124492%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi124495%_)
                                                        (let ((_%rbody124500%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K124386%_ _%body124497%_ '()))
                        _%current-phi124383%_
                        (fx+ (gx#stx-e _%dphi124495%_)
                             (_%current-phi124383%_)))))
                  (_%K124386%_
                   _%rest124421%_
                   (__foldr1 cons _%r124422%_ _%rbody124500%_)))
                (_%E124425124475%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124425124475%_))
                                          (_%E124425124475%_))))
                                  (_%E124425124475%_)))))
                      (_%E124424124502%_)))))
          (let* ((_%e124388124395%_ _%stx124380%_)
                 (_%E124390124399%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124388124395%_)))
                 (_%E124389124416%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124388124395%_)
                        (let ((_%e124391124403%_
                               (gx#syntax-e _%e124388124395%_)))
                          (let ((_%hd124392124406%_ (##car _%e124391124403%_))
                                (_%tl124393124408%_ (##cdr _%e124391124403%_)))
                            (let ((_%body124411%_ _%tl124393124408%_))
                              (if '#t
                                  (if (_%current-phi124383%_)
                                      (_%K124386%_ _%body124411%_ '())
                                      (__call-with-parameters
                                       (lambda ()
                                         (_%K124386%_ _%body124411%_ '()))
                                       _%current-phi124383%_
                                       (gx#current-expander-phi)))
                                  (_%E124390124399%_)))))
                        (_%E124390124399%_)))))
            (_%E124389124416%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx124034%_ _%internal-expand?124035%_)
        (letrec ((_%expand1124037%_
                  (lambda (_%hd124352%_ _%K124353%_ _%rest124354%_ _%r124355%_)
                    (if (gx#core-bound-module? _%hd124352%_)
                        (_%import1124038%_
                         (gx#syntax-local-e__0 _%hd124352%_)
                         _%K124353%_
                         _%rest124354%_
                         _%r124355%_)
                        (if (gx#core-library-module-path? _%hd124352%_)
                            (_%import1124038%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd124352%_))
                             _%K124353%_
                             _%rest124354%_
                             _%r124355%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd124352%_)
                                (_%import1124038%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd124352%_))
                                 _%K124353%_
                                 _%rest124354%_
                                 _%r124355%_)
                                (let ((_%e124361%_ (gx#stx-e _%hd124352%_)))
                                  (if (pair? _%e124361%_)
                                      (let ((_%$e124364%_
                                             (gx#stx-e (car _%e124361%_))))
                                        (if (eq? 'spec: _%$e124364%_)
                                            (_%import-spec124041%_
                                             _%hd124352%_
                                             _%K124353%_
                                             _%rest124354%_
                                             _%r124355%_)
                                            (if (eq? 'in: _%$e124364%_)
                                                (_%import-submodule124039%_
                                                 _%hd124352%_
                                                 _%K124353%_
                                                 _%rest124354%_
                                                 _%r124355%_)
                                                (if (eq? 'runtime:
                                                         _%$e124364%_)
                                                    (_%import-runtime124040%_
                                                     _%hd124352%_
                                                     _%K124353%_
                                                     _%rest124354%_
                                                     _%r124355%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx124034%_
                                                     _%hd124352%_)))))
                                      (if (string? _%e124361%_)
                                          (_%import1124038%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd124352%_
                                             (gx#stx-source _%stx124034%_)))
                                           _%K124353%_
                                           _%rest124354%_
                                           _%r124355%_)
                                          (if (##structure-instance-of?
                                               _%e124361%_
                                               'gx#module-context::t)
                                              (_%K124353%_
                                               _%rest124354%_
                                               (cons _%e124361%_ _%r124355%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx124034%_
                                               _%hd124352%_))))))))))
                 (_%import1124038%_
                  (lambda (_%ctx124341%_
                           _%K124342%_
                           _%rest124343%_
                           _%r124344%_)
                    (let ((_%dphi124346%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K124342%_
                       _%rest124343%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx124341%_
                              _%dphi124346%_
                              (map (lambda (_%g124347124349%_)
                                     (gx#core-module-export->import__%
                                      _%g124347124349%_
                                      '#f
                                      _%dphi124346%_))
                                   (##unchecked-structure-ref
                                    _%ctx124341%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r124344%_)))))
                 (_%import-submodule124039%_
                  (lambda (_%hd124308%_ _%K124309%_ _%rest124310%_ _%r124311%_)
                    (let* ((_%e124312124319%_ _%hd124308%_)
                           (_%E124314124323%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124312124319%_)))
                           (_%E124313124337%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124312124319%_)
                                  (let ((_%e124315124327%_
                                         (gx#syntax-e _%e124312124319%_)))
                                    (let ((_%hd124316124330%_
                                           (##car _%e124315124327%_))
                                          (_%tl124317124332%_
                                           (##cdr _%e124315124327%_)))
                                      (let ((_%spath124335%_
                                             _%tl124317124332%_))
                                        (if '#t
                                            (_%import1124038%_
                                             (_%import-spec-source124042%_
                                              _%spath124335%_)
                                             _%K124309%_
                                             _%rest124310%_
                                             _%r124311%_)
                                            (_%E124314124323%_)))))
                                  (_%E124314124323%_)))))
                      (_%E124313124337%_))))
                 (_%import-runtime124040%_
                  (lambda (_%hd124275%_ _%K124276%_ _%rest124277%_ _%r124278%_)
                    (let* ((_%e124279124286%_ _%hd124275%_)
                           (_%E124281124290%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124279124286%_)))
                           (_%E124280124304%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124279124286%_)
                                  (let ((_%e124282124294%_
                                         (gx#syntax-e _%e124279124286%_)))
                                    (let ((_%hd124283124297%_
                                           (##car _%e124282124294%_))
                                          (_%tl124284124299%_
                                           (##cdr _%e124282124294%_)))
                                      (let ((_%spath124302%_
                                             _%tl124284124299%_))
                                        (if '#t
                                            (_%K124276%_
                                             _%rest124277%_
                                             (cons (_%import-spec-source124042%_
                                                    _%spath124302%_)
                                                   _%r124278%_))
                                            (_%E124281124290%_)))))
                                  (_%E124281124290%_)))))
                      (_%E124280124304%_))))
                 (_%import-spec124041%_
                  (lambda (_%hd124113%_ _%K124114%_ _%rest124115%_ _%r124116%_)
                    (let* ((_%e124117124134%_ _%hd124113%_)
                           (_%E124126124138%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124117124134%_)))
                           (_%E124119124249%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124117124134%_)
                                  (let ((_%e124127124142%_
                                         (gx#syntax-e _%e124117124134%_)))
                                    (let ((_%hd124128124145%_
                                           (##car _%e124127124142%_))
                                          (_%tl124129124147%_
                                           (##cdr _%e124127124142%_)))
                                      (if (gx#stx-pair? _%tl124129124147%_)
                                          (let ((_%e124130124150%_
                                                 (gx#syntax-e
                                                  _%tl124129124147%_)))
                                            (let ((_%hd124131124153%_
                                                   (##car _%e124130124150%_))
                                                  (_%tl124132124155%_
                                                   (##cdr _%e124130124150%_)))
                                              (let* ((_%path124158%_
                                                      _%hd124131124153%_)
                                                     (_%specs124160%_
                                                      _%tl124132124155%_))
                                                (if '#t
                                                    (let ((_%src-ctx124162%_
                                                           (_%import-spec-source124042%_
                                                            _%path124158%_))
                                                          (_%exports124163%_
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
                                                          (_%specs124164%_
                                                           (gx#syntax->list
                                                            _%specs124160%_)))
                                                      (for-each
                                                       (lambda (_%out124166%_)
                                                         (hash-put!
                                                          _%exports124163%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out124166%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out124166%_ '4 '#f '#f))
                  _%out124166%_))
               (##unchecked-structure-ref _%src-ctx124162%_ '9 '#f '#f))
              (_%K124114%_
               _%rest124115%_
               (__foldl1
                (lambda (_%spec124168%_ _%r124169%_)
                  (let* ((_%e124170124186%_ _%spec124168%_)
                         (_%E124172124190%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e124170124186%_)))
                         (_%E124171124245%_
                          (lambda ()
                            (if (gx#stx-pair? _%e124170124186%_)
                                (let ((_%e124173124194%_
                                       (gx#syntax-e _%e124170124186%_)))
                                  (let ((_%hd124174124197%_
                                         (##car _%e124173124194%_))
                                        (_%tl124175124199%_
                                         (##cdr _%e124173124194%_)))
                                    (let ((_%phi124202%_ _%hd124174124197%_))
                                      (if (gx#stx-pair? _%tl124175124199%_)
                                          (let ((_%e124176124204%_
                                                 (gx#syntax-e
                                                  _%tl124175124199%_)))
                                            (let ((_%hd124177124207%_
                                                   (##car _%e124176124204%_))
                                                  (_%tl124178124209%_
                                                   (##cdr _%e124176124204%_)))
                                              (let ((_%name124212%_
                                                     _%hd124177124207%_))
                                                (if (gx#stx-pair?
                                                     _%tl124178124209%_)
                                                    (let ((_%e124179124214%_
                                                           (gx#syntax-e
                                                            _%tl124178124209%_)))
                                                      (let ((_%hd124180124217%_
                                                             (##car _%e124179124214%_))
                                                            (_%tl124181124219%_
                                                             (##cdr _%e124179124214%_)))
                                                        (let ((_%src-phi124222%_
                                                               _%hd124180124217%_))
                                                          (if (gx#stx-pair?
                                                               _%tl124181124219%_)
                                                              (let ((_%e124182124224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl124181124219%_)))
                        (let ((_%hd124183124227%_ (##car _%e124182124224%_))
                              (_%tl124184124229%_ (##cdr _%e124182124224%_)))
                          (let ((_%src-name124232%_ _%hd124183124227%_))
                            (if (gx#stx-null? _%tl124184124229%_)
                                (if (and (gx#stx-fixnum? _%src-phi124222%_)
                                         (gx#identifier? _%src-name124232%_)
                                         (gx#stx-fixnum? _%phi124202%_)
                                         (gx#identifier? _%name124212%_))
                                    (let ((_%src-phi124234%_
                                           (gx#stx-e _%src-phi124222%_))
                                          (_%src-name124235%_
                                           (gx#core-identifier-key
                                            _%src-name124232%_))
                                          (_%phi124236%_
                                           (gx#stx-e _%phi124202%_))
                                          (_%name124237%_
                                           (gx#core-identifier-key
                                            _%name124212%_)))
                                      (let ((_%$e124239%_
                                             (hash-get
                                              _%exports124163%_
                                              (cons _%src-phi124234%_
                                                    _%src-name124235%_))))
                                        (if _%$e124239%_
                                            ((lambda (_%out124242%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out124242%_
                                                      _%name124237%_
                                                      (fx- _%phi124236%_
                                                           _%src-phi124234%_))
                                                     _%r124169%_))
                                             _%$e124239%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _%stx124034%_
                                             _%hd124113%_))))
                                    (_%E124172124190%_))
                                (_%E124172124190%_)))))
                      (_%E124172124190%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E124172124190%_)))))
                                          (_%E124172124190%_)))))
                                (_%E124172124190%_)))))
                    (_%E124171124245%_)))
                _%r124116%_
                _%specs124164%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E124126124138%_)))))
                                          (_%E124126124138%_))))
                                  (_%E124126124138%_))))
                           (_%E124118124271%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124117124134%_)
                                  (let ((_%e124120124253%_
                                         (gx#syntax-e _%e124117124134%_)))
                                    (let ((_%hd124121124256%_
                                           (##car _%e124120124253%_))
                                          (_%tl124122124258%_
                                           (##cdr _%e124120124253%_)))
                                      (if (gx#stx-pair? _%tl124122124258%_)
                                          (let ((_%e124123124261%_
                                                 (gx#syntax-e
                                                  _%tl124122124258%_)))
                                            (let ((_%hd124124124264%_
                                                   (##car _%e124123124261%_))
                                                  (_%tl124125124266%_
                                                   (##cdr _%e124123124261%_)))
                                              (let ((_%path124269%_
                                                     _%hd124124124264%_))
                                                (if (gx#stx-null?
                                                     _%tl124125124266%_)
                                                    (if '#t
                                                        (_%K124114%_
                                                         _%rest124115%_
                                                         (cons (_%import-spec-source124042%_
                                                                _%path124269%_)
                                                               _%r124116%_))
                                                        (_%E124119124249%_))
                                                    (_%E124119124249%_)))))
                                          (_%E124119124249%_))))
                                  (_%E124119124249%_)))))
                      (_%E124118124271%_))))
                 (_%import-spec-source124042%_
                  (lambda (_%spath124111%_)
                    (gx#core-import-nested-module
                     _%spath124111%_
                     _%stx124034%_)))
                 (_%import!124043%_
                  (lambda (_%rbody124056%_)
                    (letrec* ((_%current-ctx124058%_
                               (gx#current-expander-context))
                              (_%deps124059%_ (make-hash-table-eq))
                              (_%bind!124060%_
                               (lambda (_%hd124109%_)
                                 (gx#core-bind-import!__1
                                  _%hd124109%_
                                  _%current-ctx124058%_))))
                      (let _%lp124062%_ ((_%rest124064%_ _%rbody124056%_)
                                         (_%body124065%_ '()))
                        (let* ((_%rest124066124074%_ _%rest124064%_)
                               (_%else124068124085%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx124058%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx124058%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx124058%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body124065%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx124082%_ _%_124083%_)
                                     (gx#eval-module _%ctx124082%_))
                                   _%deps124059%_)
                                  _%body124065%_))
                               (_%K124070124097%_
                                (lambda (_%rest124088%_ _%hd124089%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd124089%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!124060%_ _%hd124089%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd124089%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd124089%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps124059%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd124089%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd124089%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!124060%_
                                             (##unchecked-structure-ref
                                              _%hd124089%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd124089%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps124059%_
                                                 (##unchecked-structure-ref
                                                  _%hd124089%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e124093%_
                                                 (##structure-instance-of?
                                                  _%hd124089%_
                                                  'gx#module-context::t)))
                                            (if _%$e124093%_
                                                _%$e124093%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx124034%_
                                                 _%hd124089%_)))))
                                  (_%lp124062%_
                                   _%rest124088%_
                                   (cons _%hd124089%_ _%body124065%_)))))
                          (if (##pair? _%rest124066124074%_)
                              (let ((_%hd124071124100%_
                                     (##car _%rest124066124074%_))
                                    (_%tl124072124102%_
                                     (##cdr _%rest124066124074%_)))
                                (let* ((_%hd124105%_ _%hd124071124100%_)
                                       (_%rest124107%_ _%tl124072124102%_))
                                  (_%K124070124097%_
                                   _%rest124107%_
                                   _%hd124105%_)))
                              (_%else124068124085%_)))))))
                 (_%expanded-import?124044%_
                  (lambda (_%e124048%_)
                    (let ((_%$e124050%_
                           (##structure-direct-instance-of?
                            _%e124048%_
                            'gx#import-set::t)))
                      (if _%$e124050%_
                          _%$e124050%_
                          (let ((_%$e124053%_
                                 (##structure-direct-instance-of?
                                  _%e124048%_
                                  'gx#module-import::t)))
                            (if _%$e124053%_
                                _%$e124053%_
                                (##structure-instance-of?
                                 _%e124048%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody124046%_
                 (gx#core-expand-import/export
                  _%stx124034%_
                  _%expanded-import?124044%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1124037%_)))
            (if _%internal-expand?124035%_
                (reverse _%rbody124046%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!124043%_ _%rbody124046%_))
                 (gx#stx-source _%stx124034%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx124373%_)
        (let ((_%internal-expand?124375%_ '#f))
          (gx#core-expand-import%__%
           _%stx124373%_
           _%internal-expand?124375%_))))
    (define gx#core-expand-import%
      (lambda _g127026_
        (let ((_g127025_ (##length _g127026_)))
          (cond ((##fx= _g127025_ 1)
                 (apply gx#core-expand-import%__0 _g127026_))
                ((##fx= _g127025_ 2)
                 (apply gx#core-expand-import%__% _g127026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g127026_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath123961%_ _%where123962%_)
        (let* ((_%e123963123970%_ _%spath123961%_)
               (_%E123965123974%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123963123970%_)))
               (_%E123964124029%_
                (lambda ()
                  (if (gx#stx-pair? _%e123963123970%_)
                      (let ((_%e123966123978%_
                             (gx#syntax-e _%e123963123970%_)))
                        (let ((_%hd123967123981%_ (##car _%e123966123978%_))
                              (_%tl123968123983%_ (##cdr _%e123966123978%_)))
                          (let* ((_%origin123986%_ _%hd123967123981%_)
                                 (_%sub123988%_ _%tl123968123983%_))
                            (if '#t
                                (let ((_%origin-ctx123990%_
                                       (if (gx#stx-false? _%origin123986%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin123986%_))))
                                  (let _%lp123992%_ ((_%rest123994%_
                                                      _%sub123988%_)
                                                     (_%ctx123995%_
                                                      _%origin-ctx123990%_))
                                    (let* ((_%e123996124003%_ _%rest123994%_)
                                           (_%E123998124007%_
                                            (lambda () _%ctx123995%_))
                                           (_%E123997124025%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e123996124003%_)
                                                  (let ((_%e123999124011%_
                                                         (gx#syntax-e
                                                          _%e123996124003%_)))
                                                    (let ((_%hd124000124014%_
                                                           (##car _%e123999124011%_))
                                                          (_%tl124001124016%_
                                                           (##cdr _%e123999124011%_)))
                                                      (let* ((_%id124019%_
                                                              _%hd124000124014%_)
                                                             (_%rest124021%_
                                                              _%tl124001124016%_))
                                                        (if '#t
                                                            (let ((_%bind124023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id124019%_
                            '0
                            _%ctx123995%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind124023%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind124023%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where123962%_
                           _%spath123961%_
                           _%id124019%_))
                      (_%lp123992%_
                       _%rest124021%_
                       (##unchecked-structure-ref _%bind124023%_ '4 '#f '#f)))
                    (_%E123998124007%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123998124007%_)))))
                                      (_%E123997124025%_))))
                                (_%E123965123974%_)))))
                      (_%E123965123974%_)))))
          (_%E123964124029%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd123959%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd123959%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx123453%_ _%internal-expand?123454%_)
        (letrec* ((_%make-export__126954126955%_
                   (lambda (_%bind123907%_
                            _%phi123908%_
                            _%ctx123909%_
                            _%name123910%_)
                     (let* ((_%key123912%_
                             (##unchecked-structure-ref
                              _%bind123907%_
                              '2
                              '#f
                              '#f))
                            (_%export-key123914%_
                             (if _%name123910%_
                                 (gx#core-identifier-key _%name123910%_)
                                 _%key123912%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx123909%_
                        _%key123912%_
                        _%phi123908%_
                        _%export-key123914%_
                        (let ((_%$e123917%_
                               (##structure-instance-of?
                                _%bind123907%_
                                'gx#extern-binding::t)))
                          (if _%$e123917%_
                              _%$e123917%_
                              (##structure-direct-instance-of?
                               _%bind123907%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__126956126959%_
                   (lambda (_%bind123923%_)
                     (let* ((_%phi123925%_ (gx#current-export-expander-phi))
                            (_%ctx123927%_ (gx#current-expander-context))
                            (_%name123929%_ '#f))
                       (_%make-export__126954126955%_
                        _%bind123923%_
                        _%phi123925%_
                        _%ctx123927%_
                        _%name123929%_))))
                  (_%make-export__1__126957126960%_
                   (lambda (_%bind123931%_ _%phi123932%_)
                     (let* ((_%ctx123934%_ (gx#current-expander-context))
                            (_%name123936%_ '#f))
                       (_%make-export__126954126955%_
                        _%bind123931%_
                        _%phi123932%_
                        _%ctx123934%_
                        _%name123936%_))))
                  (_%make-export__2__126958126961%_
                   (lambda (_%bind123938%_ _%phi123939%_ _%ctx123940%_)
                     (let ((_%name123942%_ '#f))
                       (_%make-export__126954126955%_
                        _%bind123938%_
                        _%phi123939%_
                        _%ctx123940%_
                        _%name123942%_))))
                  (_%make-export123456%_
                   (lambda _g127028_
                     (let ((_g127027_ (##length _g127028_)))
                       (cond ((##fx= _g127027_ 1)
                              (apply _%make-export__0__126956126959%_
                                     _g127028_))
                             ((##fx= _g127027_ 2)
                              (apply _%make-export__1__126957126960%_
                                     _g127028_))
                             ((##fx= _g127027_ 3)
                              (apply _%make-export__2__126958126961%_
                                     _g127028_))
                             ((##fx= _g127027_ 4)
                              (apply _%make-export__126954126955%_ _g127028_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g127028_))))))
                  (_%expand1123457%_
                   (lambda (_%hd123612%_
                            _%K123613%_
                            _%rest123614%_
                            _%r123615%_)
                     (let* ((_%e123616123648%_ _%hd123612%_)
                            (_%E123643123652%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx123453%_
                                _%hd123612%_)))
                            (_%E123633123736%_
                             (lambda ()
                               (if (gx#stx-pair? _%e123616123648%_)
                                   (let ((_%e123644123656%_
                                          (gx#syntax-e _%e123616123648%_)))
                                     (let ((_%hd123645123659%_
                                            (##car _%e123644123656%_))
                                           (_%tl123646123661%_
                                            (##cdr _%e123644123656%_)))
                                       (if (eq? (gx#stx-e _%hd123645123659%_)
                                                'import:)
                                           (let ((_%in123664%_
                                                  _%tl123646123661%_))
                                             (if (gx#stx-list? _%in123664%_)
                                                 (let _%lp123666%_ ((_%in-rest123668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in123664%_)
                            (_%r123669%_ _%r123615%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e123670123677%_
                                                           _%in-rest123668%_)
                                                          (_%E123672123681%_
                                                           (lambda ()
                                                             (_%K123613%_
                                                              _%rest123614%_
                                                              _%r123669%_)))
                                                          (_%E123671123732%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e123670123677%_)
                         (let ((_%e123673123685%_
                                (gx#syntax-e _%e123670123677%_)))
                           (let ((_%hd123674123688%_ (##car _%e123673123685%_))
                                 (_%tl123675123690%_
                                  (##cdr _%e123673123685%_)))
                             (let* ((_%hd123693%_ _%hd123674123688%_)
                                    (_%in-rest123695%_ _%tl123675123690%_))
                               (if '#t
                                   (let ((_%src123730%_
                                          (if (gx#core-bound-module?
                                               _%hd123693%_)
                                              (gx#syntax-local-e__0
                                               _%hd123693%_)
                                              (if (gx#core-library-module-path?
                                                   _%hd123693%_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _%hd123693%_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd123693%_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _%hd123693%_))
                                                      (if (gx#stx-string?
                                                           _%hd123693%_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _%hd123693%_
                                                            (gx#stx-source
                                                             _%stx123453%_)))
                                                          (let* ((_%e123701123708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd123693%_)
                         (_%E123703123712%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _%stx123453%_
                             _%hd123693%_)))
                         (_%E123702123726%_
                          (lambda ()
                            (if (gx#stx-pair? _%e123701123708%_)
                                (let ((_%e123704123716%_
                                       (gx#syntax-e _%e123701123708%_)))
                                  (let ((_%hd123705123719%_
                                         (##car _%e123704123716%_))
                                        (_%tl123706123721%_
                                         (##cdr _%e123704123716%_)))
                                    (if (eq? (gx#stx-e _%hd123705123719%_)
                                             'in:)
                                        (let ((_%spath123724%_
                                               _%tl123706123721%_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _%spath123724%_
                                               _%stx123453%_)
                                              (_%E123703123712%_)))
                                        (_%E123703123712%_))))
                                (_%E123703123712%_)))))
                    (_%E123702123726%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp123666%_
                                      _%in-rest123695%_
                                      (_%export-imports123458%_
                                       _%src123730%_
                                       _%r123669%_)))
                                   (_%E123672123681%_)))))
                         (_%E123672123681%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E123671123732%_)))
                                                 (_%E123643123652%_)))
                                           (_%E123643123652%_))))
                                   (_%E123643123652%_))))
                            (_%E123620123776%_
                             (lambda ()
                               (if (gx#stx-pair? _%e123616123648%_)
                                   (let ((_%e123634123740%_
                                          (gx#syntax-e _%e123616123648%_)))
                                     (let ((_%hd123635123743%_
                                            (##car _%e123634123740%_))
                                           (_%tl123636123745%_
                                            (##cdr _%e123634123740%_)))
                                       (if (eq? (gx#stx-e _%hd123635123743%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl123636123745%_)
                                               (let ((_%e123637123748%_
                                                      (gx#syntax-e
                                                       _%tl123636123745%_)))
                                                 (let ((_%hd123638123751%_
                                                        (##car _%e123637123748%_))
                                                       (_%tl123639123753%_
                                                        (##cdr _%e123637123748%_)))
                                                   (let ((_%id123756%_
                                                          _%hd123638123751%_))
                                                     (if (gx#stx-pair?
                                                          _%tl123639123753%_)
                                                         (let ((_%e123640123758%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl123639123753%_)))
                   (let ((_%hd123641123761%_ (##car _%e123640123758%_))
                         (_%tl123642123763%_ (##cdr _%e123640123758%_)))
                     (let ((_%name123766%_ _%hd123641123761%_))
                       (if (gx#stx-null? _%tl123642123763%_)
                           (if '#t
                               (let* ((_%phi123768%_
                                       (gx#current-export-expander-phi))
                                      (_%$e123770%_
                                       (gx#core-resolve-identifier__1
                                        _%id123756%_
                                        _%phi123768%_)))
                                 (if _%$e123770%_
                                     ((lambda (_%bind123773%_)
                                        (_%K123613%_
                                         _%rest123614%_
                                         (cons (_%make-export__126954126955%_
                                                _%bind123773%_
                                                _%phi123768%_
                                                (gx#current-expander-context)
                                                _%name123766%_)
                                               _%r123615%_)))
                                      _%$e123770%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _%stx123453%_
                                      _%hd123612%_
                                      _%id123756%_)))
                               (_%E123633123736%_))
                           (_%E123633123736%_)))))
                 (_%E123633123736%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123633123736%_))
                                           (_%E123633123736%_))))
                                   (_%E123633123736%_))))
                            (_%E123619123826%_
                             (lambda ()
                               (if (gx#stx-pair? _%e123616123648%_)
                                   (let ((_%e123621123780%_
                                          (gx#syntax-e _%e123616123648%_)))
                                     (let ((_%hd123622123783%_
                                            (##car _%e123621123780%_))
                                           (_%tl123623123785%_
                                            (##cdr _%e123621123780%_)))
                                       (if (eq? (gx#stx-e _%hd123622123783%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl123623123785%_)
                                               (let ((_%e123624123788%_
                                                      (gx#syntax-e
                                                       _%tl123623123785%_)))
                                                 (let ((_%hd123625123791%_
                                                        (##car _%e123624123788%_))
                                                       (_%tl123626123793%_
                                                        (##cdr _%e123624123788%_)))
                                                   (let ((_%phi123796%_
                                                          _%hd123625123791%_))
                                                     (if (gx#stx-pair?
                                                          _%tl123626123793%_)
                                                         (let ((_%e123627123798%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl123626123793%_)))
                   (let ((_%hd123628123801%_ (##car _%e123627123798%_))
                         (_%tl123629123803%_ (##cdr _%e123627123798%_)))
                     (let ((_%id123806%_ _%hd123628123801%_))
                       (if (gx#stx-pair? _%tl123629123803%_)
                           (let ((_%e123630123808%_
                                  (gx#syntax-e _%tl123629123803%_)))
                             (let ((_%hd123631123811%_
                                    (##car _%e123630123808%_))
                                   (_%tl123632123813%_
                                    (##cdr _%e123630123808%_)))
                               (let ((_%name123816%_ _%hd123631123811%_))
                                 (if (gx#stx-null? _%tl123632123813%_)
                                     (if (and (gx#stx-fixnum? _%phi123796%_)
                                              (gx#identifier? _%id123806%_)
                                              (gx#identifier? _%name123816%_))
                                         (let* ((_%phi123818%_
                                                 (gx#stx-e _%phi123796%_))
                                                (_%$e123820%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id123806%_
                                                  _%phi123818%_)))
                                           (if _%$e123820%_
                                               ((lambda (_%bind123823%_)
                                                  (_%K123613%_
                                                   _%rest123614%_
                                                   (cons (_%make-export__126954126955%_
                                                          _%bind123823%_
                                                          _%phi123818%_
                                                          (gx#current-expander-context)
                                                          _%name123816%_)
                                                         _%r123615%_)))
                                                _%$e123820%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx123453%_
                                                _%hd123612%_
                                                _%id123806%_)))
                                         (_%E123620123776%_))
                                     (_%E123620123776%_)))))
                           (_%E123620123776%_)))))
                 (_%E123620123776%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123620123776%_))
                                           (_%E123620123776%_))))
                                   (_%E123620123776%_))))
                            (_%E123618123838%_
                             (lambda ()
                               (let ((_%id123830%_ _%e123616123648%_))
                                 (if (gx#identifier? _%id123830%_)
                                     (let ((_%$e123832%_
                                            (gx#core-resolve-identifier__1
                                             _%id123830%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e123832%_
                                           ((lambda (_%bind123835%_)
                                              (_%K123613%_
                                               _%rest123614%_
                                               (cons (_%make-export__0__126956126959%_
                                                      _%bind123835%_)
                                                     _%r123615%_)))
                                            _%$e123832%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx123453%_
                                            _%hd123612%_)))
                                     (_%E123619123826%_)))))
                            (_%E123617123902%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e123616123648%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx123842%_
                                               (gx#current-expander-context))
                                              (_%current-phi123844%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx123846%_
                                               (gx#core-context-shift
                                                _%current-ctx123842%_
                                                _%current-phi123844%_))
                                              (_%phi-bind123848%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx123846%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp123851%_ ((_%bind-rest123853%_
                                                             _%phi-bind123848%_)
                                                            (_%set123854%_
                                                             '()))
                                           (let* ((_%bind-rest123855123865%_
                                                   _%bind-rest123853%_)
                                                  (_%else123857123873%_
                                                   (lambda ()
                                                     (_%K123613%_
                                                      _%rest123614%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi123844%_
                                                             _%set123854%_)
                                                            _%r123615%_))))
                                                  (_%K123859123883%_
                                                   (lambda (_%bind-rest123876%_
                                                            _%bind123877%_
                                                            _%key123878%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind123877%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind123877%_))
                                                         (_%lp123851%_
                                                          _%bind-rest123876%_
                                                          _%set123854%_)
                                                         (_%lp123851%_
                                                          _%bind-rest123876%_
                                                          (cons (_%make-export__2__126958126961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind123877%_
                         _%current-phi123844%_
                         _%current-ctx123842%_)
                        _%set123854%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest123855123865%_)
                                                 (let ((_%hd123860123886%_
                                                        (##car _%bind-rest123855123865%_))
                                                       (_%tl123861123888%_
                                                        (##cdr _%bind-rest123855123865%_)))
                                                   (if (##pair? _%hd123860123886%_)
                                                       (let ((_%hd123862123891%_
                                                              (##car _%hd123860123886%_))
                                                             (_%tl123863123893%_
                                                              (##cdr _%hd123860123886%_)))
                                                         (let* ((_%key123896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd123862123891%_)
                        (_%bind123898%_ _%tl123863123893%_)
                        (_%bind-rest123900%_ _%tl123861123888%_))
                   (_%K123859123883%_
                    _%bind-rest123900%_
                    _%bind123898%_
                    _%key123896%_)))
               (_%else123857123873%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else123857123873%_)))))
                                       (_%E123618123838%_))
                                   (_%E123618123838%_)))))
                       (_%E123617123902%_))))
                  (_%export-imports123458%_
                   (lambda (_%src123488%_ _%r123489%_)
                     (letrec* ((_%current-ctx123491%_
                                (gx#current-expander-context))
                               (_%current-phi123492%_
                                (gx#current-export-expander-phi))
                               (_%import->export123493%_
                                (lambda (_%in123574%_)
                                  (let* ((_%in123575123583%_ _%in123574%_)
                                         (_%E123577123587%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in123575123583%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K123578123594%_
                                          (lambda (_%phi123590%_
                                                   _%key123591%_
                                                   _%out123592%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx123491%_
                                             _%key123591%_
                                             _%phi123590%_
                                             _%key123591%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in123575123583%_
                                         'gx#module-import::t)
                                        (let* ((_%e123579123597%_
                                                (##unchecked-structure-ref
                                                 _%in123575123583%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out123600%_
                                                _%e123579123597%_)
                                               (_%e123580123602%_
                                                (##unchecked-structure-ref
                                                 _%in123575123583%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key123605%_
                                                _%e123580123602%_)
                                               (_%e123581123607%_
                                                (##unchecked-structure-ref
                                                 _%in123575123583%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi123610%_
                                                _%e123581123607%_))
                                          (_%K123578123594%_
                                           _%phi123610%_
                                           _%key123605%_
                                           _%out123600%_))
                                        (_%E123577123587%_)))))
                               (_%fold-e123494%_
                                (lambda (_%in123496%_ _%r123497%_)
                                  (let* ((_%in123498123512%_ _%in123496%_)
                                         (_%else123501123520%_
                                          (lambda () _%r123497%_)))
                                    (let ((_%K123507123556%_
                                           (lambda (_%phi123552%_
                                                    _%key123553%_
                                                    _%out123554%_)
                                             (if (and (fx= _%phi123552%_
                                                           _%current-phi123492%_)
                                                      (eq? _%src123488%_
                                                           (##unchecked-structure-ref
                                                            _%out123554%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export123493%_
                                                        _%in123496%_)
                                                       _%r123497%_)
                                                 _%r123497%_)))
                                          (_%K123503123531%_
                                           (lambda (_%imports123524%_
                                                    _%phi123525%_
                                                    _%ctx123526%_)
                                             (if (and (fx= _%phi123525%_
                                                           _%current-phi123492%_)
                                                      (eq? _%src123488%_
                                                           _%ctx123526%_))
                                                 (__foldl1
                                                  (lambda (_%in123528%_
                                                           _%r123529%_)
                                                    (cons (_%import->export123493%_
                                                           _%in123528%_)
                                                          _%r123529%_))
                                                  _%r123497%_
                                                  _%imports123524%_)
                                                 _%r123497%_))))
                                      (let ((_%try-match123500123549%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in123498123512%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e123504123534%_
                                                           (##unchecked-structure-ref
                                                            _%in123498123512%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e123505123539%_
                                                           (##unchecked-structure-ref
                                                            _%in123498123512%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e123506123544%_
                                                           (##unchecked-structure-ref
                                                            _%in123498123512%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx123537%_
                                                            _%e123504123534%_)
                                                           (_%phi123542%_
                                                            _%e123505123539%_)
                                                           (_%imports123547%_
                                                            _%e123506123544%_))
                                                       (_%K123503123531%_
                                                        _%imports123547%_
                                                        _%phi123542%_
                                                        _%ctx123537%_)))
                                                   (_%else123501123520%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in123498123512%_
                                             'gx#module-import::t)
                                            (let* ((_%e123508123559%_
                                                    (##unchecked-structure-ref
                                                     _%in123498123512%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e123509123564%_
                                                    (##unchecked-structure-ref
                                                     _%in123498123512%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e123510123569%_
                                                    (##unchecked-structure-ref
                                                     _%in123498123512%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out123562%_
                                                     _%e123508123559%_)
                                                    (_%key123567%_
                                                     _%e123509123564%_)
                                                    (_%phi123572%_
                                                     _%e123510123569%_))
                                                (_%K123507123556%_
                                                 _%phi123572%_
                                                 _%key123567%_
                                                 _%out123562%_)))
                                            (_%try-match123500123549%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src123488%_
                              _%current-phi123492%_
                              (__foldl1
                               _%fold-e123494%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx123491%_
                                '8
                                '#f
                                '#f)))
                             _%r123489%_))))
                  (_%export!123459%_
                   (lambda (_%rbody123475%_)
                     (letrec* ((_%current-ctx123477%_
                                (gx#current-expander-context))
                               (_%fold-e123478%_
                                (lambda (_%out123482%_ _%r123483%_)
                                  (if (##structure-direct-instance-of?
                                       _%out123482%_
                                       'gx#module-export::t)
                                      (cons _%out123482%_ _%r123483%_)
                                      (if (##structure-direct-instance-of?
                                           _%out123482%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r123483%_
                                           (##unchecked-structure-ref
                                            _%out123482%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r123483%_)))))
                       (let ((_%body123480%_ (reverse _%rbody123475%_)))
                         (##unchecked-structure-set!
                          _%current-ctx123477%_
                          (__foldl1
                           _%fold-e123478%_
                           (##unchecked-structure-ref
                            _%current-ctx123477%_
                            '9
                            '#f
                            '#f)
                           _%body123480%_)
                          '9
                          '#f
                          '#f)
                         _%body123480%_))))
                  (_%expanded-export?123460%_
                   (lambda (_%e123470%_)
                     (let ((_%$e123472%_
                            (##structure-direct-instance-of?
                             _%e123470%_
                             'gx#module-export::t)))
                       (if _%$e123472%_
                           _%$e123472%_
                           (##structure-direct-instance-of?
                            _%e123470%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?123454%_)
              (let ((_%rbody123466%_
                     (gx#core-expand-import/export
                      _%stx123453%_
                      _%expanded-export?123460%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1123457%_)))
                (if _%internal-expand?123454%_
                    (reverse _%rbody123466%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!123459%_ _%rbody123466%_))
                     (gx#stx-source _%stx123453%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx123453%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx123453%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx123952%_)
        (let ((_%internal-expand?123954%_ '#f))
          (gx#core-expand-export%__%
           _%stx123952%_
           _%internal-expand?123954%_))))
    (define gx#core-expand-export%
      (lambda _g127030_
        (let ((_g127029_ (##length _g127030_)))
          (cond ((##fx= _g127029_ 1)
                 (apply gx#core-expand-export%__0 _g127030_))
                ((##fx= _g127029_ 2)
                 (apply gx#core-expand-export%__% _g127030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g127030_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd123450%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd123450%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx123420%_)
        (let* ((_%e123421123428%_ _%stx123420%_)
               (_%E123423123432%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123421123428%_)))
               (_%E123422123446%_
                (lambda ()
                  (if (gx#stx-pair? _%e123421123428%_)
                      (let ((_%e123424123436%_
                             (gx#syntax-e _%e123421123428%_)))
                        (let ((_%hd123425123439%_ (##car _%e123424123436%_))
                              (_%tl123426123441%_ (##cdr _%e123424123436%_)))
                          (let ((_%body123444%_ _%tl123426123441%_))
                            (if (gx#identifier-list? _%body123444%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body123444%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body123444%_))
                                   (gx#stx-source _%stx123420%_)))
                                (_%E123423123432%_)))))
                      (_%E123423123432%_)))))
          (_%E123422123446%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id123386%_ _%private?123387%_ _%phi123388%_ _%ctx123389%_)
        (gx#core-bind-syntax!__%
         _%id123386%_
         ((if _%private?123387%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id123386%_))
         _%private?123387%_
         _%phi123388%_
         _%ctx123389%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id123394%_)
        (let* ((_%private?123396%_ '#f)
               (_%phi123398%_ (gx#current-expander-phi))
               (_%ctx123400%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123394%_
           _%private?123396%_
           _%phi123398%_
           _%ctx123400%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id123402%_ _%private?123403%_)
        (let* ((_%phi123405%_ (gx#current-expander-phi))
               (_%ctx123407%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123402%_
           _%private?123403%_
           _%phi123405%_
           _%ctx123407%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id123409%_ _%private?123410%_ _%phi123411%_)
        (let ((_%ctx123413%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123409%_
           _%private?123410%_
           _%phi123411%_
           _%ctx123413%_))))
    (define gx#core-bind-feature!
      (lambda _g127032_
        (let ((_g127031_ (##length _g127032_)))
          (cond ((##fx= _g127031_ 1)
                 (apply gx#core-bind-feature!__0 _g127032_))
                ((##fx= _g127031_ 2)
                 (apply gx#core-bind-feature!__1 _g127032_))
                ((##fx= _g127031_ 3)
                 (apply gx#core-bind-feature!__2 _g127032_))
                ((##fx= _g127031_ 4)
                 (apply gx#core-bind-feature!__% _g127032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g127032_))))))))
