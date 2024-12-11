(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1733870074)
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
      (lambda _%$args128960%_
        (apply make-instance gx#module-import::t _%$args128960%_)))
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
      (lambda _%$args128957%_
        (apply make-instance gx#module-export::t _%$args128957%_)))
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
      (lambda _%$args128954%_
        (apply make-instance gx#import-set::t _%$args128954%_)))
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
      (lambda _%$args128951%_
        (apply make-instance gx#export-set::t _%$args128951%_)))
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
      (lambda _%$args128948%_
        (apply make-instance gx#import-expander::t _%$args128948%_)))
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
      (lambda _%$args128945%_
        (apply make-instance gx#export-expander::t _%$args128945%_)))
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
      (lambda _%$args128942%_
        (apply make-instance gx#import-export-expander::t _%$args128942%_)))
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
      (lambda (_%path128939%_ _%fun128940%_)
        (call-with-input-file
         (cons 'path: (cons _%path128939%_ gx#source-file-settings))
         _%fun128940%_)))
    (define gx#module-context:::init!
      (lambda (_%self125391128920%_
               _%id128922%_
               _%super128923%_
               _%ns128924%_
               _%path128925%_)
        (let* ((_%self128927%_ _%self125391128920%_)
               (_%self128929%_ _%self128927%_))
          (if (##fx< '11 (##structure-length _%self128929%_))
              (begin
                (##unchecked-structure-set!
                 _%self128929%_
                 _%id128922%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128929%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128929%_
                 _%super128923%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self128929%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self128929%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self128929%_
                 _%ns128924%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128929%_
                 _%path128925%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self128929%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self128929%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self128929%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self128929%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128929%_
                     '11
                     (##vector-length _%self128929%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self125392128751%_ _%ctx128753%_ _%root128754%_)
        (let* ((_%self128756%_ _%self125392128751%_)
               (_%self128758%_ _%self128756%_)
               (_%super128774%_
                (let ((_%$e128768%_ _%root128754%_))
                  (if _%$e128768%_
                      _%$e128768%_
                      (let ((_%$e128771%_ (gx#core-context-root__0)))
                        (if _%$e128771%_
                            _%$e128771%_
                            (let ((__obj129004
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor129005
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj129004
                                      ':init!)))
                                (if __constructor129005
                                    (__constructor129005 __obj129004)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj129004)))))))
          (if _%ctx128753%_
              (let ((_%id128777%_
                     (##structure-ref
                      _%ctx128753%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path128778%_
                     (##structure-ref
                      _%ctx128753%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in128779%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx128753%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e128780%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx128753%_)))))
                (if (##fx< '8 (##structure-length _%self128758%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self128758%_
                       _%id128777%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128758%_
                       (make-hash-table-eq 'size: (##length _%in128779%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128758%_
                       _%super128774%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128758%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128758%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128758%_
                       _%path128778%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128758%_
                       _%in128779%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self128758%_
                       _%e128780%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self128758%_
                           '8
                           (##vector-length _%self128758%_)))
                (##for-each
                 (lambda (_%g128781128783%_)
                   (gx#core-bind-weak-import!__%
                    _%g128781128783%_
                    _%self128758%_))
                 _%in128779%_))
              (if (##fx< '8 (##structure-length _%self128758%_))
                  (begin
                    (##unchecked-structure-set! _%self128758%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self128758%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self128758%_
                     _%super128774%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self128758%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self128758%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self128758%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self128758%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self128758%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self128758%_
                         '8
                         (##vector-length _%self128758%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self125392128789%_ _%ctx128790%_)
        (let ((_%root128792%_ '#f))
          (gx#prelude-context:::init!__%
           _%self125392128789%_
           _%ctx128790%_
           _%root128792%_))))
    (define gx#prelude-context:::init!
      (lambda _g129011_
        (let ((_g129010_ (##length _g129011_)))
          (cond ((##fx= _g129010_ 2)
                 (apply gx#prelude-context:::init!__0 _g129011_))
                ((##fx= _g129010_ 3)
                 (apply gx#prelude-context:::init!__% _g129011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g129011_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self128625%_ _%e128626%_)
        (if (##fx< '3 (##structure-length _%self128625%_))
            (begin
              (##unchecked-structure-set!
               _%self128625%_
               _%e128626%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self128625%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self128625%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self128625%_
                   '3
                   (##vector-length _%self128625%_)))))
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
      (lambda (_%g128251128254%_ _%g128252128256%_)
        (gx#core-apply-user-expander__%
         _%g128251128254%_
         _%g128252128256%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g128122128125%_ _%g128123128127%_)
        (gx#core-apply-user-expander__%
         _%g128122128125%_
         _%g128123128127%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx127993%_)
        (let* ((_%path127995%_
                (##structure-ref _%ctx127993%_ '7 gx#module-context::t '#f))
               (_%path127997%_
                (if (pair? _%path127995%_)
                    (##last _%path127995%_)
                    _%path127995%_)))
          (if (string? _%path127997%_) _%path127997%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path127969%_ _%reload?127970%_ _%eval?127971%_)
        (let ((_%ctx127973%_
               ((gx#current-expander-module-import)
                _%path127969%_
                _%reload?127970%_)))
          (if (and _%ctx127973%_ _%eval?127971%_)
              (gx#eval-module _%ctx127973%_)
              '#!void)
          _%ctx127973%_)))
    (define gx#import-module__0
      (lambda (_%path127978%_)
        (let* ((_%reload?127980%_ '#f) (_%eval?127982%_ '#f))
          (gx#import-module__%
           _%path127978%_
           _%reload?127980%_
           _%eval?127982%_))))
    (define gx#import-module__1
      (lambda (_%path127984%_ _%reload?127985%_)
        (let ((_%eval?127987%_ '#f))
          (gx#import-module__%
           _%path127984%_
           _%reload?127985%_
           _%eval?127987%_))))
    (define gx#import-module
      (lambda _g129013_
        (let ((_g129012_ (##length _g129013_)))
          (cond ((##fx= _g129012_ 1) (apply gx#import-module__0 _g129013_))
                ((##fx= _g129012_ 2) (apply gx#import-module__1 _g129013_))
                ((##fx= _g129012_ 3) (apply gx#import-module__% _g129013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g129013_))))))
    (define gx#eval-module
      (lambda (_%mod127966%_)
        ((gx#current-expander-module-eval) _%mod127966%_)))
    (define gx#core-eval-module
      (lambda (_%obj127946%_)
        (letrec ((_%force-e127948%_
                  (lambda (_%getf127962%_ _%e127963%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf127962%_ _%e127963%_)))
                     gx#current-expander-context
                     _%e127963%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur127950%_ ((_%e127952%_ _%obj127946%_))
            (if (##structure-instance-of? _%e127952%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e127955%_
                         (gx#core-context-prelude__% _%e127952%_)))
                    (if _%$e127955%_ (_%recur127950%_ _%$e127955%_) '#!void))
                  (_%force-e127948%_ gx#module-context-e _%e127952%_))
                (if (##structure-instance-of?
                     _%e127952%_
                     'gx#prelude-context::t)
                    (_%force-e127948%_ gx#prelude-context-e _%e127952%_)
                    (if (gx#stx-string? _%e127952%_)
                        (_%recur127950%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e127952%_)))
                        (if (gx#core-library-module-path? _%e127952%_)
                            (_%recur127950%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e127952%_)))
                            (error '"cannot eval module" _%obj127946%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx127926%_)
        (let _%lp127928%_ ((_%e127930%_ _%ctx127926%_))
          (if (or (##structure-instance-of? _%e127930%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e127930%_ 'gx#local-context::t))
              (_%lp127928%_ (##unchecked-structure-ref _%e127930%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e127930%_ 'gx#prelude-context::t)
                  _%e127930%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx127942%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx127942%_))))
    (define gx#core-context-prelude
      (lambda _g129015_
        (let ((_g129014_ (##length _g129015_)))
          (cond ((##fx= _g129014_ 0)
                 (apply gx#core-context-prelude__0 _g129015_))
                ((##fx= _g129014_ 1)
                 (apply gx#core-context-prelude__% _g129015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g129015_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx127917%_)
        (let ((_%$e127919%_ (__hash-get gx#__module-registry _%ctx127917%_)))
          (if _%$e127919%_
              _%$e127919%_
              (let ((_%pre127923%_
                     (let ((__obj129006
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
                        __obj129006
                        _%ctx127917%_)
                       __obj129006)))
                (__hash-put! gx#__module-registry _%ctx127917%_ _%pre127923%_)
                _%pre127923%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath127789%_ _%reload?127790%_)
        (letrec ((_%import-source127792%_
                  (lambda (_%path127881%_)
                    (if (member _%path127881%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path127881%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g129016_ (gx#core-read-module _%path127881%_)))
                         (begin
                           (let ((_g129017_
                                  (if (##values? _g129016_)
                                      (##vector-length _g129016_)
                                      1)))
                             (if (not (##fx= _g129017_ 4))
                                 (error "Context expects 4 values" _g129017_)))
                           (let ((_%pre127884%_ (##vector-ref _g129016_ 0))
                                 (_%id127885%_ (##vector-ref _g129016_ 1))
                                 (_%ns127886%_ (##vector-ref _g129016_ 2))
                                 (_%body127887%_ (##vector-ref _g129016_ 3)))
                             (let* ((_%prelude127897%_
                                     (if (##structure-instance-of?
                                          _%pre127884%_
                                          'gx#prelude-context::t)
                                         _%pre127884%_
                                         (if (##structure-instance-of?
                                              _%pre127884%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre127884%_)
                                             (if (string? _%pre127884%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre127884%_))
                                                 (if (not _%pre127884%_)
                                                     (let ((_%$e127893%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e127893%_
                                                           _%$e127893%_
                                                           (let ((__obj129007
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
                     (gx#prelude-context:::init!__0 __obj129007 '#f)
                     __obj129007)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath127789%_
                                                            _%pre127884%_))))))
                                    (_%ctx127899%_
                                     (let ((__obj129008
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
                                        __obj129008
                                        _%id127885%_
                                        _%prelude127897%_
                                        _%ns127886%_
                                        _%path127881%_)
                                       __obj129008))
                                    (_%body127901%_
                                     (gx#core-expand-module-begin
                                      _%body127887%_
                                      _%ctx127899%_))
                                    (_%body127903%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body127901%_)
                                      _%path127881%_
                                      _%ctx127899%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx127899%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body127903%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx127899%_
                                _%body127903%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path127881%_
                                _%ctx127899%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id127885%_
                                _%ctx127899%_)
                               _%ctx127899%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path127881%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule127793%_
                  (lambda (_%rpath127809%_)
                    (let* ((_%rpath127810127817%_ _%rpath127809%_)
                           (_%E127812127821%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath127810127817%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K127813127869%_
                            (lambda (_%refs127824%_ _%origin127825%_)
                              (let ((_%ctx127827%_
                                     (if _%origin127825%_
                                         (gx#core-import-module__%
                                          _%origin127825%_
                                          _%reload?127790%_)
                                         (gx#current-expander-context))))
                                (let _%lp127829%_ ((_%rest127831%_
                                                    _%refs127824%_)
                                                   (_%ctx127832%_
                                                    _%ctx127827%_))
                                  (let* ((_%rest127833127841%_ _%rest127831%_)
                                         (_%else127835127849%_
                                          (lambda () _%ctx127832%_))
                                         (_%K127837127857%_
                                          (lambda (_%rest127852%_ _%id127853%_)
                                            (let ((_%bind127855%_
                                                   (gx#resolve-identifier__%
                                                    _%id127853%_
                                                    '0
                                                    _%ctx127832%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind127855%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind127855%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp127829%_
                                                   _%rest127852%_
                                                   (##unchecked-structure-ref
                                                    _%bind127855%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath127809%_
                                                         _%id127853%_
                                                         _%bind127855%_))))))
                                    (if (pair? _%rest127833127841%_)
                                        (let ((_%hd127838127860%_
                                               (##car _%rest127833127841%_))
                                              (_%tl127839127862%_
                                               (##cdr _%rest127833127841%_)))
                                          (let* ((_%id127865%_
                                                  _%hd127838127860%_)
                                                 (_%rest127867%_
                                                  _%tl127839127862%_))
                                            (_%K127837127857%_
                                             _%rest127867%_
                                             _%id127865%_)))
                                        (_%else127835127849%_))))))))
                      (if (pair? _%rpath127810127817%_)
                          (let ((_%hd127814127872%_
                                 (##car _%rpath127810127817%_))
                                (_%tl127815127874%_
                                 (##cdr _%rpath127810127817%_)))
                            (let* ((_%origin127877%_ _%hd127814127872%_)
                                   (_%refs127879%_ _%tl127815127874%_))
                              (_%K127813127869%_
                               _%refs127879%_
                               _%origin127877%_)))
                          (_%E127812127821%_))))))
          (let ((_%$e127795%_
                 (if (not _%reload?127790%_)
                     (__hash-get gx#__module-registry _%rpath127789%_)
                     '#f)))
            (if _%$e127795%_
                _%$e127795%_
                (if (list? _%rpath127789%_)
                    (_%import-submodule127793%_ _%rpath127789%_)
                    (if (gx#core-library-module-path? _%rpath127789%_)
                        (let ((_%ctx127800%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath127789%_)
                                _%reload?127790%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath127789%_
                           _%ctx127800%_)
                          _%ctx127800%_)
                        (let* ((_%npath127803%_
                                (path-normalize _%rpath127789%_))
                               (_%$e127805%_
                                (if (not _%reload?127790%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath127803%_)
                                    '#f)))
                          (if _%$e127805%_
                              _%$e127805%_
                              (_%import-source127792%_
                               _%npath127803%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath127910%_)
        (let ((_%reload?127912%_ '#f))
          (gx#core-import-module__% _%rpath127910%_ _%reload?127912%_))))
    (define gx#core-import-module
      (lambda _g129019_
        (let ((_g129018_ (##length _g129019_)))
          (cond ((##fx= _g129018_ 1)
                 (apply gx#core-import-module__0 _g129019_))
                ((##fx= _g129018_ 2)
                 (apply gx#core-import-module__% _g129019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g129019_))))))
    (define gx#core-read-module
      (lambda (_%path127778%_)
        (__with-catch
         (lambda (_%exn127780%_)
           (if (and (datum-parsing-exception? _%exn127780%_)
                    (eq? (datum-parsing-exception-filepos _%exn127780%_) '0))
               (gx#core-read-module/lang _%path127778%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path127778%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g127782127784%_)
                      (display-exception__% _%exn127780%_ _%g127782127784%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path127778%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path127630%_)
        (let _%lp127632%_ ((_%body127634%_
                            (read-syntax-from-file _%path127630%_))
                           (_%pre127635%_ '#f)
                           (_%ns127636%_ '#f)
                           (_%pkg127637%_ '#f))
          (let* ((_%e127638127662%_ _%body127634%_)
                 (_%E127654127688%_
                  (lambda ()
                    (let ((_g129020_
                           (if _%pkg127637%_
                               (values _%pre127635%_
                                       _%ns127636%_
                                       _%pkg127637%_)
                               (gx#core-read-module-package
                                _%path127630%_
                                _%pre127635%_
                                _%ns127636%_))))
                      (begin
                        (let ((_g129021_
                               (if (##values? _g129020_)
                                   (##vector-length _g129020_)
                                   1)))
                          (if (not (##fx= _g129021_ 3))
                              (error "Context expects 3 values" _g129021_)))
                        (let ((_%pre127666%_ (##vector-ref _g129020_ 0))
                              (_%ns127667%_ (##vector-ref _g129020_ 1))
                              (_%pkg127668%_ (##vector-ref _g129020_ 2)))
                          (let* ((_%prelude127674%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre127666%_)
                                      (gx#syntax-local-e__0 _%pre127666%_)
                                      (if (gx#core-library-module-path?
                                           _%pre127666%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre127666%_)
                                          (if (gx#stx-string? _%pre127666%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre127666%_
                                               _%path127630%_)
                                              (gx#stx-e _%pre127666%_)))))
                                 (_%path-id127676%_
                                  (gx#core-module-path->namespace
                                   _%path127630%_))
                                 (_%pkg-id127678%_
                                  (if _%pkg127668%_
                                      (##string-append
                                       _%pkg127668%_
                                       '"/"
                                       _%path-id127676%_)
                                      _%path-id127676%_))
                                 (_%module-id127680%_
                                  (##string->symbol _%pkg-id127678%_))
                                 (_%module-ns127685%_
                                  (if (eq? _%ns127667%_ '#!void)
                                      '#f
                                      (let ((_%$e127682%_ _%ns127667%_))
                                        (if _%$e127682%_
                                            _%$e127682%_
                                            _%pkg-id127678%_)))))
                            (values _%prelude127674%_
                                    _%module-id127680%_
                                    _%module-ns127685%_
                                    _%body127634%_)))))))
                 (_%E127647127720%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127638127662%_)
                        (let ((_%e127655127692%_
                               (gx#syntax-e _%e127638127662%_)))
                          (let ((_%hd127656127695%_ (##car _%e127655127692%_))
                                (_%tl127657127697%_ (##cdr _%e127655127692%_)))
                            (if (eq? (gx#stx-e _%hd127656127695%_) 'package:)
                                (if (gx#stx-pair? _%tl127657127697%_)
                                    (let ((_%e127658127700%_
                                           (gx#syntax-e _%tl127657127697%_)))
                                      (let ((_%hd127659127703%_
                                             (##car _%e127658127700%_))
                                            (_%tl127660127705%_
                                             (##cdr _%e127658127700%_)))
                                        (let* ((_%pkg127708%_
                                                _%hd127659127703%_)
                                               (_%rest127710%_
                                                _%tl127660127705%_)
                                               (_%pkg127718%_
                                                (if (gx#identifier?
                                                     _%pkg127708%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg127708%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg127708%_)
                                                            (gx#stx-false?
                                                             _%pkg127708%_))
                                                        (gx#stx-e
                                                         _%pkg127708%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg127708%_)))))
                                          (_%lp127632%_
                                           _%rest127710%_
                                           _%pre127635%_
                                           _%ns127636%_
                                           _%pkg127718%_))))
                                    (_%E127654127688%_))
                                (_%E127654127688%_))))
                        (_%E127654127688%_))))
                 (_%E127640127750%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127638127662%_)
                        (let ((_%e127648127724%_
                               (gx#syntax-e _%e127638127662%_)))
                          (let ((_%hd127649127727%_ (##car _%e127648127724%_))
                                (_%tl127650127729%_ (##cdr _%e127648127724%_)))
                            (if (eq? (gx#stx-e _%hd127649127727%_) 'namespace:)
                                (if (gx#stx-pair? _%tl127650127729%_)
                                    (let ((_%e127651127732%_
                                           (gx#syntax-e _%tl127650127729%_)))
                                      (let ((_%hd127652127735%_
                                             (##car _%e127651127732%_))
                                            (_%tl127653127737%_
                                             (##cdr _%e127651127732%_)))
                                        (let* ((_%ns127740%_
                                                _%hd127652127735%_)
                                               (_%rest127742%_
                                                _%tl127653127737%_)
                                               (_%ns127748%_
                                                (if (gx#identifier?
                                                     _%ns127740%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns127740%_))
                                                    (if (gx#stx-string?
                                                         _%ns127740%_)
                                                        (gx#stx-e _%ns127740%_)
                                                        (if (gx#stx-false?
                                                             _%ns127740%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns127740%_))))))
                                          (_%lp127632%_
                                           _%rest127742%_
                                           _%pre127635%_
                                           _%ns127748%_
                                           _%pkg127637%_))))
                                    (_%E127647127720%_))
                                (_%E127647127720%_))))
                        (_%E127647127720%_))))
                 (_%E127639127774%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127638127662%_)
                        (let ((_%e127641127754%_
                               (gx#syntax-e _%e127638127662%_)))
                          (let ((_%hd127642127757%_ (##car _%e127641127754%_))
                                (_%tl127643127759%_ (##cdr _%e127641127754%_)))
                            (if (eq? (gx#stx-e _%hd127642127757%_) 'prelude:)
                                (if (gx#stx-pair? _%tl127643127759%_)
                                    (let ((_%e127644127762%_
                                           (gx#syntax-e _%tl127643127759%_)))
                                      (let ((_%hd127645127765%_
                                             (##car _%e127644127762%_))
                                            (_%tl127646127767%_
                                             (##cdr _%e127644127762%_)))
                                        (let* ((_%prelude127770%_
                                                _%hd127645127765%_)
                                               (_%rest127772%_
                                                _%tl127646127767%_))
                                          (_%lp127632%_
                                           _%rest127772%_
                                           _%prelude127770%_
                                           _%ns127636%_
                                           _%pkg127637%_))))
                                    (_%E127640127750%_))
                                (_%E127640127750%_))))
                        (_%E127640127750%_)))))
            (_%E127639127774%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path127452%_)
        (letrec ((_%default-read-module-body127454%_
                  (lambda (_%inp127622%_)
                    (let _%lp127624%_ ((_%body127626%_ '()))
                      (let ((_%next127628%_ (read-syntax__% _%inp127622%_)))
                        (if (eof-object? _%next127628%_)
                            (reverse _%body127626%_)
                            (_%lp127624%_
                             (cons _%next127628%_ _%body127626%_)))))))
                 (_%read-body127455%_
                  (lambda (_%inp127540%_
                           _%pre127541%_
                           _%ns127542%_
                           _%pkg127543%_
                           _%args127544%_)
                    (let ((_g129022_
                           (if _%pkg127543%_
                               (values _%pre127541%_
                                       _%ns127542%_
                                       _%pkg127543%_)
                               (gx#core-read-module-package
                                _%path127452%_
                                _%pre127541%_
                                _%ns127542%_))))
                      (begin
                        (let ((_g129023_
                               (if (##values? _g129022_)
                                   (##vector-length _g129022_)
                                   1)))
                          (if (not (##fx= _g129023_ 3))
                              (error "Context expects 3 values" _g129023_)))
                        (let ((_%pre127546%_ (##vector-ref _g129022_ 0))
                              (_%ns127547%_ (##vector-ref _g129022_ 1))
                              (_%pkg127548%_ (##vector-ref _g129022_ 2)))
                          (let* ((_%prelude127550%_
                                  (gx#import-module__0 _%pre127546%_))
                                 (_%read-module-body127605%_
                                  (let ((_%$e127596%_
                                         (__find (lambda (_%e127551127553%_)
                                                   (let* ((_%g127555127565%_
                                                           _%e127551127553%_)
                                                          (_%else127557127573%_
                                                           (lambda () '#f))
                                                          (_%K127559127577%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g127555127565%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e127560127580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g127555127565%_
                          '1
                          '#f
                          '#f))
                        (_%e127561127583%_
                         (##unchecked-structure-ref
                          _%g127555127565%_
                          '2
                          '#f
                          '#f))
                        (_%e127562127586%_
                         (##unchecked-structure-ref
                          _%g127555127565%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e127562127586%_ '1)
                       (let ((_%e127563127589%_
                              (##unchecked-structure-ref
                               _%g127555127565%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g127591127593%_)
                                (eq? _%g127591127593%_ 'read-module-body))
                              _%e127563127589%_)
                             (_%K127559127577%_)
                             (_%else127557127573%_)))
                       (_%else127557127573%_)))
                 (_%else127557127573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude127550%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e127596%_
                                        ((lambda (_%xport127599%_)
                                           (let ((_%proc127602%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport127599%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc127602%_)
                                                 _%proc127602%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path127452%_
                                                  _%pre127546%_
                                                  _%proc127602%_))))
                                         _%$e127596%_)
                                        _%default-read-module-body127454%_)))
                                 (_%path-id127607%_
                                  (gx#core-module-path->namespace
                                   _%path127452%_))
                                 (_%pkg-id127609%_
                                  (if _%pkg127548%_
                                      (##string-append
                                       _%pkg127548%_
                                       '"/"
                                       _%path-id127607%_)
                                      _%path-id127607%_))
                                 (_%module-id127611%_
                                  (##string->symbol _%pkg-id127609%_))
                                 (_%module-ns127616%_
                                  (let ((_%$e127613%_ _%ns127547%_))
                                    (if _%$e127613%_
                                        _%$e127613%_
                                        _%pkg-id127609%_)))
                                 (_%body127619%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body127605%_
                                      _%inp127540%_))
                                   gx#current-module-reader-path
                                   _%path127452%_
                                   gx#current-module-reader-args
                                   _%args127544%_)))
                            (values _%prelude127550%_
                                    _%module-id127611%_
                                    _%module-ns127616%_
                                    _%body127619%_)))))))
                 (_%string-e127456%_
                  (lambda (_%obj127534%_ _%what127535%_)
                    (if (string? _%obj127534%_)
                        _%obj127534%_
                        (if (symbol? _%obj127534%_)
                            (##symbol->string _%obj127534%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what127535%_)
                             _%path127452%_
                             _%obj127534%_)))))
                 (_%read-lang-args127457%_
                  (lambda (_%inp127489%_ _%args127490%_)
                    (let* ((_%args127491127499%_ _%args127490%_)
                           (_%else127493127507%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path127452%_)))
                           (_%K127495127522%_
                            (lambda (_%args127510%_ _%prelude127511%_)
                              (let* ((_%pkg127513%_
                                      (pgetq__0 'package: _%args127510%_))
                                     (_%pkg127515%_
                                      (if _%pkg127513%_
                                          (_%string-e127456%_
                                           _%pkg127513%_
                                           '"package")
                                          '#f))
                                     (_%ns127517%_
                                      (pgetq__0 'namespace: _%args127510%_))
                                     (_%ns127519%_
                                      (if _%ns127517%_
                                          (_%string-e127456%_
                                           _%ns127517%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body127455%_
                                 _%inp127489%_
                                 _%prelude127511%_
                                 _%ns127519%_
                                 _%pkg127515%_
                                 _%args127510%_)))))
                      (if (pair? _%args127491127499%_)
                          (let ((_%hd127496127525%_
                                 (##car _%args127491127499%_))
                                (_%tl127497127527%_
                                 (##cdr _%args127491127499%_)))
                            (let* ((_%prelude127530%_ _%hd127496127525%_)
                                   (_%args127532%_ _%tl127497127527%_))
                              (_%K127495127522%_
                               _%args127532%_
                               _%prelude127530%_)))
                          (_%else127493127507%_)))))
                 (_%read-lang127458%_
                  (lambda (_%inp127463%_)
                    (let* ((_%head127465%_ (read-line _%inp127463%_))
                           (_%$e127467%_
                            (string-index__0 _%head127465%_ '#\space)))
                      (if _%$e127467%_
                          ((lambda (_%ix127470%_)
                             (let ((_%lang127472%_
                                    (substring
                                     _%head127465%_
                                     '0
                                     _%ix127470%_)))
                               (if (equal? _%lang127472%_ '"#lang")
                                   (let* ((_%rest127474%_
                                           (substring
                                            _%head127465%_
                                            (##fx+ _%ix127470%_ '1)
                                            (string-length _%head127465%_)))
                                          (_%args127485%_
                                           (__with-catch
                                            (lambda (_%g127475127477%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path127452%_
                                               _%g127475127477%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest127474%_
                                               (lambda (_%g127480127482%_)
                                                 (read-all
                                                  _%g127480127482%_
                                                  read)))))))
                                     (_%read-lang-args127457%_
                                      _%inp127463%_
                                      _%args127485%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path127452%_))))
                           _%$e127467%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path127452%_)))))
                 (_%read-e127459%_
                  (lambda (_%inp127461%_)
                    (if (eq? (peek-char _%inp127461%_) '#\#)
                        (_%read-lang127458%_ _%inp127461%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path127452%_)))))
          (gx#call-with-input-source-file _%path127452%_ _%read-e127459%_))))
    (define gx#core-read-module-package
      (lambda (_%path127400%_ _%pre127401%_ _%ns127402%_)
        (letrec ((_%string-e127404%_
                  (lambda (_%e127447%_)
                    (if (symbol? _%e127447%_)
                        (##symbol->string _%e127447%_)
                        (if (string? _%e127447%_)
                            _%e127447%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e127447%_))))))
          (let _%lp127406%_ ((_%dir127408%_ (path-directory _%path127400%_))
                             (_%pkg-path127409%_ '()))
            (let ((_%gerbil.pkg127411%_
                   (path-expand '"gerbil.pkg" _%dir127408%_)))
              (if (##file-exists? _%gerbil.pkg127411%_)
                  (let ((_%plist127413%_
                         (gx#core-library-package-plist__% _%dir127408%_ '#t)))
                    (if (null? _%plist127413%_)
                        (let ((_%pkg127416%_
                               (if (null? _%pkg-path127409%_)
                                   '#f
                                   (string-join _%pkg-path127409%_ '"/"))))
                          (values _%pre127401%_ _%ns127402%_ _%pkg127416%_))
                        (if (list? _%plist127413%_)
                            (let* ((_%root127419%_
                                    (pgetq__0 'package: _%plist127413%_))
                                   (_%pkg127423%_
                                    (let ((_%pkg-path127421%_
                                           (if _%root127419%_
                                               (cons (_%string-e127404%_
                                                      _%root127419%_)
                                                     _%pkg-path127409%_)
                                               _%pkg-path127409%_)))
                                      (if (null? _%pkg-path127421%_)
                                          '#f
                                          (string-join
                                           _%pkg-path127421%_
                                           '"/"))))
                                   (_%ns127430%_
                                    (let ((_%ns127428%_
                                           (let ((_%$e127425%_ _%ns127402%_))
                                             (if _%$e127425%_
                                                 _%$e127425%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist127413%_)))))
                                      (if _%ns127428%_
                                          (_%string-e127404%_ _%ns127428%_)
                                          '#f)))
                                   (_%pre127435%_
                                    (let ((_%$e127432%_ _%pre127401%_))
                                      (if _%$e127432%_
                                          _%$e127432%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist127413%_)))))
                              (values _%pre127435%_
                                      _%ns127430%_
                                      _%pkg127423%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist127413%_))))
                  (let ((_%dir*127439%_
                         (path-strip-trailing-directory-separator
                          _%dir127408%_)))
                    (if (or (__string-empty? _%dir*127439%_)
                            (equal? _%dir127408%_ _%dir*127439%_))
                        (values _%pre127401%_ _%ns127402%_ '#f)
                        (let ((_%xpath127444%_
                               (path-strip-directory _%dir*127439%_))
                              (_%xdir127445%_ (path-directory _%dir*127439%_)))
                          (_%lp127406%_
                           _%xdir127445%_
                           (cons _%xpath127444%_ _%pkg-path127409%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path127398%_)
        (path-strip-extension (path-strip-directory _%path127398%_))))
    (define gx#core-module-path->id
      (lambda (_%path127396%_)
        (##string->symbol (gx#core-module-path->namespace _%path127396%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path127375%_ _%rel127376%_)
        (let* ((_%path127378%_ (gx#stx-e _%stx-path127375%_))
               (_%path127380%_
                (if (__string-empty? (path-extension _%path127378%_))
                    (##string-append _%path127378%_ '".ss")
                    _%path127378%_)))
          (gx#core-resolve-path__%
           _%path127380%_
           (let ((_%$e127383%_ (gx#stx-source _%stx-path127375%_)))
             (if _%$e127383%_ _%$e127383%_ _%rel127376%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path127389%_)
        (let ((_%rel127391%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path127389%_ _%rel127391%_))))
    (define gx#core-resolve-module-path
      (lambda _g129025_
        (let ((_g129024_ (##length _g129025_)))
          (cond ((##fx= _g129024_ 1)
                 (apply gx#core-resolve-module-path__0 _g129025_))
                ((##fx= _g129024_ 2)
                 (apply gx#core-resolve-module-path__% _g129025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g129025_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath127260%_)
        (let* ((_%spath127262%_ (symbol->string (gx#stx-e _%libpath127260%_)))
               (_%spath127264%_
                (substring
                 _%spath127262%_
                 '1
                 (##string-length _%spath127262%_)))
               (_%ext127266%_ (path-extension _%spath127264%_))
               (_%ssi127268%_
                (if (__string-empty? _%ext127266%_)
                    (##string-append _%spath127264%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath127264%_)
                     '".ssi")))
               (_%srcs127272%_
                (if (__string-empty? _%ext127266%_)
                    (##map (lambda (_%ext127270%_)
                             (string-append _%spath127264%_ _%ext127270%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath127264%_ '()))))
          (let _%lp127275%_ ((_%rest127277%_ (load-path)))
            (let* ((_%rest127278127287%_ _%rest127277%_)
                   (_%E127281127291%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest127278127287%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K127283127362%_
                     (lambda (_%rest127302%_ _%dir127303%_)
                       (letrec ((_%resolve127305%_
                                 (lambda (_%ssi127318%_ _%srcs127319%_)
                                   (let ((_%compiled-path127321%_
                                          (path-expand
                                           _%ssi127318%_
                                           _%dir127303%_)))
                                     (if (##file-exists?
                                          _%compiled-path127321%_)
                                         (path-normalize
                                          _%compiled-path127321%_)
                                         (let _%lpr127323%_ ((_%rest-src127325%_
                                                              _%srcs127319%_))
                                           (let* ((_%rest-src127326127334%_
                                                   _%rest-src127325%_)
                                                  (_%else127328127342%_
                                                   (lambda ()
                                                     (_%lp127275%_
                                                      _%rest127302%_)))
                                                  (_%K127330127350%_
                                                   (lambda (_%rest-src127345%_
                                                            _%src127346%_)
                                                     (let ((_%src-path127348%_
                                                            (path-expand
                                                             _%src127346%_
                                                             _%dir127303%_)))
                                                       (if (##file-exists?
                                                            _%src-path127348%_)
                                                           (path-normalize
                                                            _%src-path127348%_)
                                                           (_%lpr127323%_
                                                            _%rest-src127345%_))))))
                                             (if (pair? _%rest-src127326127334%_)
                                                 (let ((_%hd127331127353%_
                                                        (##car _%rest-src127326127334%_))
                                                       (_%tl127332127355%_
                                                        (##cdr _%rest-src127326127334%_)))
                                                   (let* ((_%src127358%_
                                                           _%hd127331127353%_)
                                                          (_%rest-src127360%_
                                                           _%tl127332127355%_))
                                                     (_%K127330127350%_
                                                      _%rest-src127360%_
                                                      _%src127358%_)))
                                                 (_%else127328127342%_)))))))))
                         (let ((_%$e127307%_
                                (gx#core-library-package-path-prefix
                                 _%dir127303%_)))
                           (if _%$e127307%_
                               ((lambda (_%prefix127310%_)
                                  (if (string-prefix?
                                       _%prefix127310%_
                                       _%spath127264%_)
                                      (let ((_%ssi127314%_
                                             (substring
                                              _%ssi127268%_
                                              (string-length _%prefix127310%_)
                                              (##string-length _%ssi127268%_)))
                                            (_%srcs127315%_
                                             (##map (lambda (_%src127312%_)
                                                      (substring
                                                       _%src127312%_
                                                       (string-length
                                                        _%prefix127310%_)
                                                       (string-length
                                                        _%src127312%_)))
                                                    _%srcs127272%_)))
                                        (_%resolve127305%_
                                         _%ssi127314%_
                                         _%srcs127315%_))
                                      (_%lp127275%_ _%rest127302%_)))
                                _%$e127307%_)
                               (_%resolve127305%_
                                _%ssi127268%_
                                _%srcs127272%_))))))
                    (_%K127282127296%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath127260%_))))
                (let ((_%try-match127280127299%_
                       (lambda ()
                         (if (null? _%rest127278127287%_)
                             (_%K127282127296%_)
                             (_%E127281127291%_)))))
                  (if (pair? _%rest127278127287%_)
                      (let ((_%tl127285127367%_ (##cdr _%rest127278127287%_))
                            (_%hd127284127365%_ (##car _%rest127278127287%_)))
                        (let ((_%dir127370%_ _%hd127284127365%_)
                              (_%rest127372%_ _%tl127285127367%_))
                          (_%K127283127362%_ _%rest127372%_ _%dir127370%_)))
                      (_%try-match127280127299%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath127228%_)
        (letrec ((_%resolve127230%_
                  (lambda (_%path127251%_ _%base127252%_)
                    (let ((_%$e127254%_
                           (string-rindex__0 _%base127252%_ '#\/)))
                      (if _%$e127254%_
                          ((lambda (_%idx127257%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base127252%_ '0 _%idx127257%_)
                                '"/"
                                _%path127251%_))))
                           _%$e127254%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path127251%_))))))))
          (let ((_%spath127232%_ (symbol->string (gx#stx-e _%modpath127228%_)))
                (_%mod127233%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod127233%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath127228%_))
            (let ((_%mpath127235%_
                   (symbol->string
                    (##structure-ref
                     _%mod127233%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp127237%_ ((_%spath127239%_ _%spath127232%_)
                                 (_%mpath127240%_ _%mpath127235%_))
                (if (string-prefix? '"../" _%spath127239%_)
                    (let ((_%$e127243%_
                           (string-rindex__0 _%mpath127240%_ '#\/)))
                      (if _%$e127243%_
                          ((lambda (_%idx127246%_)
                             (_%lp127237%_
                              (substring
                               _%spath127239%_
                               '3
                               (string-length _%spath127239%_))
                              (substring _%mpath127240%_ '0 _%idx127246%_)))
                           _%$e127243%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath127228%_)))
                    (if (string-prefix? '"./" _%spath127239%_)
                        (_%lp127237%_
                         (substring
                          _%spath127239%_
                          '2
                          (string-length _%spath127239%_))
                         _%mpath127240%_)
                        (_%resolve127230%_
                         _%spath127239%_
                         _%mpath127240%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir127220%_)
        (let ((_%$e127222%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir127220%_))))
          (if _%$e127222%_
              ((lambda (_%pkg127225%_)
                 (##string-append (symbol->string _%pkg127225%_) '"/"))
               _%$e127222%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir127190%_ _%exists?127191%_)
        (let ((_%$e127193%_ (__hash-get gx#__module-pkg-cache _%dir127190%_)))
          (if _%$e127193%_
              _%$e127193%_
              (let* ((_%gerbil.pkg127197%_
                      (path-expand '"gerbil.pkg" _%dir127190%_))
                     (_%plist127207%_
                      (if (or _%exists?127191%_
                              (##file-exists? _%gerbil.pkg127197%_))
                          (let ((_%e127202%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg127197%_
                                  read)))
                            (if (eof-object? _%e127202%_)
                                '()
                                (if (list? _%e127202%_)
                                    _%e127202%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg127197%_
                                     _%e127202%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir127190%_
                 _%plist127207%_)
                _%plist127207%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir127213%_)
        (let ((_%exists?127215%_ '#f))
          (gx#core-library-package-plist__% _%dir127213%_ _%exists?127215%_))))
    (define gx#core-library-package-plist
      (lambda _g129027_
        (let ((_g129026_ (##length _g129027_)))
          (cond ((##fx= _g129026_ 1)
                 (apply gx#core-library-package-plist__0 _g129027_))
                ((##fx= _g129026_ 2)
                 (apply gx#core-library-package-plist__% _g129027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g129027_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx127187%_)
        (gx#core-special-module-path? _%stx127187%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx127185%_)
        (gx#core-special-module-path? _%stx127185%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx127180%_ _%char127181%_)
        (if (gx#identifier? _%stx127180%_)
            (if (interned-symbol? (gx#stx-e _%stx127180%_))
                (let ((_%str127183%_
                       (symbol->string (gx#stx-e _%stx127180%_))))
                  (if (##fx> (##string-length _%str127183%_) '1)
                      (eq? (string-ref _%str127183%_ '0) _%char127181%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx127174%_)
        (gx#core-bound-identifier?__%
         _%stx127174%_
         (lambda (_%g127175127177%_)
           (gx#expander-binding?__% _%g127175127177%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx127168%_)
        (gx#core-bound-identifier?__%
         _%stx127168%_
         (lambda (_%g127169127171%_)
           (gx#expander-binding?__% _%g127169127171%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx127155%_)
        (letrec ((_%module-prelude?127157%_
                  (lambda (_%e127163%_)
                    (let ((_%$e127165%_
                           (##structure-instance-of?
                            _%e127163%_
                            'gx#module-context::t)))
                      (if _%$e127165%_
                          _%$e127165%_
                          (##structure-instance-of?
                           _%e127163%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx127155%_
           (lambda (_%g127158127160%_)
             (gx#expander-binding?__%
              _%g127158127160%_
              _%module-prelude?127157%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in127085%_ _%ctx127086%_ _%force-weak?127087%_)
        (let* ((_%in127088127097%_ _%in127085%_)
               (_%E127090127101%_
                (lambda ()
                  (error '"No clause matching"
                         _%in127088127097%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K127091127114%_
                (lambda (_%weak?127104%_
                         _%phi127105%_
                         _%key127106%_
                         _%source127107%_)
                  (gx#core-bind!__%
                   _%key127106%_
                   (let ((_%e127109%_
                          (gx#core-resolve-module-export _%source127107%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e127109%_ '1 '#f '#f)
                      _%key127106%_
                      _%phi127105%_
                      _%e127109%_
                      (##unchecked-structure-ref _%source127107%_ '1 '#f '#f)
                      (let ((_%$e127111%_ _%force-weak?127087%_))
                        (if _%$e127111%_ _%$e127111%_ _%weak?127104%_))))
                   gx#core-context-rebind?
                   _%phi127105%_
                   _%ctx127086%_))))
          (if (##structure-direct-instance-of?
               _%in127088127097%_
               'gx#module-import::t)
              (let* ((_%e127092127117%_
                      (##unchecked-structure-ref
                       _%in127088127097%_
                       '1
                       '#f
                       '#f))
                     (_%source127120%_ _%e127092127117%_)
                     (_%e127093127122%_
                      (##unchecked-structure-ref
                       _%in127088127097%_
                       '2
                       '#f
                       '#f))
                     (_%key127125%_ _%e127093127122%_)
                     (_%e127094127127%_
                      (##unchecked-structure-ref
                       _%in127088127097%_
                       '3
                       '#f
                       '#f))
                     (_%phi127130%_ _%e127094127127%_)
                     (_%e127095127132%_
                      (##unchecked-structure-ref
                       _%in127088127097%_
                       '4
                       '#f
                       '#f))
                     (_%weak?127135%_ _%e127095127132%_))
                (_%K127091127114%_
                 _%weak?127135%_
                 _%phi127130%_
                 _%key127125%_
                 _%source127120%_))
              (_%E127090127101%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in127140%_)
        (let* ((_%ctx127142%_ (gx#current-expander-context))
               (_%force-weak?127144%_ '#f))
          (gx#core-bind-import!__%
           _%in127140%_
           _%ctx127142%_
           _%force-weak?127144%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in127146%_ _%ctx127147%_)
        (let ((_%force-weak?127149%_ '#f))
          (gx#core-bind-import!__%
           _%in127146%_
           _%ctx127147%_
           _%force-weak?127149%_))))
    (define gx#core-bind-import!
      (lambda _g129029_
        (let ((_g129028_ (##length _g129029_)))
          (cond ((##fx= _g129028_ 1) (apply gx#core-bind-import!__0 _g129029_))
                ((##fx= _g129028_ 2) (apply gx#core-bind-import!__1 _g129029_))
                ((##fx= _g129028_ 3) (apply gx#core-bind-import!__% _g129029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g129029_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in127071%_ _%ctx127072%_)
        (gx#core-bind-import!__% _%in127071%_ _%ctx127072%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in127077%_)
        (let ((_%ctx127079%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in127077%_ _%ctx127079%_))))
    (define gx#core-bind-weak-import!
      (lambda _g129031_
        (let ((_g129030_ (##length _g129031_)))
          (cond ((##fx= _g129030_ 1)
                 (apply gx#core-bind-weak-import!__0 _g129031_))
                ((##fx= _g129030_ 2)
                 (apply gx#core-bind-weak-import!__% _g129031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g129031_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out126962%_)
        (letrec ((_%subst126964%_
                  (lambda (_%key127010%_)
                    (let* ((_%key127011127019%_ _%key127010%_)
                           (_%else127013127027%_ (lambda () _%key127010%_))
                           (_%K127015127058%_
                            (lambda (_%mark127030%_ _%id127031%_)
                              (let* ((_%mark127032127038%_ _%mark127030%_)
                                     (_%E127034127042%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark127032127038%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K127035127050%_
                                      (lambda (_%subst127045%_)
                                        (let ((_%$e127047%_
                                               (if _%subst127045%_
                                                   (hash-get
                                                    _%subst127045%_
                                                    _%id127031%_)
                                                   '#f)))
                                          (if _%$e127047%_
                                              _%$e127047%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key127010%_))))))
                                (if (##structure-instance-of?
                                     _%mark127032127038%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e127036127053%_
                                            (##unchecked-structure-ref
                                             _%mark127032127038%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst127056%_ _%e127036127053%_))
                                      (_%K127035127050%_ _%subst127056%_))
                                    (_%E127034127042%_))))))
                      (if (pair? _%key127011127019%_)
                          (let ((_%hd127016127061%_
                                 (##car _%key127011127019%_))
                                (_%tl127017127063%_
                                 (##cdr _%key127011127019%_)))
                            (let* ((_%id127066%_ _%hd127016127061%_)
                                   (_%mark127068%_ _%tl127017127063%_))
                              (_%K127015127058%_ _%mark127068%_ _%id127066%_)))
                          (_%else127013127027%_))))))
          (let* ((_%out126965126975%_ _%out126962%_)
                 (_%E126967126979%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out126965126975%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K126968126986%_
                  (lambda (_%phi126982%_ _%key126983%_ _%ctx126984%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx126984%_ _%phi126982%_)
                     (_%subst126964%_ _%key126983%_)))))
            (if (##structure-direct-instance-of?
                 _%out126965126975%_
                 'gx#module-export::t)
                (let* ((_%e126969126989%_
                        (##unchecked-structure-ref
                         _%out126965126975%_
                         '1
                         '#f
                         '#f))
                       (_%ctx126992%_ _%e126969126989%_)
                       (_%e126970126994%_
                        (##unchecked-structure-ref
                         _%out126965126975%_
                         '2
                         '#f
                         '#f))
                       (_%key126997%_ _%e126970126994%_)
                       (_%e126971126999%_
                        (##unchecked-structure-ref
                         _%out126965126975%_
                         '3
                         '#f
                         '#f))
                       (_%phi127002%_ _%e126971126999%_)
                       (_%e126972127004%_
                        (##unchecked-structure-ref
                         _%out126965126975%_
                         '4
                         '#f
                         '#f))
                       (_%e126973127007%_
                        (##unchecked-structure-ref
                         _%out126965126975%_
                         '5
                         '#f
                         '#f)))
                  (_%K126968126986%_
                   _%phi127002%_
                   _%key126997%_
                   _%ctx126992%_))
                (_%E126967126979%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out126887%_ _%rename126888%_ _%dphi126889%_)
        (let* ((_%out126890126900%_ _%out126887%_)
               (_%E126892126904%_
                (lambda ()
                  (error '"No clause matching"
                         _%out126890126900%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K126893126916%_
                (lambda (_%weak?126907%_
                         _%name126908%_
                         _%phi126909%_
                         _%key126910%_
                         _%ctx126911%_)
                  (##structure
                   gx#module-import::t
                   _%out126887%_
                   (let ((_%$e126913%_ _%rename126888%_))
                     (if _%$e126913%_ _%$e126913%_ _%name126908%_))
                   (fx+ _%phi126909%_ _%dphi126889%_)
                   _%weak?126907%_))))
          (if (##structure-direct-instance-of?
               _%out126890126900%_
               'gx#module-export::t)
              (let* ((_%e126894126919%_
                      (##unchecked-structure-ref
                       _%out126890126900%_
                       '1
                       '#f
                       '#f))
                     (_%ctx126922%_ _%e126894126919%_)
                     (_%e126895126924%_
                      (##unchecked-structure-ref
                       _%out126890126900%_
                       '2
                       '#f
                       '#f))
                     (_%key126927%_ _%e126895126924%_)
                     (_%e126896126929%_
                      (##unchecked-structure-ref
                       _%out126890126900%_
                       '3
                       '#f
                       '#f))
                     (_%phi126932%_ _%e126896126929%_)
                     (_%e126897126934%_
                      (##unchecked-structure-ref
                       _%out126890126900%_
                       '4
                       '#f
                       '#f))
                     (_%name126937%_ _%e126897126934%_)
                     (_%e126898126939%_
                      (##unchecked-structure-ref
                       _%out126890126900%_
                       '5
                       '#f
                       '#f))
                     (_%weak?126942%_ _%e126898126939%_))
                (_%K126893126916%_
                 _%weak?126942%_
                 _%name126937%_
                 _%phi126932%_
                 _%key126927%_
                 _%ctx126922%_))
              (_%E126892126904%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out126947%_)
        (let* ((_%rename126949%_ '#f) (_%dphi126951%_ '0))
          (gx#core-module-export->import__%
           _%out126947%_
           _%rename126949%_
           _%dphi126951%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out126953%_ _%rename126954%_)
        (let ((_%dphi126956%_ '0))
          (gx#core-module-export->import__%
           _%out126953%_
           _%rename126954%_
           _%dphi126956%_))))
    (define gx#core-module-export->import
      (lambda _g129033_
        (let ((_g129032_ (##length _g129033_)))
          (cond ((##fx= _g129032_ 1)
                 (apply gx#core-module-export->import__0 _g129033_))
                ((##fx= _g129032_ 2)
                 (apply gx#core-module-export->import__1 _g129033_))
                ((##fx= _g129032_ 3)
                 (apply gx#core-module-export->import__% _g129033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g129033_))))))
    (define gx#core-expand-module%
      (lambda (_%stx126786%_)
        (letrec ((_%make-context126788%_
                  (lambda (_%id126865%_)
                    (let* ((_%super126867%_ (gx#current-expander-context))
                           (_%bind-id126869%_ (gx#stx-e _%id126865%_))
                           (_%mod-id126871%_
                            (if (##structure-instance-of?
                                 _%super126867%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super126867%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id126869%_)
                                _%bind-id126869%_))
                           (_%ns126873%_ (symbol->string _%mod-id126871%_))
                           (_%path126883%_
                            (if (##structure-instance-of?
                                 _%super126867%_
                                 'gx#module-context::t)
                                (let ((_%path126875%_
                                       (##unchecked-structure-ref
                                        _%super126867%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path126875%_)
                                          (null? _%path126875%_))
                                      (cons _%bind-id126869%_ _%path126875%_)
                                      (if (not _%path126875%_)
                                          _%bind-id126869%_
                                          (cons _%bind-id126869%_
                                                (cons _%path126875%_ '())))))
                                _%bind-id126869%_))
                           (__obj129009
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
                       __obj129009
                       _%mod-id126871%_
                       _%super126867%_
                       _%ns126873%_
                       _%path126883%_)
                      __obj129009)))
                 (_%valid-module-id?126789%_
                  (lambda (_%id126840%_)
                    (let* ((_%str126842%_ (symbol->string _%id126840%_))
                           (_%len126844%_ (##string-length _%str126842%_)))
                      (if (##fx>= _%len126844%_ '1)
                          (let _%loop126847%_ ((_%index126849%_
                                                (##fx- (##string-length
                                                        _%str126842%_)
                                                       '1)))
                            (if (##fx>= _%index126849%_ '0)
                                (let ((_%c126851%_
                                       (string-ref
                                        _%str126842%_
                                        _%index126849%_)))
                                  (if (or (and (##char>=? _%c126851%_ '#\a)
                                               (##char<=? _%c126851%_ '#\z))
                                          (and (##char>=? _%c126851%_ '#\A)
                                               (##char<=? _%c126851%_ '#\Z))
                                          (and (##char>=? _%c126851%_ '#\0)
                                               (##char<=? _%c126851%_ '#\9))
                                          (##char=? _%c126851%_ '#\_)
                                          (##char=? _%c126851%_ '#\-))
                                      (_%loop126847%_
                                       (##fx- _%index126849%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e126790126800%_ _%stx126786%_)
                 (_%E126792126804%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e126790126800%_)))
                 (_%E126791126836%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126790126800%_)
                        (let ((_%e126793126808%_
                               (gx#syntax-e _%e126790126800%_)))
                          (let ((_%hd126794126811%_ (##car _%e126793126808%_))
                                (_%tl126795126813%_ (##cdr _%e126793126808%_)))
                            (if (gx#stx-pair? _%tl126795126813%_)
                                (let ((_%e126796126816%_
                                       (gx#syntax-e _%tl126795126813%_)))
                                  (let ((_%hd126797126819%_
                                         (##car _%e126796126816%_))
                                        (_%tl126798126821%_
                                         (##cdr _%e126796126816%_)))
                                    (let* ((_%id126824%_ _%hd126797126819%_)
                                           (_%body126826%_ _%tl126798126821%_))
                                      (if (and (gx#identifier? _%id126824%_)
                                               (gx#stx-list? _%body126826%_))
                                          (if (_%valid-module-id?126789%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx126828%_
                                                      (_%make-context126788%_
                                                       _%id126824%_))
                                                     (_%body126830%_
                                                      (gx#core-expand-module-begin
                                                       _%body126826%_
                                                       _%ctx126828%_))
                                                     (_%body126832%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body126830%_)
                                                       (gx#stx-source
                                                        _%stx126786%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx126828%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body126832%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx126828%_
                                                 _%body126832%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id126824%_
                                                 _%ctx126828%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id126824%_)
                                                  _%body126832%_)
                                                 (gx#stx-source
                                                  _%stx126786%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx126786%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E126792126804%_)))))
                                (_%E126792126804%_))))
                        (_%E126792126804%_)))))
            (_%E126791126836%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body126752%_ _%ctx126753%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx126756%_
                   (gx#core-expand-head (cons '%%begin-module _%body126752%_)))
                  (_%e126757126764%_ _%stx126756%_)
                  (_%E126759126768%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx126756%_)))
                  (_%E126758126782%_
                   (lambda ()
                     (if (gx#stx-pair? _%e126757126764%_)
                         (let ((_%e126760126772%_
                                (gx#syntax-e _%e126757126764%_)))
                           (let ((_%hd126761126775%_ (##car _%e126760126772%_))
                                 (_%tl126762126777%_
                                  (##cdr _%e126760126772%_)))
                             (if (and (gx#identifier? _%hd126761126775%_)
                                      (gx#core-identifier=?
                                       _%hd126761126775%_
                                       '%#begin-module))
                                 (let ((_%body126780%_ _%tl126762126777%_))
                                   (if (gx#sealed-syntax? _%stx126756%_)
                                       _%body126780%_
                                       (gx#core-expand-module-body
                                        _%body126780%_)))
                                 (_%E126759126768%_))))
                         (_%E126759126768%_)))))
             (_%E126758126782%_)))
         gx#current-expander-context
         _%ctx126753%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body126548%_)
        (letrec ((_%expand-special126550%_
                  (lambda (_%hd126679%_ _%K126680%_ _%rest126681%_ _%r126682%_)
                    (let* ((_%e126683126700%_ _%hd126679%_)
                           (_%E126695126704%_
                            (lambda ()
                              (_%K126680%_
                               _%rest126681%_
                               (cons (gx#core-expand-top _%hd126679%_)
                                     _%r126682%_))))
                           (_%E126685126716%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126683126700%_)
                                  (let ((_%e126696126708%_
                                         (gx#syntax-e _%e126683126700%_)))
                                    (let ((_%hd126697126711%_
                                           (##car _%e126696126708%_))
                                          (_%tl126698126713%_
                                           (##cdr _%e126696126708%_)))
                                      (if (and (gx#identifier?
                                                _%hd126697126711%_)
                                               (gx#core-identifier=?
                                                _%hd126697126711%_
                                                '%#export))
                                          (_%K126680%_
                                           _%rest126681%_
                                           (cons _%hd126679%_ _%r126682%_))
                                          (_%E126695126704%_))))
                                  (_%E126695126704%_))))
                           (_%E126684126748%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126683126700%_)
                                  (let ((_%e126686126720%_
                                         (gx#syntax-e _%e126683126700%_)))
                                    (let ((_%hd126687126723%_
                                           (##car _%e126686126720%_))
                                          (_%tl126688126725%_
                                           (##cdr _%e126686126720%_)))
                                      (if (and (gx#identifier?
                                                _%hd126687126723%_)
                                               (gx#core-identifier=?
                                                _%hd126687126723%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl126688126725%_)
                                              (let ((_%e126689126728%_
                                                     (gx#syntax-e
                                                      _%tl126688126725%_)))
                                                (let ((_%hd126690126731%_
                                                       (##car _%e126689126728%_))
                                                      (_%tl126691126733%_
                                                       (##cdr _%e126689126728%_)))
                                                  (let ((_%hd-bind126736%_
                                                         _%hd126690126731%_))
                                                    (if (gx#stx-pair?
                                                         _%tl126691126733%_)
                                                        (let ((_%e126692126738%_
                                                               (gx#syntax-e
                                                                _%tl126691126733%_)))
                                                          (let ((_%hd126693126741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e126692126738%_))
                        (_%tl126694126743%_ (##cdr _%e126692126738%_)))
                    (let ((_%expr126746%_ _%hd126693126741%_))
                      (if (gx#stx-null? _%tl126694126743%_)
                          (if (gx#core-bind-values? _%hd-bind126736%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind126736%_)
                                (_%K126680%_
                                 _%rest126681%_
                                 (cons _%hd126679%_ _%r126682%_)))
                              (_%E126685126716%_))
                          (_%E126685126716%_)))))
                (_%E126685126716%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126685126716%_))
                                          (_%E126685126716%_))))
                                  (_%E126685126716%_)))))
                      (_%E126684126748%_))))
                 (_%expand-body126551%_
                  (lambda (_%rbody126553%_)
                    (let _%lp126555%_ ((_%rest126557%_ _%rbody126553%_)
                                       (_%body126558%_ '()))
                      (let* ((_%rest126559126567%_ _%rest126557%_)
                             (_%else126561126575%_ (lambda () _%body126558%_))
                             (_%K126563126667%_
                              (lambda (_%rest126578%_ _%hd126579%_)
                                (let* ((_%e126580126601%_ _%hd126579%_)
                                       (_%E126596126605%_
                                        (lambda ()
                                          (_%lp126555%_
                                           _%rest126578%_
                                           (cons (gx#core-expand-expression
                                                  _%hd126579%_)
                                                 _%body126558%_))))
                                       (_%E126592126619%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126580126601%_)
                                              (let ((_%e126597126609%_
                                                     (gx#syntax-e
                                                      _%e126580126601%_)))
                                                (let ((_%hd126598126612%_
                                                       (##car _%e126597126609%_))
                                                      (_%tl126599126614%_
                                                       (##cdr _%e126597126609%_)))
                                                  (let ((_%form126617%_
                                                         _%hd126598126612%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form126617%_
                                                         gx#special-form-binding?)
                                                        (_%lp126555%_
                                                         _%rest126578%_
                                                         (cons _%hd126579%_
                                                               _%body126558%_))
                                                        (_%E126596126605%_)))))
                                              (_%E126596126605%_))))
                                       (_%E126582126631%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126580126601%_)
                                              (let ((_%e126593126623%_
                                                     (gx#syntax-e
                                                      _%e126580126601%_)))
                                                (let ((_%hd126594126626%_
                                                       (##car _%e126593126623%_))
                                                      (_%tl126595126628%_
                                                       (##cdr _%e126593126623%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126594126626%_)
                                                           (gx#core-identifier=?
                                                            _%hd126594126626%_
                                                            '%#export))
                                                      (_%lp126555%_
                                                       _%rest126578%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd126579%_)
                                                             _%body126558%_))
                                                      (_%E126592126619%_))))
                                              (_%E126592126619%_))))
                                       (_%E126581126663%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126580126601%_)
                                              (let ((_%e126583126635%_
                                                     (gx#syntax-e
                                                      _%e126580126601%_)))
                                                (let ((_%hd126584126638%_
                                                       (##car _%e126583126635%_))
                                                      (_%tl126585126640%_
                                                       (##cdr _%e126583126635%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126584126638%_)
                                                           (gx#core-identifier=?
                                                            _%hd126584126638%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl126585126640%_)
                                                          (let ((_%e126586126643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl126585126640%_)))
                    (let ((_%hd126587126646%_ (##car _%e126586126643%_))
                          (_%tl126588126648%_ (##cdr _%e126586126643%_)))
                      (let ((_%hd-bind126651%_ _%hd126587126646%_))
                        (if (gx#stx-pair? _%tl126588126648%_)
                            (let ((_%e126589126653%_
                                   (gx#syntax-e _%tl126588126648%_)))
                              (let ((_%hd126590126656%_
                                     (##car _%e126589126653%_))
                                    (_%tl126591126658%_
                                     (##cdr _%e126589126653%_)))
                                (let ((_%expr126661%_ _%hd126590126656%_))
                                  (if (gx#stx-null? _%tl126591126658%_)
                                      (_%lp126555%_
                                       _%rest126578%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind126651%_)
                                               (gx#core-expand-expression
                                                _%expr126661%_))
                                              (gx#stx-source _%hd126579%_))
                                             _%body126558%_))
                                      (_%E126582126631%_)))))
                            (_%E126582126631%_)))))
                  (_%E126582126631%_))
              (_%E126582126631%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126582126631%_)))))
                                  (_%E126581126663%_)))))
                        (if (pair? _%rest126559126567%_)
                            (let ((_%hd126564126670%_
                                   (##car _%rest126559126567%_))
                                  (_%tl126565126672%_
                                   (##cdr _%rest126559126567%_)))
                              (let* ((_%hd126675%_ _%hd126564126670%_)
                                     (_%rest126677%_ _%tl126565126672%_))
                                (_%K126563126667%_
                                 _%rest126677%_
                                 _%hd126675%_)))
                            (_%else126561126575%_)))))))
          (_%expand-body126551%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body126548%_)
            _%expand-special126550%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx126389%_
               _%expanded?126390%_
               _%method126391%_
               _%current-phi126392%_
               _%expand1126393%_)
        (letrec ((_%K126395%_
                  (lambda (_%rest126515%_ _%r126516%_)
                    (let* ((_%e126517126524%_ _%rest126515%_)
                           (_%E126519126528%_ (lambda () _%r126516%_))
                           (_%E126518126544%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126517126524%_)
                                  (let ((_%e126520126532%_
                                         (gx#syntax-e _%e126517126524%_)))
                                    (let ((_%hd126521126535%_
                                           (##car _%e126520126532%_))
                                          (_%tl126522126537%_
                                           (##cdr _%e126520126532%_)))
                                      (let* ((_%hd126540%_ _%hd126521126535%_)
                                             (_%rest126542%_
                                              _%tl126522126537%_))
                                        (_%step126396%_
                                         _%hd126540%_
                                         _%rest126542%_
                                         _%r126516%_))))
                                  (_%E126519126528%_)))))
                      (_%E126518126544%_))))
                 (_%step126396%_
                  (lambda (_%hd126429%_ _%rest126430%_ _%r126431%_)
                    (let* ((_%e126432126450%_ _%hd126429%_)
                           (_%E126445126454%_
                            (lambda ()
                              (if (_%expanded?126390%_ (gx#stx-e _%hd126429%_))
                                  (_%K126395%_
                                   _%rest126430%_
                                   (cons (gx#stx-e _%hd126429%_) _%r126431%_))
                                  (_%expand1126393%_
                                   _%hd126429%_
                                   _%K126395%_
                                   _%rest126430%_
                                   _%r126431%_))))
                           (_%E126441126470%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126432126450%_)
                                  (let ((_%e126446126458%_
                                         (gx#syntax-e _%e126432126450%_)))
                                    (let ((_%hd126447126461%_
                                           (##car _%e126446126458%_))
                                          (_%tl126448126463%_
                                           (##cdr _%e126446126458%_)))
                                      (let* ((_%macro126466%_
                                              _%hd126447126461%_)
                                             (_%body126468%_
                                              _%tl126448126463%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro126466%_
                                             gx#syntax-binding?)
                                            (_%K126395%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro126466%_)
                                                    _%hd126429%_
                                                    _%method126391%_)
                                                   _%rest126430%_)
                                             _%r126431%_)
                                            (_%E126445126454%_)))))
                                  (_%E126445126454%_))))
                           (_%E126434126484%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126432126450%_)
                                  (let ((_%e126442126474%_
                                         (gx#syntax-e _%e126432126450%_)))
                                    (let ((_%hd126443126477%_
                                           (##car _%e126442126474%_))
                                          (_%tl126444126479%_
                                           (##cdr _%e126442126474%_)))
                                      (if (eq? (gx#stx-e _%hd126443126477%_)
                                               'begin:)
                                          (let ((_%body126482%_
                                                 _%tl126444126479%_))
                                            (_%K126395%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest126430%_
                                              _%body126482%_)
                                             _%r126431%_))
                                          (_%E126441126470%_))))
                                  (_%E126441126470%_))))
                           (_%E126433126511%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126432126450%_)
                                  (let ((_%e126435126488%_
                                         (gx#syntax-e _%e126432126450%_)))
                                    (let ((_%hd126436126491%_
                                           (##car _%e126435126488%_))
                                          (_%tl126437126493%_
                                           (##cdr _%e126435126488%_)))
                                      (if (eq? (gx#stx-e _%hd126436126491%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl126437126493%_)
                                              (let ((_%e126438126496%_
                                                     (gx#syntax-e
                                                      _%tl126437126493%_)))
                                                (let ((_%hd126439126499%_
                                                       (##car _%e126438126496%_))
                                                      (_%tl126440126501%_
                                                       (##cdr _%e126438126496%_)))
                                                  (let* ((_%dphi126504%_
                                                          _%hd126439126499%_)
                                                         (_%body126506%_
                                                          _%tl126440126501%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi126504%_)
                                                        (let ((_%rbody126509%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K126395%_ _%body126506%_ '()))
                        _%current-phi126392%_
                        (fx+ (gx#stx-e _%dphi126504%_)
                             (_%current-phi126392%_)))))
                  (_%K126395%_
                   _%rest126430%_
                   (__foldr1 cons _%r126431%_ _%rbody126509%_)))
                (_%E126434126484%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126434126484%_))
                                          (_%E126434126484%_))))
                                  (_%E126434126484%_)))))
                      (_%E126433126511%_)))))
          (let* ((_%e126397126404%_ _%stx126389%_)
                 (_%E126399126408%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e126397126404%_)))
                 (_%E126398126425%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126397126404%_)
                        (let ((_%e126400126412%_
                               (gx#syntax-e _%e126397126404%_)))
                          (let ((_%hd126401126415%_ (##car _%e126400126412%_))
                                (_%tl126402126417%_ (##cdr _%e126400126412%_)))
                            (let ((_%body126420%_ _%tl126402126417%_))
                              (if (_%current-phi126392%_)
                                  (_%K126395%_ _%body126420%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K126395%_ _%body126420%_ '()))
                                   _%current-phi126392%_
                                   (gx#current-expander-phi))))))
                        (_%E126399126408%_)))))
            (_%E126398126425%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx126043%_ _%internal-expand?126044%_)
        (letrec ((_%expand1126046%_
                  (lambda (_%hd126361%_ _%K126362%_ _%rest126363%_ _%r126364%_)
                    (if (gx#core-bound-module? _%hd126361%_)
                        (_%import1126047%_
                         (gx#syntax-local-e__0 _%hd126361%_)
                         _%K126362%_
                         _%rest126363%_
                         _%r126364%_)
                        (if (gx#core-library-module-path? _%hd126361%_)
                            (_%import1126047%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd126361%_))
                             _%K126362%_
                             _%rest126363%_
                             _%r126364%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd126361%_)
                                (_%import1126047%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd126361%_))
                                 _%K126362%_
                                 _%rest126363%_
                                 _%r126364%_)
                                (let ((_%e126370%_ (gx#stx-e _%hd126361%_)))
                                  (if (pair? _%e126370%_)
                                      (let ((_%$e126373%_
                                             (gx#stx-e (##car _%e126370%_))))
                                        (if (eq? 'spec: _%$e126373%_)
                                            (_%import-spec126050%_
                                             _%hd126361%_
                                             _%K126362%_
                                             _%rest126363%_
                                             _%r126364%_)
                                            (if (eq? 'in: _%$e126373%_)
                                                (_%import-submodule126048%_
                                                 _%hd126361%_
                                                 _%K126362%_
                                                 _%rest126363%_
                                                 _%r126364%_)
                                                (if (eq? 'runtime:
                                                         _%$e126373%_)
                                                    (_%import-runtime126049%_
                                                     _%hd126361%_
                                                     _%K126362%_
                                                     _%rest126363%_
                                                     _%r126364%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx126043%_
                                                     _%hd126361%_)))))
                                      (if (string? _%e126370%_)
                                          (_%import1126047%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd126361%_
                                             (gx#stx-source _%stx126043%_)))
                                           _%K126362%_
                                           _%rest126363%_
                                           _%r126364%_)
                                          (if (##structure-instance-of?
                                               _%e126370%_
                                               'gx#module-context::t)
                                              (_%K126362%_
                                               _%rest126363%_
                                               (cons _%e126370%_ _%r126364%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx126043%_
                                               _%hd126361%_))))))))))
                 (_%import1126047%_
                  (lambda (_%ctx126350%_
                           _%K126351%_
                           _%rest126352%_
                           _%r126353%_)
                    (let ((_%dphi126355%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K126351%_
                       _%rest126352%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx126350%_
                              _%dphi126355%_
                              (map (lambda (_%g126356126358%_)
                                     (gx#core-module-export->import__%
                                      _%g126356126358%_
                                      '#f
                                      _%dphi126355%_))
                                   (##unchecked-structure-ref
                                    _%ctx126350%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r126353%_)))))
                 (_%import-submodule126048%_
                  (lambda (_%hd126317%_ _%K126318%_ _%rest126319%_ _%r126320%_)
                    (let* ((_%e126321126328%_ _%hd126317%_)
                           (_%E126323126332%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126321126328%_)))
                           (_%E126322126346%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126321126328%_)
                                  (let ((_%e126324126336%_
                                         (gx#syntax-e _%e126321126328%_)))
                                    (let ((_%hd126325126339%_
                                           (##car _%e126324126336%_))
                                          (_%tl126326126341%_
                                           (##cdr _%e126324126336%_)))
                                      (let ((_%spath126344%_
                                             _%tl126326126341%_))
                                        (_%import1126047%_
                                         (_%import-spec-source126051%_
                                          _%spath126344%_)
                                         _%K126318%_
                                         _%rest126319%_
                                         _%r126320%_))))
                                  (_%E126323126332%_)))))
                      (_%E126322126346%_))))
                 (_%import-runtime126049%_
                  (lambda (_%hd126284%_ _%K126285%_ _%rest126286%_ _%r126287%_)
                    (let* ((_%e126288126295%_ _%hd126284%_)
                           (_%E126290126299%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126288126295%_)))
                           (_%E126289126313%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126288126295%_)
                                  (let ((_%e126291126303%_
                                         (gx#syntax-e _%e126288126295%_)))
                                    (let ((_%hd126292126306%_
                                           (##car _%e126291126303%_))
                                          (_%tl126293126308%_
                                           (##cdr _%e126291126303%_)))
                                      (let ((_%spath126311%_
                                             _%tl126293126308%_))
                                        (_%K126285%_
                                         _%rest126286%_
                                         (cons (_%import-spec-source126051%_
                                                _%spath126311%_)
                                               _%r126287%_)))))
                                  (_%E126290126299%_)))))
                      (_%E126289126313%_))))
                 (_%import-spec126050%_
                  (lambda (_%hd126122%_ _%K126123%_ _%rest126124%_ _%r126125%_)
                    (let* ((_%e126126126143%_ _%hd126122%_)
                           (_%E126135126147%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126126126143%_)))
                           (_%E126128126258%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126126126143%_)
                                  (let ((_%e126136126151%_
                                         (gx#syntax-e _%e126126126143%_)))
                                    (let ((_%hd126137126154%_
                                           (##car _%e126136126151%_))
                                          (_%tl126138126156%_
                                           (##cdr _%e126136126151%_)))
                                      (if (gx#stx-pair? _%tl126138126156%_)
                                          (let ((_%e126139126159%_
                                                 (gx#syntax-e
                                                  _%tl126138126156%_)))
                                            (let ((_%hd126140126162%_
                                                   (##car _%e126139126159%_))
                                                  (_%tl126141126164%_
                                                   (##cdr _%e126139126159%_)))
                                              (let* ((_%path126167%_
                                                      _%hd126140126162%_)
                                                     (_%specs126169%_
                                                      _%tl126141126164%_))
                                                (let ((_%src-ctx126171%_
                                                       (_%import-spec-source126051%_
                                                        _%path126167%_))
                                                      (_%exports126172%_
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
                                                      (_%specs126173%_
                                                       (gx#syntax->list
                                                        _%specs126169%_)))
                                                  (for-each
                                                   (lambda (_%out126175%_)
                                                     (__hash-put!
                                                      _%exports126172%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out126175%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out126175%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out126175%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx126171%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K126123%_
                                                   _%rest126124%_
                                                   (__foldl1
                                                    (lambda (_%spec126177%_
                                                             _%r126178%_)
                                                      (let* ((_%e126179126195%_
                                                              _%spec126177%_)
                                                             (_%E126181126199%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e126179126195%_)))
                     (_%E126180126254%_
                      (lambda ()
                        (if (gx#stx-pair? _%e126179126195%_)
                            (let ((_%e126182126203%_
                                   (gx#syntax-e _%e126179126195%_)))
                              (let ((_%hd126183126206%_
                                     (##car _%e126182126203%_))
                                    (_%tl126184126208%_
                                     (##cdr _%e126182126203%_)))
                                (let ((_%phi126211%_ _%hd126183126206%_))
                                  (if (gx#stx-pair? _%tl126184126208%_)
                                      (let ((_%e126185126213%_
                                             (gx#syntax-e _%tl126184126208%_)))
                                        (let ((_%hd126186126216%_
                                               (##car _%e126185126213%_))
                                              (_%tl126187126218%_
                                               (##cdr _%e126185126213%_)))
                                          (let ((_%name126221%_
                                                 _%hd126186126216%_))
                                            (if (gx#stx-pair?
                                                 _%tl126187126218%_)
                                                (let ((_%e126188126223%_
                                                       (gx#syntax-e
                                                        _%tl126187126218%_)))
                                                  (let ((_%hd126189126226%_
                                                         (##car _%e126188126223%_))
                                                        (_%tl126190126228%_
                                                         (##cdr _%e126188126223%_)))
                                                    (let ((_%src-phi126231%_
                                                           _%hd126189126226%_))
                                                      (if (gx#stx-pair?
                                                           _%tl126190126228%_)
                                                          (let ((_%e126191126233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl126190126228%_)))
                    (let ((_%hd126192126236%_ (##car _%e126191126233%_))
                          (_%tl126193126238%_ (##cdr _%e126191126233%_)))
                      (let ((_%src-name126241%_ _%hd126192126236%_))
                        (if (gx#stx-null? _%tl126193126238%_)
                            (if (and (gx#stx-fixnum? _%src-phi126231%_)
                                     (gx#identifier? _%src-name126241%_)
                                     (gx#stx-fixnum? _%phi126211%_)
                                     (gx#identifier? _%name126221%_))
                                (let ((_%src-phi126243%_
                                       (gx#stx-e _%src-phi126231%_))
                                      (_%src-name126244%_
                                       (gx#core-identifier-key
                                        _%src-name126241%_))
                                      (_%phi126245%_ (gx#stx-e _%phi126211%_))
                                      (_%name126246%_
                                       (gx#core-identifier-key
                                        _%name126221%_)))
                                  (let ((_%$e126248%_
                                         (__hash-get
                                          _%exports126172%_
                                          (cons _%src-phi126243%_
                                                _%src-name126244%_))))
                                    (if _%$e126248%_
                                        ((lambda (_%out126251%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out126251%_
                                                  _%name126246%_
                                                  (fx- _%phi126245%_
                                                       _%src-phi126243%_))
                                                 _%r126178%_))
                                         _%$e126248%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx126043%_
                                         _%hd126122%_))))
                                (_%E126181126199%_))
                            (_%E126181126199%_)))))
                  (_%E126181126199%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E126181126199%_)))))
                                      (_%E126181126199%_)))))
                            (_%E126181126199%_)))))
                (_%E126180126254%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r126125%_
                                                    _%specs126173%_))))))
                                          (_%E126135126147%_))))
                                  (_%E126135126147%_))))
                           (_%E126127126280%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126126126143%_)
                                  (let ((_%e126129126262%_
                                         (gx#syntax-e _%e126126126143%_)))
                                    (let ((_%hd126130126265%_
                                           (##car _%e126129126262%_))
                                          (_%tl126131126267%_
                                           (##cdr _%e126129126262%_)))
                                      (if (gx#stx-pair? _%tl126131126267%_)
                                          (let ((_%e126132126270%_
                                                 (gx#syntax-e
                                                  _%tl126131126267%_)))
                                            (let ((_%hd126133126273%_
                                                   (##car _%e126132126270%_))
                                                  (_%tl126134126275%_
                                                   (##cdr _%e126132126270%_)))
                                              (let ((_%path126278%_
                                                     _%hd126133126273%_))
                                                (if (gx#stx-null?
                                                     _%tl126134126275%_)
                                                    (_%K126123%_
                                                     _%rest126124%_
                                                     (cons (_%import-spec-source126051%_
                                                            _%path126278%_)
                                                           _%r126125%_))
                                                    (_%E126128126258%_)))))
                                          (_%E126128126258%_))))
                                  (_%E126128126258%_)))))
                      (_%E126127126280%_))))
                 (_%import-spec-source126051%_
                  (lambda (_%spath126120%_)
                    (gx#core-import-nested-module
                     _%spath126120%_
                     _%stx126043%_)))
                 (_%import!126052%_
                  (lambda (_%rbody126065%_)
                    (letrec* ((_%current-ctx126067%_
                               (gx#current-expander-context))
                              (_%deps126068%_ (make-hash-table-eq))
                              (_%bind!126069%_
                               (lambda (_%hd126118%_)
                                 (gx#core-bind-import!__1
                                  _%hd126118%_
                                  _%current-ctx126067%_))))
                      (let _%lp126071%_ ((_%rest126073%_ _%rbody126065%_)
                                         (_%body126074%_ '()))
                        (let* ((_%rest126075126083%_ _%rest126073%_)
                               (_%else126077126094%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx126067%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx126067%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx126067%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body126074%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx126091%_ _%_126092%_)
                                     (gx#eval-module _%ctx126091%_))
                                   _%deps126068%_)
                                  _%body126074%_))
                               (_%K126079126106%_
                                (lambda (_%rest126097%_ _%hd126098%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd126098%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!126069%_ _%hd126098%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd126098%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd126098%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps126068%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd126098%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd126098%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!126069%_
                                             (##unchecked-structure-ref
                                              _%hd126098%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd126098%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps126068%_
                                                 (##unchecked-structure-ref
                                                  _%hd126098%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e126102%_
                                                 (##structure-instance-of?
                                                  _%hd126098%_
                                                  'gx#module-context::t)))
                                            (if _%$e126102%_
                                                _%$e126102%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx126043%_
                                                 _%hd126098%_)))))
                                  (_%lp126071%_
                                   _%rest126097%_
                                   (cons _%hd126098%_ _%body126074%_)))))
                          (if (pair? _%rest126075126083%_)
                              (let ((_%hd126080126109%_
                                     (##car _%rest126075126083%_))
                                    (_%tl126081126111%_
                                     (##cdr _%rest126075126083%_)))
                                (let* ((_%hd126114%_ _%hd126080126109%_)
                                       (_%rest126116%_ _%tl126081126111%_))
                                  (_%K126079126106%_
                                   _%rest126116%_
                                   _%hd126114%_)))
                              (_%else126077126094%_)))))))
                 (_%expanded-import?126053%_
                  (lambda (_%e126057%_)
                    (let ((_%$e126059%_
                           (##structure-direct-instance-of?
                            _%e126057%_
                            'gx#import-set::t)))
                      (if _%$e126059%_
                          _%$e126059%_
                          (let ((_%$e126062%_
                                 (##structure-direct-instance-of?
                                  _%e126057%_
                                  'gx#module-import::t)))
                            (if _%$e126062%_
                                _%$e126062%_
                                (##structure-instance-of?
                                 _%e126057%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody126055%_
                 (gx#core-expand-import/export
                  _%stx126043%_
                  _%expanded-import?126053%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1126046%_)))
            (if _%internal-expand?126044%_
                (reverse _%rbody126055%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!126052%_ _%rbody126055%_))
                 (gx#stx-source _%stx126043%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx126382%_)
        (let ((_%internal-expand?126384%_ '#f))
          (gx#core-expand-import%__%
           _%stx126382%_
           _%internal-expand?126384%_))))
    (define gx#core-expand-import%
      (lambda _g129035_
        (let ((_g129034_ (##length _g129035_)))
          (cond ((##fx= _g129034_ 1)
                 (apply gx#core-expand-import%__0 _g129035_))
                ((##fx= _g129034_ 2)
                 (apply gx#core-expand-import%__% _g129035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g129035_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath125970%_ _%where125971%_)
        (let* ((_%e125972125979%_ _%spath125970%_)
               (_%E125974125983%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125972125979%_)))
               (_%E125973126038%_
                (lambda ()
                  (if (gx#stx-pair? _%e125972125979%_)
                      (let ((_%e125975125987%_
                             (gx#syntax-e _%e125972125979%_)))
                        (let ((_%hd125976125990%_ (##car _%e125975125987%_))
                              (_%tl125977125992%_ (##cdr _%e125975125987%_)))
                          (let* ((_%origin125995%_ _%hd125976125990%_)
                                 (_%sub125997%_ _%tl125977125992%_)
                                 (_%origin-ctx125999%_
                                  (if (gx#stx-false? _%origin125995%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin125995%_))))
                            (let _%lp126001%_ ((_%rest126003%_ _%sub125997%_)
                                               (_%ctx126004%_
                                                _%origin-ctx125999%_))
                              (let* ((_%e126005126012%_ _%rest126003%_)
                                     (_%E126007126016%_
                                      (lambda () _%ctx126004%_))
                                     (_%E126006126034%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e126005126012%_)
                                            (let ((_%e126008126020%_
                                                   (gx#syntax-e
                                                    _%e126005126012%_)))
                                              (let ((_%hd126009126023%_
                                                     (##car _%e126008126020%_))
                                                    (_%tl126010126025%_
                                                     (##cdr _%e126008126020%_)))
                                                (let* ((_%id126028%_
                                                        _%hd126009126023%_)
                                                       (_%rest126030%_
                                                        _%tl126010126025%_)
                                                       (_%bind126032%_
                                                        (gx#resolve-identifier__%
                                                         _%id126028%_
                                                         '0
                                                         _%ctx126004%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind126032%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind126032%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where125971%_
                                                       _%spath125970%_
                                                       _%id126028%_))
                                                  (_%lp126001%_
                                                   _%rest126030%_
                                                   (##unchecked-structure-ref
                                                    _%bind126032%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E126007126016%_)))))
                                (_%E126006126034%_))))))
                      (_%E125974125983%_)))))
          (_%E125973126038%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd125968%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd125968%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx125462%_ _%internal-expand?125463%_)
        (letrec* ((_%make-export__128963128964%_
                   (lambda (_%bind125916%_
                            _%phi125917%_
                            _%ctx125918%_
                            _%name125919%_)
                     (let* ((_%key125921%_
                             (##unchecked-structure-ref
                              _%bind125916%_
                              '2
                              '#f
                              '#f))
                            (_%export-key125923%_
                             (if _%name125919%_
                                 (gx#core-identifier-key _%name125919%_)
                                 _%key125921%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx125918%_
                        _%key125921%_
                        _%phi125917%_
                        _%export-key125923%_
                        (let ((_%$e125926%_
                               (##structure-instance-of?
                                _%bind125916%_
                                'gx#extern-binding::t)))
                          (if _%$e125926%_
                              _%$e125926%_
                              (##structure-direct-instance-of?
                               _%bind125916%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__128965128968%_
                   (lambda (_%bind125932%_)
                     (let* ((_%phi125934%_ (gx#current-export-expander-phi))
                            (_%ctx125936%_ (gx#current-expander-context))
                            (_%name125938%_ '#f))
                       (_%make-export__128963128964%_
                        _%bind125932%_
                        _%phi125934%_
                        _%ctx125936%_
                        _%name125938%_))))
                  (_%make-export__1__128966128969%_
                   (lambda (_%bind125940%_ _%phi125941%_)
                     (let* ((_%ctx125943%_ (gx#current-expander-context))
                            (_%name125945%_ '#f))
                       (_%make-export__128963128964%_
                        _%bind125940%_
                        _%phi125941%_
                        _%ctx125943%_
                        _%name125945%_))))
                  (_%make-export__2__128967128970%_
                   (lambda (_%bind125947%_ _%phi125948%_ _%ctx125949%_)
                     (let ((_%name125951%_ '#f))
                       (_%make-export__128963128964%_
                        _%bind125947%_
                        _%phi125948%_
                        _%ctx125949%_
                        _%name125951%_))))
                  (_%make-export125465%_
                   (lambda _g129037_
                     (let ((_g129036_ (##length _g129037_)))
                       (cond ((##fx= _g129036_ 1)
                              (apply _%make-export__0__128965128968%_
                                     _g129037_))
                             ((##fx= _g129036_ 2)
                              (apply _%make-export__1__128966128969%_
                                     _g129037_))
                             ((##fx= _g129036_ 3)
                              (apply _%make-export__2__128967128970%_
                                     _g129037_))
                             ((##fx= _g129036_ 4)
                              (apply _%make-export__128963128964%_ _g129037_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129037_))))))
                  (_%expand1125466%_
                   (lambda (_%hd125621%_
                            _%K125622%_
                            _%rest125623%_
                            _%r125624%_)
                     (let* ((_%e125625125657%_ _%hd125621%_)
                            (_%E125652125661%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx125462%_
                                _%hd125621%_)))
                            (_%E125642125745%_
                             (lambda ()
                               (if (gx#stx-pair? _%e125625125657%_)
                                   (let ((_%e125653125665%_
                                          (gx#syntax-e _%e125625125657%_)))
                                     (let ((_%hd125654125668%_
                                            (##car _%e125653125665%_))
                                           (_%tl125655125670%_
                                            (##cdr _%e125653125665%_)))
                                       (if (eq? (gx#stx-e _%hd125654125668%_)
                                                'import:)
                                           (let ((_%in125673%_
                                                  _%tl125655125670%_))
                                             (if (gx#stx-list? _%in125673%_)
                                                 (let _%lp125675%_ ((_%in-rest125677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in125673%_)
                            (_%r125678%_ _%r125624%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e125679125686%_
                                                           _%in-rest125677%_)
                                                          (_%E125681125690%_
                                                           (lambda ()
                                                             (_%K125622%_
                                                              _%rest125623%_
                                                              _%r125678%_)))
                                                          (_%E125680125741%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e125679125686%_)
                         (let ((_%e125682125694%_
                                (gx#syntax-e _%e125679125686%_)))
                           (let ((_%hd125683125697%_ (##car _%e125682125694%_))
                                 (_%tl125684125699%_
                                  (##cdr _%e125682125694%_)))
                             (let* ((_%hd125702%_ _%hd125683125697%_)
                                    (_%in-rest125704%_ _%tl125684125699%_)
                                    (_%src125739%_
                                     (if (gx#core-bound-module? _%hd125702%_)
                                         (gx#syntax-local-e__0 _%hd125702%_)
                                         (if (gx#core-library-module-path?
                                              _%hd125702%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd125702%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd125702%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd125702%_))
                                                 (if (gx#stx-string?
                                                      _%hd125702%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd125702%_
                                                       (gx#stx-source
                                                        _%stx125462%_)))
                                                     (let* ((_%e125710125717%_
                                                             _%hd125702%_)
                                                            (_%E125712125721%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx125462%_
                                                                _%hd125702%_)))
                                                            (_%E125711125735%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e125710125717%_)
                           (let ((_%e125713125725%_
                                  (gx#syntax-e _%e125710125717%_)))
                             (let ((_%hd125714125728%_
                                    (##car _%e125713125725%_))
                                   (_%tl125715125730%_
                                    (##cdr _%e125713125725%_)))
                               (if (eq? (gx#stx-e _%hd125714125728%_) 'in:)
                                   (let ((_%spath125733%_ _%tl125715125730%_))
                                     (gx#core-import-nested-module
                                      _%spath125733%_
                                      _%stx125462%_))
                                   (_%E125712125721%_))))
                           (_%E125712125721%_)))))
               (_%E125711125735%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp125675%_
                                _%in-rest125704%_
                                (_%export-imports125467%_
                                 _%src125739%_
                                 _%r125678%_)))))
                         (_%E125681125690%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E125680125741%_)))
                                                 (_%E125652125661%_)))
                                           (_%E125652125661%_))))
                                   (_%E125652125661%_))))
                            (_%E125629125785%_
                             (lambda ()
                               (if (gx#stx-pair? _%e125625125657%_)
                                   (let ((_%e125643125749%_
                                          (gx#syntax-e _%e125625125657%_)))
                                     (let ((_%hd125644125752%_
                                            (##car _%e125643125749%_))
                                           (_%tl125645125754%_
                                            (##cdr _%e125643125749%_)))
                                       (if (eq? (gx#stx-e _%hd125644125752%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl125645125754%_)
                                               (let ((_%e125646125757%_
                                                      (gx#syntax-e
                                                       _%tl125645125754%_)))
                                                 (let ((_%hd125647125760%_
                                                        (##car _%e125646125757%_))
                                                       (_%tl125648125762%_
                                                        (##cdr _%e125646125757%_)))
                                                   (let ((_%id125765%_
                                                          _%hd125647125760%_))
                                                     (if (gx#stx-pair?
                                                          _%tl125648125762%_)
                                                         (let ((_%e125649125767%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl125648125762%_)))
                   (let ((_%hd125650125770%_ (##car _%e125649125767%_))
                         (_%tl125651125772%_ (##cdr _%e125649125767%_)))
                     (let ((_%name125775%_ _%hd125650125770%_))
                       (if (gx#stx-null? _%tl125651125772%_)
                           (let* ((_%phi125777%_
                                   (gx#current-export-expander-phi))
                                  (_%$e125779%_
                                   (gx#core-resolve-identifier__1
                                    _%id125765%_
                                    _%phi125777%_)))
                             (if _%$e125779%_
                                 ((lambda (_%bind125782%_)
                                    (_%K125622%_
                                     _%rest125623%_
                                     (cons (_%make-export__128963128964%_
                                            _%bind125782%_
                                            _%phi125777%_
                                            (gx#current-expander-context)
                                            _%name125775%_)
                                           _%r125624%_)))
                                  _%$e125779%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx125462%_
                                  _%hd125621%_
                                  _%id125765%_)))
                           (_%E125642125745%_)))))
                 (_%E125642125745%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125642125745%_))
                                           (_%E125642125745%_))))
                                   (_%E125642125745%_))))
                            (_%E125628125835%_
                             (lambda ()
                               (if (gx#stx-pair? _%e125625125657%_)
                                   (let ((_%e125630125789%_
                                          (gx#syntax-e _%e125625125657%_)))
                                     (let ((_%hd125631125792%_
                                            (##car _%e125630125789%_))
                                           (_%tl125632125794%_
                                            (##cdr _%e125630125789%_)))
                                       (if (eq? (gx#stx-e _%hd125631125792%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl125632125794%_)
                                               (let ((_%e125633125797%_
                                                      (gx#syntax-e
                                                       _%tl125632125794%_)))
                                                 (let ((_%hd125634125800%_
                                                        (##car _%e125633125797%_))
                                                       (_%tl125635125802%_
                                                        (##cdr _%e125633125797%_)))
                                                   (let ((_%phi125805%_
                                                          _%hd125634125800%_))
                                                     (if (gx#stx-pair?
                                                          _%tl125635125802%_)
                                                         (let ((_%e125636125807%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl125635125802%_)))
                   (let ((_%hd125637125810%_ (##car _%e125636125807%_))
                         (_%tl125638125812%_ (##cdr _%e125636125807%_)))
                     (let ((_%id125815%_ _%hd125637125810%_))
                       (if (gx#stx-pair? _%tl125638125812%_)
                           (let ((_%e125639125817%_
                                  (gx#syntax-e _%tl125638125812%_)))
                             (let ((_%hd125640125820%_
                                    (##car _%e125639125817%_))
                                   (_%tl125641125822%_
                                    (##cdr _%e125639125817%_)))
                               (let ((_%name125825%_ _%hd125640125820%_))
                                 (if (gx#stx-null? _%tl125641125822%_)
                                     (if (and (gx#stx-fixnum? _%phi125805%_)
                                              (gx#identifier? _%id125815%_)
                                              (gx#identifier? _%name125825%_))
                                         (let* ((_%phi125827%_
                                                 (gx#stx-e _%phi125805%_))
                                                (_%$e125829%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id125815%_
                                                  _%phi125827%_)))
                                           (if _%$e125829%_
                                               ((lambda (_%bind125832%_)
                                                  (_%K125622%_
                                                   _%rest125623%_
                                                   (cons (_%make-export__128963128964%_
                                                          _%bind125832%_
                                                          _%phi125827%_
                                                          (gx#current-expander-context)
                                                          _%name125825%_)
                                                         _%r125624%_)))
                                                _%$e125829%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx125462%_
                                                _%hd125621%_
                                                _%id125815%_)))
                                         (_%E125629125785%_))
                                     (_%E125629125785%_)))))
                           (_%E125629125785%_)))))
                 (_%E125629125785%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125629125785%_))
                                           (_%E125629125785%_))))
                                   (_%E125629125785%_))))
                            (_%E125627125847%_
                             (lambda ()
                               (let ((_%id125839%_ _%e125625125657%_))
                                 (if (gx#identifier? _%id125839%_)
                                     (let ((_%$e125841%_
                                            (gx#core-resolve-identifier__1
                                             _%id125839%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e125841%_
                                           ((lambda (_%bind125844%_)
                                              (_%K125622%_
                                               _%rest125623%_
                                               (cons (_%make-export__0__128965128968%_
                                                      _%bind125844%_)
                                                     _%r125624%_)))
                                            _%$e125841%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx125462%_
                                            _%hd125621%_)))
                                     (_%E125628125835%_)))))
                            (_%E125626125911%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e125625125657%_) '#t)
                                   (let* ((_%current-ctx125851%_
                                           (gx#current-expander-context))
                                          (_%current-phi125853%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx125855%_
                                           (gx#core-context-shift
                                            _%current-ctx125851%_
                                            _%current-phi125853%_))
                                          (_%phi-bind125857%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx125855%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp125860%_ ((_%bind-rest125862%_
                                                         _%phi-bind125857%_)
                                                        (_%set125863%_ '()))
                                       (let* ((_%bind-rest125864125874%_
                                               _%bind-rest125862%_)
                                              (_%else125866125882%_
                                               (lambda ()
                                                 (_%K125622%_
                                                  _%rest125623%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi125853%_
                                                         _%set125863%_)
                                                        _%r125624%_))))
                                              (_%K125868125892%_
                                               (lambda (_%bind-rest125885%_
                                                        _%bind125886%_
                                                        _%key125887%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind125886%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind125886%_))
                                                     (_%lp125860%_
                                                      _%bind-rest125885%_
                                                      _%set125863%_)
                                                     (_%lp125860%_
                                                      _%bind-rest125885%_
                                                      (cons (_%make-export__2__128967128970%_
                                                             _%bind125886%_
                                                             _%current-phi125853%_
                                                             _%current-ctx125851%_)
                                                            _%set125863%_))))))
                                         (if (pair? _%bind-rest125864125874%_)
                                             (let ((_%hd125869125895%_
                                                    (##car _%bind-rest125864125874%_))
                                                   (_%tl125870125897%_
                                                    (##cdr _%bind-rest125864125874%_)))
                                               (if (pair? _%hd125869125895%_)
                                                   (let ((_%hd125871125900%_
                                                          (##car _%hd125869125895%_))
                                                         (_%tl125872125902%_
                                                          (##cdr _%hd125869125895%_)))
                                                     (let* ((_%key125905%_
                                                             _%hd125871125900%_)
                                                            (_%bind125907%_
                                                             _%tl125872125902%_)
                                                            (_%bind-rest125909%_
                                                             _%tl125870125897%_))
                                                       (_%K125868125892%_
                                                        _%bind-rest125909%_
                                                        _%bind125907%_
                                                        _%key125905%_)))
                                                   (_%else125866125882%_)))
                                             (_%else125866125882%_)))))
                                   (_%E125627125847%_)))))
                       (_%E125626125911%_))))
                  (_%export-imports125467%_
                   (lambda (_%src125497%_ _%r125498%_)
                     (letrec* ((_%current-ctx125500%_
                                (gx#current-expander-context))
                               (_%current-phi125501%_
                                (gx#current-export-expander-phi))
                               (_%import->export125502%_
                                (lambda (_%in125583%_)
                                  (let* ((_%in125584125592%_ _%in125583%_)
                                         (_%E125586125596%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in125584125592%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K125587125603%_
                                          (lambda (_%phi125599%_
                                                   _%key125600%_
                                                   _%out125601%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx125500%_
                                             _%key125600%_
                                             _%phi125599%_
                                             _%key125600%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in125584125592%_
                                         'gx#module-import::t)
                                        (let* ((_%e125588125606%_
                                                (##unchecked-structure-ref
                                                 _%in125584125592%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out125609%_
                                                _%e125588125606%_)
                                               (_%e125589125611%_
                                                (##unchecked-structure-ref
                                                 _%in125584125592%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key125614%_
                                                _%e125589125611%_)
                                               (_%e125590125616%_
                                                (##unchecked-structure-ref
                                                 _%in125584125592%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi125619%_
                                                _%e125590125616%_))
                                          (_%K125587125603%_
                                           _%phi125619%_
                                           _%key125614%_
                                           _%out125609%_))
                                        (_%E125586125596%_)))))
                               (_%fold-e125503%_
                                (lambda (_%in125505%_ _%r125506%_)
                                  (let* ((_%in125507125521%_ _%in125505%_)
                                         (_%else125510125529%_
                                          (lambda () _%r125506%_)))
                                    (let ((_%K125516125565%_
                                           (lambda (_%phi125561%_
                                                    _%key125562%_
                                                    _%out125563%_)
                                             (if (and (fx= _%phi125561%_
                                                           _%current-phi125501%_)
                                                      (eq? _%src125497%_
                                                           (##unchecked-structure-ref
                                                            _%out125563%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export125502%_
                                                        _%in125505%_)
                                                       _%r125506%_)
                                                 _%r125506%_)))
                                          (_%K125512125540%_
                                           (lambda (_%imports125533%_
                                                    _%phi125534%_
                                                    _%ctx125535%_)
                                             (if (and (fx= _%phi125534%_
                                                           _%current-phi125501%_)
                                                      (eq? _%src125497%_
                                                           _%ctx125535%_))
                                                 (__foldl1
                                                  (lambda (_%in125537%_
                                                           _%r125538%_)
                                                    (cons (_%import->export125502%_
                                                           _%in125537%_)
                                                          _%r125538%_))
                                                  _%r125506%_
                                                  _%imports125533%_)
                                                 _%r125506%_))))
                                      (let ((_%try-match125509125558%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in125507125521%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e125513125543%_
                                                           (##unchecked-structure-ref
                                                            _%in125507125521%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e125514125548%_
                                                           (##unchecked-structure-ref
                                                            _%in125507125521%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e125515125553%_
                                                           (##unchecked-structure-ref
                                                            _%in125507125521%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx125546%_
                                                            _%e125513125543%_)
                                                           (_%phi125551%_
                                                            _%e125514125548%_)
                                                           (_%imports125556%_
                                                            _%e125515125553%_))
                                                       (_%K125512125540%_
                                                        _%imports125556%_
                                                        _%phi125551%_
                                                        _%ctx125546%_)))
                                                   (_%else125510125529%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in125507125521%_
                                             'gx#module-import::t)
                                            (let* ((_%e125517125568%_
                                                    (##unchecked-structure-ref
                                                     _%in125507125521%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e125518125573%_
                                                    (##unchecked-structure-ref
                                                     _%in125507125521%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e125519125578%_
                                                    (##unchecked-structure-ref
                                                     _%in125507125521%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out125571%_
                                                     _%e125517125568%_)
                                                    (_%key125576%_
                                                     _%e125518125573%_)
                                                    (_%phi125581%_
                                                     _%e125519125578%_))
                                                (_%K125516125565%_
                                                 _%phi125581%_
                                                 _%key125576%_
                                                 _%out125571%_)))
                                            (_%try-match125509125558%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src125497%_
                              _%current-phi125501%_
                              (__foldl1
                               _%fold-e125503%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx125500%_
                                '8
                                '#f
                                '#f)))
                             _%r125498%_))))
                  (_%export!125468%_
                   (lambda (_%rbody125484%_)
                     (letrec* ((_%current-ctx125486%_
                                (gx#current-expander-context))
                               (_%fold-e125487%_
                                (lambda (_%out125491%_ _%r125492%_)
                                  (if (##structure-direct-instance-of?
                                       _%out125491%_
                                       'gx#module-export::t)
                                      (cons _%out125491%_ _%r125492%_)
                                      (if (##structure-direct-instance-of?
                                           _%out125491%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r125492%_
                                           (##unchecked-structure-ref
                                            _%out125491%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r125492%_)))))
                       (let ((_%body125489%_ (reverse _%rbody125484%_)))
                         (##unchecked-structure-set!
                          _%current-ctx125486%_
                          (__foldl1
                           _%fold-e125487%_
                           (##unchecked-structure-ref
                            _%current-ctx125486%_
                            '9
                            '#f
                            '#f)
                           _%body125489%_)
                          '9
                          '#f
                          '#f)
                         _%body125489%_))))
                  (_%expanded-export?125469%_
                   (lambda (_%e125479%_)
                     (let ((_%$e125481%_
                            (##structure-direct-instance-of?
                             _%e125479%_
                             'gx#module-export::t)))
                       (if _%$e125481%_
                           _%$e125481%_
                           (##structure-direct-instance-of?
                            _%e125479%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?125463%_)
              (let ((_%rbody125475%_
                     (gx#core-expand-import/export
                      _%stx125462%_
                      _%expanded-export?125469%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1125466%_)))
                (if _%internal-expand?125463%_
                    (reverse _%rbody125475%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!125468%_ _%rbody125475%_))
                     (gx#stx-source _%stx125462%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx125462%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx125462%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx125961%_)
        (let ((_%internal-expand?125963%_ '#f))
          (gx#core-expand-export%__%
           _%stx125961%_
           _%internal-expand?125963%_))))
    (define gx#core-expand-export%
      (lambda _g129039_
        (let ((_g129038_ (##length _g129039_)))
          (cond ((##fx= _g129038_ 1)
                 (apply gx#core-expand-export%__0 _g129039_))
                ((##fx= _g129038_ 2)
                 (apply gx#core-expand-export%__% _g129039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g129039_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd125459%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd125459%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx125429%_)
        (let* ((_%e125430125437%_ _%stx125429%_)
               (_%E125432125441%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125430125437%_)))
               (_%E125431125455%_
                (lambda ()
                  (if (gx#stx-pair? _%e125430125437%_)
                      (let ((_%e125433125445%_
                             (gx#syntax-e _%e125430125437%_)))
                        (let ((_%hd125434125448%_ (##car _%e125433125445%_))
                              (_%tl125435125450%_ (##cdr _%e125433125445%_)))
                          (let ((_%body125453%_ _%tl125435125450%_))
                            (if (gx#identifier-list? _%body125453%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body125453%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body125453%_))
                                   (gx#stx-source _%stx125429%_)))
                                (_%E125432125441%_)))))
                      (_%E125432125441%_)))))
          (_%E125431125455%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id125395%_ _%private?125396%_ _%phi125397%_ _%ctx125398%_)
        (gx#core-bind-syntax!__%
         _%id125395%_
         ((if _%private?125396%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id125395%_))
         _%private?125396%_
         _%phi125397%_
         _%ctx125398%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id125403%_)
        (let* ((_%private?125405%_ '#f)
               (_%phi125407%_ (gx#current-expander-phi))
               (_%ctx125409%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id125403%_
           _%private?125405%_
           _%phi125407%_
           _%ctx125409%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id125411%_ _%private?125412%_)
        (let* ((_%phi125414%_ (gx#current-expander-phi))
               (_%ctx125416%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id125411%_
           _%private?125412%_
           _%phi125414%_
           _%ctx125416%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id125418%_ _%private?125419%_ _%phi125420%_)
        (let ((_%ctx125422%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id125418%_
           _%private?125419%_
           _%phi125420%_
           _%ctx125422%_))))
    (define gx#core-bind-feature!
      (lambda _g129041_
        (let ((_g129040_ (##length _g129041_)))
          (cond ((##fx= _g129040_ 1)
                 (apply gx#core-bind-feature!__0 _g129041_))
                ((##fx= _g129040_ 2)
                 (apply gx#core-bind-feature!__1 _g129041_))
                ((##fx= _g129040_ 3)
                 (apply gx#core-bind-feature!__2 _g129041_))
                ((##fx= _g129040_ 4)
                 (apply gx#core-bind-feature!__% _g129041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g129041_))))))))
