(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707651234)
  (begin
    (declare (not safe))
    (define gx#module-import::t
      (make-class-type
       'gx#module-import::t
       'module-import
       (list)
       '(source name phi weak?)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gx#module-import? (make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _$args160565_
        (apply make-class-instance gx#module-import::t _$args160565_)))
    (define gx#module-import-source
      (make-class-slot-accessor gx#module-import::t 'source))
    (define gx#module-import-name
      (make-class-slot-accessor gx#module-import::t 'name))
    (define gx#module-import-phi
      (make-class-slot-accessor gx#module-import::t 'phi))
    (define gx#module-import-weak?
      (make-class-slot-accessor gx#module-import::t 'weak?))
    (define gx#module-import-source-set!
      (make-class-slot-mutator gx#module-import::t 'source))
    (define gx#module-import-name-set!
      (make-class-slot-mutator gx#module-import::t 'name))
    (define gx#module-import-phi-set!
      (make-class-slot-mutator gx#module-import::t 'phi))
    (define gx#module-import-weak?-set!
      (make-class-slot-mutator gx#module-import::t 'weak?))
    (define gx#&module-import-source
      (make-class-slot-unchecked-accessor gx#module-import::t 'source))
    (define gx#&module-import-name
      (make-class-slot-unchecked-accessor gx#module-import::t 'name))
    (define gx#&module-import-phi
      (make-class-slot-unchecked-accessor gx#module-import::t 'phi))
    (define gx#&module-import-weak?
      (make-class-slot-unchecked-accessor gx#module-import::t 'weak?))
    (define gx#&module-import-source-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'source))
    (define gx#&module-import-name-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'name))
    (define gx#&module-import-phi-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'phi))
    (define gx#&module-import-weak?-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'weak?))
    (define gx#module-export::t
      (make-class-type
       'gx#module-export::t
       'module-export
       (list)
       '(context key phi name weak?)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gx#module-export? (make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _$args160562_
        (apply make-class-instance gx#module-export::t _$args160562_)))
    (define gx#module-export-context
      (make-class-slot-accessor gx#module-export::t 'context))
    (define gx#module-export-key
      (make-class-slot-accessor gx#module-export::t 'key))
    (define gx#module-export-phi
      (make-class-slot-accessor gx#module-export::t 'phi))
    (define gx#module-export-name
      (make-class-slot-accessor gx#module-export::t 'name))
    (define gx#module-export-weak?
      (make-class-slot-accessor gx#module-export::t 'weak?))
    (define gx#module-export-context-set!
      (make-class-slot-mutator gx#module-export::t 'context))
    (define gx#module-export-key-set!
      (make-class-slot-mutator gx#module-export::t 'key))
    (define gx#module-export-phi-set!
      (make-class-slot-mutator gx#module-export::t 'phi))
    (define gx#module-export-name-set!
      (make-class-slot-mutator gx#module-export::t 'name))
    (define gx#module-export-weak?-set!
      (make-class-slot-mutator gx#module-export::t 'weak?))
    (define gx#&module-export-context
      (make-class-slot-unchecked-accessor gx#module-export::t 'context))
    (define gx#&module-export-key
      (make-class-slot-unchecked-accessor gx#module-export::t 'key))
    (define gx#&module-export-phi
      (make-class-slot-unchecked-accessor gx#module-export::t 'phi))
    (define gx#&module-export-name
      (make-class-slot-unchecked-accessor gx#module-export::t 'name))
    (define gx#&module-export-weak?
      (make-class-slot-unchecked-accessor gx#module-export::t 'weak?))
    (define gx#&module-export-context-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'context))
    (define gx#&module-export-key-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'key))
    (define gx#&module-export-phi-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'phi))
    (define gx#&module-export-name-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'name))
    (define gx#&module-export-weak?-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'weak?))
    (define gx#import-set::t
      (make-class-type
       'gx#import-set::t
       'import-set
       (list)
       '(source phi imports)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gx#import-set? (make-class-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _$args160559_
        (apply make-class-instance gx#import-set::t _$args160559_)))
    (define gx#import-set-source
      (make-class-slot-accessor gx#import-set::t 'source))
    (define gx#import-set-phi (make-class-slot-accessor gx#import-set::t 'phi))
    (define gx#import-set-imports
      (make-class-slot-accessor gx#import-set::t 'imports))
    (define gx#import-set-source-set!
      (make-class-slot-mutator gx#import-set::t 'source))
    (define gx#import-set-phi-set!
      (make-class-slot-mutator gx#import-set::t 'phi))
    (define gx#import-set-imports-set!
      (make-class-slot-mutator gx#import-set::t 'imports))
    (define gx#&import-set-source
      (make-class-slot-unchecked-accessor gx#import-set::t 'source))
    (define gx#&import-set-phi
      (make-class-slot-unchecked-accessor gx#import-set::t 'phi))
    (define gx#&import-set-imports
      (make-class-slot-unchecked-accessor gx#import-set::t 'imports))
    (define gx#&import-set-source-set!
      (make-class-slot-unchecked-mutator gx#import-set::t 'source))
    (define gx#&import-set-phi-set!
      (make-class-slot-unchecked-mutator gx#import-set::t 'phi))
    (define gx#&import-set-imports-set!
      (make-class-slot-unchecked-mutator gx#import-set::t 'imports))
    (define gx#export-set::t
      (make-class-type
       'gx#export-set::t
       'export-set
       (list)
       '(source phi exports)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gx#export-set? (make-class-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _$args160556_
        (apply make-class-instance gx#export-set::t _$args160556_)))
    (define gx#export-set-source
      (make-class-slot-accessor gx#export-set::t 'source))
    (define gx#export-set-phi (make-class-slot-accessor gx#export-set::t 'phi))
    (define gx#export-set-exports
      (make-class-slot-accessor gx#export-set::t 'exports))
    (define gx#export-set-source-set!
      (make-class-slot-mutator gx#export-set::t 'source))
    (define gx#export-set-phi-set!
      (make-class-slot-mutator gx#export-set::t 'phi))
    (define gx#export-set-exports-set!
      (make-class-slot-mutator gx#export-set::t 'exports))
    (define gx#&export-set-source
      (make-class-slot-unchecked-accessor gx#export-set::t 'source))
    (define gx#&export-set-phi
      (make-class-slot-unchecked-accessor gx#export-set::t 'phi))
    (define gx#&export-set-exports
      (make-class-slot-unchecked-accessor gx#export-set::t 'exports))
    (define gx#&export-set-source-set!
      (make-class-slot-unchecked-mutator gx#export-set::t 'source))
    (define gx#&export-set-phi-set!
      (make-class-slot-unchecked-mutator gx#export-set::t 'phi))
    (define gx#&export-set-exports-set!
      (make-class-slot-unchecked-mutator gx#export-set::t 'exports))
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
      (lambda _$args160553_
        (apply make-class-instance gx#import-expander::t _$args160553_)))
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
      (lambda _$args160550_
        (apply make-class-instance gx#export-expander::t _$args160550_)))
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
      (lambda _$args160547_
        (apply make-class-instance
               gx#import-export-expander::t
               _$args160547_)))
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
      (lambda (_path160544_ _fun160545_)
        (call-with-input-file
         (cons 'path: (cons _path160544_ gx#source-file-settings))
         _fun160545_)))
    (define gx#module-context:::init!
      (lambda (_self160538_ _id160539_ _super160540_ _ns160541_ _path160542_)
        (if (##fx< '11 (##structure-length _self160538_))
            (begin
              (##unchecked-structure-set!
               _self160538_
               _id160539_
               '1
               (##structure-type _self160538_)
               '#f)
              (##unchecked-structure-set!
               _self160538_
               (make-table 'test: eq?)
               '2
               (##structure-type _self160538_)
               '#f)
              (##unchecked-structure-set!
               _self160538_
               _super160540_
               '3
               (##structure-type _self160538_)
               '#f)
              (##unchecked-structure-set!
               _self160538_
               '#f
               '4
               (##structure-type _self160538_)
               '#f)
              (##unchecked-structure-set!
               _self160538_
               '#f
               '5
               (##structure-type _self160538_)
               '#f)
              (##unchecked-structure-set!
               _self160538_
               _ns160541_
               '6
               (##structure-type _self160538_)
               '#f)
              (##unchecked-structure-set!
               _self160538_
               _path160542_
               '7
               (##structure-type _self160538_)
               '#f)
              (##unchecked-structure-set!
               _self160538_
               '()
               '8
               (##structure-type _self160538_)
               '#f)
              (##unchecked-structure-set!
               _self160538_
               '()
               '9
               (##structure-type _self160538_)
               '#f)
              (##unchecked-structure-set!
               _self160538_
               '#f
               '10
               (##structure-type _self160538_)
               '#f)
              (##unchecked-structure-set!
               _self160538_
               '#f
               '11
               (##structure-type _self160538_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160538_
                   '11
                   (##vector-length _self160538_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self160382_ _ctx160383_ _root160384_)
        (let ((_super160392_
               (let ((_$e160386_ _root160384_))
                 (if _$e160386_
                     _$e160386_
                     (let ((_$e160389_ (gx#core-context-root__0)))
                       (if _$e160389_
                           _$e160389_
                           (let ((__obj165075
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor165076
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor165076
                                   (__constructor165076 __obj165075)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj165075)))))))
          (if _ctx160383_
              (let ((_id160395_
                     (let ((__obj165077 _ctx160383_))
                       (if (##structure-direct-instance-of?
                            __obj165077
                            'gx#expander-context::t)
                           (##unchecked-structure-ref
                            __obj165077
                            '1
                            gx#expander-context::t
                            '#f)
                           (class-slot-ref
                            gx#expander-context::t
                            __obj165077
                            'id))))
                    (_path160396_
                     (let ((__obj165078 _ctx160383_))
                       (if (##structure-direct-instance-of?
                            __obj165078
                            'gx#module-context::t)
                           (##unchecked-structure-ref
                            __obj165078
                            '7
                            gx#module-context::t
                            '#f)
                           (class-slot-ref
                            gx#module-context::t
                            __obj165078
                            'path))))
                    (_in160397_
                     (map gx#core-module-export->import
                          (let ((__obj165079 _ctx160383_))
                            (if (##structure-direct-instance-of?
                                 __obj165079
                                 'gx#module-context::t)
                                (##unchecked-structure-ref
                                 __obj165079
                                 '9
                                 gx#module-context::t
                                 '#f)
                                (class-slot-ref
                                 gx#module-context::t
                                 __obj165079
                                 'export)))))
                    (_e160398_
                     (make-promise (lambda () (gx#eval-module _ctx160383_)))))
                (if (##fx< '8 (##structure-length _self160382_))
                    (begin
                      (##unchecked-structure-set!
                       _self160382_
                       _id160395_
                       '1
                       (##structure-type _self160382_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160382_
                       (make-table 'test: eq? 'size: (length _in160397_))
                       '2
                       (##structure-type _self160382_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160382_
                       _super160392_
                       '3
                       (##structure-type _self160382_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160382_
                       '#f
                       '4
                       (##structure-type _self160382_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160382_
                       '#f
                       '5
                       (##structure-type _self160382_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160382_
                       _path160396_
                       '6
                       (##structure-type _self160382_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160382_
                       _in160397_
                       '7
                       (##structure-type _self160382_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160382_
                       _e160398_
                       '8
                       (##structure-type _self160382_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self160382_
                           '8
                           (##vector-length _self160382_)))
                (for-each
                 (lambda (_g160399160401_)
                   (gx#core-bind-weak-import!__% _g160399160401_ _self160382_))
                 _in160397_))
              (if (##fx< '8 (##structure-length _self160382_))
                  (begin
                    (##unchecked-structure-set!
                     _self160382_
                     '#f
                     '1
                     (##structure-type _self160382_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160382_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self160382_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160382_
                     _super160392_
                     '3
                     (##structure-type _self160382_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160382_
                     '#f
                     '4
                     (##structure-type _self160382_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160382_
                     '#f
                     '5
                     (##structure-type _self160382_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160382_
                     '#f
                     '6
                     (##structure-type _self160382_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160382_
                     '()
                     '7
                     (##structure-type _self160382_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160382_
                     '#f
                     '8
                     (##structure-type _self160382_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self160382_
                         '8
                         (##vector-length _self160382_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self160407_ _ctx160408_)
        (let ((_root160410_ '#f))
          (gx#prelude-context:::init!__%
           _self160407_
           _ctx160408_
           _root160410_))))
    (define gx#prelude-context:::init!
      (lambda _g165096_
        (let ((_g165095_ (##length _g165096_)))
          (cond ((##fx= _g165095_ 2)
                 (apply (lambda (_self160407_ _ctx160408_)
                          (gx#prelude-context:::init!__0
                           _self160407_
                           _ctx160408_))
                        _g165096_))
                ((##fx= _g165095_ 3)
                 (apply (lambda (_self160412_ _ctx160413_ _root160414_)
                          (gx#prelude-context:::init!__%
                           _self160412_
                           _ctx160413_
                           _root160414_))
                        _g165096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g165096_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self160256_ _e160257_)
        (if (##fx< '3 (##structure-length _self160256_))
            (begin
              (##unchecked-structure-set!
               _self160256_
               _e160257_
               '1
               (##structure-type _self160256_)
               '#f)
              (##unchecked-structure-set!
               _self160256_
               (gx#current-expander-context)
               '2
               (##structure-type _self160256_)
               '#f)
              (##unchecked-structure-set!
               _self160256_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self160256_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160256_
                   '3
                   (##vector-length _self160256_)))))
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
      (lambda (_g159882159885_ _g159883159887_)
        (gx#core-apply-user-expander__%
         _g159882159885_
         _g159883159887_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g159753159756_ _g159754159758_)
        (gx#core-apply-user-expander__%
         _g159753159756_
         _g159754159758_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx159624_)
        (let* ((_path159626_
                (let ((__obj165080 _ctx159624_))
                  (if (##structure-direct-instance-of?
                       __obj165080
                       'gx#module-context::t)
                      (##unchecked-structure-ref
                       __obj165080
                       '7
                       gx#module-context::t
                       '#f)
                      (class-slot-ref
                       gx#module-context::t
                       __obj165080
                       'path))))
               (_path159628_
                (if (pair? _path159626_) (last _path159626_) _path159626_)))
          (if (string? _path159628_) _path159628_ '#f))))
    (define gx#import-module__%
      (lambda (_path159600_ _reload?159601_ _eval?159602_)
        (let ((_ctx159604_
               ((gx#current-expander-module-import)
                _path159600_
                _reload?159601_)))
          (if (and _ctx159604_ _eval?159602_)
              (gx#eval-module _ctx159604_)
              '#!void)
          _ctx159604_)))
    (define gx#import-module__0
      (lambda (_path159609_)
        (let* ((_reload?159611_ '#f) (_eval?159613_ '#f))
          (gx#import-module__% _path159609_ _reload?159611_ _eval?159613_))))
    (define gx#import-module__1
      (lambda (_path159615_ _reload?159616_)
        (let ((_eval?159618_ '#f))
          (gx#import-module__% _path159615_ _reload?159616_ _eval?159618_))))
    (define gx#import-module
      (lambda _g165098_
        (let ((_g165097_ (##length _g165098_)))
          (cond ((##fx= _g165097_ 1)
                 (apply (lambda (_path159609_)
                          (gx#import-module__0 _path159609_))
                        _g165098_))
                ((##fx= _g165097_ 2)
                 (apply (lambda (_path159615_ _reload?159616_)
                          (gx#import-module__1 _path159615_ _reload?159616_))
                        _g165098_))
                ((##fx= _g165097_ 3)
                 (apply (lambda (_path159620_ _reload?159621_ _eval?159622_)
                          (gx#import-module__%
                           _path159620_
                           _reload?159621_
                           _eval?159622_))
                        _g165098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g165098_))))))
    (define gx#eval-module
      (lambda (_mod159597_) ((gx#current-expander-module-eval) _mod159597_)))
    (define gx#core-eval-module
      (lambda (_obj159582_)
        (letrec ((_force-e159584_
                  (lambda (_getf159593_ _e159594_)
                    (call-with-parameters
                     (lambda () (force (_getf159593_ _e159594_)))
                     gx#current-expander-context
                     _e159594_
                     gx#current-expander-phi
                     '0))))
          (let _recur159586_ ((_e159588_ _obj159582_))
            (if (class-instance? gx#module-context::t _e159588_)
                (begin
                  (let ((_$e159590_ (gx#core-context-prelude__% _e159588_)))
                    (if _$e159590_ (_recur159586_ _$e159590_) '#!void))
                  (_force-e159584_ gx#module-context-e _e159588_))
                (if (class-instance? gx#prelude-context::t _e159588_)
                    (_force-e159584_ gx#prelude-context-e _e159588_)
                    (if (gx#stx-string? _e159588_)
                        (_recur159586_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e159588_)))
                        (if (gx#core-library-module-path? _e159588_)
                            (_recur159586_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e159588_)))
                            (error '"Cannot eval module" _obj159582_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx159565_)
        (let _lp159567_ ((_e159569_ _ctx159565_))
          (if (or (class-instance? gx#module-context::t _e159569_)
                  (class-instance? gx#local-context::t _e159569_))
              (_lp159567_ (unchecked-slot-ref _e159569_ 'super))
              (if (class-instance? gx#prelude-context::t _e159569_)
                  _e159569_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx159578_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx159578_))))
    (define gx#core-context-prelude
      (lambda _g165100_
        (let ((_g165099_ (##length _g165100_)))
          (cond ((##fx= _g165099_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g165100_))
                ((##fx= _g165099_ 1)
                 (apply (lambda (_ctx159580_)
                          (gx#core-context-prelude__% _ctx159580_))
                        _g165100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g165100_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx159555_)
        (let* ((_ht159557_ (gx#current-expander-module-registry))
               (_$e159559_ (table-ref _ht159557_ _ctx159555_ '#f)))
          (if _$e159559_
              (values _$e159559_)
              (let ((_pre159562_
                     (let ((__obj165081
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
                       (gx#prelude-context:::init! __obj165081 _ctx159555_)
                       __obj165081)))
                (table-set! _ht159557_ _ctx159555_ _pre159562_)
                _pre159562_)))))
    (define gx#core-import-module__%
      (lambda (_rpath159436_ _reload?159437_)
        (letrec ((_import-source159439_
                  (lambda (_path159524_)
                    (if (member _path159524_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path159524_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g165101_ (gx#core-read-module _path159524_)))
                         (begin
                           (let ((_g165102_
                                  (if (##values? _g165101_)
                                      (##vector-length _g165101_)
                                      1)))
                             (if (not (##fx= _g165102_ 4))
                                 (error "Context expects 4 values" _g165102_)))
                           (let ((_pre159527_ (##vector-ref _g165101_ 0))
                                 (_id159528_ (##vector-ref _g165101_ 1))
                                 (_ns159529_ (##vector-ref _g165101_ 2))
                                 (_body159530_ (##vector-ref _g165101_ 3)))
                             (let* ((_prelude159535_
                                     (if (class-instance?
                                          gx#prelude-context::t
                                          _pre159527_)
                                         _pre159527_
                                         (if (class-instance?
                                              gx#module-context::t
                                              _pre159527_)
                                             (gx#core-module->prelude-context
                                              _pre159527_)
                                             (if (string? _pre159527_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre159527_))
                                                 (if (not _pre159527_)
                                                     (let ((_$e159532_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e159532_
                                                           _$e159532_
                                                           (let ((__obj165082
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
                     (gx#prelude-context:::init! __obj165082 '#f)
                     __obj165082)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath159436_
                                                            _pre159527_))))))
                                    (_ctx159537_
                                     (let ((__obj165083
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
                                        __obj165083
                                        _id159528_
                                        _prelude159535_
                                        _ns159529_
                                        _path159524_)
                                       __obj165083))
                                    (_body159539_
                                     (gx#core-expand-module-begin
                                      _body159530_
                                      _ctx159537_))
                                    (_body159541_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body159539_)
                                      _path159524_
                                      _ctx159537_
                                      '())))
                               (unchecked-slot-set!
                                _ctx159537_
                                'e
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body159541_))))
                               (unchecked-slot-set!
                                _ctx159537_
                                'code
                                _body159541_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path159524_
                                _ctx159537_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id159528_
                                _ctx159537_)
                               _ctx159537_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path159524_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule159440_
                  (lambda (_rpath159452_)
                    (let* ((_rpath159453159460_ _rpath159452_)
                           (_E159455159464_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath159453159460_)))
                           (_K159456159512_
                            (lambda (_refs159467_ _origin159468_)
                              (let ((_ctx159470_
                                     (if _origin159468_
                                         (gx#core-import-module__%
                                          _origin159468_
                                          _reload?159437_)
                                         (gx#current-expander-context))))
                                (let _lp159472_ ((_rest159474_ _refs159467_)
                                                 (_ctx159475_ _ctx159470_))
                                  (let* ((_rest159476159484_ _rest159474_)
                                         (_else159478159492_
                                          (lambda () _ctx159475_))
                                         (_K159480159500_
                                          (lambda (_rest159495_ _id159496_)
                                            (let ((_bind159498_
                                                   (gx#resolve-identifier__%
                                                    _id159496_
                                                    '0
                                                    _ctx159475_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind159498_
                                                        'gx#syntax-binding::t)
                                                       (class-instance?
                                                        gx#module-context::t
                                                        (##unchecked-structure-ref
                                                         _bind159498_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)))
                                                  (_lp159472_
                                                   _rest159495_
                                                   (##unchecked-structure-ref
                                                    _bind159498_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath159452_
                                                         _id159496_
                                                         _bind159498_))))))
                                    (if (##pair? _rest159476159484_)
                                        (let ((_hd159481159503_
                                               (##car _rest159476159484_))
                                              (_tl159482159505_
                                               (##cdr _rest159476159484_)))
                                          (let* ((_id159508_ _hd159481159503_)
                                                 (_rest159510_
                                                  _tl159482159505_))
                                            (_K159480159500_
                                             _rest159510_
                                             _id159508_)))
                                        (_else159478159492_))))))))
                      (if (##pair? _rpath159453159460_)
                          (let ((_hd159457159515_ (##car _rpath159453159460_))
                                (_tl159458159517_ (##cdr _rpath159453159460_)))
                            (let* ((_origin159520_ _hd159457159515_)
                                   (_refs159522_ _tl159458159517_))
                              (_K159456159512_ _refs159522_ _origin159520_)))
                          (_E159455159464_))))))
          (let ((_$e159442_
                 (if (not _reload?159437_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath159436_
                      '#f)
                     '#f)))
            (if _$e159442_
                (values _$e159442_)
                (if (list? _rpath159436_)
                    (_import-submodule159440_ _rpath159436_)
                    (if (gx#core-library-module-path? _rpath159436_)
                        (let ((_ctx159445_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath159436_)
                                _reload?159437_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath159436_
                           _ctx159445_)
                          _ctx159445_)
                        (let* ((_npath159447_ (path-normalize _rpath159436_))
                               (_$e159449_
                                (if (not _reload?159437_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath159447_
                                     '#f)
                                    '#f)))
                          (if _$e159449_
                              (values _$e159449_)
                              (_import-source159439_ _npath159447_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath159548_)
        (let ((_reload?159550_ '#f))
          (gx#core-import-module__% _rpath159548_ _reload?159550_))))
    (define gx#core-import-module
      (lambda _g165104_
        (let ((_g165103_ (##length _g165104_)))
          (cond ((##fx= _g165103_ 1)
                 (apply (lambda (_rpath159548_)
                          (gx#core-import-module__0 _rpath159548_))
                        _g165104_))
                ((##fx= _g165103_ 2)
                 (apply (lambda (_rpath159552_ _reload?159553_)
                          (gx#core-import-module__%
                           _rpath159552_
                           _reload?159553_))
                        _g165104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g165104_))))))
    (define gx#core-read-module
      (lambda (_path159425_)
        (with-catch
         (lambda (_exn159427_)
           (if (and (datum-parsing-exception? _exn159427_)
                    (eq? (datum-parsing-exception-filepos _exn159427_) '0))
               (gx#core-read-module/lang _path159425_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path159425_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g159429159431_)
                      (display-exception _exn159427_ _g159429159431_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path159425_)))))
    (define gx#core-read-module/sexp
      (lambda (_path159288_)
        (let _lp159290_ ((_body159292_ (read-syntax-from-file _path159288_))
                         (_pre159293_ '#f)
                         (_ns159294_ '#f)
                         (_pkg159295_ '#f))
          (let* ((_e159296159320_ _body159292_)
                 (_E159312159342_
                  (lambda ()
                    (let ((_g165105_
                           (if _pkg159295_
                               (values _pre159293_ _ns159294_ _pkg159295_)
                               (gx#core-read-module-package
                                _path159288_
                                _pre159293_
                                _ns159294_))))
                      (begin
                        (let ((_g165106_
                               (if (##values? _g165105_)
                                   (##vector-length _g165105_)
                                   1)))
                          (if (not (##fx= _g165106_ 3))
                              (error "Context expects 3 values" _g165106_)))
                        (let ((_pre159324_ (##vector-ref _g165105_ 0))
                              (_ns159325_ (##vector-ref _g165105_ 1))
                              (_pkg159326_ (##vector-ref _g165105_ 2)))
                          (let* ((_prelude159328_
                                  (if (gx#core-bound-module-prelude?
                                       _pre159324_)
                                      (gx#syntax-local-e__0 _pre159324_)
                                      (if (gx#core-library-module-path?
                                           _pre159324_)
                                          (gx#core-resolve-library-module-path
                                           _pre159324_)
                                          (if (gx#stx-string? _pre159324_)
                                              (gx#core-resolve-module-path__%
                                               _pre159324_
                                               _path159288_)
                                              (gx#stx-e _pre159324_)))))
                                 (_path-id159330_
                                  (gx#core-module-path->namespace
                                   _path159288_))
                                 (_pkg-id159332_
                                  (if _pkg159326_
                                      (string-append
                                       _pkg159326_
                                       '"/"
                                       _path-id159330_)
                                      _path-id159330_))
                                 (_module-id159334_
                                  (string->symbol _pkg-id159332_))
                                 (_module-ns159339_
                                  (if (eq? _ns159325_ '#!void)
                                      '#f
                                      (let ((_$e159336_ _ns159325_))
                                        (if _$e159336_
                                            _$e159336_
                                            _pkg-id159332_)))))
                            (values _prelude159328_
                                    _module-id159334_
                                    _module-ns159339_
                                    _body159292_)))))))
                 (_E159305159371_
                  (lambda ()
                    (if (gx#stx-pair? _e159296159320_)
                        (let ((_e159313159346_ (gx#syntax-e _e159296159320_)))
                          (let ((_hd159314159349_ (##car _e159313159346_))
                                (_tl159315159351_ (##cdr _e159313159346_)))
                            (if (eq? (gx#stx-e _hd159314159349_) 'package:)
                                (if (gx#stx-pair? _tl159315159351_)
                                    (let ((_e159316159354_
                                           (gx#syntax-e _tl159315159351_)))
                                      (let ((_hd159317159357_
                                             (##car _e159316159354_))
                                            (_tl159318159359_
                                             (##cdr _e159316159354_)))
                                        (let* ((_pkg159362_ _hd159317159357_)
                                               (_rest159364_ _tl159318159359_))
                                          (if '#t
                                              (let ((_pkg159369_
                                                     (if (gx#identifier?
                                                          _pkg159362_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg159362_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg159362_)
                         (gx#stx-false? _pkg159362_))
                     (gx#stx-e _pkg159362_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg159362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159290_
                                                 _rest159364_
                                                 _pre159293_
                                                 _ns159294_
                                                 _pkg159369_))
                                              (_E159312159342_)))))
                                    (_E159312159342_))
                                (_E159312159342_))))
                        (_E159312159342_))))
                 (_E159298159397_
                  (lambda ()
                    (if (gx#stx-pair? _e159296159320_)
                        (let ((_e159306159375_ (gx#syntax-e _e159296159320_)))
                          (let ((_hd159307159378_ (##car _e159306159375_))
                                (_tl159308159380_ (##cdr _e159306159375_)))
                            (if (eq? (gx#stx-e _hd159307159378_) 'namespace:)
                                (if (gx#stx-pair? _tl159308159380_)
                                    (let ((_e159309159383_
                                           (gx#syntax-e _tl159308159380_)))
                                      (let ((_hd159310159386_
                                             (##car _e159309159383_))
                                            (_tl159311159388_
                                             (##cdr _e159309159383_)))
                                        (let* ((_ns159391_ _hd159310159386_)
                                               (_rest159393_ _tl159311159388_))
                                          (if '#t
                                              (let ((_ns159395_
                                                     (if (gx#identifier?
                                                          _ns159391_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns159391_))
                                                         (if (gx#stx-string?
                                                              _ns159391_)
                                                             (gx#stx-e
                                                              _ns159391_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns159391_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns159391_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159290_
                                                 _rest159393_
                                                 _pre159293_
                                                 _ns159395_
                                                 _pkg159295_))
                                              (_E159305159371_)))))
                                    (_E159305159371_))
                                (_E159305159371_))))
                        (_E159305159371_))))
                 (_E159297159421_
                  (lambda ()
                    (if (gx#stx-pair? _e159296159320_)
                        (let ((_e159299159401_ (gx#syntax-e _e159296159320_)))
                          (let ((_hd159300159404_ (##car _e159299159401_))
                                (_tl159301159406_ (##cdr _e159299159401_)))
                            (if (eq? (gx#stx-e _hd159300159404_) 'prelude:)
                                (if (gx#stx-pair? _tl159301159406_)
                                    (let ((_e159302159409_
                                           (gx#syntax-e _tl159301159406_)))
                                      (let ((_hd159303159412_
                                             (##car _e159302159409_))
                                            (_tl159304159414_
                                             (##cdr _e159302159409_)))
                                        (let* ((_prelude159417_
                                                _hd159303159412_)
                                               (_rest159419_ _tl159304159414_))
                                          (if '#t
                                              (_lp159290_
                                               _rest159419_
                                               _prelude159417_
                                               _ns159294_
                                               _pkg159295_)
                                              (_E159298159397_)))))
                                    (_E159298159397_))
                                (_E159298159397_))))
                        (_E159298159397_)))))
            (_E159297159421_)))))
    (define gx#core-read-module/lang
      (lambda (_path159115_)
        (letrec ((_default-read-module-body159117_
                  (lambda (_inp159280_)
                    (let _lp159282_ ((_body159284_ '()))
                      (let ((_next159286_ (read-syntax _inp159280_)))
                        (if (eof-object? _next159286_)
                            (reverse _body159284_)
                            (_lp159282_ (cons _next159286_ _body159284_)))))))
                 (_read-body159118_
                  (lambda (_inp159199_
                           _pre159200_
                           _ns159201_
                           _pkg159202_
                           _args159203_)
                    (let ((_g165107_
                           (if _pkg159202_
                               (values _pre159200_ _ns159201_ _pkg159202_)
                               (gx#core-read-module-package
                                _path159115_
                                _pre159200_
                                _ns159201_))))
                      (begin
                        (let ((_g165108_
                               (if (##values? _g165107_)
                                   (##vector-length _g165107_)
                                   1)))
                          (if (not (##fx= _g165108_ 3))
                              (error "Context expects 3 values" _g165108_)))
                        (let ((_pre159205_ (##vector-ref _g165107_ 0))
                              (_ns159206_ (##vector-ref _g165107_ 1))
                              (_pkg159207_ (##vector-ref _g165107_ 2)))
                          (let* ((_prelude159209_
                                  (gx#import-module__0 _pre159205_))
                                 (_read-module-body159263_
                                  (let ((_$e159255_
                                         (find (lambda (_e159210159212_)
                                                 (let* ((_g159214159224_
                                                         _e159210159212_)
                                                        (_else159216159232_
                                                         (lambda () '#f))
                                                        (_K159218159236_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g159214159224_
                                                        'gx#module-export::t)
                                                       (let* ((_e159219159239_
                                                               (##unchecked-structure-ref
                                                                _g159214159224_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159220159242_
                                                               (##unchecked-structure-ref
                                                                _g159214159224_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159221159245_
                                                               (##unchecked-structure-ref
                                                                _g159214159224_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e159221159245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e159222159248_
                            (##unchecked-structure-ref
                             _g159214159224_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g159250159252_)
                              (eq? _g159250159252_ 'read-module-body))
                            _e159222159248_)
                           (_K159218159236_)
                           (_else159216159232_)))
                     (_else159216159232_)))
               (_else159216159232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (unchecked-slot-ref
                                                _prelude159209_
                                                'export))))
                                    (if _$e159255_
                                        ((lambda (_xport159258_)
                                           (let ((_proc159261_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (let ((__obj165084
                                                             (gx#core-resolve-module-export
                                                              _xport159258_)))
                                                        (if (##structure-direct-instance-of?
                                                             __obj165084
                                                             'gx#binding::t)
                                                            (##unchecked-structure-ref
                                                             __obj165084
                                                             '1
                                                             gx#binding::t
                                                             '#f)
                                                            (class-slot-ref
                                                             gx#binding::t
                                                             __obj165084
                                                             'id))))))))
                                             (if (procedure? _proc159261_)
                                                 _proc159261_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path159115_
                                                  _pre159205_
                                                  _proc159261_))))
                                         _$e159255_)
                                        _default-read-module-body159117_)))
                                 (_path-id159265_
                                  (gx#core-module-path->namespace
                                   _path159115_))
                                 (_pkg-id159267_
                                  (if _pkg159207_
                                      (string-append
                                       _pkg159207_
                                       '"/"
                                       _path-id159265_)
                                      _path-id159265_))
                                 (_module-id159269_
                                  (string->symbol _pkg-id159267_))
                                 (_module-ns159274_
                                  (let ((_$e159271_ _ns159206_))
                                    (if _$e159271_ _$e159271_ _pkg-id159267_)))
                                 (_body159277_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body159263_ _inp159199_))
                                   gx#current-module-reader-path
                                   _path159115_
                                   gx#current-module-reader-args
                                   _args159203_)))
                            (values _prelude159209_
                                    _module-id159269_
                                    _module-ns159274_
                                    _body159277_)))))))
                 (_string-e159119_
                  (lambda (_obj159196_ _what159197_)
                    (if (string? _obj159196_)
                        _obj159196_
                        (if (symbol? _obj159196_)
                            (symbol->string _obj159196_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what159197_)
                             _path159115_
                             _obj159196_)))))
                 (_read-lang-args159120_
                  (lambda (_inp159151_ _args159152_)
                    (let* ((_args159153159161_ _args159152_)
                           (_else159155159169_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path159115_)))
                           (_K159157159184_
                            (lambda (_args159172_ _prelude159173_)
                              (let* ((_pkg159175_
                                      (pgetq 'package: _args159172_))
                                     (_pkg159177_
                                      (if _pkg159175_
                                          (_string-e159119_
                                           _pkg159175_
                                           '"package")
                                          '#f))
                                     (_ns159179_
                                      (pgetq 'namespace: _args159172_))
                                     (_ns159181_
                                      (if _ns159179_
                                          (_string-e159119_
                                           _ns159179_
                                           '"namespace")
                                          '#f)))
                                (_read-body159118_
                                 _inp159151_
                                 _prelude159173_
                                 _ns159181_
                                 _pkg159177_
                                 _args159172_)))))
                      (if (##pair? _args159153159161_)
                          (let ((_hd159158159187_ (##car _args159153159161_))
                                (_tl159159159189_ (##cdr _args159153159161_)))
                            (let* ((_prelude159192_ _hd159158159187_)
                                   (_args159194_ _tl159159159189_))
                              (_K159157159184_ _args159194_ _prelude159192_)))
                          (_else159155159169_)))))
                 (_read-lang159121_
                  (lambda (_inp159126_)
                    (let* ((_head159128_ (read-line _inp159126_))
                           (_$e159130_ (string-index _head159128_ '#\space)))
                      (if _$e159130_
                          ((lambda (_ix159133_)
                             (let ((_lang159135_
                                    (substring _head159128_ '0 _ix159133_)))
                               (if (equal? _lang159135_ '"#lang")
                                   (let* ((_rest159137_
                                           (substring
                                            _head159128_
                                            (fx+ _ix159133_ '1)
                                            (string-length _head159128_)))
                                          (_args159148_
                                           (with-catch
                                            (lambda (_g159138159140_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path159115_
                                               _g159138159140_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest159137_
                                               (lambda (_g159143159145_)
                                                 (read-all
                                                  _g159143159145_
                                                  read)))))))
                                     (_read-lang-args159120_
                                      _inp159126_
                                      _args159148_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path159115_))))
                           _$e159130_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path159115_)))))
                 (_read-e159122_
                  (lambda (_inp159124_)
                    (if (eq? (peek-char _inp159124_) '#\#)
                        (_read-lang159121_ _inp159124_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path159115_)))))
          (gx#call-with-input-source-file _path159115_ _read-e159122_))))
    (define gx#core-read-module-package
      (lambda (_path159069_ _pre159070_ _ns159071_)
        (letrec ((_string-e159073_
                  (lambda (_e159113_)
                    (if (symbol? _e159113_)
                        (symbol->string _e159113_)
                        (if (string? _e159113_)
                            _e159113_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e159113_))))))
          (let _lp159075_ ((_dir159077_ (path-directory _path159069_))
                           (_pkg-path159078_ '()))
            (let ((_gerbil.pkg159080_ (path-expand '"gerbil.pkg" _dir159077_)))
              (if (file-exists? _gerbil.pkg159080_)
                  (let ((_plist159082_
                         (gx#core-library-package-plist__% _dir159077_ '#t)))
                    (if (null? _plist159082_)
                        (let ((_pkg159084_
                               (if (not (null? _pkg-path159078_))
                                   (string-join _pkg-path159078_ '"/")
                                   '#f)))
                          (values _pre159070_ _ns159071_ _pkg159084_))
                        (if (list? _plist159082_)
                            (let* ((_root159086_
                                    (pgetq 'package: _plist159082_))
                                   (_pkg159090_
                                    (let ((_pkg-path159088_
                                           (if _root159086_
                                               (cons (_string-e159073_
                                                      _root159086_)
                                                     _pkg-path159078_)
                                               _pkg-path159078_)))
                                      (if (not (null? _pkg-path159088_))
                                          (string-join _pkg-path159088_ '"/")
                                          '#f)))
                                   (_ns159097_
                                    (let ((_ns159095_
                                           (let ((_$e159092_ _ns159071_))
                                             (if _$e159092_
                                                 _$e159092_
                                                 (pgetq 'namespace:
                                                        _plist159082_)))))
                                      (if _ns159095_
                                          (_string-e159073_ _ns159095_)
                                          '#f)))
                                   (_pre159102_
                                    (let ((_$e159099_ _pre159070_))
                                      (if _$e159099_
                                          _$e159099_
                                          (pgetq 'prelude: _plist159082_)))))
                              (values _pre159102_ _ns159097_ _pkg159090_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist159082_))))
                  (let ((_dir*159105_
                         (path-strip-trailing-directory-separator
                          _dir159077_)))
                    (if (or (string-empty? _dir*159105_)
                            (equal? _dir159077_ _dir*159105_))
                        (values _pre159070_ _ns159071_ '#f)
                        (let ((_xpath159110_
                               (path-strip-directory _dir*159105_))
                              (_xdir159111_ (path-directory _dir*159105_)))
                          (_lp159075_
                           _xdir159111_
                           (cons _xpath159110_ _pkg-path159078_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path159067_)
        (path-strip-extension (path-strip-directory _path159067_))))
    (define gx#core-module-path->id
      (lambda (_path159065_)
        (string->symbol (gx#core-module-path->namespace _path159065_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path159044_ _rel159045_)
        (let* ((_path159047_ (gx#stx-e _stx-path159044_))
               (_path159049_
                (if (string-empty? (path-extension _path159047_))
                    (string-append _path159047_ '".ss")
                    _path159047_)))
          (gx#core-resolve-path__%
           _path159049_
           (let ((_$e159052_ (gx#stx-source _stx-path159044_)))
             (if _$e159052_ _$e159052_ _rel159045_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path159058_)
        (let ((_rel159060_ '#f))
          (gx#core-resolve-module-path__% _stx-path159058_ _rel159060_))))
    (define gx#core-resolve-module-path
      (lambda _g165110_
        (let ((_g165109_ (##length _g165110_)))
          (cond ((##fx= _g165109_ 1)
                 (apply (lambda (_stx-path159058_)
                          (gx#core-resolve-module-path__0 _stx-path159058_))
                        _g165110_))
                ((##fx= _g165109_ 2)
                 (apply (lambda (_stx-path159062_ _rel159063_)
                          (gx#core-resolve-module-path__%
                           _stx-path159062_
                           _rel159063_))
                        _g165110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g165110_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath158930_)
        (let* ((_spath158932_ (symbol->string (gx#stx-e _libpath158930_)))
               (_spath158934_
                (substring _spath158932_ '1 (string-length _spath158932_)))
               (_ext158936_ (path-extension _spath158934_))
               (_ssi158938_
                (if (string-empty? _ext158936_)
                    (string-append _spath158934_ '".ssi")
                    (string-append
                     (path-strip-extension _spath158934_)
                     '".ssi")))
               (_srcs158942_
                (if (string-empty? _ext158936_)
                    (map (lambda (_ext158940_)
                           (string-append _spath158934_ _ext158940_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath158934_ '()))))
          (let _lp158945_ ((_rest158947_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest158948158957_ _rest158947_)
                   (_E158951158961_
                    (lambda ()
                      (error '"No clause matching" _rest158948158957_))))
              (let ((_K158953159031_
                     (lambda (_rest158972_ _dir158973_)
                       (letrec ((_resolve158975_
                                 (lambda (_ssi158987_ _srcs158988_)
                                   (let ((_compiled-path158990_
                                          (path-expand
                                           _ssi158987_
                                           _dir158973_)))
                                     (if (file-exists? _compiled-path158990_)
                                         (path-normalize _compiled-path158990_)
                                         (let _lpr158992_ ((_rest-src158994_
                                                            _srcs158988_))
                                           (let* ((_rest-src158995159003_
                                                   _rest-src158994_)
                                                  (_else158997159011_
                                                   (lambda ()
                                                     (_lp158945_
                                                      _rest158972_)))
                                                  (_K158999159019_
                                                   (lambda (_rest-src159014_
                                                            _src159015_)
                                                     (let ((_src-path159017_
                                                            (path-expand
                                                             _src159015_
                                                             _dir158973_)))
                                                       (if (file-exists?
                                                            _src-path159017_)
                                                           (path-normalize
                                                            _src-path159017_)
                                                           (_lpr158992_
                                                            _rest-src159014_))))))
                                             (if (##pair? _rest-src158995159003_)
                                                 (let ((_hd159000159022_
                                                        (##car _rest-src158995159003_))
                                                       (_tl159001159024_
                                                        (##cdr _rest-src158995159003_)))
                                                   (let* ((_src159027_
                                                           _hd159000159022_)
                                                          (_rest-src159029_
                                                           _tl159001159024_))
                                                     (_K158999159019_
                                                      _rest-src159029_
                                                      _src159027_)))
                                                 (_else158997159011_)))))))))
                         (let ((_$e158977_
                                (gx#core-library-package-path-prefix
                                 _dir158973_)))
                           (if _$e158977_
                               ((lambda (_prefix158980_)
                                  (if (string-prefix?
                                       _prefix158980_
                                       _spath158934_)
                                      (let ((_ssi158984_
                                             (substring
                                              _ssi158938_
                                              (string-length _prefix158980_)
                                              (string-length _ssi158938_)))
                                            (_srcs158985_
                                             (map (lambda (_src158982_)
                                                    (substring
                                                     _src158982_
                                                     (string-length
                                                      _prefix158980_)
                                                     (string-length
                                                      _src158982_)))
                                                  _srcs158942_)))
                                        (_resolve158975_
                                         _ssi158984_
                                         _srcs158985_))
                                      (_lp158945_ _rest158972_)))
                                _$e158977_)
                               (_resolve158975_ _ssi158938_ _srcs158942_))))))
                    (_K158952158966_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath158930_))))
                (let ((_try-match158950158969_
                       (lambda ()
                         (if (##null? _rest158948158957_)
                             (_K158952158966_)
                             (_E158951158961_)))))
                  (if (##pair? _rest158948158957_)
                      (let ((_tl158955159036_ (##cdr _rest158948158957_))
                            (_hd158954159034_ (##car _rest158948158957_)))
                        (let ((_dir159039_ _hd158954159034_)
                              (_rest159041_ _tl158955159036_))
                          (_K158953159031_ _rest159041_ _dir159039_)))
                      (_try-match158950158969_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath158903_)
        (letrec ((_resolve158905_
                  (lambda (_path158922_ _base158923_)
                    (let ((_$e158925_ (string-rindex _base158923_ '#\/)))
                      (if _$e158925_
                          ((lambda (_idx158928_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base158923_ '0 _idx158928_)
                                '"/"
                                _path158922_))))
                           _$e158925_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path158922_))))))))
          (let ((_spath158907_ (symbol->string (gx#stx-e _modpath158903_)))
                (_mod158908_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod158908_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath158903_))
            (let ((_mpath158910_
                   (symbol->string
                    (let ((__obj165085 _mod158908_))
                      (if (##structure-direct-instance-of?
                           __obj165085
                           'gx#expander-context::t)
                          (##unchecked-structure-ref
                           __obj165085
                           '1
                           gx#expander-context::t
                           '#f)
                          (class-slot-ref
                           gx#expander-context::t
                           __obj165085
                           'id))))))
              (let _lp158912_ ((_spath158914_ _spath158907_)
                               (_mpath158915_ _mpath158910_))
                (if (string-prefix? '"../" _spath158914_)
                    (let ((_$e158917_ (string-rindex _mpath158915_ '#\/)))
                      (if _$e158917_
                          ((lambda (_idx158920_)
                             (_lp158912_
                              (substring
                               _spath158914_
                               '3
                               (string-length _spath158914_))
                              (substring _mpath158915_ '0 _idx158920_)))
                           _$e158917_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath158903_)))
                    (if (string-prefix? '"./" _spath158914_)
                        (_lp158912_
                         (substring
                          _spath158914_
                          '2
                          (string-length _spath158914_))
                         _mpath158915_)
                        (_resolve158905_ _spath158914_ _mpath158915_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir158896_)
        (let ((_$e158898_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir158896_))))
          (if _$e158898_
              ((lambda (_pkg158901_)
                 (string-append (symbol->string _pkg158901_) '"/"))
               _$e158898_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir158868_ _exists?158869_)
        (let* ((_cache158871_ (gx#core-library-package-cache))
               (_$e158873_ (table-ref _cache158871_ _dir158868_ '#f)))
          (if _$e158873_
              (values _$e158873_)
              (let* ((_gerbil.pkg158876_
                      (path-expand '"gerbil.pkg" _dir158868_))
                     (_plist158883_
                      (if (or _exists?158869_
                              (file-exists? _gerbil.pkg158876_))
                          (let ((_e158881_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg158876_
                                  read)))
                            (if (eof-object? _e158881_)
                                '()
                                (if (list? _e158881_)
                                    _e158881_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg158876_
                                     _e158881_))))
                          '())))
                (table-set! _cache158871_ _dir158868_ _plist158883_)
                _plist158883_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir158889_)
        (let ((_exists?158891_ '#f))
          (gx#core-library-package-plist__% _dir158889_ _exists?158891_))))
    (define gx#core-library-package-plist
      (lambda _g165112_
        (let ((_g165111_ (##length _g165112_)))
          (cond ((##fx= _g165111_ 1)
                 (apply (lambda (_dir158889_)
                          (gx#core-library-package-plist__0 _dir158889_))
                        _g165112_))
                ((##fx= _g165111_ 2)
                 (apply (lambda (_dir158893_ _exists?158894_)
                          (gx#core-library-package-plist__%
                           _dir158893_
                           _exists?158894_))
                        _g165112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g165112_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e158862_ (gx#current-expander-module-library-package-cache)))
          (if _$e158862_
              (values _$e158862_)
              (let ((_cache158865_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache158865_)
                _cache158865_)))))
    (define gx#core-library-module-path?
      (lambda (_stx158859_) (gx#core-special-module-path? _stx158859_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx158857_) (gx#core-special-module-path? _stx158857_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx158852_ _char158853_)
        (if (gx#identifier? _stx158852_)
            (if (interned-symbol? (gx#stx-e _stx158852_))
                (let ((_str158855_ (symbol->string (gx#stx-e _stx158852_))))
                  (if (fx> (string-length _str158855_) '1)
                      (eq? (string-ref _str158855_ '0) _char158853_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx158846_)
        (gx#core-bound-identifier?__%
         _stx158846_
         (lambda (_g158847158849_)
           (gx#expander-binding?__% _g158847158849_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx158840_)
        (gx#core-bound-identifier?__%
         _stx158840_
         (lambda (_g158841158843_)
           (gx#expander-binding?__% _g158841158843_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx158827_)
        (letrec ((_module-prelude?158829_
                  (lambda (_e158835_)
                    (let ((_$e158837_
                           (class-instance? gx#module-context::t _e158835_)))
                      (if _$e158837_
                          _$e158837_
                          (class-instance?
                           gx#prelude-context::t
                           _e158835_))))))
          (gx#core-bound-identifier?__%
           _stx158827_
           (lambda (_g158830158832_)
             (gx#expander-binding?__%
              _g158830158832_
              _module-prelude?158829_))))))
    (define gx#core-bind-import!__%
      (lambda (_in158757_ _ctx158758_ _force-weak?158759_)
        (let* ((_in158760158769_ _in158757_)
               (_E158762158773_
                (lambda () (error '"No clause matching" _in158760158769_)))
               (_K158763158786_
                (lambda (_weak?158776_ _phi158777_ _key158778_ _source158779_)
                  (gx#core-bind!__%
                   _key158778_
                   (let* ((_e158781_
                           (gx#core-resolve-module-export _source158779_))
                          (__obj165086
                           (##structure
                            gx#import-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                     (class-instance-init!
                      __obj165086
                      (unchecked-slot-ref _e158781_ 'id)
                      _key158778_
                      _phi158777_
                      _e158781_
                      (##unchecked-structure-ref
                       _source158779_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e158783_ _force-weak?158759_))
                        (if _$e158783_ _$e158783_ _weak?158776_)))
                     __obj165086)
                   gx#core-context-rebind?
                   _phi158777_
                   _ctx158758_))))
          (if (##structure-direct-instance-of?
               _in158760158769_
               'gx#module-import::t)
              (let* ((_e158764158789_
                      (##unchecked-structure-ref
                       _in158760158769_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source158792_ _e158764158789_)
                     (_e158765158794_
                      (##unchecked-structure-ref
                       _in158760158769_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key158797_ _e158765158794_)
                     (_e158766158799_
                      (##unchecked-structure-ref
                       _in158760158769_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi158802_ _e158766158799_)
                     (_e158767158804_
                      (##unchecked-structure-ref
                       _in158760158769_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?158807_ _e158767158804_))
                (_K158763158786_
                 _weak?158807_
                 _phi158802_
                 _key158797_
                 _source158792_))
              (_E158762158773_)))))
    (define gx#core-bind-import!__0
      (lambda (_in158812_)
        (let* ((_ctx158814_ (gx#current-expander-context))
               (_force-weak?158816_ '#f))
          (gx#core-bind-import!__%
           _in158812_
           _ctx158814_
           _force-weak?158816_))))
    (define gx#core-bind-import!__1
      (lambda (_in158818_ _ctx158819_)
        (let ((_force-weak?158821_ '#f))
          (gx#core-bind-import!__%
           _in158818_
           _ctx158819_
           _force-weak?158821_))))
    (define gx#core-bind-import!
      (lambda _g165114_
        (let ((_g165113_ (##length _g165114_)))
          (cond ((##fx= _g165113_ 1)
                 (apply (lambda (_in158812_)
                          (gx#core-bind-import!__0 _in158812_))
                        _g165114_))
                ((##fx= _g165113_ 2)
                 (apply (lambda (_in158818_ _ctx158819_)
                          (gx#core-bind-import!__1 _in158818_ _ctx158819_))
                        _g165114_))
                ((##fx= _g165113_ 3)
                 (apply (lambda (_in158823_ _ctx158824_ _force-weak?158825_)
                          (gx#core-bind-import!__%
                           _in158823_
                           _ctx158824_
                           _force-weak?158825_))
                        _g165114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g165114_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in158743_ _ctx158744_)
        (gx#core-bind-import!__% _in158743_ _ctx158744_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in158749_)
        (let ((_ctx158751_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in158749_ _ctx158751_))))
    (define gx#core-bind-weak-import!
      (lambda _g165116_
        (let ((_g165115_ (##length _g165116_)))
          (cond ((##fx= _g165115_ 1)
                 (apply (lambda (_in158749_)
                          (gx#core-bind-weak-import!__0 _in158749_))
                        _g165116_))
                ((##fx= _g165115_ 2)
                 (apply (lambda (_in158753_ _ctx158754_)
                          (gx#core-bind-weak-import!__%
                           _in158753_
                           _ctx158754_))
                        _g165116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g165116_))))))
    (define gx#core-resolve-module-export
      (lambda (_out158634_)
        (letrec ((_subst158636_
                  (lambda (_key158682_)
                    (let* ((_key158683158691_ _key158682_)
                           (_else158685158699_ (lambda () _key158682_))
                           (_K158687158730_
                            (lambda (_mark158702_ _id158703_)
                              (let* ((_mark158704158710_ _mark158702_)
                                     (_E158706158714_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark158704158710_)))
                                     (_K158707158722_
                                      (lambda (_subst158717_)
                                        (let ((_$e158719_
                                               (if _subst158717_
                                                   (table-ref
                                                    _subst158717_
                                                    _id158703_
                                                    '#f)
                                                   '#f)))
                                          (if _$e158719_
                                              _$e158719_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key158682_))))))
                                (if (class-instance?
                                     gx#expander-mark::t
                                     _mark158704158710_)
                                    (let* ((_e158708158725_
                                            (unchecked-slot-ref
                                             _mark158704158710_
                                             'subst))
                                           (_subst158728_ _e158708158725_))
                                      (_K158707158722_ _subst158728_))
                                    (_E158706158714_))))))
                      (if (##pair? _key158683158691_)
                          (let ((_hd158688158733_ (##car _key158683158691_))
                                (_tl158689158735_ (##cdr _key158683158691_)))
                            (let* ((_id158738_ _hd158688158733_)
                                   (_mark158740_ _tl158689158735_))
                              (_K158687158730_ _mark158740_ _id158738_)))
                          (_else158685158699_))))))
          (let* ((_out158637158647_ _out158634_)
                 (_E158639158651_
                  (lambda () (error '"No clause matching" _out158637158647_)))
                 (_K158640158658_
                  (lambda (_phi158654_ _key158655_ _ctx158656_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx158656_ _phi158654_)
                     (_subst158636_ _key158655_)))))
            (if (##structure-direct-instance-of?
                 _out158637158647_
                 'gx#module-export::t)
                (let* ((_e158641158661_
                        (##unchecked-structure-ref
                         _out158637158647_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx158664_ _e158641158661_)
                       (_e158642158666_
                        (##unchecked-structure-ref
                         _out158637158647_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key158669_ _e158642158666_)
                       (_e158643158671_
                        (##unchecked-structure-ref
                         _out158637158647_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi158674_ _e158643158671_)
                       (_e158644158676_
                        (##unchecked-structure-ref
                         _out158637158647_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e158645158679_
                        (##unchecked-structure-ref
                         _out158637158647_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K158640158658_ _phi158674_ _key158669_ _ctx158664_))
                (_E158639158651_))))))
    (define gx#core-module-export->import__%
      (lambda (_out158559_ _rename158560_ _dphi158561_)
        (let* ((_out158562158572_ _out158559_)
               (_E158564158576_
                (lambda () (error '"No clause matching" _out158562158572_)))
               (_K158565158588_
                (lambda (_weak?158579_
                         _name158580_
                         _phi158581_
                         _key158582_
                         _ctx158583_)
                  (let ((__obj165087
                         (##structure gx#module-import::t '#f '#f '#f '#f)))
                    (class-instance-init!
                     __obj165087
                     _out158559_
                     (let ((_$e158585_ _rename158560_))
                       (if _$e158585_ _$e158585_ _name158580_))
                     (fx+ _phi158581_ _dphi158561_)
                     _weak?158579_)
                    __obj165087))))
          (if (##structure-direct-instance-of?
               _out158562158572_
               'gx#module-export::t)
              (let* ((_e158566158591_
                      (##unchecked-structure-ref
                       _out158562158572_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx158594_ _e158566158591_)
                     (_e158567158596_
                      (##unchecked-structure-ref
                       _out158562158572_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key158599_ _e158567158596_)
                     (_e158568158601_
                      (##unchecked-structure-ref
                       _out158562158572_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi158604_ _e158568158601_)
                     (_e158569158606_
                      (##unchecked-structure-ref
                       _out158562158572_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name158609_ _e158569158606_)
                     (_e158570158611_
                      (##unchecked-structure-ref
                       _out158562158572_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?158614_ _e158570158611_))
                (_K158565158588_
                 _weak?158614_
                 _name158609_
                 _phi158604_
                 _key158599_
                 _ctx158594_))
              (_E158564158576_)))))
    (define gx#core-module-export->import__0
      (lambda (_out158619_)
        (let* ((_rename158621_ '#f) (_dphi158623_ '0))
          (gx#core-module-export->import__%
           _out158619_
           _rename158621_
           _dphi158623_))))
    (define gx#core-module-export->import__1
      (lambda (_out158625_ _rename158626_)
        (let ((_dphi158628_ '0))
          (gx#core-module-export->import__%
           _out158625_
           _rename158626_
           _dphi158628_))))
    (define gx#core-module-export->import
      (lambda _g165118_
        (let ((_g165117_ (##length _g165118_)))
          (cond ((##fx= _g165117_ 1)
                 (apply (lambda (_out158619_)
                          (gx#core-module-export->import__0 _out158619_))
                        _g165118_))
                ((##fx= _g165117_ 2)
                 (apply (lambda (_out158625_ _rename158626_)
                          (gx#core-module-export->import__1
                           _out158625_
                           _rename158626_))
                        _g165118_))
                ((##fx= _g165117_ 3)
                 (apply (lambda (_out158630_ _rename158631_ _dphi158632_)
                          (gx#core-module-export->import__%
                           _out158630_
                           _rename158631_
                           _dphi158632_))
                        _g165118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g165118_))))))
    (define gx#core-expand-module%
      (lambda (_stx158487_)
        (letrec ((_make-context158489_
                  (lambda (_id158540_)
                    (let* ((_super158542_ (gx#current-expander-context))
                           (_bind-id158544_ (gx#stx-e _id158540_))
                           (_mod-id158546_
                            (if (class-instance?
                                 gx#module-context::t
                                 _super158542_)
                                (make-symbol__1
                                 (let ((__obj165088 _super158542_))
                                   (if (##structure-direct-instance-of?
                                        __obj165088
                                        'gx#expander-context::t)
                                       (##unchecked-structure-ref
                                        __obj165088
                                        '1
                                        gx#expander-context::t
                                        '#f)
                                       (class-slot-ref
                                        gx#expander-context::t
                                        __obj165088
                                        'id)))
                                 '"$"
                                 _bind-id158544_)
                                _bind-id158544_))
                           (_ns158548_ (symbol->string _mod-id158546_))
                           (_path158555_
                            (if (class-instance?
                                 gx#module-context::t
                                 _super158542_)
                                (let ((_path158550_
                                       (unchecked-slot-ref
                                        _super158542_
                                        'path)))
                                  (if (or (pair? _path158550_)
                                          (null? _path158550_))
                                      (cons _bind-id158544_ _path158550_)
                                      (if (not _path158550_)
                                          _bind-id158544_
                                          (cons _bind-id158544_
                                                (cons _path158550_ '())))))
                                _bind-id158544_)))
                      (let ((__obj165089
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
                         __obj165089
                         _mod-id158546_
                         _super158542_
                         _ns158548_
                         _path158555_)
                        __obj165089)))))
          (let* ((_e158490158500_ _stx158487_)
                 (_E158492158504_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158490158500_)))
                 (_E158491158536_
                  (lambda ()
                    (if (gx#stx-pair? _e158490158500_)
                        (let ((_e158493158508_ (gx#syntax-e _e158490158500_)))
                          (let ((_hd158494158511_ (##car _e158493158508_))
                                (_tl158495158513_ (##cdr _e158493158508_)))
                            (if (gx#stx-pair? _tl158495158513_)
                                (let ((_e158496158516_
                                       (gx#syntax-e _tl158495158513_)))
                                  (let ((_hd158497158519_
                                         (##car _e158496158516_))
                                        (_tl158498158521_
                                         (##cdr _e158496158516_)))
                                    (let* ((_id158524_ _hd158497158519_)
                                           (_body158526_ _tl158498158521_))
                                      (if (and (gx#identifier? _id158524_)
                                               (gx#stx-list? _body158526_))
                                          (let* ((_ctx158528_
                                                  (_make-context158489_
                                                   _id158524_))
                                                 (_body158530_
                                                  (gx#core-expand-module-begin
                                                   _body158526_
                                                   _ctx158528_))
                                                 (_body158532_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body158530_)
                                                   (gx#stx-source
                                                    _stx158487_))))
                                            (unchecked-slot-set!
                                             _ctx158528_
                                             'e
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body158532_))))
                                            (unchecked-slot-set!
                                             _ctx158528_
                                             'code
                                             _body158532_)
                                            (gx#core-bind-syntax!__0
                                             _id158524_
                                             _ctx158528_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id158524_)
                                              _body158532_)
                                             (gx#stx-source _stx158487_)))
                                          (_E158492158504_)))))
                                (_E158492158504_))))
                        (_E158492158504_)))))
            (_E158491158536_)))))
    (define gx#core-expand-module-begin
      (lambda (_body158453_ _ctx158454_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx158457_
                   (gx#core-expand-head (cons '%%begin-module _body158453_)))
                  (_e158458158465_ _stx158457_)
                  (_E158460158469_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx158457_)))
                  (_E158459158483_
                   (lambda ()
                     (if (gx#stx-pair? _e158458158465_)
                         (let ((_e158461158473_ (gx#syntax-e _e158458158465_)))
                           (let ((_hd158462158476_ (##car _e158461158473_))
                                 (_tl158463158478_ (##cdr _e158461158473_)))
                             (if (and (gx#identifier? _hd158462158476_)
                                      (gx#core-identifier=?
                                       _hd158462158476_
                                       '%#begin-module))
                                 (let ((_body158481_ _tl158463158478_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx158457_)
                                           _body158481_
                                           (gx#core-expand-module-body
                                            _body158481_))
                                       (_E158460158469_)))
                                 (_E158460158469_))))
                         (_E158460158469_)))))
             (_E158459158483_)))
         gx#current-expander-context
         _ctx158454_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body158249_)
        (letrec ((_expand-special158251_
                  (lambda (_hd158380_ _K158381_ _rest158382_ _r158383_)
                    (let* ((_e158384158401_ _hd158380_)
                           (_E158396158405_
                            (lambda ()
                              (_K158381_
                               _rest158382_
                               (cons (gx#core-expand-top _hd158380_)
                                     _r158383_))))
                           (_E158386158417_
                            (lambda ()
                              (if (gx#stx-pair? _e158384158401_)
                                  (let ((_e158397158409_
                                         (gx#syntax-e _e158384158401_)))
                                    (let ((_hd158398158412_
                                           (##car _e158397158409_))
                                          (_tl158399158414_
                                           (##cdr _e158397158409_)))
                                      (if (and (gx#identifier?
                                                _hd158398158412_)
                                               (gx#core-identifier=?
                                                _hd158398158412_
                                                '%#export))
                                          (if '#t
                                              (_K158381_
                                               _rest158382_
                                               (cons _hd158380_ _r158383_))
                                              (_E158396158405_))
                                          (_E158396158405_))))
                                  (_E158396158405_))))
                           (_E158385158449_
                            (lambda ()
                              (if (gx#stx-pair? _e158384158401_)
                                  (let ((_e158387158421_
                                         (gx#syntax-e _e158384158401_)))
                                    (let ((_hd158388158424_
                                           (##car _e158387158421_))
                                          (_tl158389158426_
                                           (##cdr _e158387158421_)))
                                      (if (and (gx#identifier?
                                                _hd158388158424_)
                                               (gx#core-identifier=?
                                                _hd158388158424_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl158389158426_)
                                              (let ((_e158390158429_
                                                     (gx#syntax-e
                                                      _tl158389158426_)))
                                                (let ((_hd158391158432_
                                                       (##car _e158390158429_))
                                                      (_tl158392158434_
                                                       (##cdr _e158390158429_)))
                                                  (let ((_hd-bind158437_
                                                         _hd158391158432_))
                                                    (if (gx#stx-pair?
                                                         _tl158392158434_)
                                                        (let ((_e158393158439_
                                                               (gx#syntax-e
                                                                _tl158392158434_)))
                                                          (let ((_hd158394158442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e158393158439_))
                        (_tl158395158444_ (##cdr _e158393158439_)))
                    (let ((_expr158447_ _hd158394158442_))
                      (if (gx#stx-null? _tl158395158444_)
                          (if (gx#core-bind-values? _hd-bind158437_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind158437_)
                                (_K158381_
                                 _rest158382_
                                 (cons _hd158380_ _r158383_)))
                              (_E158386158417_))
                          (_E158386158417_)))))
                (_E158386158417_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158386158417_))
                                          (_E158386158417_))))
                                  (_E158386158417_)))))
                      (_E158385158449_))))
                 (_expand-body158252_
                  (lambda (_rbody158254_)
                    (let _lp158256_ ((_rest158258_ _rbody158254_)
                                     (_body158259_ '()))
                      (let* ((_rest158260158268_ _rest158258_)
                             (_else158262158276_ (lambda () _body158259_))
                             (_K158264158368_
                              (lambda (_rest158279_ _hd158280_)
                                (let* ((_e158281158302_ _hd158280_)
                                       (_E158297158306_
                                        (lambda ()
                                          (_lp158256_
                                           _rest158279_
                                           (cons (gx#core-expand-expression
                                                  _hd158280_)
                                                 _body158259_))))
                                       (_E158293158320_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158281158302_)
                                              (let ((_e158298158310_
                                                     (gx#syntax-e
                                                      _e158281158302_)))
                                                (let ((_hd158299158313_
                                                       (##car _e158298158310_))
                                                      (_tl158300158315_
                                                       (##cdr _e158298158310_)))
                                                  (let ((_form158318_
                                                         _hd158299158313_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form158318_
                                                         gx#special-form-binding?)
                                                        (_lp158256_
                                                         _rest158279_
                                                         (cons _hd158280_
                                                               _body158259_))
                                                        (_E158297158306_)))))
                                              (_E158297158306_))))
                                       (_E158283158332_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158281158302_)
                                              (let ((_e158294158324_
                                                     (gx#syntax-e
                                                      _e158281158302_)))
                                                (let ((_hd158295158327_
                                                       (##car _e158294158324_))
                                                      (_tl158296158329_
                                                       (##cdr _e158294158324_)))
                                                  (if (and (gx#identifier?
                                                            _hd158295158327_)
                                                           (gx#core-identifier=?
                                                            _hd158295158327_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp158256_
                                                           _rest158279_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd158280_)
                         _body158259_))
                  (_E158293158320_))
              (_E158293158320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158293158320_))))
                                       (_E158282158364_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158281158302_)
                                              (let ((_e158284158336_
                                                     (gx#syntax-e
                                                      _e158281158302_)))
                                                (let ((_hd158285158339_
                                                       (##car _e158284158336_))
                                                      (_tl158286158341_
                                                       (##cdr _e158284158336_)))
                                                  (if (and (gx#identifier?
                                                            _hd158285158339_)
                                                           (gx#core-identifier=?
                                                            _hd158285158339_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl158286158341_)
                                                          (let ((_e158287158344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl158286158341_)))
                    (let ((_hd158288158347_ (##car _e158287158344_))
                          (_tl158289158349_ (##cdr _e158287158344_)))
                      (let ((_hd-bind158352_ _hd158288158347_))
                        (if (gx#stx-pair? _tl158289158349_)
                            (let ((_e158290158354_
                                   (gx#syntax-e _tl158289158349_)))
                              (let ((_hd158291158357_ (##car _e158290158354_))
                                    (_tl158292158359_ (##cdr _e158290158354_)))
                                (let ((_expr158362_ _hd158291158357_))
                                  (if (gx#stx-null? _tl158292158359_)
                                      (if '#t
                                          (_lp158256_
                                           _rest158279_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind158352_)
                                                   (gx#core-expand-expression
                                                    _expr158362_))
                                                  (gx#stx-source _hd158280_))
                                                 _body158259_))
                                          (_E158283158332_))
                                      (_E158283158332_)))))
                            (_E158283158332_)))))
                  (_E158283158332_))
              (_E158283158332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158283158332_)))))
                                  (_E158282158364_)))))
                        (if (##pair? _rest158260158268_)
                            (let ((_hd158265158371_ (##car _rest158260158268_))
                                  (_tl158266158373_
                                   (##cdr _rest158260158268_)))
                              (let* ((_hd158376_ _hd158265158371_)
                                     (_rest158378_ _tl158266158373_))
                                (_K158264158368_ _rest158378_ _hd158376_)))
                            (_else158262158276_)))))))
          (_expand-body158252_
           (gx#core-expand-block__%
            (cons '%#begin-module _body158249_)
            _expand-special158251_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx158092_
               _expanded?158093_
               _method158094_
               _current-phi158095_
               _expand1158096_)
        (letrec ((_K158098_
                  (lambda (_rest158216_ _r158217_)
                    (let* ((_e158218158225_ _rest158216_)
                           (_E158220158229_ (lambda () _r158217_))
                           (_E158219158245_
                            (lambda ()
                              (if (gx#stx-pair? _e158218158225_)
                                  (let ((_e158221158233_
                                         (gx#syntax-e _e158218158225_)))
                                    (let ((_hd158222158236_
                                           (##car _e158221158233_))
                                          (_tl158223158238_
                                           (##cdr _e158221158233_)))
                                      (let* ((_hd158241_ _hd158222158236_)
                                             (_rest158243_ _tl158223158238_))
                                        (if '#t
                                            (_step158099_
                                             _hd158241_
                                             _rest158243_
                                             _r158217_)
                                            (_E158220158229_)))))
                                  (_E158220158229_)))))
                      (_E158219158245_))))
                 (_step158099_
                  (lambda (_hd158130_ _rest158131_ _r158132_)
                    (let* ((_e158133158151_ _hd158130_)
                           (_E158146158155_
                            (lambda ()
                              (if (_expanded?158093_ (gx#stx-e _hd158130_))
                                  (_K158098_
                                   _rest158131_
                                   (cons (gx#stx-e _hd158130_) _r158132_))
                                  (_expand1158096_
                                   _hd158130_
                                   _K158098_
                                   _rest158131_
                                   _r158132_))))
                           (_E158142158171_
                            (lambda ()
                              (if (gx#stx-pair? _e158133158151_)
                                  (let ((_e158147158159_
                                         (gx#syntax-e _e158133158151_)))
                                    (let ((_hd158148158162_
                                           (##car _e158147158159_))
                                          (_tl158149158164_
                                           (##cdr _e158147158159_)))
                                      (let* ((_macro158167_ _hd158148158162_)
                                             (_body158169_ _tl158149158164_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro158167_
                                             gx#syntax-binding?)
                                            (_K158098_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro158167_)
                                                    _hd158130_
                                                    _method158094_)
                                                   _rest158131_)
                                             _r158132_)
                                            (_E158146158155_)))))
                                  (_E158146158155_))))
                           (_E158135158185_
                            (lambda ()
                              (if (gx#stx-pair? _e158133158151_)
                                  (let ((_e158143158175_
                                         (gx#syntax-e _e158133158151_)))
                                    (let ((_hd158144158178_
                                           (##car _e158143158175_))
                                          (_tl158145158180_
                                           (##cdr _e158143158175_)))
                                      (if (eq? (gx#stx-e _hd158144158178_)
                                               'begin:)
                                          (let ((_body158183_
                                                 _tl158145158180_))
                                            (if '#t
                                                (_K158098_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest158131_
                                                  _body158183_)
                                                 _r158132_)
                                                (_E158142158171_)))
                                          (_E158142158171_))))
                                  (_E158142158171_))))
                           (_E158134158212_
                            (lambda ()
                              (if (gx#stx-pair? _e158133158151_)
                                  (let ((_e158136158189_
                                         (gx#syntax-e _e158133158151_)))
                                    (let ((_hd158137158192_
                                           (##car _e158136158189_))
                                          (_tl158138158194_
                                           (##cdr _e158136158189_)))
                                      (if (eq? (gx#stx-e _hd158137158192_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl158138158194_)
                                              (let ((_e158139158197_
                                                     (gx#syntax-e
                                                      _tl158138158194_)))
                                                (let ((_hd158140158200_
                                                       (##car _e158139158197_))
                                                      (_tl158141158202_
                                                       (##cdr _e158139158197_)))
                                                  (let* ((_dphi158205_
                                                          _hd158140158200_)
                                                         (_body158207_
                                                          _tl158141158202_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi158205_)
                                                        (let ((_rbody158210_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K158098_ _body158207_ '()))
                        _current-phi158095_
                        (fx+ (gx#stx-e _dphi158205_) (_current-phi158095_)))))
                  (_K158098_
                   _rest158131_
                   (foldr1 cons _r158132_ _rbody158210_)))
                (_E158135158185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158135158185_))
                                          (_E158135158185_))))
                                  (_E158135158185_)))))
                      (_E158134158212_)))))
          (let* ((_e158100158107_ _stx158092_)
                 (_E158102158111_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158100158107_)))
                 (_E158101158126_
                  (lambda ()
                    (if (gx#stx-pair? _e158100158107_)
                        (let ((_e158103158115_ (gx#syntax-e _e158100158107_)))
                          (let ((_hd158104158118_ (##car _e158103158115_))
                                (_tl158105158120_ (##cdr _e158103158115_)))
                            (let ((_body158123_ _tl158105158120_))
                              (if '#t
                                  (if (_current-phi158095_)
                                      (_K158098_ _body158123_ '())
                                      (call-with-parameters
                                       (lambda () (_K158098_ _body158123_ '()))
                                       _current-phi158095_
                                       (gx#current-expander-phi)))
                                  (_E158102158111_)))))
                        (_E158102158111_)))))
            (_E158101158126_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx157759_ _internal-expand?157760_)
        (letrec ((_expand1157762_
                  (lambda (_hd158072_ _K158073_ _rest158074_ _r158075_)
                    (if (gx#core-bound-module? _hd158072_)
                        (_import1157763_
                         (gx#syntax-local-e__0 _hd158072_)
                         _K158073_
                         _rest158074_
                         _r158075_)
                        (if (gx#core-library-module-path? _hd158072_)
                            (_import1157763_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd158072_))
                             _K158073_
                             _rest158074_
                             _r158075_)
                            (if (gx#core-library-relative-module-path?
                                 _hd158072_)
                                (_import1157763_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd158072_))
                                 _K158073_
                                 _rest158074_
                                 _r158075_)
                                (let ((_e158077_ (gx#stx-e _hd158072_)))
                                  (if (pair? _e158077_)
                                      (let ((_$e158079_
                                             (gx#stx-e (car _e158077_))))
                                        (if (eq? 'spec: _$e158079_)
                                            (_import-spec157766_
                                             _hd158072_
                                             _K158073_
                                             _rest158074_
                                             _r158075_)
                                            (if (eq? 'in: _$e158079_)
                                                (_import-submodule157764_
                                                 _hd158072_
                                                 _K158073_
                                                 _rest158074_
                                                 _r158075_)
                                                (if (eq? 'runtime: _$e158079_)
                                                    (_import-runtime157765_
                                                     _hd158072_
                                                     _K158073_
                                                     _rest158074_
                                                     _r158075_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx157759_
                                                     _hd158072_)))))
                                      (if (string? _e158077_)
                                          (_import1157763_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd158072_
                                             (gx#stx-source _stx157759_)))
                                           _K158073_
                                           _rest158074_
                                           _r158075_)
                                          (if (class-instance?
                                               gx#module-context::t
                                               _e158077_)
                                              (_K158073_
                                               _rest158074_
                                               (cons _e158077_ _r158075_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx157759_
                                               _hd158072_))))))))))
                 (_import1157763_
                  (lambda (_ctx158061_ _K158062_ _rest158063_ _r158064_)
                    (let ((_dphi158066_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K158062_
                       _rest158063_
                       (cons (let ((__obj165090
                                    (##structure
                                     gx#import-set::t
                                     '#f
                                     '#f
                                     '#f)))
                               (class-instance-init!
                                __obj165090
                                _ctx158061_
                                _dphi158066_
                                (map (lambda (_g158067158069_)
                                       (gx#core-module-export->import__%
                                        _g158067158069_
                                        '#f
                                        _dphi158066_))
                                     (unchecked-slot-ref _ctx158061_ 'export)))
                               __obj165090)
                             _r158064_)))))
                 (_import-submodule157764_
                  (lambda (_hd158028_ _K158029_ _rest158030_ _r158031_)
                    (let* ((_e158032158039_ _hd158028_)
                           (_E158034158043_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158032158039_)))
                           (_E158033158057_
                            (lambda ()
                              (if (gx#stx-pair? _e158032158039_)
                                  (let ((_e158035158047_
                                         (gx#syntax-e _e158032158039_)))
                                    (let ((_hd158036158050_
                                           (##car _e158035158047_))
                                          (_tl158037158052_
                                           (##cdr _e158035158047_)))
                                      (let ((_spath158055_ _tl158037158052_))
                                        (if '#t
                                            (_import1157763_
                                             (_import-spec-source157767_
                                              _spath158055_)
                                             _K158029_
                                             _rest158030_
                                             _r158031_)
                                            (_E158034158043_)))))
                                  (_E158034158043_)))))
                      (_E158033158057_))))
                 (_import-runtime157765_
                  (lambda (_hd157995_ _K157996_ _rest157997_ _r157998_)
                    (let* ((_e157999158006_ _hd157995_)
                           (_E158001158010_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157999158006_)))
                           (_E158000158024_
                            (lambda ()
                              (if (gx#stx-pair? _e157999158006_)
                                  (let ((_e158002158014_
                                         (gx#syntax-e _e157999158006_)))
                                    (let ((_hd158003158017_
                                           (##car _e158002158014_))
                                          (_tl158004158019_
                                           (##cdr _e158002158014_)))
                                      (let ((_spath158022_ _tl158004158019_))
                                        (if '#t
                                            (_K157996_
                                             _rest157997_
                                             (cons (_import-spec-source157767_
                                                    _spath158022_)
                                                   _r157998_))
                                            (_E158001158010_)))))
                                  (_E158001158010_)))))
                      (_E158000158024_))))
                 (_import-spec157766_
                  (lambda (_hd157834_ _K157835_ _rest157836_ _r157837_)
                    (let* ((_e157838157855_ _hd157834_)
                           (_E157847157859_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157838157855_)))
                           (_E157840157969_
                            (lambda ()
                              (if (gx#stx-pair? _e157838157855_)
                                  (let ((_e157848157863_
                                         (gx#syntax-e _e157838157855_)))
                                    (let ((_hd157849157866_
                                           (##car _e157848157863_))
                                          (_tl157850157868_
                                           (##cdr _e157848157863_)))
                                      (if (gx#stx-pair? _tl157850157868_)
                                          (let ((_e157851157871_
                                                 (gx#syntax-e
                                                  _tl157850157868_)))
                                            (let ((_hd157852157874_
                                                   (##car _e157851157871_))
                                                  (_tl157853157876_
                                                   (##cdr _e157851157871_)))
                                              (let* ((_path157879_
                                                      _hd157852157874_)
                                                     (_specs157881_
                                                      _tl157853157876_))
                                                (if '#t
                                                    (let ((_src-ctx157883_
                                                           (_import-spec-source157767_
                                                            _path157879_))
                                                          (_exports157884_
                                                           (make-table))
                                                          (_specs157885_
                                                           (gx#syntax->list
                                                            _specs157881_)))
                                                      (for-each
                                                       (lambda (_out157887_)
                                                         (table-set!
                                                          _exports157884_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out157887_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out157887_
                         '4
                         gx#module-export::t
                         '#f))
                  _out157887_))
               (unchecked-slot-ref _src-ctx157883_ 'export))
              (_K157835_
               _rest157836_
               (foldl1 (lambda (_spec157889_ _r157890_)
                         (let* ((_e157891157907_ _spec157889_)
                                (_E157893157911_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e157891157907_)))
                                (_E157892157965_
                                 (lambda ()
                                   (if (gx#stx-pair? _e157891157907_)
                                       (let ((_e157894157915_
                                              (gx#syntax-e _e157891157907_)))
                                         (let ((_hd157895157918_
                                                (##car _e157894157915_))
                                               (_tl157896157920_
                                                (##cdr _e157894157915_)))
                                           (let ((_phi157923_
                                                  _hd157895157918_))
                                             (if (gx#stx-pair?
                                                  _tl157896157920_)
                                                 (let ((_e157897157925_
                                                        (gx#syntax-e
                                                         _tl157896157920_)))
                                                   (let ((_hd157898157928_
                                                          (##car _e157897157925_))
                                                         (_tl157899157930_
                                                          (##cdr _e157897157925_)))
                                                     (let ((_name157933_
                                                            _hd157898157928_))
                                                       (if (gx#stx-pair?
                                                            _tl157899157930_)
                                                           (let ((_e157900157935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl157899157930_)))
                     (let ((_hd157901157938_ (##car _e157900157935_))
                           (_tl157902157940_ (##cdr _e157900157935_)))
                       (let ((_src-phi157943_ _hd157901157938_))
                         (if (gx#stx-pair? _tl157902157940_)
                             (let ((_e157903157945_
                                    (gx#syntax-e _tl157902157940_)))
                               (let ((_hd157904157948_ (##car _e157903157945_))
                                     (_tl157905157950_
                                      (##cdr _e157903157945_)))
                                 (let ((_src-name157953_ _hd157904157948_))
                                   (if (gx#stx-null? _tl157905157950_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi157943_)
                                                (gx#identifier?
                                                 _src-name157953_)
                                                (gx#stx-fixnum? _phi157923_)
                                                (gx#identifier? _name157933_))
                                           (let ((_src-phi157955_
                                                  (gx#stx-e _src-phi157943_))
                                                 (_src-name157956_
                                                  (gx#core-identifier-key
                                                   _src-name157953_))
                                                 (_phi157957_
                                                  (gx#stx-e _phi157923_))
                                                 (_name157958_
                                                  (gx#core-identifier-key
                                                   _name157933_)))
                                             (let ((_$e157960_
                                                    (table-ref
                                                     _exports157884_
                                                     (cons _src-phi157955_
                                                           _src-name157956_)
                                                     '#f)))
                                               (if _$e157960_
                                                   ((lambda (_out157963_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out157963_
                                                             _name157958_
                                                             (fx- _phi157957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi157955_))
                    _r157890_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e157960_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx157759_
                                                    _hd157834_))))
                                           (_E157893157911_))
                                       (_E157893157911_)))))
                             (_E157893157911_)))))
                   (_E157893157911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E157893157911_)))))
                                       (_E157893157911_)))))
                           (_E157892157965_)))
                       _r157837_
                       _specs157885_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E157847157859_)))))
                                          (_E157847157859_))))
                                  (_E157847157859_))))
                           (_E157839157991_
                            (lambda ()
                              (if (gx#stx-pair? _e157838157855_)
                                  (let ((_e157841157973_
                                         (gx#syntax-e _e157838157855_)))
                                    (let ((_hd157842157976_
                                           (##car _e157841157973_))
                                          (_tl157843157978_
                                           (##cdr _e157841157973_)))
                                      (if (gx#stx-pair? _tl157843157978_)
                                          (let ((_e157844157981_
                                                 (gx#syntax-e
                                                  _tl157843157978_)))
                                            (let ((_hd157845157984_
                                                   (##car _e157844157981_))
                                                  (_tl157846157986_
                                                   (##cdr _e157844157981_)))
                                              (let ((_path157989_
                                                     _hd157845157984_))
                                                (if (gx#stx-null?
                                                     _tl157846157986_)
                                                    (if '#t
                                                        (_K157835_
                                                         _rest157836_
                                                         (cons (_import-spec-source157767_
                                                                _path157989_)
                                                               _r157837_))
                                                        (_E157840157969_))
                                                    (_E157840157969_)))))
                                          (_E157840157969_))))
                                  (_E157840157969_)))))
                      (_E157839157991_))))
                 (_import-spec-source157767_
                  (lambda (_spath157832_)
                    (gx#core-import-nested-module _spath157832_ _stx157759_)))
                 (_import!157768_
                  (lambda (_rbody157781_)
                    (letrec* ((_current-ctx157783_
                               (gx#current-expander-context))
                              (_deps157784_ (make-table 'test: eq?))
                              (_bind!157785_
                               (lambda (_hd157830_)
                                 (gx#core-bind-import!__1
                                  _hd157830_
                                  _current-ctx157783_))))
                      (let _lp157787_ ((_rest157789_ _rbody157781_)
                                       (_body157790_ '()))
                        (let* ((_rest157791157799_ _rest157789_)
                               (_else157793157809_
                                (lambda ()
                                  (if (class-instance?
                                       gx#module-context::t
                                       _current-ctx157783_)
                                      (unchecked-slot-set!
                                       _current-ctx157783_
                                       'import
                                       (foldl1 cons
                                               (unchecked-slot-ref
                                                _current-ctx157783_
                                                'import)
                                               _body157790_))
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx157807_ _g165119_)
                                     (gx#eval-module _ctx157807_))
                                   _deps157784_)
                                  _body157790_))
                               (_K157795157818_
                                (lambda (_rest157812_ _hd157813_)
                                  (if (##structure-direct-instance-of?
                                       _hd157813_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!157785_ _hd157813_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd157813_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd157813_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps157784_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd157813_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd157813_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!157785_
                                             (##unchecked-structure-ref
                                              _hd157813_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd157813_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps157784_
                                                 (##unchecked-structure-ref
                                                  _hd157813_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e157815_
                                                 (class-instance?
                                                  gx#module-context::t
                                                  _hd157813_)))
                                            (if _$e157815_
                                                _$e157815_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx157759_
                                                 _hd157813_)))))
                                  (_lp157787_
                                   _rest157812_
                                   (cons _hd157813_ _body157790_)))))
                          (if (##pair? _rest157791157799_)
                              (let ((_hd157796157821_
                                     (##car _rest157791157799_))
                                    (_tl157797157823_
                                     (##cdr _rest157791157799_)))
                                (let* ((_hd157826_ _hd157796157821_)
                                       (_rest157828_ _tl157797157823_))
                                  (_K157795157818_ _rest157828_ _hd157826_)))
                              (_else157793157809_)))))))
                 (_expanded-import?157769_
                  (lambda (_e157773_)
                    (let ((_$e157775_
                           (##structure-direct-instance-of?
                            _e157773_
                            'gx#import-set::t)))
                      (if _$e157775_
                          _$e157775_
                          (let ((_$e157778_
                                 (##structure-direct-instance-of?
                                  _e157773_
                                  'gx#module-import::t)))
                            (if _$e157778_
                                _$e157778_
                                (class-instance?
                                 gx#module-context::t
                                 _e157773_))))))))
          (let ((_rbody157771_
                 (gx#core-expand-import/export
                  _stx157759_
                  _expanded-import?157769_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1157762_)))
            (if _internal-expand?157760_
                (reverse _rbody157771_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!157768_ _rbody157771_))
                 (gx#stx-source _stx157759_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx158085_)
        (let ((_internal-expand?158087_ '#f))
          (gx#core-expand-import%__% _stx158085_ _internal-expand?158087_))))
    (define gx#core-expand-import%
      (lambda _g165121_
        (let ((_g165120_ (##length _g165121_)))
          (cond ((##fx= _g165120_ 1)
                 (apply (lambda (_stx158085_)
                          (gx#core-expand-import%__0 _stx158085_))
                        _g165121_))
                ((##fx= _g165120_ 2)
                 (apply (lambda (_stx158089_ _internal-expand?158090_)
                          (gx#core-expand-import%__%
                           _stx158089_
                           _internal-expand?158090_))
                        _g165121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g165121_))))))
    (define gx#core-import-nested-module
      (lambda (_spath157686_ _where157687_)
        (let* ((_e157688157695_ _spath157686_)
               (_E157690157699_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157688157695_)))
               (_E157689157754_
                (lambda ()
                  (if (gx#stx-pair? _e157688157695_)
                      (let ((_e157691157703_ (gx#syntax-e _e157688157695_)))
                        (let ((_hd157692157706_ (##car _e157691157703_))
                              (_tl157693157708_ (##cdr _e157691157703_)))
                          (let* ((_origin157711_ _hd157692157706_)
                                 (_sub157713_ _tl157693157708_))
                            (if '#t
                                (let ((_origin-ctx157715_
                                       (if (gx#stx-false? _origin157711_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin157711_))))
                                  (let _lp157717_ ((_rest157719_ _sub157713_)
                                                   (_ctx157720_
                                                    _origin-ctx157715_))
                                    (let* ((_e157721157728_ _rest157719_)
                                           (_E157723157732_
                                            (lambda () _ctx157720_))
                                           (_E157722157750_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e157721157728_)
                                                  (let ((_e157724157736_
                                                         (gx#syntax-e
                                                          _e157721157728_)))
                                                    (let ((_hd157725157739_
                                                           (##car _e157724157736_))
                                                          (_tl157726157741_
                                                           (##cdr _e157724157736_)))
                                                      (let* ((_id157744_
                                                              _hd157725157739_)
                                                             (_rest157746_
                                                              _tl157726157741_))
                                                        (if '#t
                                                            (let ((_bind157748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id157744_
                            '0
                            _ctx157720_)))
                      (if (and (##structure-direct-instance-of?
                                _bind157748_
                                'gx#syntax-binding::t)
                               (class-instance?
                                gx#module-context::t
                                (##unchecked-structure-ref
                                 _bind157748_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where157687_
                           _spath157686_
                           _id157744_))
                      (_lp157717_
                       _rest157746_
                       (##unchecked-structure-ref
                        _bind157748_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E157723157732_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E157723157732_)))))
                                      (_E157722157750_))))
                                (_E157690157699_)))))
                      (_E157690157699_)))))
          (_E157689157754_))))
    (define gx#core-expand-import-source
      (lambda (_hd157684_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd157684_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx157192_ _internal-expand?157193_)
        (letrec* ((_make-export__165036165037_
                   (lambda (_bind157632_ _phi157633_ _ctx157634_ _name157635_)
                     (let* ((_key157637_
                             (unchecked-slot-ref _bind157632_ 'key))
                            (_export-key157639_
                             (if _name157635_
                                 (gx#core-identifier-key _name157635_)
                                 _key157637_)))
                       (let ((__obj165091
                              (##structure
                               gx#module-export::t
                               '#f
                               '#f
                               '#f
                               '#f
                               '#f)))
                         (class-instance-init!
                          __obj165091
                          _ctx157634_
                          _key157637_
                          _phi157633_
                          _export-key157639_
                          (let ((_$e157642_
                                 (class-instance?
                                  gx#extern-binding::t
                                  _bind157632_)))
                            (if _$e157642_
                                _$e157642_
                                (##structure-direct-instance-of?
                                 _bind157632_
                                 'gx#import-binding::t))))
                         __obj165091))))
                  (_make-export__0__165038165041_
                   (lambda (_bind157648_)
                     (let* ((_phi157650_ (gx#current-export-expander-phi))
                            (_ctx157652_ (gx#current-expander-context))
                            (_name157654_ '#f))
                       (_make-export__165036165037_
                        _bind157648_
                        _phi157650_
                        _ctx157652_
                        _name157654_))))
                  (_make-export__1__165039165042_
                   (lambda (_bind157656_ _phi157657_)
                     (let* ((_ctx157659_ (gx#current-expander-context))
                            (_name157661_ '#f))
                       (_make-export__165036165037_
                        _bind157656_
                        _phi157657_
                        _ctx157659_
                        _name157661_))))
                  (_make-export__2__165040165043_
                   (lambda (_bind157663_ _phi157664_ _ctx157665_)
                     (let ((_name157667_ '#f))
                       (_make-export__165036165037_
                        _bind157663_
                        _phi157664_
                        _ctx157665_
                        _name157667_))))
                  (_make-export157195_
                   (lambda _g165123_
                     (let ((_g165122_ (##length _g165123_)))
                       (cond ((##fx= _g165122_ 1)
                              (apply (lambda (_bind157648_)
                                       (_make-export__0__165038165041_
                                        _bind157648_))
                                     _g165123_))
                             ((##fx= _g165122_ 2)
                              (apply (lambda (_bind157656_ _phi157657_)
                                       (_make-export__1__165039165042_
                                        _bind157656_
                                        _phi157657_))
                                     _g165123_))
                             ((##fx= _g165122_ 3)
                              (apply (lambda (_bind157663_
                                              _phi157664_
                                              _ctx157665_)
                                       (_make-export__2__165040165043_
                                        _bind157663_
                                        _phi157664_
                                        _ctx157665_))
                                     _g165123_))
                             ((##fx= _g165122_ 4)
                              (apply (lambda (_bind157669_
                                              _phi157670_
                                              _ctx157671_
                                              _name157672_)
                                       (_make-export__165036165037_
                                        _bind157669_
                                        _phi157670_
                                        _ctx157671_
                                        _name157672_))
                                     _g165123_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g165123_))))))
                  (_expand1157196_
                   (lambda (_hd157345_ _K157346_ _rest157347_ _r157348_)
                     (let* ((_e157349157381_ _hd157345_)
                            (_E157376157385_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx157192_
                                _hd157345_)))
                            (_E157366157464_
                             (lambda ()
                               (if (gx#stx-pair? _e157349157381_)
                                   (let ((_e157377157389_
                                          (gx#syntax-e _e157349157381_)))
                                     (let ((_hd157378157392_
                                            (##car _e157377157389_))
                                           (_tl157379157394_
                                            (##cdr _e157377157389_)))
                                       (if (eq? (gx#stx-e _hd157378157392_)
                                                'import:)
                                           (let ((_in157397_ _tl157379157394_))
                                             (if (gx#stx-list? _in157397_)
                                                 (let _lp157399_ ((_in-rest157401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in157397_)
                          (_r157402_ _r157348_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e157403157410_
                                                           _in-rest157401_)
                                                          (_E157405157414_
                                                           (lambda ()
                                                             (_K157346_
                                                              _rest157347_
                                                              _r157402_)))
                                                          (_E157404157460_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e157403157410_)
                         (let ((_e157406157418_ (gx#syntax-e _e157403157410_)))
                           (let ((_hd157407157421_ (##car _e157406157418_))
                                 (_tl157408157423_ (##cdr _e157406157418_)))
                             (let* ((_hd157426_ _hd157407157421_)
                                    (_in-rest157428_ _tl157408157423_))
                               (if '#t
                                   (let ((_src157458_
                                          (if (gx#core-bound-module?
                                               _hd157426_)
                                              (gx#syntax-local-e__0 _hd157426_)
                                              (if (gx#core-library-module-path?
                                                   _hd157426_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd157426_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd157426_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd157426_))
                                                      (if (gx#stx-string?
                                                           _hd157426_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd157426_
                                                            (gx#stx-source
                                                             _stx157192_)))
                                                          (let* ((_e157429157436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd157426_)
                         (_E157431157440_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx157192_
                             _hd157426_)))
                         (_E157430157454_
                          (lambda ()
                            (if (gx#stx-pair? _e157429157436_)
                                (let ((_e157432157444_
                                       (gx#syntax-e _e157429157436_)))
                                  (let ((_hd157433157447_
                                         (##car _e157432157444_))
                                        (_tl157434157449_
                                         (##cdr _e157432157444_)))
                                    (if (eq? (gx#stx-e _hd157433157447_) 'in:)
                                        (let ((_spath157452_ _tl157434157449_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath157452_
                                               _stx157192_)
                                              (_E157431157440_)))
                                        (_E157431157440_))))
                                (_E157431157440_)))))
                    (_E157430157454_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp157399_
                                      _in-rest157428_
                                      (_export-imports157197_
                                       _src157458_
                                       _r157402_)))
                                   (_E157405157414_)))))
                         (_E157405157414_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E157404157460_)))
                                                 (_E157376157385_)))
                                           (_E157376157385_))))
                                   (_E157376157385_))))
                            (_E157353157503_
                             (lambda ()
                               (if (gx#stx-pair? _e157349157381_)
                                   (let ((_e157367157468_
                                          (gx#syntax-e _e157349157381_)))
                                     (let ((_hd157368157471_
                                            (##car _e157367157468_))
                                           (_tl157369157473_
                                            (##cdr _e157367157468_)))
                                       (if (eq? (gx#stx-e _hd157368157471_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl157369157473_)
                                               (let ((_e157370157476_
                                                      (gx#syntax-e
                                                       _tl157369157473_)))
                                                 (let ((_hd157371157479_
                                                        (##car _e157370157476_))
                                                       (_tl157372157481_
                                                        (##cdr _e157370157476_)))
                                                   (let ((_id157484_
                                                          _hd157371157479_))
                                                     (if (gx#stx-pair?
                                                          _tl157372157481_)
                                                         (let ((_e157373157486_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157372157481_)))
                   (let ((_hd157374157489_ (##car _e157373157486_))
                         (_tl157375157491_ (##cdr _e157373157486_)))
                     (let ((_name157494_ _hd157374157489_))
                       (if (gx#stx-null? _tl157375157491_)
                           (if '#t
                               (let* ((_phi157496_
                                       (gx#current-export-expander-phi))
                                      (_$e157498_
                                       (gx#core-resolve-identifier__1
                                        _id157484_
                                        _phi157496_)))
                                 (if _$e157498_
                                     ((lambda (_bind157501_)
                                        (_K157346_
                                         _rest157347_
                                         (cons (_make-export__165036165037_
                                                _bind157501_
                                                _phi157496_
                                                (gx#current-expander-context)
                                                _name157494_)
                                               _r157348_)))
                                      _$e157498_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx157192_
                                      _hd157345_
                                      _id157484_)))
                               (_E157366157464_))
                           (_E157366157464_)))))
                 (_E157366157464_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157366157464_))
                                           (_E157366157464_))))
                                   (_E157366157464_))))
                            (_E157352157552_
                             (lambda ()
                               (if (gx#stx-pair? _e157349157381_)
                                   (let ((_e157354157507_
                                          (gx#syntax-e _e157349157381_)))
                                     (let ((_hd157355157510_
                                            (##car _e157354157507_))
                                           (_tl157356157512_
                                            (##cdr _e157354157507_)))
                                       (if (eq? (gx#stx-e _hd157355157510_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl157356157512_)
                                               (let ((_e157357157515_
                                                      (gx#syntax-e
                                                       _tl157356157512_)))
                                                 (let ((_hd157358157518_
                                                        (##car _e157357157515_))
                                                       (_tl157359157520_
                                                        (##cdr _e157357157515_)))
                                                   (let ((_phi157523_
                                                          _hd157358157518_))
                                                     (if (gx#stx-pair?
                                                          _tl157359157520_)
                                                         (let ((_e157360157525_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157359157520_)))
                   (let ((_hd157361157528_ (##car _e157360157525_))
                         (_tl157362157530_ (##cdr _e157360157525_)))
                     (let ((_id157533_ _hd157361157528_))
                       (if (gx#stx-pair? _tl157362157530_)
                           (let ((_e157363157535_
                                  (gx#syntax-e _tl157362157530_)))
                             (let ((_hd157364157538_ (##car _e157363157535_))
                                   (_tl157365157540_ (##cdr _e157363157535_)))
                               (let ((_name157543_ _hd157364157538_))
                                 (if (gx#stx-null? _tl157365157540_)
                                     (if (and (gx#stx-fixnum? _phi157523_)
                                              (gx#identifier? _id157533_)
                                              (gx#identifier? _name157543_))
                                         (let* ((_phi157545_
                                                 (gx#stx-e _phi157523_))
                                                (_$e157547_
                                                 (gx#core-resolve-identifier__1
                                                  _id157533_
                                                  _phi157545_)))
                                           (if _$e157547_
                                               ((lambda (_bind157550_)
                                                  (_K157346_
                                                   _rest157347_
                                                   (cons (_make-export__165036165037_
                                                          _bind157550_
                                                          _phi157545_
                                                          (gx#current-expander-context)
                                                          _name157543_)
                                                         _r157348_)))
                                                _$e157547_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx157192_
                                                _hd157345_
                                                _id157533_)))
                                         (_E157353157503_))
                                     (_E157353157503_)))))
                           (_E157353157503_)))))
                 (_E157353157503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157353157503_))
                                           (_E157353157503_))))
                                   (_E157353157503_))))
                            (_E157351157563_
                             (lambda ()
                               (let ((_id157556_ _e157349157381_))
                                 (if (gx#identifier? _id157556_)
                                     (let ((_$e157558_
                                            (gx#core-resolve-identifier__1
                                             _id157556_
                                             (gx#current-export-expander-phi))))
                                       (if _$e157558_
                                           ((lambda (_bind157561_)
                                              (_K157346_
                                               _rest157347_
                                               (cons (_make-export__0__165038165041_
                                                      _bind157561_)
                                                     _r157348_)))
                                            _$e157558_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx157192_
                                            _hd157345_)))
                                     (_E157352157552_)))))
                            (_E157350157627_
                             (lambda ()
                               (if (eq? (gx#stx-e _e157349157381_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx157567_
                                               (gx#current-expander-context))
                                              (_current-phi157569_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx157571_
                                               (gx#core-context-shift
                                                _current-ctx157567_
                                                _current-phi157569_))
                                              (_phi-bind157573_
                                               (table->list
                                                (unchecked-slot-ref
                                                 _phi-ctx157571_
                                                 'table))))
                                         (let _lp157576_ ((_bind-rest157578_
                                                           _phi-bind157573_)
                                                          (_set157579_ '()))
                                           (let* ((_bind-rest157580157590_
                                                   _bind-rest157578_)
                                                  (_else157582157598_
                                                   (lambda ()
                                                     (_K157346_
                                                      _rest157347_
                                                      (cons (let ((__obj165092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##structure gx#export-set::t '#f '#f '#f)))
                      (class-instance-init!
                       __obj165092
                       '#f
                       _current-phi157569_
                       _set157579_)
                      __obj165092)
                    _r157348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_K157584157608_
                                                   (lambda (_bind-rest157601_
                                                            _bind157602_
                                                            _key157603_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind157602_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind157602_))
                                                         (_lp157576_
                                                          _bind-rest157601_
                                                          _set157579_)
                                                         (_lp157576_
                                                          _bind-rest157601_
                                                          (cons (_make-export__2__165040165043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind157602_
                         _current-phi157569_
                         _current-ctx157567_)
                        _set157579_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest157580157590_)
                                                 (let ((_hd157585157611_
                                                        (##car _bind-rest157580157590_))
                                                       (_tl157586157613_
                                                        (##cdr _bind-rest157580157590_)))
                                                   (if (##pair? _hd157585157611_)
                                                       (let ((_hd157587157616_
                                                              (##car _hd157585157611_))
                                                             (_tl157588157618_
                                                              (##cdr _hd157585157611_)))
                                                         (let* ((_key157621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd157587157616_)
                        (_bind157623_ _tl157588157618_)
                        (_bind-rest157625_ _tl157586157613_))
                   (_K157584157608_
                    _bind-rest157625_
                    _bind157623_
                    _key157621_)))
               (_else157582157598_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else157582157598_)))))
                                       (_E157351157563_))
                                   (_E157351157563_)))))
                       (_E157350157627_))))
                  (_export-imports157197_
                   (lambda (_src157221_ _r157222_)
                     (letrec* ((_current-ctx157224_
                                (gx#current-expander-context))
                               (_current-phi157225_
                                (gx#current-export-expander-phi))
                               (_import->export157226_
                                (lambda (_in157307_)
                                  (let* ((_in157308157316_ _in157307_)
                                         (_E157310157320_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in157308157316_)))
                                         (_K157311157327_
                                          (lambda (_phi157323_
                                                   _key157324_
                                                   _out157325_)
                                            (let ((__obj165093
                                                   (##structure
                                                    gx#module-export::t
                                                    '#f
                                                    '#f
                                                    '#f
                                                    '#f
                                                    '#f)))
                                              (class-instance-init!
                                               __obj165093
                                               _current-ctx157224_
                                               _key157324_
                                               _phi157323_
                                               _key157324_
                                               '#t)
                                              __obj165093))))
                                    (if (##structure-direct-instance-of?
                                         _in157308157316_
                                         'gx#module-import::t)
                                        (let* ((_e157312157330_
                                                (##unchecked-structure-ref
                                                 _in157308157316_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out157333_ _e157312157330_)
                                               (_e157313157335_
                                                (##unchecked-structure-ref
                                                 _in157308157316_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key157338_ _e157313157335_)
                                               (_e157314157340_
                                                (##unchecked-structure-ref
                                                 _in157308157316_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi157343_ _e157314157340_))
                                          (_K157311157327_
                                           _phi157343_
                                           _key157338_
                                           _out157333_))
                                        (_E157310157320_)))))
                               (_fold-e157227_
                                (lambda (_in157229_ _r157230_)
                                  (let* ((_in157231157245_ _in157229_)
                                         (_else157234157253_
                                          (lambda () _r157230_)))
                                    (let ((_K157240157289_
                                           (lambda (_phi157285_
                                                    _key157286_
                                                    _out157287_)
                                             (if (and (fx= _phi157285_
                                                           _current-phi157225_)
                                                      (eq? _src157221_
                                                           (##unchecked-structure-ref
                                                            _out157287_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export157226_
                                                        _in157229_)
                                                       _r157230_)
                                                 _r157230_)))
                                          (_K157236157264_
                                           (lambda (_imports157257_
                                                    _phi157258_
                                                    _ctx157259_)
                                             (if (and (fx= _phi157258_
                                                           _current-phi157225_)
                                                      (eq? _src157221_
                                                           _ctx157259_))
                                                 (foldl1 (lambda (_in157261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r157262_)
                   (cons (_import->export157226_ _in157261_) _r157262_))
                 _r157230_
                 _imports157257_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r157230_))))
                                      (let ((_try-match157233157282_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in157231157245_
                                                    'gx#import-set::t)
                                                   (let* ((_e157237157267_
                                                           (##unchecked-structure-ref
                                                            _in157231157245_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157238157272_
                                                           (##unchecked-structure-ref
                                                            _in157231157245_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157239157277_
                                                           (##unchecked-structure-ref
                                                            _in157231157245_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx157270_
                                                            _e157237157267_)
                                                           (_phi157275_
                                                            _e157238157272_)
                                                           (_imports157280_
                                                            _e157239157277_))
                                                       (_K157236157264_
                                                        _imports157280_
                                                        _phi157275_
                                                        _ctx157270_)))
                                                   (_else157234157253_)))))
                                        (if (##structure-direct-instance-of?
                                             _in157231157245_
                                             'gx#module-import::t)
                                            (let* ((_e157241157292_
                                                    (##unchecked-structure-ref
                                                     _in157231157245_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157242157297_
                                                    (##unchecked-structure-ref
                                                     _in157231157245_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157243157302_
                                                    (##unchecked-structure-ref
                                                     _in157231157245_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out157295_
                                                     _e157241157292_)
                                                    (_key157300_
                                                     _e157242157297_)
                                                    (_phi157305_
                                                     _e157243157302_))
                                                (_K157240157289_
                                                 _phi157305_
                                                 _key157300_
                                                 _out157295_)))
                                            (_try-match157233157282_))))))))
                       (cons (let ((__obj165094
                                    (##structure
                                     gx#export-set::t
                                     '#f
                                     '#f
                                     '#f)))
                               (class-instance-init!
                                __obj165094
                                _src157221_
                                _current-phi157225_
                                (foldl1 _fold-e157227_
                                        '()
                                        (unchecked-slot-ref
                                         _current-ctx157224_
                                         'import)))
                               __obj165094)
                             _r157222_))))
                  (_export!157198_
                   (lambda (_rbody157211_)
                     (letrec* ((_current-ctx157213_
                                (gx#current-expander-context))
                               (_fold-e157214_
                                (lambda (_out157218_ _r157219_)
                                  (if (##structure-direct-instance-of?
                                       _out157218_
                                       'gx#module-export::t)
                                      (cons _out157218_ _r157219_)
                                      (if (##structure-direct-instance-of?
                                           _out157218_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r157219_
                                                  (##unchecked-structure-ref
                                                   _out157218_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r157219_)))))
                       (let ((_body157216_ (reverse _rbody157211_)))
                         (unchecked-slot-set!
                          _current-ctx157213_
                          'export
                          (foldl1 _fold-e157214_
                                  (unchecked-slot-ref
                                   _current-ctx157213_
                                   'export)
                                  _body157216_))
                         _body157216_))))
                  (_expanded-export?157199_
                   (lambda (_e157206_)
                     (let ((_$e157208_
                            (##structure-direct-instance-of?
                             _e157206_
                             'gx#module-export::t)))
                       (if _$e157208_
                           _$e157208_
                           (##structure-direct-instance-of?
                            _e157206_
                            'gx#export-set::t))))))
          (if (or (class-instance?
                   gx#module-context::t
                   (gx#current-expander-context))
                  _internal-expand?157193_)
              (let ((_rbody157204_
                     (gx#core-expand-import/export
                      _stx157192_
                      _expanded-export?157199_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1157196_)))
                (if _internal-expand?157193_
                    (reverse _rbody157204_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!157198_ _rbody157204_))
                     (gx#stx-source _stx157192_))))
              (if (class-instance?
                   gx#top-context::t
                   (gx#current-expander-context))
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx157192_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx157192_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx157677_)
        (let ((_internal-expand?157679_ '#f))
          (gx#core-expand-export%__% _stx157677_ _internal-expand?157679_))))
    (define gx#core-expand-export%
      (lambda _g165125_
        (let ((_g165124_ (##length _g165125_)))
          (cond ((##fx= _g165124_ 1)
                 (apply (lambda (_stx157677_)
                          (gx#core-expand-export%__0 _stx157677_))
                        _g165125_))
                ((##fx= _g165124_ 2)
                 (apply (lambda (_stx157681_ _internal-expand?157682_)
                          (gx#core-expand-export%__%
                           _stx157681_
                           _internal-expand?157682_))
                        _g165125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g165125_))))))
    (define gx#core-expand-export-source
      (lambda (_hd157189_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd157189_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx157159_)
        (let* ((_e157160157167_ _stx157159_)
               (_E157162157171_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157160157167_)))
               (_E157161157185_
                (lambda ()
                  (if (gx#stx-pair? _e157160157167_)
                      (let ((_e157163157175_ (gx#syntax-e _e157160157167_)))
                        (let ((_hd157164157178_ (##car _e157163157175_))
                              (_tl157165157180_ (##cdr _e157163157175_)))
                          (let ((_body157183_ _tl157165157180_))
                            (if (gx#identifier-list? _body157183_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body157183_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body157183_))
                                   (gx#stx-source _stx157159_)))
                                (_E157162157171_)))))
                      (_E157162157171_)))))
          (_E157161157185_))))
    (define gx#core-bind-feature!__%
      (lambda (_id157125_ _private?157126_ _phi157127_ _ctx157128_)
        (gx#core-bind-syntax!__%
         _id157125_
         ((if _private?157126_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id157125_))
         _private?157126_
         _phi157127_
         _ctx157128_)))
    (define gx#core-bind-feature!__0
      (lambda (_id157133_)
        (let* ((_private?157135_ '#f)
               (_phi157137_ (gx#current-expander-phi))
               (_ctx157139_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157133_
           _private?157135_
           _phi157137_
           _ctx157139_))))
    (define gx#core-bind-feature!__1
      (lambda (_id157141_ _private?157142_)
        (let* ((_phi157144_ (gx#current-expander-phi))
               (_ctx157146_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157141_
           _private?157142_
           _phi157144_
           _ctx157146_))))
    (define gx#core-bind-feature!__2
      (lambda (_id157148_ _private?157149_ _phi157150_)
        (let ((_ctx157152_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157148_
           _private?157149_
           _phi157150_
           _ctx157152_))))
    (define gx#core-bind-feature!
      (lambda _g165127_
        (let ((_g165126_ (##length _g165127_)))
          (cond ((##fx= _g165126_ 1)
                 (apply (lambda (_id157133_)
                          (gx#core-bind-feature!__0 _id157133_))
                        _g165127_))
                ((##fx= _g165126_ 2)
                 (apply (lambda (_id157141_ _private?157142_)
                          (gx#core-bind-feature!__1
                           _id157141_
                           _private?157142_))
                        _g165127_))
                ((##fx= _g165126_ 3)
                 (apply (lambda (_id157148_ _private?157149_ _phi157150_)
                          (gx#core-bind-feature!__2
                           _id157148_
                           _private?157149_
                           _phi157150_))
                        _g165127_))
                ((##fx= _g165126_ 4)
                 (apply (lambda (_id157154_
                                 _private?157155_
                                 _phi157156_
                                 _ctx157157_)
                          (gx#core-bind-feature!__%
                           _id157154_
                           _private?157155_
                           _phi157156_
                           _ctx157157_))
                        _g165127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g165127_))))))))
