(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707616238)
  (begin
    (declare (not safe))
    (define gx#module-import::t
      (make-struct-type
       'gx#module-import::t
       'module-import
       '#f
       '(source name phi weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-import? (make-struct-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _$args160952_
        (apply make-struct-instance gx#module-import::t _$args160952_)))
    (define gx#module-import-source
      (make-struct-slot-accessor gx#module-import::t 'source))
    (define gx#module-import-name
      (make-struct-slot-accessor gx#module-import::t 'name))
    (define gx#module-import-phi
      (make-struct-slot-accessor gx#module-import::t 'phi))
    (define gx#module-import-weak?
      (make-struct-slot-accessor gx#module-import::t 'weak?))
    (define gx#module-import-source-set!
      (make-struct-slot-mutator gx#module-import::t 'source))
    (define gx#module-import-name-set!
      (make-struct-slot-mutator gx#module-import::t 'name))
    (define gx#module-import-phi-set!
      (make-struct-slot-mutator gx#module-import::t 'phi))
    (define gx#module-import-weak?-set!
      (make-struct-slot-mutator gx#module-import::t 'weak?))
    (define gx#&module-import-source
      (make-struct-slot-unchecked-accessor gx#module-import::t 'source))
    (define gx#&module-import-name
      (make-struct-slot-unchecked-accessor gx#module-import::t 'name))
    (define gx#&module-import-phi
      (make-struct-slot-unchecked-accessor gx#module-import::t 'phi))
    (define gx#&module-import-weak?
      (make-struct-slot-unchecked-accessor gx#module-import::t 'weak?))
    (define gx#&module-import-source-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'source))
    (define gx#&module-import-name-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'name))
    (define gx#&module-import-phi-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'phi))
    (define gx#&module-import-weak?-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'weak?))
    (define gx#module-export::t
      (make-struct-type
       'gx#module-export::t
       'module-export
       '#f
       '(context key phi name weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-export? (make-struct-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _$args160949_
        (apply make-struct-instance gx#module-export::t _$args160949_)))
    (define gx#module-export-context
      (make-struct-slot-accessor gx#module-export::t 'context))
    (define gx#module-export-key
      (make-struct-slot-accessor gx#module-export::t 'key))
    (define gx#module-export-phi
      (make-struct-slot-accessor gx#module-export::t 'phi))
    (define gx#module-export-name
      (make-struct-slot-accessor gx#module-export::t 'name))
    (define gx#module-export-weak?
      (make-struct-slot-accessor gx#module-export::t 'weak?))
    (define gx#module-export-context-set!
      (make-struct-slot-mutator gx#module-export::t 'context))
    (define gx#module-export-key-set!
      (make-struct-slot-mutator gx#module-export::t 'key))
    (define gx#module-export-phi-set!
      (make-struct-slot-mutator gx#module-export::t 'phi))
    (define gx#module-export-name-set!
      (make-struct-slot-mutator gx#module-export::t 'name))
    (define gx#module-export-weak?-set!
      (make-struct-slot-mutator gx#module-export::t 'weak?))
    (define gx#&module-export-context
      (make-struct-slot-unchecked-accessor gx#module-export::t 'context))
    (define gx#&module-export-key
      (make-struct-slot-unchecked-accessor gx#module-export::t 'key))
    (define gx#&module-export-phi
      (make-struct-slot-unchecked-accessor gx#module-export::t 'phi))
    (define gx#&module-export-name
      (make-struct-slot-unchecked-accessor gx#module-export::t 'name))
    (define gx#&module-export-weak?
      (make-struct-slot-unchecked-accessor gx#module-export::t 'weak?))
    (define gx#&module-export-context-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'context))
    (define gx#&module-export-key-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'key))
    (define gx#&module-export-phi-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'phi))
    (define gx#&module-export-name-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'name))
    (define gx#&module-export-weak?-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'weak?))
    (define gx#import-set::t
      (make-struct-type
       'gx#import-set::t
       'import-set
       '#f
       '(source phi imports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-set? (make-struct-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _$args160946_
        (apply make-struct-instance gx#import-set::t _$args160946_)))
    (define gx#import-set-source
      (make-struct-slot-accessor gx#import-set::t 'source))
    (define gx#import-set-phi
      (make-struct-slot-accessor gx#import-set::t 'phi))
    (define gx#import-set-imports
      (make-struct-slot-accessor gx#import-set::t 'imports))
    (define gx#import-set-source-set!
      (make-struct-slot-mutator gx#import-set::t 'source))
    (define gx#import-set-phi-set!
      (make-struct-slot-mutator gx#import-set::t 'phi))
    (define gx#import-set-imports-set!
      (make-struct-slot-mutator gx#import-set::t 'imports))
    (define gx#&import-set-source
      (make-struct-slot-unchecked-accessor gx#import-set::t 'source))
    (define gx#&import-set-phi
      (make-struct-slot-unchecked-accessor gx#import-set::t 'phi))
    (define gx#&import-set-imports
      (make-struct-slot-unchecked-accessor gx#import-set::t 'imports))
    (define gx#&import-set-source-set!
      (make-struct-slot-unchecked-mutator gx#import-set::t 'source))
    (define gx#&import-set-phi-set!
      (make-struct-slot-unchecked-mutator gx#import-set::t 'phi))
    (define gx#&import-set-imports-set!
      (make-struct-slot-unchecked-mutator gx#import-set::t 'imports))
    (define gx#export-set::t
      (make-struct-type
       'gx#export-set::t
       'export-set
       '#f
       '(source phi exports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#export-set? (make-struct-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _$args160943_
        (apply make-struct-instance gx#export-set::t _$args160943_)))
    (define gx#export-set-source
      (make-struct-slot-accessor gx#export-set::t 'source))
    (define gx#export-set-phi
      (make-struct-slot-accessor gx#export-set::t 'phi))
    (define gx#export-set-exports
      (make-struct-slot-accessor gx#export-set::t 'exports))
    (define gx#export-set-source-set!
      (make-struct-slot-mutator gx#export-set::t 'source))
    (define gx#export-set-phi-set!
      (make-struct-slot-mutator gx#export-set::t 'phi))
    (define gx#export-set-exports-set!
      (make-struct-slot-mutator gx#export-set::t 'exports))
    (define gx#&export-set-source
      (make-struct-slot-unchecked-accessor gx#export-set::t 'source))
    (define gx#&export-set-phi
      (make-struct-slot-unchecked-accessor gx#export-set::t 'phi))
    (define gx#&export-set-exports
      (make-struct-slot-unchecked-accessor gx#export-set::t 'exports))
    (define gx#&export-set-source-set!
      (make-struct-slot-unchecked-mutator gx#export-set::t 'source))
    (define gx#&export-set-phi-set!
      (make-struct-slot-unchecked-mutator gx#export-set::t 'phi))
    (define gx#&export-set-exports-set!
      (make-struct-slot-unchecked-mutator gx#export-set::t 'exports))
    (define gx#import-expander::t
      (make-class-type
       'gx#import-expander::t
       'import-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-expander? (make-class-predicate gx#import-expander::t))
    (define gx#make-import-expander
      (lambda _$args160940_
        (apply make-class-instance gx#import-expander::t _$args160940_)))
    (define gx#import-expander-context
      (make-class-slot-accessor gx#import-expander::t 'context))
    (define gx#import-expander-phi
      (make-class-slot-accessor gx#import-expander::t 'phi))
    (define gx#import-expander-e
      (make-class-slot-accessor gx#import-expander::t 'e))
    (define gx#import-expander-context-set!
      (make-class-slot-mutator gx#import-expander::t 'context))
    (define gx#import-expander-phi-set!
      (make-class-slot-mutator gx#import-expander::t 'phi))
    (define gx#import-expander-e-set!
      (make-class-slot-mutator gx#import-expander::t 'e))
    (define gx#&import-expander-context
      (make-class-slot-unchecked-accessor gx#import-expander::t 'context))
    (define gx#&import-expander-phi
      (make-class-slot-unchecked-accessor gx#import-expander::t 'phi))
    (define gx#&import-expander-e
      (make-class-slot-unchecked-accessor gx#import-expander::t 'e))
    (define gx#&import-expander-context-set!
      (make-class-slot-unchecked-mutator gx#import-expander::t 'context))
    (define gx#&import-expander-phi-set!
      (make-class-slot-unchecked-mutator gx#import-expander::t 'phi))
    (define gx#&import-expander-e-set!
      (make-class-slot-unchecked-mutator gx#import-expander::t 'e))
    (define gx#export-expander::t
      (make-class-type
       'gx#export-expander::t
       'export-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#export-expander? (make-class-predicate gx#export-expander::t))
    (define gx#make-export-expander
      (lambda _$args160937_
        (apply make-class-instance gx#export-expander::t _$args160937_)))
    (define gx#export-expander-context
      (make-class-slot-accessor gx#export-expander::t 'context))
    (define gx#export-expander-phi
      (make-class-slot-accessor gx#export-expander::t 'phi))
    (define gx#export-expander-e
      (make-class-slot-accessor gx#export-expander::t 'e))
    (define gx#export-expander-context-set!
      (make-class-slot-mutator gx#export-expander::t 'context))
    (define gx#export-expander-phi-set!
      (make-class-slot-mutator gx#export-expander::t 'phi))
    (define gx#export-expander-e-set!
      (make-class-slot-mutator gx#export-expander::t 'e))
    (define gx#&export-expander-context
      (make-class-slot-unchecked-accessor gx#export-expander::t 'context))
    (define gx#&export-expander-phi
      (make-class-slot-unchecked-accessor gx#export-expander::t 'phi))
    (define gx#&export-expander-e
      (make-class-slot-unchecked-accessor gx#export-expander::t 'e))
    (define gx#&export-expander-context-set!
      (make-class-slot-unchecked-mutator gx#export-expander::t 'context))
    (define gx#&export-expander-phi-set!
      (make-class-slot-unchecked-mutator gx#export-expander::t 'phi))
    (define gx#&export-expander-e-set!
      (make-class-slot-unchecked-mutator gx#export-expander::t 'e))
    (define gx#import-export-expander::t
      (make-class-type
       'gx#import-export-expander::t
       'import-export-expander
       (list gx#import-expander::t gx#export-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-export-expander?
      (make-class-predicate gx#import-export-expander::t))
    (define gx#make-import-export-expander
      (lambda _$args160934_
        (apply make-class-instance
               gx#import-export-expander::t
               _$args160934_)))
    (define gx#import-export-expander-context
      (make-class-slot-accessor gx#import-export-expander::t 'context))
    (define gx#import-export-expander-phi
      (make-class-slot-accessor gx#import-export-expander::t 'phi))
    (define gx#import-export-expander-e
      (make-class-slot-accessor gx#import-export-expander::t 'e))
    (define gx#import-export-expander-context-set!
      (make-class-slot-mutator gx#import-export-expander::t 'context))
    (define gx#import-export-expander-phi-set!
      (make-class-slot-mutator gx#import-export-expander::t 'phi))
    (define gx#import-export-expander-e-set!
      (make-class-slot-mutator gx#import-export-expander::t 'e))
    (define gx#&import-export-expander-context
      (make-class-slot-unchecked-accessor
       gx#import-export-expander::t
       'context))
    (define gx#&import-export-expander-phi
      (make-class-slot-unchecked-accessor gx#import-export-expander::t 'phi))
    (define gx#&import-export-expander-e
      (make-class-slot-unchecked-accessor gx#import-export-expander::t 'e))
    (define gx#&import-export-expander-context-set!
      (make-class-slot-unchecked-mutator
       gx#import-export-expander::t
       'context))
    (define gx#&import-export-expander-phi-set!
      (make-class-slot-unchecked-mutator gx#import-export-expander::t 'phi))
    (define gx#&import-export-expander-e-set!
      (make-class-slot-unchecked-mutator gx#import-export-expander::t 'e))
    (define gx#current-import-expander-phi (make-parameter '#f))
    (define gx#current-export-expander-phi (make-parameter '#f))
    (define gx#current-module-reader-path (make-parameter '#f))
    (define gx#current-module-reader-args (make-parameter '#f))
    (define gx#source-file-settings '(char-encoding: UTF-8 eol-encoding: lf))
    (define gx#call-with-input-source-file
      (lambda (_path160931_ _fun160932_)
        (call-with-input-file
         (cons 'path: (cons _path160931_ gx#source-file-settings))
         _fun160932_)))
    (define gx#module-context:::init!
      (lambda (_self160925_ _id160926_ _super160927_ _ns160928_ _path160929_)
        (if (##fx< '11 (##structure-length _self160925_))
            (begin
              (##unchecked-structure-set!
               _self160925_
               _id160926_
               '1
               (##structure-type _self160925_)
               '#f)
              (##unchecked-structure-set!
               _self160925_
               (make-table 'test: eq?)
               '2
               (##structure-type _self160925_)
               '#f)
              (##unchecked-structure-set!
               _self160925_
               _super160927_
               '3
               (##structure-type _self160925_)
               '#f)
              (##unchecked-structure-set!
               _self160925_
               '#f
               '4
               (##structure-type _self160925_)
               '#f)
              (##unchecked-structure-set!
               _self160925_
               '#f
               '5
               (##structure-type _self160925_)
               '#f)
              (##unchecked-structure-set!
               _self160925_
               _ns160928_
               '6
               (##structure-type _self160925_)
               '#f)
              (##unchecked-structure-set!
               _self160925_
               _path160929_
               '7
               (##structure-type _self160925_)
               '#f)
              (##unchecked-structure-set!
               _self160925_
               '()
               '8
               (##structure-type _self160925_)
               '#f)
              (##unchecked-structure-set!
               _self160925_
               '()
               '9
               (##structure-type _self160925_)
               '#f)
              (##unchecked-structure-set!
               _self160925_
               '#f
               '10
               (##structure-type _self160925_)
               '#f)
              (##unchecked-structure-set!
               _self160925_
               '#f
               '11
               (##structure-type _self160925_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160925_
                   '11
                   (##vector-length _self160925_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self160769_ _ctx160770_ _root160771_)
        (let ((_super160779_
               (let ((_$e160773_ _root160771_))
                 (if _$e160773_
                     _$e160773_
                     (let ((_$e160776_ (gx#core-context-root__0)))
                       (if _$e160776_
                           _$e160776_
                           (let ((__obj165462
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor165463
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor165463
                                   (__constructor165463 __obj165462)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj165462)))))))
          (if _ctx160770_
              (let ((_id160782_
                     (##structure-ref
                      _ctx160770_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path160783_
                     (##structure-ref _ctx160770_ '7 gx#module-context::t '#f))
                    (_in160784_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx160770_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e160785_
                     (make-promise (lambda () (gx#eval-module _ctx160770_)))))
                (if (##fx< '8 (##structure-length _self160769_))
                    (begin
                      (##unchecked-structure-set!
                       _self160769_
                       _id160782_
                       '1
                       (##structure-type _self160769_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160769_
                       (make-table 'test: eq? 'size: (length _in160784_))
                       '2
                       (##structure-type _self160769_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160769_
                       _super160779_
                       '3
                       (##structure-type _self160769_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160769_
                       '#f
                       '4
                       (##structure-type _self160769_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160769_
                       '#f
                       '5
                       (##structure-type _self160769_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160769_
                       _path160783_
                       '6
                       (##structure-type _self160769_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160769_
                       _in160784_
                       '7
                       (##structure-type _self160769_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160769_
                       _e160785_
                       '8
                       (##structure-type _self160769_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self160769_
                           '8
                           (##vector-length _self160769_)))
                (for-each
                 (lambda (_g160786160788_)
                   (gx#core-bind-weak-import!__% _g160786160788_ _self160769_))
                 _in160784_))
              (if (##fx< '8 (##structure-length _self160769_))
                  (begin
                    (##unchecked-structure-set!
                     _self160769_
                     '#f
                     '1
                     (##structure-type _self160769_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160769_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self160769_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160769_
                     _super160779_
                     '3
                     (##structure-type _self160769_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160769_
                     '#f
                     '4
                     (##structure-type _self160769_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160769_
                     '#f
                     '5
                     (##structure-type _self160769_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160769_
                     '#f
                     '6
                     (##structure-type _self160769_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160769_
                     '()
                     '7
                     (##structure-type _self160769_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160769_
                     '#f
                     '8
                     (##structure-type _self160769_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self160769_
                         '8
                         (##vector-length _self160769_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self160794_ _ctx160795_)
        (let ((_root160797_ '#f))
          (gx#prelude-context:::init!__%
           _self160794_
           _ctx160795_
           _root160797_))))
    (define gx#prelude-context:::init!
      (lambda _g165469_
        (let ((_g165468_ (##length _g165469_)))
          (cond ((##fx= _g165468_ 2)
                 (apply (lambda (_self160794_ _ctx160795_)
                          (gx#prelude-context:::init!__0
                           _self160794_
                           _ctx160795_))
                        _g165469_))
                ((##fx= _g165468_ 3)
                 (apply (lambda (_self160799_ _ctx160800_ _root160801_)
                          (gx#prelude-context:::init!__%
                           _self160799_
                           _ctx160800_
                           _root160801_))
                        _g165469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g165469_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self160643_ _e160644_)
        (if (##fx< '3 (##structure-length _self160643_))
            (begin
              (##unchecked-structure-set!
               _self160643_
               _e160644_
               '1
               (##structure-type _self160643_)
               '#f)
              (##unchecked-structure-set!
               _self160643_
               (gx#current-expander-context)
               '2
               (##structure-type _self160643_)
               '#f)
              (##unchecked-structure-set!
               _self160643_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self160643_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160643_
                   '3
                   (##vector-length _self160643_)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (bind-method!
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_g160269160272_ _g160270160274_)
        (gx#core-apply-user-expander__%
         _g160269160272_
         _g160270160274_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g160140160143_ _g160141160145_)
        (gx#core-apply-user-expander__%
         _g160140160143_
         _g160141160145_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx160011_)
        (let* ((_path160013_
                (##structure-ref _ctx160011_ '7 gx#module-context::t '#f))
               (_path160015_
                (if (pair? _path160013_) (last _path160013_) _path160013_)))
          (if (string? _path160015_) _path160015_ '#f))))
    (define gx#import-module__%
      (lambda (_path159987_ _reload?159988_ _eval?159989_)
        (let ((_ctx159991_
               ((gx#current-expander-module-import)
                _path159987_
                _reload?159988_)))
          (if (and _ctx159991_ _eval?159989_)
              (gx#eval-module _ctx159991_)
              '#!void)
          _ctx159991_)))
    (define gx#import-module__0
      (lambda (_path159996_)
        (let* ((_reload?159998_ '#f) (_eval?160000_ '#f))
          (gx#import-module__% _path159996_ _reload?159998_ _eval?160000_))))
    (define gx#import-module__1
      (lambda (_path160002_ _reload?160003_)
        (let ((_eval?160005_ '#f))
          (gx#import-module__% _path160002_ _reload?160003_ _eval?160005_))))
    (define gx#import-module
      (lambda _g165471_
        (let ((_g165470_ (##length _g165471_)))
          (cond ((##fx= _g165470_ 1)
                 (apply (lambda (_path159996_)
                          (gx#import-module__0 _path159996_))
                        _g165471_))
                ((##fx= _g165470_ 2)
                 (apply (lambda (_path160002_ _reload?160003_)
                          (gx#import-module__1 _path160002_ _reload?160003_))
                        _g165471_))
                ((##fx= _g165470_ 3)
                 (apply (lambda (_path160007_ _reload?160008_ _eval?160009_)
                          (gx#import-module__%
                           _path160007_
                           _reload?160008_
                           _eval?160009_))
                        _g165471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g165471_))))))
    (define gx#eval-module
      (lambda (_mod159984_) ((gx#current-expander-module-eval) _mod159984_)))
    (define gx#core-eval-module
      (lambda (_obj159969_)
        (letrec ((_force-e159971_
                  (lambda (_getf159980_ _e159981_)
                    (call-with-parameters
                     (lambda () (force (_getf159980_ _e159981_)))
                     gx#current-expander-context
                     _e159981_
                     gx#current-expander-phi
                     '0))))
          (let _recur159973_ ((_e159975_ _obj159969_))
            (if (##structure-instance-of? _e159975_ 'gx#module-context::t)
                (begin
                  (let ((_$e159977_ (gx#core-context-prelude__% _e159975_)))
                    (if _$e159977_ (_recur159973_ _$e159977_) '#!void))
                  (_force-e159971_ gx#module-context-e _e159975_))
                (if (##structure-instance-of? _e159975_ 'gx#prelude-context::t)
                    (_force-e159971_ gx#prelude-context-e _e159975_)
                    (if (gx#stx-string? _e159975_)
                        (_recur159973_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e159975_)))
                        (if (gx#core-library-module-path? _e159975_)
                            (_recur159973_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e159975_)))
                            (error '"Cannot eval module" _obj159969_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx159952_)
        (let _lp159954_ ((_e159956_ _ctx159952_))
          (if (or (##structure-instance-of? _e159956_ 'gx#module-context::t)
                  (##structure-instance-of? _e159956_ 'gx#local-context::t))
              (_lp159954_
               (##unchecked-structure-ref _e159956_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e159956_ 'gx#prelude-context::t)
                  _e159956_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx159965_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx159965_))))
    (define gx#core-context-prelude
      (lambda _g165473_
        (let ((_g165472_ (##length _g165473_)))
          (cond ((##fx= _g165472_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g165473_))
                ((##fx= _g165472_ 1)
                 (apply (lambda (_ctx159967_)
                          (gx#core-context-prelude__% _ctx159967_))
                        _g165473_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g165473_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx159942_)
        (let* ((_ht159944_ (gx#current-expander-module-registry))
               (_$e159946_ (table-ref _ht159944_ _ctx159942_ '#f)))
          (if _$e159946_
              (values _$e159946_)
              (let ((_pre159949_
                     (let ((__obj165464
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
                       (gx#prelude-context:::init! __obj165464 _ctx159942_)
                       __obj165464)))
                (table-set! _ht159944_ _ctx159942_ _pre159949_)
                _pre159949_)))))
    (define gx#core-import-module__%
      (lambda (_rpath159823_ _reload?159824_)
        (letrec ((_import-source159826_
                  (lambda (_path159911_)
                    (if (member _path159911_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path159911_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g165474_ (gx#core-read-module _path159911_)))
                         (begin
                           (let ((_g165475_
                                  (if (##values? _g165474_)
                                      (##vector-length _g165474_)
                                      1)))
                             (if (not (##fx= _g165475_ 4))
                                 (error "Context expects 4 values" _g165475_)))
                           (let ((_pre159914_ (##vector-ref _g165474_ 0))
                                 (_id159915_ (##vector-ref _g165474_ 1))
                                 (_ns159916_ (##vector-ref _g165474_ 2))
                                 (_body159917_ (##vector-ref _g165474_ 3)))
                             (let* ((_prelude159922_
                                     (if (##structure-instance-of?
                                          _pre159914_
                                          'gx#prelude-context::t)
                                         _pre159914_
                                         (if (##structure-instance-of?
                                              _pre159914_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre159914_)
                                             (if (string? _pre159914_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre159914_))
                                                 (if (not _pre159914_)
                                                     (let ((_$e159919_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e159919_
                                                           _$e159919_
                                                           (let ((__obj165465
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
                     (gx#prelude-context:::init! __obj165465 '#f)
                     __obj165465)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath159823_
                                                            _pre159914_))))))
                                    (_ctx159924_
                                     (let ((__obj165466
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
                                        __obj165466
                                        _id159915_
                                        _prelude159922_
                                        _ns159916_
                                        _path159911_)
                                       __obj165466))
                                    (_body159926_
                                     (gx#core-expand-module-begin
                                      _body159917_
                                      _ctx159924_))
                                    (_body159928_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body159926_)
                                      _path159911_
                                      _ctx159924_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx159924_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body159928_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx159924_
                                _body159928_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path159911_
                                _ctx159924_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id159915_
                                _ctx159924_)
                               _ctx159924_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path159911_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule159827_
                  (lambda (_rpath159839_)
                    (let* ((_rpath159840159847_ _rpath159839_)
                           (_E159842159851_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath159840159847_)))
                           (_K159843159899_
                            (lambda (_refs159854_ _origin159855_)
                              (let ((_ctx159857_
                                     (if _origin159855_
                                         (gx#core-import-module__%
                                          _origin159855_
                                          _reload?159824_)
                                         (gx#current-expander-context))))
                                (let _lp159859_ ((_rest159861_ _refs159854_)
                                                 (_ctx159862_ _ctx159857_))
                                  (let* ((_rest159863159871_ _rest159861_)
                                         (_else159865159879_
                                          (lambda () _ctx159862_))
                                         (_K159867159887_
                                          (lambda (_rest159882_ _id159883_)
                                            (let ((_bind159885_
                                                   (gx#resolve-identifier__%
                                                    _id159883_
                                                    '0
                                                    _ctx159862_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind159885_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind159885_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp159859_
                                                   _rest159882_
                                                   (##unchecked-structure-ref
                                                    _bind159885_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath159839_
                                                         _id159883_
                                                         _bind159885_))))))
                                    (if (##pair? _rest159863159871_)
                                        (let ((_hd159868159890_
                                               (##car _rest159863159871_))
                                              (_tl159869159892_
                                               (##cdr _rest159863159871_)))
                                          (let* ((_id159895_ _hd159868159890_)
                                                 (_rest159897_
                                                  _tl159869159892_))
                                            (_K159867159887_
                                             _rest159897_
                                             _id159895_)))
                                        (_else159865159879_))))))))
                      (if (##pair? _rpath159840159847_)
                          (let ((_hd159844159902_ (##car _rpath159840159847_))
                                (_tl159845159904_ (##cdr _rpath159840159847_)))
                            (let* ((_origin159907_ _hd159844159902_)
                                   (_refs159909_ _tl159845159904_))
                              (_K159843159899_ _refs159909_ _origin159907_)))
                          (_E159842159851_))))))
          (let ((_$e159829_
                 (if (not _reload?159824_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath159823_
                      '#f)
                     '#f)))
            (if _$e159829_
                (values _$e159829_)
                (if (list? _rpath159823_)
                    (_import-submodule159827_ _rpath159823_)
                    (if (gx#core-library-module-path? _rpath159823_)
                        (let ((_ctx159832_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath159823_)
                                _reload?159824_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath159823_
                           _ctx159832_)
                          _ctx159832_)
                        (let* ((_npath159834_ (path-normalize _rpath159823_))
                               (_$e159836_
                                (if (not _reload?159824_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath159834_
                                     '#f)
                                    '#f)))
                          (if _$e159836_
                              (values _$e159836_)
                              (_import-source159826_ _npath159834_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath159935_)
        (let ((_reload?159937_ '#f))
          (gx#core-import-module__% _rpath159935_ _reload?159937_))))
    (define gx#core-import-module
      (lambda _g165477_
        (let ((_g165476_ (##length _g165477_)))
          (cond ((##fx= _g165476_ 1)
                 (apply (lambda (_rpath159935_)
                          (gx#core-import-module__0 _rpath159935_))
                        _g165477_))
                ((##fx= _g165476_ 2)
                 (apply (lambda (_rpath159939_ _reload?159940_)
                          (gx#core-import-module__%
                           _rpath159939_
                           _reload?159940_))
                        _g165477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g165477_))))))
    (define gx#core-read-module
      (lambda (_path159812_)
        (with-catch
         (lambda (_exn159814_)
           (if (and (datum-parsing-exception? _exn159814_)
                    (eq? (datum-parsing-exception-filepos _exn159814_) '0))
               (gx#core-read-module/lang _path159812_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path159812_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g159816159818_)
                      (display-exception _exn159814_ _g159816159818_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path159812_)))))
    (define gx#core-read-module/sexp
      (lambda (_path159675_)
        (let _lp159677_ ((_body159679_ (read-syntax-from-file _path159675_))
                         (_pre159680_ '#f)
                         (_ns159681_ '#f)
                         (_pkg159682_ '#f))
          (let* ((_e159683159707_ _body159679_)
                 (_E159699159729_
                  (lambda ()
                    (let ((_g165478_
                           (if _pkg159682_
                               (values _pre159680_ _ns159681_ _pkg159682_)
                               (gx#core-read-module-package
                                _path159675_
                                _pre159680_
                                _ns159681_))))
                      (begin
                        (let ((_g165479_
                               (if (##values? _g165478_)
                                   (##vector-length _g165478_)
                                   1)))
                          (if (not (##fx= _g165479_ 3))
                              (error "Context expects 3 values" _g165479_)))
                        (let ((_pre159711_ (##vector-ref _g165478_ 0))
                              (_ns159712_ (##vector-ref _g165478_ 1))
                              (_pkg159713_ (##vector-ref _g165478_ 2)))
                          (let* ((_prelude159715_
                                  (if (gx#core-bound-module-prelude?
                                       _pre159711_)
                                      (gx#syntax-local-e__0 _pre159711_)
                                      (if (gx#core-library-module-path?
                                           _pre159711_)
                                          (gx#core-resolve-library-module-path
                                           _pre159711_)
                                          (if (gx#stx-string? _pre159711_)
                                              (gx#core-resolve-module-path__%
                                               _pre159711_
                                               _path159675_)
                                              (gx#stx-e _pre159711_)))))
                                 (_path-id159717_
                                  (gx#core-module-path->namespace
                                   _path159675_))
                                 (_pkg-id159719_
                                  (if _pkg159713_
                                      (string-append
                                       _pkg159713_
                                       '"/"
                                       _path-id159717_)
                                      _path-id159717_))
                                 (_module-id159721_
                                  (string->symbol _pkg-id159719_))
                                 (_module-ns159726_
                                  (if (eq? _ns159712_ '#!void)
                                      '#f
                                      (let ((_$e159723_ _ns159712_))
                                        (if _$e159723_
                                            _$e159723_
                                            _pkg-id159719_)))))
                            (values _prelude159715_
                                    _module-id159721_
                                    _module-ns159726_
                                    _body159679_)))))))
                 (_E159692159758_
                  (lambda ()
                    (if (gx#stx-pair? _e159683159707_)
                        (let ((_e159700159733_ (gx#syntax-e _e159683159707_)))
                          (let ((_hd159701159736_ (##car _e159700159733_))
                                (_tl159702159738_ (##cdr _e159700159733_)))
                            (if (eq? (gx#stx-e _hd159701159736_) 'package:)
                                (if (gx#stx-pair? _tl159702159738_)
                                    (let ((_e159703159741_
                                           (gx#syntax-e _tl159702159738_)))
                                      (let ((_hd159704159744_
                                             (##car _e159703159741_))
                                            (_tl159705159746_
                                             (##cdr _e159703159741_)))
                                        (let* ((_pkg159749_ _hd159704159744_)
                                               (_rest159751_ _tl159705159746_))
                                          (if '#t
                                              (let ((_pkg159756_
                                                     (if (gx#identifier?
                                                          _pkg159749_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg159749_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg159749_)
                         (gx#stx-false? _pkg159749_))
                     (gx#stx-e _pkg159749_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg159749_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159677_
                                                 _rest159751_
                                                 _pre159680_
                                                 _ns159681_
                                                 _pkg159756_))
                                              (_E159699159729_)))))
                                    (_E159699159729_))
                                (_E159699159729_))))
                        (_E159699159729_))))
                 (_E159685159784_
                  (lambda ()
                    (if (gx#stx-pair? _e159683159707_)
                        (let ((_e159693159762_ (gx#syntax-e _e159683159707_)))
                          (let ((_hd159694159765_ (##car _e159693159762_))
                                (_tl159695159767_ (##cdr _e159693159762_)))
                            (if (eq? (gx#stx-e _hd159694159765_) 'namespace:)
                                (if (gx#stx-pair? _tl159695159767_)
                                    (let ((_e159696159770_
                                           (gx#syntax-e _tl159695159767_)))
                                      (let ((_hd159697159773_
                                             (##car _e159696159770_))
                                            (_tl159698159775_
                                             (##cdr _e159696159770_)))
                                        (let* ((_ns159778_ _hd159697159773_)
                                               (_rest159780_ _tl159698159775_))
                                          (if '#t
                                              (let ((_ns159782_
                                                     (if (gx#identifier?
                                                          _ns159778_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns159778_))
                                                         (if (gx#stx-string?
                                                              _ns159778_)
                                                             (gx#stx-e
                                                              _ns159778_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns159778_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns159778_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159677_
                                                 _rest159780_
                                                 _pre159680_
                                                 _ns159782_
                                                 _pkg159682_))
                                              (_E159692159758_)))))
                                    (_E159692159758_))
                                (_E159692159758_))))
                        (_E159692159758_))))
                 (_E159684159808_
                  (lambda ()
                    (if (gx#stx-pair? _e159683159707_)
                        (let ((_e159686159788_ (gx#syntax-e _e159683159707_)))
                          (let ((_hd159687159791_ (##car _e159686159788_))
                                (_tl159688159793_ (##cdr _e159686159788_)))
                            (if (eq? (gx#stx-e _hd159687159791_) 'prelude:)
                                (if (gx#stx-pair? _tl159688159793_)
                                    (let ((_e159689159796_
                                           (gx#syntax-e _tl159688159793_)))
                                      (let ((_hd159690159799_
                                             (##car _e159689159796_))
                                            (_tl159691159801_
                                             (##cdr _e159689159796_)))
                                        (let* ((_prelude159804_
                                                _hd159690159799_)
                                               (_rest159806_ _tl159691159801_))
                                          (if '#t
                                              (_lp159677_
                                               _rest159806_
                                               _prelude159804_
                                               _ns159681_
                                               _pkg159682_)
                                              (_E159685159784_)))))
                                    (_E159685159784_))
                                (_E159685159784_))))
                        (_E159685159784_)))))
            (_E159684159808_)))))
    (define gx#core-read-module/lang
      (lambda (_path159502_)
        (letrec ((_default-read-module-body159504_
                  (lambda (_inp159667_)
                    (let _lp159669_ ((_body159671_ '()))
                      (let ((_next159673_ (read-syntax _inp159667_)))
                        (if (eof-object? _next159673_)
                            (reverse _body159671_)
                            (_lp159669_ (cons _next159673_ _body159671_)))))))
                 (_read-body159505_
                  (lambda (_inp159586_
                           _pre159587_
                           _ns159588_
                           _pkg159589_
                           _args159590_)
                    (let ((_g165480_
                           (if _pkg159589_
                               (values _pre159587_ _ns159588_ _pkg159589_)
                               (gx#core-read-module-package
                                _path159502_
                                _pre159587_
                                _ns159588_))))
                      (begin
                        (let ((_g165481_
                               (if (##values? _g165480_)
                                   (##vector-length _g165480_)
                                   1)))
                          (if (not (##fx= _g165481_ 3))
                              (error "Context expects 3 values" _g165481_)))
                        (let ((_pre159592_ (##vector-ref _g165480_ 0))
                              (_ns159593_ (##vector-ref _g165480_ 1))
                              (_pkg159594_ (##vector-ref _g165480_ 2)))
                          (let* ((_prelude159596_
                                  (gx#import-module__0 _pre159592_))
                                 (_read-module-body159650_
                                  (let ((_$e159642_
                                         (find (lambda (_e159597159599_)
                                                 (let* ((_g159601159611_
                                                         _e159597159599_)
                                                        (_else159603159619_
                                                         (lambda () '#f))
                                                        (_K159605159623_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g159601159611_
                                                        'gx#module-export::t)
                                                       (let* ((_e159606159626_
                                                               (##unchecked-structure-ref
                                                                _g159601159611_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159607159629_
                                                               (##unchecked-structure-ref
                                                                _g159601159611_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159608159632_
                                                               (##unchecked-structure-ref
                                                                _g159601159611_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e159608159632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e159609159635_
                            (##unchecked-structure-ref
                             _g159601159611_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g159637159639_)
                              (eq? _g159637159639_ 'read-module-body))
                            _e159609159635_)
                           (_K159605159623_)
                           (_else159603159619_)))
                     (_else159603159619_)))
               (_else159603159619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude159596_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e159642_
                                        ((lambda (_xport159645_)
                                           (let ((_proc159648_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport159645_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc159648_)
                                                 _proc159648_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path159502_
                                                  _pre159592_
                                                  _proc159648_))))
                                         _$e159642_)
                                        _default-read-module-body159504_)))
                                 (_path-id159652_
                                  (gx#core-module-path->namespace
                                   _path159502_))
                                 (_pkg-id159654_
                                  (if _pkg159594_
                                      (string-append
                                       _pkg159594_
                                       '"/"
                                       _path-id159652_)
                                      _path-id159652_))
                                 (_module-id159656_
                                  (string->symbol _pkg-id159654_))
                                 (_module-ns159661_
                                  (let ((_$e159658_ _ns159593_))
                                    (if _$e159658_ _$e159658_ _pkg-id159654_)))
                                 (_body159664_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body159650_ _inp159586_))
                                   gx#current-module-reader-path
                                   _path159502_
                                   gx#current-module-reader-args
                                   _args159590_)))
                            (values _prelude159596_
                                    _module-id159656_
                                    _module-ns159661_
                                    _body159664_)))))))
                 (_string-e159506_
                  (lambda (_obj159583_ _what159584_)
                    (if (string? _obj159583_)
                        _obj159583_
                        (if (symbol? _obj159583_)
                            (symbol->string _obj159583_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what159584_)
                             _path159502_
                             _obj159583_)))))
                 (_read-lang-args159507_
                  (lambda (_inp159538_ _args159539_)
                    (let* ((_args159540159548_ _args159539_)
                           (_else159542159556_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path159502_)))
                           (_K159544159571_
                            (lambda (_args159559_ _prelude159560_)
                              (let* ((_pkg159562_
                                      (pgetq 'package: _args159559_))
                                     (_pkg159564_
                                      (if _pkg159562_
                                          (_string-e159506_
                                           _pkg159562_
                                           '"package")
                                          '#f))
                                     (_ns159566_
                                      (pgetq 'namespace: _args159559_))
                                     (_ns159568_
                                      (if _ns159566_
                                          (_string-e159506_
                                           _ns159566_
                                           '"namespace")
                                          '#f)))
                                (_read-body159505_
                                 _inp159538_
                                 _prelude159560_
                                 _ns159568_
                                 _pkg159564_
                                 _args159559_)))))
                      (if (##pair? _args159540159548_)
                          (let ((_hd159545159574_ (##car _args159540159548_))
                                (_tl159546159576_ (##cdr _args159540159548_)))
                            (let* ((_prelude159579_ _hd159545159574_)
                                   (_args159581_ _tl159546159576_))
                              (_K159544159571_ _args159581_ _prelude159579_)))
                          (_else159542159556_)))))
                 (_read-lang159508_
                  (lambda (_inp159513_)
                    (let* ((_head159515_ (read-line _inp159513_))
                           (_$e159517_ (string-index _head159515_ '#\space)))
                      (if _$e159517_
                          ((lambda (_ix159520_)
                             (let ((_lang159522_
                                    (substring _head159515_ '0 _ix159520_)))
                               (if (equal? _lang159522_ '"#lang")
                                   (let* ((_rest159524_
                                           (substring
                                            _head159515_
                                            (fx+ _ix159520_ '1)
                                            (string-length _head159515_)))
                                          (_args159535_
                                           (with-catch
                                            (lambda (_g159525159527_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path159502_
                                               _g159525159527_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest159524_
                                               (lambda (_g159530159532_)
                                                 (read-all
                                                  _g159530159532_
                                                  read)))))))
                                     (_read-lang-args159507_
                                      _inp159513_
                                      _args159535_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path159502_))))
                           _$e159517_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path159502_)))))
                 (_read-e159509_
                  (lambda (_inp159511_)
                    (if (eq? (peek-char _inp159511_) '#\#)
                        (_read-lang159508_ _inp159511_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path159502_)))))
          (gx#call-with-input-source-file _path159502_ _read-e159509_))))
    (define gx#core-read-module-package
      (lambda (_path159456_ _pre159457_ _ns159458_)
        (letrec ((_string-e159460_
                  (lambda (_e159500_)
                    (if (symbol? _e159500_)
                        (symbol->string _e159500_)
                        (if (string? _e159500_)
                            _e159500_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e159500_))))))
          (let _lp159462_ ((_dir159464_ (path-directory _path159456_))
                           (_pkg-path159465_ '()))
            (let ((_gerbil.pkg159467_ (path-expand '"gerbil.pkg" _dir159464_)))
              (if (file-exists? _gerbil.pkg159467_)
                  (let ((_plist159469_
                         (gx#core-library-package-plist__% _dir159464_ '#t)))
                    (if (null? _plist159469_)
                        (let ((_pkg159471_
                               (if (not (null? _pkg-path159465_))
                                   (string-join _pkg-path159465_ '"/")
                                   '#f)))
                          (values _pre159457_ _ns159458_ _pkg159471_))
                        (if (list? _plist159469_)
                            (let* ((_root159473_
                                    (pgetq 'package: _plist159469_))
                                   (_pkg159477_
                                    (let ((_pkg-path159475_
                                           (if _root159473_
                                               (cons (_string-e159460_
                                                      _root159473_)
                                                     _pkg-path159465_)
                                               _pkg-path159465_)))
                                      (if (not (null? _pkg-path159475_))
                                          (string-join _pkg-path159475_ '"/")
                                          '#f)))
                                   (_ns159484_
                                    (let ((_ns159482_
                                           (let ((_$e159479_ _ns159458_))
                                             (if _$e159479_
                                                 _$e159479_
                                                 (pgetq 'namespace:
                                                        _plist159469_)))))
                                      (if _ns159482_
                                          (_string-e159460_ _ns159482_)
                                          '#f)))
                                   (_pre159489_
                                    (let ((_$e159486_ _pre159457_))
                                      (if _$e159486_
                                          _$e159486_
                                          (pgetq 'prelude: _plist159469_)))))
                              (values _pre159489_ _ns159484_ _pkg159477_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist159469_))))
                  (let ((_dir*159492_
                         (path-strip-trailing-directory-separator
                          _dir159464_)))
                    (if (or (string-empty? _dir*159492_)
                            (equal? _dir159464_ _dir*159492_))
                        (values _pre159457_ _ns159458_ '#f)
                        (let ((_xpath159497_
                               (path-strip-directory _dir*159492_))
                              (_xdir159498_ (path-directory _dir*159492_)))
                          (_lp159462_
                           _xdir159498_
                           (cons _xpath159497_ _pkg-path159465_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path159454_)
        (path-strip-extension (path-strip-directory _path159454_))))
    (define gx#core-module-path->id
      (lambda (_path159452_)
        (string->symbol (gx#core-module-path->namespace _path159452_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path159431_ _rel159432_)
        (let* ((_path159434_ (gx#stx-e _stx-path159431_))
               (_path159436_
                (if (string-empty? (path-extension _path159434_))
                    (string-append _path159434_ '".ss")
                    _path159434_)))
          (gx#core-resolve-path__%
           _path159436_
           (let ((_$e159439_ (gx#stx-source _stx-path159431_)))
             (if _$e159439_ _$e159439_ _rel159432_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path159445_)
        (let ((_rel159447_ '#f))
          (gx#core-resolve-module-path__% _stx-path159445_ _rel159447_))))
    (define gx#core-resolve-module-path
      (lambda _g165483_
        (let ((_g165482_ (##length _g165483_)))
          (cond ((##fx= _g165482_ 1)
                 (apply (lambda (_stx-path159445_)
                          (gx#core-resolve-module-path__0 _stx-path159445_))
                        _g165483_))
                ((##fx= _g165482_ 2)
                 (apply (lambda (_stx-path159449_ _rel159450_)
                          (gx#core-resolve-module-path__%
                           _stx-path159449_
                           _rel159450_))
                        _g165483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g165483_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath159317_)
        (let* ((_spath159319_ (symbol->string (gx#stx-e _libpath159317_)))
               (_spath159321_
                (substring _spath159319_ '1 (string-length _spath159319_)))
               (_ext159323_ (path-extension _spath159321_))
               (_ssi159325_
                (if (string-empty? _ext159323_)
                    (string-append _spath159321_ '".ssi")
                    (string-append
                     (path-strip-extension _spath159321_)
                     '".ssi")))
               (_srcs159329_
                (if (string-empty? _ext159323_)
                    (map (lambda (_ext159327_)
                           (string-append _spath159321_ _ext159327_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath159321_ '()))))
          (let _lp159332_ ((_rest159334_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest159335159344_ _rest159334_)
                   (_E159338159348_
                    (lambda ()
                      (error '"No clause matching" _rest159335159344_))))
              (let ((_K159340159418_
                     (lambda (_rest159359_ _dir159360_)
                       (letrec ((_resolve159362_
                                 (lambda (_ssi159374_ _srcs159375_)
                                   (let ((_compiled-path159377_
                                          (path-expand
                                           _ssi159374_
                                           _dir159360_)))
                                     (if (file-exists? _compiled-path159377_)
                                         (path-normalize _compiled-path159377_)
                                         (let _lpr159379_ ((_rest-src159381_
                                                            _srcs159375_))
                                           (let* ((_rest-src159382159390_
                                                   _rest-src159381_)
                                                  (_else159384159398_
                                                   (lambda ()
                                                     (_lp159332_
                                                      _rest159359_)))
                                                  (_K159386159406_
                                                   (lambda (_rest-src159401_
                                                            _src159402_)
                                                     (let ((_src-path159404_
                                                            (path-expand
                                                             _src159402_
                                                             _dir159360_)))
                                                       (if (file-exists?
                                                            _src-path159404_)
                                                           (path-normalize
                                                            _src-path159404_)
                                                           (_lpr159379_
                                                            _rest-src159401_))))))
                                             (if (##pair? _rest-src159382159390_)
                                                 (let ((_hd159387159409_
                                                        (##car _rest-src159382159390_))
                                                       (_tl159388159411_
                                                        (##cdr _rest-src159382159390_)))
                                                   (let* ((_src159414_
                                                           _hd159387159409_)
                                                          (_rest-src159416_
                                                           _tl159388159411_))
                                                     (_K159386159406_
                                                      _rest-src159416_
                                                      _src159414_)))
                                                 (_else159384159398_)))))))))
                         (let ((_$e159364_
                                (gx#core-library-package-path-prefix
                                 _dir159360_)))
                           (if _$e159364_
                               ((lambda (_prefix159367_)
                                  (if (string-prefix?
                                       _prefix159367_
                                       _spath159321_)
                                      (let ((_ssi159371_
                                             (substring
                                              _ssi159325_
                                              (string-length _prefix159367_)
                                              (string-length _ssi159325_)))
                                            (_srcs159372_
                                             (map (lambda (_src159369_)
                                                    (substring
                                                     _src159369_
                                                     (string-length
                                                      _prefix159367_)
                                                     (string-length
                                                      _src159369_)))
                                                  _srcs159329_)))
                                        (_resolve159362_
                                         _ssi159371_
                                         _srcs159372_))
                                      (_lp159332_ _rest159359_)))
                                _$e159364_)
                               (_resolve159362_ _ssi159325_ _srcs159329_))))))
                    (_K159339159353_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath159317_))))
                (let ((_try-match159337159356_
                       (lambda ()
                         (if (##null? _rest159335159344_)
                             (_K159339159353_)
                             (_E159338159348_)))))
                  (if (##pair? _rest159335159344_)
                      (let ((_tl159342159423_ (##cdr _rest159335159344_))
                            (_hd159341159421_ (##car _rest159335159344_)))
                        (let ((_dir159426_ _hd159341159421_)
                              (_rest159428_ _tl159342159423_))
                          (_K159340159418_ _rest159428_ _dir159426_)))
                      (_try-match159337159356_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath159290_)
        (letrec ((_resolve159292_
                  (lambda (_path159309_ _base159310_)
                    (let ((_$e159312_ (string-rindex _base159310_ '#\/)))
                      (if _$e159312_
                          ((lambda (_idx159315_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base159310_ '0 _idx159315_)
                                '"/"
                                _path159309_))))
                           _$e159312_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path159309_))))))))
          (let ((_spath159294_ (symbol->string (gx#stx-e _modpath159290_)))
                (_mod159295_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod159295_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath159290_))
            (let ((_mpath159297_
                   (symbol->string
                    (##structure-ref
                     _mod159295_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp159299_ ((_spath159301_ _spath159294_)
                               (_mpath159302_ _mpath159297_))
                (if (string-prefix? '"../" _spath159301_)
                    (let ((_$e159304_ (string-rindex _mpath159302_ '#\/)))
                      (if _$e159304_
                          ((lambda (_idx159307_)
                             (_lp159299_
                              (substring
                               _spath159301_
                               '3
                               (string-length _spath159301_))
                              (substring _mpath159302_ '0 _idx159307_)))
                           _$e159304_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath159290_)))
                    (if (string-prefix? '"./" _spath159301_)
                        (_lp159299_
                         (substring
                          _spath159301_
                          '2
                          (string-length _spath159301_))
                         _mpath159302_)
                        (_resolve159292_ _spath159301_ _mpath159302_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir159283_)
        (let ((_$e159285_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir159283_))))
          (if _$e159285_
              ((lambda (_pkg159288_)
                 (string-append (symbol->string _pkg159288_) '"/"))
               _$e159285_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir159255_ _exists?159256_)
        (let* ((_cache159258_ (gx#core-library-package-cache))
               (_$e159260_ (table-ref _cache159258_ _dir159255_ '#f)))
          (if _$e159260_
              (values _$e159260_)
              (let* ((_gerbil.pkg159263_
                      (path-expand '"gerbil.pkg" _dir159255_))
                     (_plist159270_
                      (if (or _exists?159256_
                              (file-exists? _gerbil.pkg159263_))
                          (let ((_e159268_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg159263_
                                  read)))
                            (if (eof-object? _e159268_)
                                '()
                                (if (list? _e159268_)
                                    _e159268_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg159263_
                                     _e159268_))))
                          '())))
                (table-set! _cache159258_ _dir159255_ _plist159270_)
                _plist159270_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir159276_)
        (let ((_exists?159278_ '#f))
          (gx#core-library-package-plist__% _dir159276_ _exists?159278_))))
    (define gx#core-library-package-plist
      (lambda _g165485_
        (let ((_g165484_ (##length _g165485_)))
          (cond ((##fx= _g165484_ 1)
                 (apply (lambda (_dir159276_)
                          (gx#core-library-package-plist__0 _dir159276_))
                        _g165485_))
                ((##fx= _g165484_ 2)
                 (apply (lambda (_dir159280_ _exists?159281_)
                          (gx#core-library-package-plist__%
                           _dir159280_
                           _exists?159281_))
                        _g165485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g165485_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e159249_ (gx#current-expander-module-library-package-cache)))
          (if _$e159249_
              (values _$e159249_)
              (let ((_cache159252_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache159252_)
                _cache159252_)))))
    (define gx#core-library-module-path?
      (lambda (_stx159246_) (gx#core-special-module-path? _stx159246_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx159244_) (gx#core-special-module-path? _stx159244_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx159239_ _char159240_)
        (if (gx#identifier? _stx159239_)
            (if (interned-symbol? (gx#stx-e _stx159239_))
                (let ((_str159242_ (symbol->string (gx#stx-e _stx159239_))))
                  (if (fx> (string-length _str159242_) '1)
                      (eq? (string-ref _str159242_ '0) _char159240_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx159233_)
        (gx#core-bound-identifier?__%
         _stx159233_
         (lambda (_g159234159236_)
           (gx#expander-binding?__% _g159234159236_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx159227_)
        (gx#core-bound-identifier?__%
         _stx159227_
         (lambda (_g159228159230_)
           (gx#expander-binding?__% _g159228159230_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx159214_)
        (letrec ((_module-prelude?159216_
                  (lambda (_e159222_)
                    (let ((_$e159224_
                           (##structure-instance-of?
                            _e159222_
                            'gx#module-context::t)))
                      (if _$e159224_
                          _$e159224_
                          (##structure-instance-of?
                           _e159222_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx159214_
           (lambda (_g159217159219_)
             (gx#expander-binding?__%
              _g159217159219_
              _module-prelude?159216_))))))
    (define gx#core-bind-import!__%
      (lambda (_in159144_ _ctx159145_ _force-weak?159146_)
        (let* ((_in159147159156_ _in159144_)
               (_E159149159160_
                (lambda () (error '"No clause matching" _in159147159156_)))
               (_K159150159173_
                (lambda (_weak?159163_ _phi159164_ _key159165_ _source159166_)
                  (gx#core-bind!__%
                   _key159165_
                   (let ((_e159168_
                          (gx#core-resolve-module-export _source159166_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e159168_
                       '1
                       gx#binding::t
                       '#f)
                      _key159165_
                      _phi159164_
                      _e159168_
                      (##unchecked-structure-ref
                       _source159166_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e159170_ _force-weak?159146_))
                        (if _$e159170_ _$e159170_ _weak?159163_))))
                   gx#core-context-rebind?
                   _phi159164_
                   _ctx159145_))))
          (if (##structure-direct-instance-of?
               _in159147159156_
               'gx#module-import::t)
              (let* ((_e159151159176_
                      (##unchecked-structure-ref
                       _in159147159156_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source159179_ _e159151159176_)
                     (_e159152159181_
                      (##unchecked-structure-ref
                       _in159147159156_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key159184_ _e159152159181_)
                     (_e159153159186_
                      (##unchecked-structure-ref
                       _in159147159156_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi159189_ _e159153159186_)
                     (_e159154159191_
                      (##unchecked-structure-ref
                       _in159147159156_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?159194_ _e159154159191_))
                (_K159150159173_
                 _weak?159194_
                 _phi159189_
                 _key159184_
                 _source159179_))
              (_E159149159160_)))))
    (define gx#core-bind-import!__0
      (lambda (_in159199_)
        (let* ((_ctx159201_ (gx#current-expander-context))
               (_force-weak?159203_ '#f))
          (gx#core-bind-import!__%
           _in159199_
           _ctx159201_
           _force-weak?159203_))))
    (define gx#core-bind-import!__1
      (lambda (_in159205_ _ctx159206_)
        (let ((_force-weak?159208_ '#f))
          (gx#core-bind-import!__%
           _in159205_
           _ctx159206_
           _force-weak?159208_))))
    (define gx#core-bind-import!
      (lambda _g165487_
        (let ((_g165486_ (##length _g165487_)))
          (cond ((##fx= _g165486_ 1)
                 (apply (lambda (_in159199_)
                          (gx#core-bind-import!__0 _in159199_))
                        _g165487_))
                ((##fx= _g165486_ 2)
                 (apply (lambda (_in159205_ _ctx159206_)
                          (gx#core-bind-import!__1 _in159205_ _ctx159206_))
                        _g165487_))
                ((##fx= _g165486_ 3)
                 (apply (lambda (_in159210_ _ctx159211_ _force-weak?159212_)
                          (gx#core-bind-import!__%
                           _in159210_
                           _ctx159211_
                           _force-weak?159212_))
                        _g165487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g165487_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in159130_ _ctx159131_)
        (gx#core-bind-import!__% _in159130_ _ctx159131_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in159136_)
        (let ((_ctx159138_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in159136_ _ctx159138_))))
    (define gx#core-bind-weak-import!
      (lambda _g165489_
        (let ((_g165488_ (##length _g165489_)))
          (cond ((##fx= _g165488_ 1)
                 (apply (lambda (_in159136_)
                          (gx#core-bind-weak-import!__0 _in159136_))
                        _g165489_))
                ((##fx= _g165488_ 2)
                 (apply (lambda (_in159140_ _ctx159141_)
                          (gx#core-bind-weak-import!__%
                           _in159140_
                           _ctx159141_))
                        _g165489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g165489_))))))
    (define gx#core-resolve-module-export
      (lambda (_out159021_)
        (letrec ((_subst159023_
                  (lambda (_key159069_)
                    (let* ((_key159070159078_ _key159069_)
                           (_else159072159086_ (lambda () _key159069_))
                           (_K159074159117_
                            (lambda (_mark159089_ _id159090_)
                              (let* ((_mark159091159097_ _mark159089_)
                                     (_E159093159101_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark159091159097_)))
                                     (_K159094159109_
                                      (lambda (_subst159104_)
                                        (let ((_$e159106_
                                               (if _subst159104_
                                                   (table-ref
                                                    _subst159104_
                                                    _id159090_
                                                    '#f)
                                                   '#f)))
                                          (if _$e159106_
                                              _$e159106_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key159069_))))))
                                (if (##structure-instance-of?
                                     _mark159091159097_
                                     'gx#expander-mark::t)
                                    (let* ((_e159095159112_
                                            (##unchecked-structure-ref
                                             _mark159091159097_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst159115_ _e159095159112_))
                                      (_K159094159109_ _subst159115_))
                                    (_E159093159101_))))))
                      (if (##pair? _key159070159078_)
                          (let ((_hd159075159120_ (##car _key159070159078_))
                                (_tl159076159122_ (##cdr _key159070159078_)))
                            (let* ((_id159125_ _hd159075159120_)
                                   (_mark159127_ _tl159076159122_))
                              (_K159074159117_ _mark159127_ _id159125_)))
                          (_else159072159086_))))))
          (let* ((_out159024159034_ _out159021_)
                 (_E159026159038_
                  (lambda () (error '"No clause matching" _out159024159034_)))
                 (_K159027159045_
                  (lambda (_phi159041_ _key159042_ _ctx159043_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx159043_ _phi159041_)
                     (_subst159023_ _key159042_)))))
            (if (##structure-direct-instance-of?
                 _out159024159034_
                 'gx#module-export::t)
                (let* ((_e159028159048_
                        (##unchecked-structure-ref
                         _out159024159034_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx159051_ _e159028159048_)
                       (_e159029159053_
                        (##unchecked-structure-ref
                         _out159024159034_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key159056_ _e159029159053_)
                       (_e159030159058_
                        (##unchecked-structure-ref
                         _out159024159034_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi159061_ _e159030159058_)
                       (_e159031159063_
                        (##unchecked-structure-ref
                         _out159024159034_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e159032159066_
                        (##unchecked-structure-ref
                         _out159024159034_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K159027159045_ _phi159061_ _key159056_ _ctx159051_))
                (_E159026159038_))))))
    (define gx#core-module-export->import__%
      (lambda (_out158946_ _rename158947_ _dphi158948_)
        (let* ((_out158949158959_ _out158946_)
               (_E158951158963_
                (lambda () (error '"No clause matching" _out158949158959_)))
               (_K158952158975_
                (lambda (_weak?158966_
                         _name158967_
                         _phi158968_
                         _key158969_
                         _ctx158970_)
                  (##structure
                   gx#module-import::t
                   _out158946_
                   (let ((_$e158972_ _rename158947_))
                     (if _$e158972_ _$e158972_ _name158967_))
                   (fx+ _phi158968_ _dphi158948_)
                   _weak?158966_))))
          (if (##structure-direct-instance-of?
               _out158949158959_
               'gx#module-export::t)
              (let* ((_e158953158978_
                      (##unchecked-structure-ref
                       _out158949158959_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx158981_ _e158953158978_)
                     (_e158954158983_
                      (##unchecked-structure-ref
                       _out158949158959_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key158986_ _e158954158983_)
                     (_e158955158988_
                      (##unchecked-structure-ref
                       _out158949158959_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi158991_ _e158955158988_)
                     (_e158956158993_
                      (##unchecked-structure-ref
                       _out158949158959_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name158996_ _e158956158993_)
                     (_e158957158998_
                      (##unchecked-structure-ref
                       _out158949158959_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?159001_ _e158957158998_))
                (_K158952158975_
                 _weak?159001_
                 _name158996_
                 _phi158991_
                 _key158986_
                 _ctx158981_))
              (_E158951158963_)))))
    (define gx#core-module-export->import__0
      (lambda (_out159006_)
        (let* ((_rename159008_ '#f) (_dphi159010_ '0))
          (gx#core-module-export->import__%
           _out159006_
           _rename159008_
           _dphi159010_))))
    (define gx#core-module-export->import__1
      (lambda (_out159012_ _rename159013_)
        (let ((_dphi159015_ '0))
          (gx#core-module-export->import__%
           _out159012_
           _rename159013_
           _dphi159015_))))
    (define gx#core-module-export->import
      (lambda _g165491_
        (let ((_g165490_ (##length _g165491_)))
          (cond ((##fx= _g165490_ 1)
                 (apply (lambda (_out159006_)
                          (gx#core-module-export->import__0 _out159006_))
                        _g165491_))
                ((##fx= _g165490_ 2)
                 (apply (lambda (_out159012_ _rename159013_)
                          (gx#core-module-export->import__1
                           _out159012_
                           _rename159013_))
                        _g165491_))
                ((##fx= _g165490_ 3)
                 (apply (lambda (_out159017_ _rename159018_ _dphi159019_)
                          (gx#core-module-export->import__%
                           _out159017_
                           _rename159018_
                           _dphi159019_))
                        _g165491_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g165491_))))))
    (define gx#core-expand-module%
      (lambda (_stx158874_)
        (letrec ((_make-context158876_
                  (lambda (_id158927_)
                    (let* ((_super158929_ (gx#current-expander-context))
                           (_bind-id158931_ (gx#stx-e _id158927_))
                           (_mod-id158933_
                            (if (##structure-instance-of?
                                 _super158929_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super158929_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id158931_)
                                _bind-id158931_))
                           (_ns158935_ (symbol->string _mod-id158933_))
                           (_path158942_
                            (if (##structure-instance-of?
                                 _super158929_
                                 'gx#module-context::t)
                                (let ((_path158937_
                                       (##unchecked-structure-ref
                                        _super158929_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path158937_)
                                          (null? _path158937_))
                                      (cons _bind-id158931_ _path158937_)
                                      (if (not _path158937_)
                                          _bind-id158931_
                                          (cons _bind-id158931_
                                                (cons _path158937_ '())))))
                                _bind-id158931_)))
                      (let ((__obj165467
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
                         __obj165467
                         _mod-id158933_
                         _super158929_
                         _ns158935_
                         _path158942_)
                        __obj165467)))))
          (let* ((_e158877158887_ _stx158874_)
                 (_E158879158891_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158877158887_)))
                 (_E158878158923_
                  (lambda ()
                    (if (gx#stx-pair? _e158877158887_)
                        (let ((_e158880158895_ (gx#syntax-e _e158877158887_)))
                          (let ((_hd158881158898_ (##car _e158880158895_))
                                (_tl158882158900_ (##cdr _e158880158895_)))
                            (if (gx#stx-pair? _tl158882158900_)
                                (let ((_e158883158903_
                                       (gx#syntax-e _tl158882158900_)))
                                  (let ((_hd158884158906_
                                         (##car _e158883158903_))
                                        (_tl158885158908_
                                         (##cdr _e158883158903_)))
                                    (let* ((_id158911_ _hd158884158906_)
                                           (_body158913_ _tl158885158908_))
                                      (if (and (gx#identifier? _id158911_)
                                               (gx#stx-list? _body158913_))
                                          (let* ((_ctx158915_
                                                  (_make-context158876_
                                                   _id158911_))
                                                 (_body158917_
                                                  (gx#core-expand-module-begin
                                                   _body158913_
                                                   _ctx158915_))
                                                 (_body158919_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body158917_)
                                                   (gx#stx-source
                                                    _stx158874_))))
                                            (##unchecked-structure-set!
                                             _ctx158915_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body158919_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx158915_
                                             _body158919_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id158911_
                                             _ctx158915_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id158911_)
                                              _body158919_)
                                             (gx#stx-source _stx158874_)))
                                          (_E158879158891_)))))
                                (_E158879158891_))))
                        (_E158879158891_)))))
            (_E158878158923_)))))
    (define gx#core-expand-module-begin
      (lambda (_body158840_ _ctx158841_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx158844_
                   (gx#core-expand-head (cons '%%begin-module _body158840_)))
                  (_e158845158852_ _stx158844_)
                  (_E158847158856_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx158844_)))
                  (_E158846158870_
                   (lambda ()
                     (if (gx#stx-pair? _e158845158852_)
                         (let ((_e158848158860_ (gx#syntax-e _e158845158852_)))
                           (let ((_hd158849158863_ (##car _e158848158860_))
                                 (_tl158850158865_ (##cdr _e158848158860_)))
                             (if (and (gx#identifier? _hd158849158863_)
                                      (gx#core-identifier=?
                                       _hd158849158863_
                                       '%#begin-module))
                                 (let ((_body158868_ _tl158850158865_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx158844_)
                                           _body158868_
                                           (gx#core-expand-module-body
                                            _body158868_))
                                       (_E158847158856_)))
                                 (_E158847158856_))))
                         (_E158847158856_)))))
             (_E158846158870_)))
         gx#current-expander-context
         _ctx158841_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body158636_)
        (letrec ((_expand-special158638_
                  (lambda (_hd158767_ _K158768_ _rest158769_ _r158770_)
                    (let* ((_e158771158788_ _hd158767_)
                           (_E158783158792_
                            (lambda ()
                              (_K158768_
                               _rest158769_
                               (cons (gx#core-expand-top _hd158767_)
                                     _r158770_))))
                           (_E158773158804_
                            (lambda ()
                              (if (gx#stx-pair? _e158771158788_)
                                  (let ((_e158784158796_
                                         (gx#syntax-e _e158771158788_)))
                                    (let ((_hd158785158799_
                                           (##car _e158784158796_))
                                          (_tl158786158801_
                                           (##cdr _e158784158796_)))
                                      (if (and (gx#identifier?
                                                _hd158785158799_)
                                               (gx#core-identifier=?
                                                _hd158785158799_
                                                '%#export))
                                          (if '#t
                                              (_K158768_
                                               _rest158769_
                                               (cons _hd158767_ _r158770_))
                                              (_E158783158792_))
                                          (_E158783158792_))))
                                  (_E158783158792_))))
                           (_E158772158836_
                            (lambda ()
                              (if (gx#stx-pair? _e158771158788_)
                                  (let ((_e158774158808_
                                         (gx#syntax-e _e158771158788_)))
                                    (let ((_hd158775158811_
                                           (##car _e158774158808_))
                                          (_tl158776158813_
                                           (##cdr _e158774158808_)))
                                      (if (and (gx#identifier?
                                                _hd158775158811_)
                                               (gx#core-identifier=?
                                                _hd158775158811_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl158776158813_)
                                              (let ((_e158777158816_
                                                     (gx#syntax-e
                                                      _tl158776158813_)))
                                                (let ((_hd158778158819_
                                                       (##car _e158777158816_))
                                                      (_tl158779158821_
                                                       (##cdr _e158777158816_)))
                                                  (let ((_hd-bind158824_
                                                         _hd158778158819_))
                                                    (if (gx#stx-pair?
                                                         _tl158779158821_)
                                                        (let ((_e158780158826_
                                                               (gx#syntax-e
                                                                _tl158779158821_)))
                                                          (let ((_hd158781158829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e158780158826_))
                        (_tl158782158831_ (##cdr _e158780158826_)))
                    (let ((_expr158834_ _hd158781158829_))
                      (if (gx#stx-null? _tl158782158831_)
                          (if (gx#core-bind-values? _hd-bind158824_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind158824_)
                                (_K158768_
                                 _rest158769_
                                 (cons _hd158767_ _r158770_)))
                              (_E158773158804_))
                          (_E158773158804_)))))
                (_E158773158804_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158773158804_))
                                          (_E158773158804_))))
                                  (_E158773158804_)))))
                      (_E158772158836_))))
                 (_expand-body158639_
                  (lambda (_rbody158641_)
                    (let _lp158643_ ((_rest158645_ _rbody158641_)
                                     (_body158646_ '()))
                      (let* ((_rest158647158655_ _rest158645_)
                             (_else158649158663_ (lambda () _body158646_))
                             (_K158651158755_
                              (lambda (_rest158666_ _hd158667_)
                                (let* ((_e158668158689_ _hd158667_)
                                       (_E158684158693_
                                        (lambda ()
                                          (_lp158643_
                                           _rest158666_
                                           (cons (gx#core-expand-expression
                                                  _hd158667_)
                                                 _body158646_))))
                                       (_E158680158707_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158668158689_)
                                              (let ((_e158685158697_
                                                     (gx#syntax-e
                                                      _e158668158689_)))
                                                (let ((_hd158686158700_
                                                       (##car _e158685158697_))
                                                      (_tl158687158702_
                                                       (##cdr _e158685158697_)))
                                                  (let ((_form158705_
                                                         _hd158686158700_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form158705_
                                                         gx#special-form-binding?)
                                                        (_lp158643_
                                                         _rest158666_
                                                         (cons _hd158667_
                                                               _body158646_))
                                                        (_E158684158693_)))))
                                              (_E158684158693_))))
                                       (_E158670158719_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158668158689_)
                                              (let ((_e158681158711_
                                                     (gx#syntax-e
                                                      _e158668158689_)))
                                                (let ((_hd158682158714_
                                                       (##car _e158681158711_))
                                                      (_tl158683158716_
                                                       (##cdr _e158681158711_)))
                                                  (if (and (gx#identifier?
                                                            _hd158682158714_)
                                                           (gx#core-identifier=?
                                                            _hd158682158714_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp158643_
                                                           _rest158666_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd158667_)
                         _body158646_))
                  (_E158680158707_))
              (_E158680158707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158680158707_))))
                                       (_E158669158751_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158668158689_)
                                              (let ((_e158671158723_
                                                     (gx#syntax-e
                                                      _e158668158689_)))
                                                (let ((_hd158672158726_
                                                       (##car _e158671158723_))
                                                      (_tl158673158728_
                                                       (##cdr _e158671158723_)))
                                                  (if (and (gx#identifier?
                                                            _hd158672158726_)
                                                           (gx#core-identifier=?
                                                            _hd158672158726_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl158673158728_)
                                                          (let ((_e158674158731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl158673158728_)))
                    (let ((_hd158675158734_ (##car _e158674158731_))
                          (_tl158676158736_ (##cdr _e158674158731_)))
                      (let ((_hd-bind158739_ _hd158675158734_))
                        (if (gx#stx-pair? _tl158676158736_)
                            (let ((_e158677158741_
                                   (gx#syntax-e _tl158676158736_)))
                              (let ((_hd158678158744_ (##car _e158677158741_))
                                    (_tl158679158746_ (##cdr _e158677158741_)))
                                (let ((_expr158749_ _hd158678158744_))
                                  (if (gx#stx-null? _tl158679158746_)
                                      (if '#t
                                          (_lp158643_
                                           _rest158666_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind158739_)
                                                   (gx#core-expand-expression
                                                    _expr158749_))
                                                  (gx#stx-source _hd158667_))
                                                 _body158646_))
                                          (_E158670158719_))
                                      (_E158670158719_)))))
                            (_E158670158719_)))))
                  (_E158670158719_))
              (_E158670158719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158670158719_)))))
                                  (_E158669158751_)))))
                        (if (##pair? _rest158647158655_)
                            (let ((_hd158652158758_ (##car _rest158647158655_))
                                  (_tl158653158760_
                                   (##cdr _rest158647158655_)))
                              (let* ((_hd158763_ _hd158652158758_)
                                     (_rest158765_ _tl158653158760_))
                                (_K158651158755_ _rest158765_ _hd158763_)))
                            (_else158649158663_)))))))
          (_expand-body158639_
           (gx#core-expand-block__%
            (cons '%#begin-module _body158636_)
            _expand-special158638_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx158479_
               _expanded?158480_
               _method158481_
               _current-phi158482_
               _expand1158483_)
        (letrec ((_K158485_
                  (lambda (_rest158603_ _r158604_)
                    (let* ((_e158605158612_ _rest158603_)
                           (_E158607158616_ (lambda () _r158604_))
                           (_E158606158632_
                            (lambda ()
                              (if (gx#stx-pair? _e158605158612_)
                                  (let ((_e158608158620_
                                         (gx#syntax-e _e158605158612_)))
                                    (let ((_hd158609158623_
                                           (##car _e158608158620_))
                                          (_tl158610158625_
                                           (##cdr _e158608158620_)))
                                      (let* ((_hd158628_ _hd158609158623_)
                                             (_rest158630_ _tl158610158625_))
                                        (if '#t
                                            (_step158486_
                                             _hd158628_
                                             _rest158630_
                                             _r158604_)
                                            (_E158607158616_)))))
                                  (_E158607158616_)))))
                      (_E158606158632_))))
                 (_step158486_
                  (lambda (_hd158517_ _rest158518_ _r158519_)
                    (let* ((_e158520158538_ _hd158517_)
                           (_E158533158542_
                            (lambda ()
                              (if (_expanded?158480_ (gx#stx-e _hd158517_))
                                  (_K158485_
                                   _rest158518_
                                   (cons (gx#stx-e _hd158517_) _r158519_))
                                  (_expand1158483_
                                   _hd158517_
                                   _K158485_
                                   _rest158518_
                                   _r158519_))))
                           (_E158529158558_
                            (lambda ()
                              (if (gx#stx-pair? _e158520158538_)
                                  (let ((_e158534158546_
                                         (gx#syntax-e _e158520158538_)))
                                    (let ((_hd158535158549_
                                           (##car _e158534158546_))
                                          (_tl158536158551_
                                           (##cdr _e158534158546_)))
                                      (let* ((_macro158554_ _hd158535158549_)
                                             (_body158556_ _tl158536158551_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro158554_
                                             gx#syntax-binding?)
                                            (_K158485_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro158554_)
                                                    _hd158517_
                                                    _method158481_)
                                                   _rest158518_)
                                             _r158519_)
                                            (_E158533158542_)))))
                                  (_E158533158542_))))
                           (_E158522158572_
                            (lambda ()
                              (if (gx#stx-pair? _e158520158538_)
                                  (let ((_e158530158562_
                                         (gx#syntax-e _e158520158538_)))
                                    (let ((_hd158531158565_
                                           (##car _e158530158562_))
                                          (_tl158532158567_
                                           (##cdr _e158530158562_)))
                                      (if (eq? (gx#stx-e _hd158531158565_)
                                               'begin:)
                                          (let ((_body158570_
                                                 _tl158532158567_))
                                            (if '#t
                                                (_K158485_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest158518_
                                                  _body158570_)
                                                 _r158519_)
                                                (_E158529158558_)))
                                          (_E158529158558_))))
                                  (_E158529158558_))))
                           (_E158521158599_
                            (lambda ()
                              (if (gx#stx-pair? _e158520158538_)
                                  (let ((_e158523158576_
                                         (gx#syntax-e _e158520158538_)))
                                    (let ((_hd158524158579_
                                           (##car _e158523158576_))
                                          (_tl158525158581_
                                           (##cdr _e158523158576_)))
                                      (if (eq? (gx#stx-e _hd158524158579_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl158525158581_)
                                              (let ((_e158526158584_
                                                     (gx#syntax-e
                                                      _tl158525158581_)))
                                                (let ((_hd158527158587_
                                                       (##car _e158526158584_))
                                                      (_tl158528158589_
                                                       (##cdr _e158526158584_)))
                                                  (let* ((_dphi158592_
                                                          _hd158527158587_)
                                                         (_body158594_
                                                          _tl158528158589_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi158592_)
                                                        (let ((_rbody158597_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K158485_ _body158594_ '()))
                        _current-phi158482_
                        (fx+ (gx#stx-e _dphi158592_) (_current-phi158482_)))))
                  (_K158485_
                   _rest158518_
                   (foldr1 cons _r158519_ _rbody158597_)))
                (_E158522158572_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158522158572_))
                                          (_E158522158572_))))
                                  (_E158522158572_)))))
                      (_E158521158599_)))))
          (let* ((_e158487158494_ _stx158479_)
                 (_E158489158498_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158487158494_)))
                 (_E158488158513_
                  (lambda ()
                    (if (gx#stx-pair? _e158487158494_)
                        (let ((_e158490158502_ (gx#syntax-e _e158487158494_)))
                          (let ((_hd158491158505_ (##car _e158490158502_))
                                (_tl158492158507_ (##cdr _e158490158502_)))
                            (let ((_body158510_ _tl158492158507_))
                              (if '#t
                                  (if (_current-phi158482_)
                                      (_K158485_ _body158510_ '())
                                      (call-with-parameters
                                       (lambda () (_K158485_ _body158510_ '()))
                                       _current-phi158482_
                                       (gx#current-expander-phi)))
                                  (_E158489158498_)))))
                        (_E158489158498_)))))
            (_E158488158513_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx158146_ _internal-expand?158147_)
        (letrec ((_expand1158149_
                  (lambda (_hd158459_ _K158460_ _rest158461_ _r158462_)
                    (if (gx#core-bound-module? _hd158459_)
                        (_import1158150_
                         (gx#syntax-local-e__0 _hd158459_)
                         _K158460_
                         _rest158461_
                         _r158462_)
                        (if (gx#core-library-module-path? _hd158459_)
                            (_import1158150_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd158459_))
                             _K158460_
                             _rest158461_
                             _r158462_)
                            (if (gx#core-library-relative-module-path?
                                 _hd158459_)
                                (_import1158150_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd158459_))
                                 _K158460_
                                 _rest158461_
                                 _r158462_)
                                (let ((_e158464_ (gx#stx-e _hd158459_)))
                                  (if (pair? _e158464_)
                                      (let ((_$e158466_
                                             (gx#stx-e (car _e158464_))))
                                        (if (eq? 'spec: _$e158466_)
                                            (_import-spec158153_
                                             _hd158459_
                                             _K158460_
                                             _rest158461_
                                             _r158462_)
                                            (if (eq? 'in: _$e158466_)
                                                (_import-submodule158151_
                                                 _hd158459_
                                                 _K158460_
                                                 _rest158461_
                                                 _r158462_)
                                                (if (eq? 'runtime: _$e158466_)
                                                    (_import-runtime158152_
                                                     _hd158459_
                                                     _K158460_
                                                     _rest158461_
                                                     _r158462_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx158146_
                                                     _hd158459_)))))
                                      (if (string? _e158464_)
                                          (_import1158150_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd158459_
                                             (gx#stx-source _stx158146_)))
                                           _K158460_
                                           _rest158461_
                                           _r158462_)
                                          (if (##structure-instance-of?
                                               _e158464_
                                               'gx#module-context::t)
                                              (_K158460_
                                               _rest158461_
                                               (cons _e158464_ _r158462_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx158146_
                                               _hd158459_))))))))))
                 (_import1158150_
                  (lambda (_ctx158448_ _K158449_ _rest158450_ _r158451_)
                    (let ((_dphi158453_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K158449_
                       _rest158450_
                       (cons (##structure
                              gx#import-set::t
                              _ctx158448_
                              _dphi158453_
                              (map (lambda (_g158454158456_)
                                     (gx#core-module-export->import__%
                                      _g158454158456_
                                      '#f
                                      _dphi158453_))
                                   (##unchecked-structure-ref
                                    _ctx158448_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r158451_)))))
                 (_import-submodule158151_
                  (lambda (_hd158415_ _K158416_ _rest158417_ _r158418_)
                    (let* ((_e158419158426_ _hd158415_)
                           (_E158421158430_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158419158426_)))
                           (_E158420158444_
                            (lambda ()
                              (if (gx#stx-pair? _e158419158426_)
                                  (let ((_e158422158434_
                                         (gx#syntax-e _e158419158426_)))
                                    (let ((_hd158423158437_
                                           (##car _e158422158434_))
                                          (_tl158424158439_
                                           (##cdr _e158422158434_)))
                                      (let ((_spath158442_ _tl158424158439_))
                                        (if '#t
                                            (_import1158150_
                                             (_import-spec-source158154_
                                              _spath158442_)
                                             _K158416_
                                             _rest158417_
                                             _r158418_)
                                            (_E158421158430_)))))
                                  (_E158421158430_)))))
                      (_E158420158444_))))
                 (_import-runtime158152_
                  (lambda (_hd158382_ _K158383_ _rest158384_ _r158385_)
                    (let* ((_e158386158393_ _hd158382_)
                           (_E158388158397_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158386158393_)))
                           (_E158387158411_
                            (lambda ()
                              (if (gx#stx-pair? _e158386158393_)
                                  (let ((_e158389158401_
                                         (gx#syntax-e _e158386158393_)))
                                    (let ((_hd158390158404_
                                           (##car _e158389158401_))
                                          (_tl158391158406_
                                           (##cdr _e158389158401_)))
                                      (let ((_spath158409_ _tl158391158406_))
                                        (if '#t
                                            (_K158383_
                                             _rest158384_
                                             (cons (_import-spec-source158154_
                                                    _spath158409_)
                                                   _r158385_))
                                            (_E158388158397_)))))
                                  (_E158388158397_)))))
                      (_E158387158411_))))
                 (_import-spec158153_
                  (lambda (_hd158221_ _K158222_ _rest158223_ _r158224_)
                    (let* ((_e158225158242_ _hd158221_)
                           (_E158234158246_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158225158242_)))
                           (_E158227158356_
                            (lambda ()
                              (if (gx#stx-pair? _e158225158242_)
                                  (let ((_e158235158250_
                                         (gx#syntax-e _e158225158242_)))
                                    (let ((_hd158236158253_
                                           (##car _e158235158250_))
                                          (_tl158237158255_
                                           (##cdr _e158235158250_)))
                                      (if (gx#stx-pair? _tl158237158255_)
                                          (let ((_e158238158258_
                                                 (gx#syntax-e
                                                  _tl158237158255_)))
                                            (let ((_hd158239158261_
                                                   (##car _e158238158258_))
                                                  (_tl158240158263_
                                                   (##cdr _e158238158258_)))
                                              (let* ((_path158266_
                                                      _hd158239158261_)
                                                     (_specs158268_
                                                      _tl158240158263_))
                                                (if '#t
                                                    (let ((_src-ctx158270_
                                                           (_import-spec-source158154_
                                                            _path158266_))
                                                          (_exports158271_
                                                           (make-table))
                                                          (_specs158272_
                                                           (gx#syntax->list
                                                            _specs158268_)))
                                                      (for-each
                                                       (lambda (_out158274_)
                                                         (table-set!
                                                          _exports158271_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out158274_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out158274_
                         '4
                         gx#module-export::t
                         '#f))
                  _out158274_))
               (##unchecked-structure-ref
                _src-ctx158270_
                '9
                gx#module-context::t
                '#f))
              (_K158222_
               _rest158223_
               (foldl1 (lambda (_spec158276_ _r158277_)
                         (let* ((_e158278158294_ _spec158276_)
                                (_E158280158298_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e158278158294_)))
                                (_E158279158352_
                                 (lambda ()
                                   (if (gx#stx-pair? _e158278158294_)
                                       (let ((_e158281158302_
                                              (gx#syntax-e _e158278158294_)))
                                         (let ((_hd158282158305_
                                                (##car _e158281158302_))
                                               (_tl158283158307_
                                                (##cdr _e158281158302_)))
                                           (let ((_phi158310_
                                                  _hd158282158305_))
                                             (if (gx#stx-pair?
                                                  _tl158283158307_)
                                                 (let ((_e158284158312_
                                                        (gx#syntax-e
                                                         _tl158283158307_)))
                                                   (let ((_hd158285158315_
                                                          (##car _e158284158312_))
                                                         (_tl158286158317_
                                                          (##cdr _e158284158312_)))
                                                     (let ((_name158320_
                                                            _hd158285158315_))
                                                       (if (gx#stx-pair?
                                                            _tl158286158317_)
                                                           (let ((_e158287158322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl158286158317_)))
                     (let ((_hd158288158325_ (##car _e158287158322_))
                           (_tl158289158327_ (##cdr _e158287158322_)))
                       (let ((_src-phi158330_ _hd158288158325_))
                         (if (gx#stx-pair? _tl158289158327_)
                             (let ((_e158290158332_
                                    (gx#syntax-e _tl158289158327_)))
                               (let ((_hd158291158335_ (##car _e158290158332_))
                                     (_tl158292158337_
                                      (##cdr _e158290158332_)))
                                 (let ((_src-name158340_ _hd158291158335_))
                                   (if (gx#stx-null? _tl158292158337_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi158330_)
                                                (gx#identifier?
                                                 _src-name158340_)
                                                (gx#stx-fixnum? _phi158310_)
                                                (gx#identifier? _name158320_))
                                           (let ((_src-phi158342_
                                                  (gx#stx-e _src-phi158330_))
                                                 (_src-name158343_
                                                  (gx#core-identifier-key
                                                   _src-name158340_))
                                                 (_phi158344_
                                                  (gx#stx-e _phi158310_))
                                                 (_name158345_
                                                  (gx#core-identifier-key
                                                   _name158320_)))
                                             (let ((_$e158347_
                                                    (table-ref
                                                     _exports158271_
                                                     (cons _src-phi158342_
                                                           _src-name158343_)
                                                     '#f)))
                                               (if _$e158347_
                                                   ((lambda (_out158350_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out158350_
                                                             _name158345_
                                                             (fx- _phi158344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi158342_))
                    _r158277_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e158347_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx158146_
                                                    _hd158221_))))
                                           (_E158280158298_))
                                       (_E158280158298_)))))
                             (_E158280158298_)))))
                   (_E158280158298_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E158280158298_)))))
                                       (_E158280158298_)))))
                           (_E158279158352_)))
                       _r158224_
                       _specs158272_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E158234158246_)))))
                                          (_E158234158246_))))
                                  (_E158234158246_))))
                           (_E158226158378_
                            (lambda ()
                              (if (gx#stx-pair? _e158225158242_)
                                  (let ((_e158228158360_
                                         (gx#syntax-e _e158225158242_)))
                                    (let ((_hd158229158363_
                                           (##car _e158228158360_))
                                          (_tl158230158365_
                                           (##cdr _e158228158360_)))
                                      (if (gx#stx-pair? _tl158230158365_)
                                          (let ((_e158231158368_
                                                 (gx#syntax-e
                                                  _tl158230158365_)))
                                            (let ((_hd158232158371_
                                                   (##car _e158231158368_))
                                                  (_tl158233158373_
                                                   (##cdr _e158231158368_)))
                                              (let ((_path158376_
                                                     _hd158232158371_))
                                                (if (gx#stx-null?
                                                     _tl158233158373_)
                                                    (if '#t
                                                        (_K158222_
                                                         _rest158223_
                                                         (cons (_import-spec-source158154_
                                                                _path158376_)
                                                               _r158224_))
                                                        (_E158227158356_))
                                                    (_E158227158356_)))))
                                          (_E158227158356_))))
                                  (_E158227158356_)))))
                      (_E158226158378_))))
                 (_import-spec-source158154_
                  (lambda (_spath158219_)
                    (gx#core-import-nested-module _spath158219_ _stx158146_)))
                 (_import!158155_
                  (lambda (_rbody158168_)
                    (letrec* ((_current-ctx158170_
                               (gx#current-expander-context))
                              (_deps158171_ (make-table 'test: eq?))
                              (_bind!158172_
                               (lambda (_hd158217_)
                                 (gx#core-bind-import!__1
                                  _hd158217_
                                  _current-ctx158170_))))
                      (let _lp158174_ ((_rest158176_ _rbody158168_)
                                       (_body158177_ '()))
                        (let* ((_rest158178158186_ _rest158176_)
                               (_else158180158196_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx158170_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx158170_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx158170_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body158177_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx158194_ _g165492_)
                                     (gx#eval-module _ctx158194_))
                                   _deps158171_)
                                  _body158177_))
                               (_K158182158205_
                                (lambda (_rest158199_ _hd158200_)
                                  (if (##structure-direct-instance-of?
                                       _hd158200_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!158172_ _hd158200_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd158200_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd158200_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps158171_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd158200_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd158200_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!158172_
                                             (##unchecked-structure-ref
                                              _hd158200_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd158200_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps158171_
                                                 (##unchecked-structure-ref
                                                  _hd158200_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e158202_
                                                 (##structure-instance-of?
                                                  _hd158200_
                                                  'gx#module-context::t)))
                                            (if _$e158202_
                                                _$e158202_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx158146_
                                                 _hd158200_)))))
                                  (_lp158174_
                                   _rest158199_
                                   (cons _hd158200_ _body158177_)))))
                          (if (##pair? _rest158178158186_)
                              (let ((_hd158183158208_
                                     (##car _rest158178158186_))
                                    (_tl158184158210_
                                     (##cdr _rest158178158186_)))
                                (let* ((_hd158213_ _hd158183158208_)
                                       (_rest158215_ _tl158184158210_))
                                  (_K158182158205_ _rest158215_ _hd158213_)))
                              (_else158180158196_)))))))
                 (_expanded-import?158156_
                  (lambda (_e158160_)
                    (let ((_$e158162_
                           (##structure-direct-instance-of?
                            _e158160_
                            'gx#import-set::t)))
                      (if _$e158162_
                          _$e158162_
                          (let ((_$e158165_
                                 (##structure-direct-instance-of?
                                  _e158160_
                                  'gx#module-import::t)))
                            (if _$e158165_
                                _$e158165_
                                (##structure-instance-of?
                                 _e158160_
                                 'gx#module-context::t))))))))
          (let ((_rbody158158_
                 (gx#core-expand-import/export
                  _stx158146_
                  _expanded-import?158156_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1158149_)))
            (if _internal-expand?158147_
                (reverse _rbody158158_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!158155_ _rbody158158_))
                 (gx#stx-source _stx158146_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx158472_)
        (let ((_internal-expand?158474_ '#f))
          (gx#core-expand-import%__% _stx158472_ _internal-expand?158474_))))
    (define gx#core-expand-import%
      (lambda _g165494_
        (let ((_g165493_ (##length _g165494_)))
          (cond ((##fx= _g165493_ 1)
                 (apply (lambda (_stx158472_)
                          (gx#core-expand-import%__0 _stx158472_))
                        _g165494_))
                ((##fx= _g165493_ 2)
                 (apply (lambda (_stx158476_ _internal-expand?158477_)
                          (gx#core-expand-import%__%
                           _stx158476_
                           _internal-expand?158477_))
                        _g165494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g165494_))))))
    (define gx#core-import-nested-module
      (lambda (_spath158073_ _where158074_)
        (let* ((_e158075158082_ _spath158073_)
               (_E158077158086_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e158075158082_)))
               (_E158076158141_
                (lambda ()
                  (if (gx#stx-pair? _e158075158082_)
                      (let ((_e158078158090_ (gx#syntax-e _e158075158082_)))
                        (let ((_hd158079158093_ (##car _e158078158090_))
                              (_tl158080158095_ (##cdr _e158078158090_)))
                          (let* ((_origin158098_ _hd158079158093_)
                                 (_sub158100_ _tl158080158095_))
                            (if '#t
                                (let ((_origin-ctx158102_
                                       (if (gx#stx-false? _origin158098_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin158098_))))
                                  (let _lp158104_ ((_rest158106_ _sub158100_)
                                                   (_ctx158107_
                                                    _origin-ctx158102_))
                                    (let* ((_e158108158115_ _rest158106_)
                                           (_E158110158119_
                                            (lambda () _ctx158107_))
                                           (_E158109158137_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e158108158115_)
                                                  (let ((_e158111158123_
                                                         (gx#syntax-e
                                                          _e158108158115_)))
                                                    (let ((_hd158112158126_
                                                           (##car _e158111158123_))
                                                          (_tl158113158128_
                                                           (##cdr _e158111158123_)))
                                                      (let* ((_id158131_
                                                              _hd158112158126_)
                                                             (_rest158133_
                                                              _tl158113158128_))
                                                        (if '#t
                                                            (let ((_bind158135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id158131_
                            '0
                            _ctx158107_)))
                      (if (and (##structure-direct-instance-of?
                                _bind158135_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind158135_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where158074_
                           _spath158073_
                           _id158131_))
                      (_lp158104_
                       _rest158133_
                       (##unchecked-structure-ref
                        _bind158135_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E158110158119_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E158110158119_)))))
                                      (_E158109158137_))))
                                (_E158077158086_)))))
                      (_E158077158086_)))))
          (_E158076158141_))))
    (define gx#core-expand-import-source
      (lambda (_hd158071_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd158071_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx157579_ _internal-expand?157580_)
        (letrec* ((_make-export__165423165424_
                   (lambda (_bind158019_ _phi158020_ _ctx158021_ _name158022_)
                     (let* ((_key158024_
                             (##unchecked-structure-ref
                              _bind158019_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key158026_
                             (if _name158022_
                                 (gx#core-identifier-key _name158022_)
                                 _key158024_)))
                       (##structure
                        gx#module-export::t
                        _ctx158021_
                        _key158024_
                        _phi158020_
                        _export-key158026_
                        (let ((_$e158029_
                               (##structure-instance-of?
                                _bind158019_
                                'gx#extern-binding::t)))
                          (if _$e158029_
                              _$e158029_
                              (##structure-direct-instance-of?
                               _bind158019_
                               'gx#import-binding::t)))))))
                  (_make-export__0__165425165428_
                   (lambda (_bind158035_)
                     (let* ((_phi158037_ (gx#current-export-expander-phi))
                            (_ctx158039_ (gx#current-expander-context))
                            (_name158041_ '#f))
                       (_make-export__165423165424_
                        _bind158035_
                        _phi158037_
                        _ctx158039_
                        _name158041_))))
                  (_make-export__1__165426165429_
                   (lambda (_bind158043_ _phi158044_)
                     (let* ((_ctx158046_ (gx#current-expander-context))
                            (_name158048_ '#f))
                       (_make-export__165423165424_
                        _bind158043_
                        _phi158044_
                        _ctx158046_
                        _name158048_))))
                  (_make-export__2__165427165430_
                   (lambda (_bind158050_ _phi158051_ _ctx158052_)
                     (let ((_name158054_ '#f))
                       (_make-export__165423165424_
                        _bind158050_
                        _phi158051_
                        _ctx158052_
                        _name158054_))))
                  (_make-export157582_
                   (lambda _g165496_
                     (let ((_g165495_ (##length _g165496_)))
                       (cond ((##fx= _g165495_ 1)
                              (apply (lambda (_bind158035_)
                                       (_make-export__0__165425165428_
                                        _bind158035_))
                                     _g165496_))
                             ((##fx= _g165495_ 2)
                              (apply (lambda (_bind158043_ _phi158044_)
                                       (_make-export__1__165426165429_
                                        _bind158043_
                                        _phi158044_))
                                     _g165496_))
                             ((##fx= _g165495_ 3)
                              (apply (lambda (_bind158050_
                                              _phi158051_
                                              _ctx158052_)
                                       (_make-export__2__165427165430_
                                        _bind158050_
                                        _phi158051_
                                        _ctx158052_))
                                     _g165496_))
                             ((##fx= _g165495_ 4)
                              (apply (lambda (_bind158056_
                                              _phi158057_
                                              _ctx158058_
                                              _name158059_)
                                       (_make-export__165423165424_
                                        _bind158056_
                                        _phi158057_
                                        _ctx158058_
                                        _name158059_))
                                     _g165496_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g165496_))))))
                  (_expand1157583_
                   (lambda (_hd157732_ _K157733_ _rest157734_ _r157735_)
                     (let* ((_e157736157768_ _hd157732_)
                            (_E157763157772_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx157579_
                                _hd157732_)))
                            (_E157753157851_
                             (lambda ()
                               (if (gx#stx-pair? _e157736157768_)
                                   (let ((_e157764157776_
                                          (gx#syntax-e _e157736157768_)))
                                     (let ((_hd157765157779_
                                            (##car _e157764157776_))
                                           (_tl157766157781_
                                            (##cdr _e157764157776_)))
                                       (if (eq? (gx#stx-e _hd157765157779_)
                                                'import:)
                                           (let ((_in157784_ _tl157766157781_))
                                             (if (gx#stx-list? _in157784_)
                                                 (let _lp157786_ ((_in-rest157788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in157784_)
                          (_r157789_ _r157735_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e157790157797_
                                                           _in-rest157788_)
                                                          (_E157792157801_
                                                           (lambda ()
                                                             (_K157733_
                                                              _rest157734_
                                                              _r157789_)))
                                                          (_E157791157847_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e157790157797_)
                         (let ((_e157793157805_ (gx#syntax-e _e157790157797_)))
                           (let ((_hd157794157808_ (##car _e157793157805_))
                                 (_tl157795157810_ (##cdr _e157793157805_)))
                             (let* ((_hd157813_ _hd157794157808_)
                                    (_in-rest157815_ _tl157795157810_))
                               (if '#t
                                   (let ((_src157845_
                                          (if (gx#core-bound-module?
                                               _hd157813_)
                                              (gx#syntax-local-e__0 _hd157813_)
                                              (if (gx#core-library-module-path?
                                                   _hd157813_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd157813_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd157813_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd157813_))
                                                      (if (gx#stx-string?
                                                           _hd157813_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd157813_
                                                            (gx#stx-source
                                                             _stx157579_)))
                                                          (let* ((_e157816157823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd157813_)
                         (_E157818157827_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx157579_
                             _hd157813_)))
                         (_E157817157841_
                          (lambda ()
                            (if (gx#stx-pair? _e157816157823_)
                                (let ((_e157819157831_
                                       (gx#syntax-e _e157816157823_)))
                                  (let ((_hd157820157834_
                                         (##car _e157819157831_))
                                        (_tl157821157836_
                                         (##cdr _e157819157831_)))
                                    (if (eq? (gx#stx-e _hd157820157834_) 'in:)
                                        (let ((_spath157839_ _tl157821157836_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath157839_
                                               _stx157579_)
                                              (_E157818157827_)))
                                        (_E157818157827_))))
                                (_E157818157827_)))))
                    (_E157817157841_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp157786_
                                      _in-rest157815_
                                      (_export-imports157584_
                                       _src157845_
                                       _r157789_)))
                                   (_E157792157801_)))))
                         (_E157792157801_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E157791157847_)))
                                                 (_E157763157772_)))
                                           (_E157763157772_))))
                                   (_E157763157772_))))
                            (_E157740157890_
                             (lambda ()
                               (if (gx#stx-pair? _e157736157768_)
                                   (let ((_e157754157855_
                                          (gx#syntax-e _e157736157768_)))
                                     (let ((_hd157755157858_
                                            (##car _e157754157855_))
                                           (_tl157756157860_
                                            (##cdr _e157754157855_)))
                                       (if (eq? (gx#stx-e _hd157755157858_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl157756157860_)
                                               (let ((_e157757157863_
                                                      (gx#syntax-e
                                                       _tl157756157860_)))
                                                 (let ((_hd157758157866_
                                                        (##car _e157757157863_))
                                                       (_tl157759157868_
                                                        (##cdr _e157757157863_)))
                                                   (let ((_id157871_
                                                          _hd157758157866_))
                                                     (if (gx#stx-pair?
                                                          _tl157759157868_)
                                                         (let ((_e157760157873_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157759157868_)))
                   (let ((_hd157761157876_ (##car _e157760157873_))
                         (_tl157762157878_ (##cdr _e157760157873_)))
                     (let ((_name157881_ _hd157761157876_))
                       (if (gx#stx-null? _tl157762157878_)
                           (if '#t
                               (let* ((_phi157883_
                                       (gx#current-export-expander-phi))
                                      (_$e157885_
                                       (gx#core-resolve-identifier__1
                                        _id157871_
                                        _phi157883_)))
                                 (if _$e157885_
                                     ((lambda (_bind157888_)
                                        (_K157733_
                                         _rest157734_
                                         (cons (_make-export__165423165424_
                                                _bind157888_
                                                _phi157883_
                                                (gx#current-expander-context)
                                                _name157881_)
                                               _r157735_)))
                                      _$e157885_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx157579_
                                      _hd157732_
                                      _id157871_)))
                               (_E157753157851_))
                           (_E157753157851_)))))
                 (_E157753157851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157753157851_))
                                           (_E157753157851_))))
                                   (_E157753157851_))))
                            (_E157739157939_
                             (lambda ()
                               (if (gx#stx-pair? _e157736157768_)
                                   (let ((_e157741157894_
                                          (gx#syntax-e _e157736157768_)))
                                     (let ((_hd157742157897_
                                            (##car _e157741157894_))
                                           (_tl157743157899_
                                            (##cdr _e157741157894_)))
                                       (if (eq? (gx#stx-e _hd157742157897_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl157743157899_)
                                               (let ((_e157744157902_
                                                      (gx#syntax-e
                                                       _tl157743157899_)))
                                                 (let ((_hd157745157905_
                                                        (##car _e157744157902_))
                                                       (_tl157746157907_
                                                        (##cdr _e157744157902_)))
                                                   (let ((_phi157910_
                                                          _hd157745157905_))
                                                     (if (gx#stx-pair?
                                                          _tl157746157907_)
                                                         (let ((_e157747157912_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157746157907_)))
                   (let ((_hd157748157915_ (##car _e157747157912_))
                         (_tl157749157917_ (##cdr _e157747157912_)))
                     (let ((_id157920_ _hd157748157915_))
                       (if (gx#stx-pair? _tl157749157917_)
                           (let ((_e157750157922_
                                  (gx#syntax-e _tl157749157917_)))
                             (let ((_hd157751157925_ (##car _e157750157922_))
                                   (_tl157752157927_ (##cdr _e157750157922_)))
                               (let ((_name157930_ _hd157751157925_))
                                 (if (gx#stx-null? _tl157752157927_)
                                     (if (and (gx#stx-fixnum? _phi157910_)
                                              (gx#identifier? _id157920_)
                                              (gx#identifier? _name157930_))
                                         (let* ((_phi157932_
                                                 (gx#stx-e _phi157910_))
                                                (_$e157934_
                                                 (gx#core-resolve-identifier__1
                                                  _id157920_
                                                  _phi157932_)))
                                           (if _$e157934_
                                               ((lambda (_bind157937_)
                                                  (_K157733_
                                                   _rest157734_
                                                   (cons (_make-export__165423165424_
                                                          _bind157937_
                                                          _phi157932_
                                                          (gx#current-expander-context)
                                                          _name157930_)
                                                         _r157735_)))
                                                _$e157934_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx157579_
                                                _hd157732_
                                                _id157920_)))
                                         (_E157740157890_))
                                     (_E157740157890_)))))
                           (_E157740157890_)))))
                 (_E157740157890_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157740157890_))
                                           (_E157740157890_))))
                                   (_E157740157890_))))
                            (_E157738157950_
                             (lambda ()
                               (let ((_id157943_ _e157736157768_))
                                 (if (gx#identifier? _id157943_)
                                     (let ((_$e157945_
                                            (gx#core-resolve-identifier__1
                                             _id157943_
                                             (gx#current-export-expander-phi))))
                                       (if _$e157945_
                                           ((lambda (_bind157948_)
                                              (_K157733_
                                               _rest157734_
                                               (cons (_make-export__0__165425165428_
                                                      _bind157948_)
                                                     _r157735_)))
                                            _$e157945_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx157579_
                                            _hd157732_)))
                                     (_E157739157939_)))))
                            (_E157737158014_
                             (lambda ()
                               (if (eq? (gx#stx-e _e157736157768_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx157954_
                                               (gx#current-expander-context))
                                              (_current-phi157956_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx157958_
                                               (gx#core-context-shift
                                                _current-ctx157954_
                                                _current-phi157956_))
                                              (_phi-bind157960_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx157958_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp157963_ ((_bind-rest157965_
                                                           _phi-bind157960_)
                                                          (_set157966_ '()))
                                           (let* ((_bind-rest157967157977_
                                                   _bind-rest157965_)
                                                  (_else157969157985_
                                                   (lambda ()
                                                     (_K157733_
                                                      _rest157734_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi157956_
                                                             _set157966_)
                                                            _r157735_))))
                                                  (_K157971157995_
                                                   (lambda (_bind-rest157988_
                                                            _bind157989_
                                                            _key157990_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind157989_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind157989_))
                                                         (_lp157963_
                                                          _bind-rest157988_
                                                          _set157966_)
                                                         (_lp157963_
                                                          _bind-rest157988_
                                                          (cons (_make-export__2__165427165430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind157989_
                         _current-phi157956_
                         _current-ctx157954_)
                        _set157966_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest157967157977_)
                                                 (let ((_hd157972157998_
                                                        (##car _bind-rest157967157977_))
                                                       (_tl157973158000_
                                                        (##cdr _bind-rest157967157977_)))
                                                   (if (##pair? _hd157972157998_)
                                                       (let ((_hd157974158003_
                                                              (##car _hd157972157998_))
                                                             (_tl157975158005_
                                                              (##cdr _hd157972157998_)))
                                                         (let* ((_key158008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd157974158003_)
                        (_bind158010_ _tl157975158005_)
                        (_bind-rest158012_ _tl157973158000_))
                   (_K157971157995_
                    _bind-rest158012_
                    _bind158010_
                    _key158008_)))
               (_else157969157985_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else157969157985_)))))
                                       (_E157738157950_))
                                   (_E157738157950_)))))
                       (_E157737158014_))))
                  (_export-imports157584_
                   (lambda (_src157608_ _r157609_)
                     (letrec* ((_current-ctx157611_
                                (gx#current-expander-context))
                               (_current-phi157612_
                                (gx#current-export-expander-phi))
                               (_import->export157613_
                                (lambda (_in157694_)
                                  (let* ((_in157695157703_ _in157694_)
                                         (_E157697157707_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in157695157703_)))
                                         (_K157698157714_
                                          (lambda (_phi157710_
                                                   _key157711_
                                                   _out157712_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx157611_
                                             _key157711_
                                             _phi157710_
                                             _key157711_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in157695157703_
                                         'gx#module-import::t)
                                        (let* ((_e157699157717_
                                                (##unchecked-structure-ref
                                                 _in157695157703_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out157720_ _e157699157717_)
                                               (_e157700157722_
                                                (##unchecked-structure-ref
                                                 _in157695157703_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key157725_ _e157700157722_)
                                               (_e157701157727_
                                                (##unchecked-structure-ref
                                                 _in157695157703_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi157730_ _e157701157727_))
                                          (_K157698157714_
                                           _phi157730_
                                           _key157725_
                                           _out157720_))
                                        (_E157697157707_)))))
                               (_fold-e157614_
                                (lambda (_in157616_ _r157617_)
                                  (let* ((_in157618157632_ _in157616_)
                                         (_else157621157640_
                                          (lambda () _r157617_)))
                                    (let ((_K157627157676_
                                           (lambda (_phi157672_
                                                    _key157673_
                                                    _out157674_)
                                             (if (and (fx= _phi157672_
                                                           _current-phi157612_)
                                                      (eq? _src157608_
                                                           (##unchecked-structure-ref
                                                            _out157674_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export157613_
                                                        _in157616_)
                                                       _r157617_)
                                                 _r157617_)))
                                          (_K157623157651_
                                           (lambda (_imports157644_
                                                    _phi157645_
                                                    _ctx157646_)
                                             (if (and (fx= _phi157645_
                                                           _current-phi157612_)
                                                      (eq? _src157608_
                                                           _ctx157646_))
                                                 (foldl1 (lambda (_in157648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r157649_)
                   (cons (_import->export157613_ _in157648_) _r157649_))
                 _r157617_
                 _imports157644_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r157617_))))
                                      (let ((_try-match157620157669_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in157618157632_
                                                    'gx#import-set::t)
                                                   (let* ((_e157624157654_
                                                           (##unchecked-structure-ref
                                                            _in157618157632_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157625157659_
                                                           (##unchecked-structure-ref
                                                            _in157618157632_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157626157664_
                                                           (##unchecked-structure-ref
                                                            _in157618157632_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx157657_
                                                            _e157624157654_)
                                                           (_phi157662_
                                                            _e157625157659_)
                                                           (_imports157667_
                                                            _e157626157664_))
                                                       (_K157623157651_
                                                        _imports157667_
                                                        _phi157662_
                                                        _ctx157657_)))
                                                   (_else157621157640_)))))
                                        (if (##structure-direct-instance-of?
                                             _in157618157632_
                                             'gx#module-import::t)
                                            (let* ((_e157628157679_
                                                    (##unchecked-structure-ref
                                                     _in157618157632_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157629157684_
                                                    (##unchecked-structure-ref
                                                     _in157618157632_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157630157689_
                                                    (##unchecked-structure-ref
                                                     _in157618157632_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out157682_
                                                     _e157628157679_)
                                                    (_key157687_
                                                     _e157629157684_)
                                                    (_phi157692_
                                                     _e157630157689_))
                                                (_K157627157676_
                                                 _phi157692_
                                                 _key157687_
                                                 _out157682_)))
                                            (_try-match157620157669_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src157608_
                              _current-phi157612_
                              (foldl1 _fold-e157614_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx157611_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r157609_))))
                  (_export!157585_
                   (lambda (_rbody157598_)
                     (letrec* ((_current-ctx157600_
                                (gx#current-expander-context))
                               (_fold-e157601_
                                (lambda (_out157605_ _r157606_)
                                  (if (##structure-direct-instance-of?
                                       _out157605_
                                       'gx#module-export::t)
                                      (cons _out157605_ _r157606_)
                                      (if (##structure-direct-instance-of?
                                           _out157605_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r157606_
                                                  (##unchecked-structure-ref
                                                   _out157605_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r157606_)))))
                       (let ((_body157603_ (reverse _rbody157598_)))
                         (##unchecked-structure-set!
                          _current-ctx157600_
                          (foldl1 _fold-e157601_
                                  (##unchecked-structure-ref
                                   _current-ctx157600_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body157603_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body157603_))))
                  (_expanded-export?157586_
                   (lambda (_e157593_)
                     (let ((_$e157595_
                            (##structure-direct-instance-of?
                             _e157593_
                             'gx#module-export::t)))
                       (if _$e157595_
                           _$e157595_
                           (##structure-direct-instance-of?
                            _e157593_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?157580_)
              (let ((_rbody157591_
                     (gx#core-expand-import/export
                      _stx157579_
                      _expanded-export?157586_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1157583_)))
                (if _internal-expand?157580_
                    (reverse _rbody157591_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!157585_ _rbody157591_))
                     (gx#stx-source _stx157579_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx157579_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx157579_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx158064_)
        (let ((_internal-expand?158066_ '#f))
          (gx#core-expand-export%__% _stx158064_ _internal-expand?158066_))))
    (define gx#core-expand-export%
      (lambda _g165498_
        (let ((_g165497_ (##length _g165498_)))
          (cond ((##fx= _g165497_ 1)
                 (apply (lambda (_stx158064_)
                          (gx#core-expand-export%__0 _stx158064_))
                        _g165498_))
                ((##fx= _g165497_ 2)
                 (apply (lambda (_stx158068_ _internal-expand?158069_)
                          (gx#core-expand-export%__%
                           _stx158068_
                           _internal-expand?158069_))
                        _g165498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g165498_))))))
    (define gx#core-expand-export-source
      (lambda (_hd157576_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd157576_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx157546_)
        (let* ((_e157547157554_ _stx157546_)
               (_E157549157558_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157547157554_)))
               (_E157548157572_
                (lambda ()
                  (if (gx#stx-pair? _e157547157554_)
                      (let ((_e157550157562_ (gx#syntax-e _e157547157554_)))
                        (let ((_hd157551157565_ (##car _e157550157562_))
                              (_tl157552157567_ (##cdr _e157550157562_)))
                          (let ((_body157570_ _tl157552157567_))
                            (if (gx#identifier-list? _body157570_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body157570_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body157570_))
                                   (gx#stx-source _stx157546_)))
                                (_E157549157558_)))))
                      (_E157549157558_)))))
          (_E157548157572_))))
    (define gx#core-bind-feature!__%
      (lambda (_id157512_ _private?157513_ _phi157514_ _ctx157515_)
        (gx#core-bind-syntax!__%
         _id157512_
         ((if _private?157513_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id157512_))
         _private?157513_
         _phi157514_
         _ctx157515_)))
    (define gx#core-bind-feature!__0
      (lambda (_id157520_)
        (let* ((_private?157522_ '#f)
               (_phi157524_ (gx#current-expander-phi))
               (_ctx157526_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157520_
           _private?157522_
           _phi157524_
           _ctx157526_))))
    (define gx#core-bind-feature!__1
      (lambda (_id157528_ _private?157529_)
        (let* ((_phi157531_ (gx#current-expander-phi))
               (_ctx157533_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157528_
           _private?157529_
           _phi157531_
           _ctx157533_))))
    (define gx#core-bind-feature!__2
      (lambda (_id157535_ _private?157536_ _phi157537_)
        (let ((_ctx157539_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157535_
           _private?157536_
           _phi157537_
           _ctx157539_))))
    (define gx#core-bind-feature!
      (lambda _g165500_
        (let ((_g165499_ (##length _g165500_)))
          (cond ((##fx= _g165499_ 1)
                 (apply (lambda (_id157520_)
                          (gx#core-bind-feature!__0 _id157520_))
                        _g165500_))
                ((##fx= _g165499_ 2)
                 (apply (lambda (_id157528_ _private?157529_)
                          (gx#core-bind-feature!__1
                           _id157528_
                           _private?157529_))
                        _g165500_))
                ((##fx= _g165499_ 3)
                 (apply (lambda (_id157535_ _private?157536_ _phi157537_)
                          (gx#core-bind-feature!__2
                           _id157535_
                           _private?157536_
                           _phi157537_))
                        _g165500_))
                ((##fx= _g165499_ 4)
                 (apply (lambda (_id157541_
                                 _private?157542_
                                 _phi157543_
                                 _ctx157544_)
                          (gx#core-bind-feature!__%
                           _id157541_
                           _private?157542_
                           _phi157543_
                           _ctx157544_))
                        _g165500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g165500_))))))))
