(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1710170107)
  (begin
    (declare (not safe))
    (define gx#module-import::t
      (make-class-type
       'gx#module-import::t
       'module-import
       (list)
       '(source name phi weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-import? (make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _$args92725_
        (apply make-instance gx#module-import::t _$args92725_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-export? (make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _$args92722_
        (apply make-instance gx#module-export::t _$args92722_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-set? (make-class-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _$args92719_
        (apply make-instance gx#import-set::t _$args92719_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#export-set? (make-class-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _$args92716_
        (apply make-instance gx#export-set::t _$args92716_)))
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
      (lambda _$args92713_
        (apply make-instance gx#import-expander::t _$args92713_)))
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
      (lambda _$args92710_
        (apply make-instance gx#export-expander::t _$args92710_)))
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
      (lambda _$args92707_
        (apply make-instance gx#import-export-expander::t _$args92707_)))
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
      (lambda (_path92704_ _fun92705_)
        (call-with-input-file
         (cons 'path: (cons _path92704_ gx#source-file-settings))
         _fun92705_)))
    (define gx#module-context:::init!
      (lambda (_self92698_ _id92699_ _super92700_ _ns92701_ _path92702_)
        (if (##fx< '11 (##structure-length _self92698_))
            (begin
              (##unchecked-structure-set!
               _self92698_
               _id92699_
               '1
               (##structure-type _self92698_)
               '#f)
              (##unchecked-structure-set!
               _self92698_
               (make-hash-table-eq)
               '2
               (##structure-type _self92698_)
               '#f)
              (##unchecked-structure-set!
               _self92698_
               _super92700_
               '3
               (##structure-type _self92698_)
               '#f)
              (##unchecked-structure-set!
               _self92698_
               '#f
               '4
               (##structure-type _self92698_)
               '#f)
              (##unchecked-structure-set!
               _self92698_
               '#f
               '5
               (##structure-type _self92698_)
               '#f)
              (##unchecked-structure-set!
               _self92698_
               _ns92701_
               '6
               (##structure-type _self92698_)
               '#f)
              (##unchecked-structure-set!
               _self92698_
               _path92702_
               '7
               (##structure-type _self92698_)
               '#f)
              (##unchecked-structure-set!
               _self92698_
               '()
               '8
               (##structure-type _self92698_)
               '#f)
              (##unchecked-structure-set!
               _self92698_
               '()
               '9
               (##structure-type _self92698_)
               '#f)
              (##unchecked-structure-set!
               _self92698_
               '#f
               '10
               (##structure-type _self92698_)
               '#f)
              (##unchecked-structure-set!
               _self92698_
               '#f
               '11
               (##structure-type _self92698_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92698_
                   '11
                   (##vector-length _self92698_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self92542_ _ctx92543_ _root92544_)
        (let ((_super92552_
               (let ((_$e92546_ _root92544_))
                 (if _$e92546_
                     _$e92546_
                     (let ((_$e92549_ (gx#core-context-root__0)))
                       (if _$e92549_
                           _$e92549_
                           (let ((__obj92767
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor92768
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj92767
                                     ':init!)))
                               (if __constructor92768
                                   (__constructor92768 __obj92767)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj92767)))))))
          (if _ctx92543_
              (let ((_id92555_
                     (##structure-ref
                      _ctx92543_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path92556_
                     (##structure-ref _ctx92543_ '7 gx#module-context::t '#f))
                    (_in92557_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx92543_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e92558_
                     (make-promise (lambda () (gx#eval-module _ctx92543_)))))
                (if (##fx< '8 (##structure-length _self92542_))
                    (begin
                      (##unchecked-structure-set!
                       _self92542_
                       _id92555_
                       '1
                       (##structure-type _self92542_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92542_
                       (make-hash-table-eq 'size: (length _in92557_))
                       '2
                       (##structure-type _self92542_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92542_
                       _super92552_
                       '3
                       (##structure-type _self92542_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92542_
                       '#f
                       '4
                       (##structure-type _self92542_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92542_
                       '#f
                       '5
                       (##structure-type _self92542_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92542_
                       _path92556_
                       '6
                       (##structure-type _self92542_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92542_
                       _in92557_
                       '7
                       (##structure-type _self92542_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92542_
                       _e92558_
                       '8
                       (##structure-type _self92542_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self92542_
                           '8
                           (##vector-length _self92542_)))
                (for-each
                 (lambda (_g9255992561_)
                   (gx#core-bind-weak-import!__% _g9255992561_ _self92542_))
                 _in92557_))
              (if (##fx< '8 (##structure-length _self92542_))
                  (begin
                    (##unchecked-structure-set!
                     _self92542_
                     '#f
                     '1
                     (##structure-type _self92542_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92542_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self92542_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92542_
                     _super92552_
                     '3
                     (##structure-type _self92542_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92542_
                     '#f
                     '4
                     (##structure-type _self92542_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92542_
                     '#f
                     '5
                     (##structure-type _self92542_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92542_
                     '#f
                     '6
                     (##structure-type _self92542_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92542_
                     '()
                     '7
                     (##structure-type _self92542_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92542_
                     '#f
                     '8
                     (##structure-type _self92542_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self92542_
                         '8
                         (##vector-length _self92542_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self92567_ _ctx92568_)
        (let ((_root92570_ '#f))
          (gx#prelude-context:::init!__% _self92567_ _ctx92568_ _root92570_))))
    (define gx#prelude-context:::init!
      (lambda _g92774_
        (let ((_g92773_ (##length _g92774_)))
          (cond ((##fx= _g92773_ 2)
                 (apply (lambda (_self92567_ _ctx92568_)
                          (gx#prelude-context:::init!__0
                           _self92567_
                           _ctx92568_))
                        _g92774_))
                ((##fx= _g92773_ 3)
                 (apply (lambda (_self92572_ _ctx92573_ _root92574_)
                          (gx#prelude-context:::init!__%
                           _self92572_
                           _ctx92573_
                           _root92574_))
                        _g92774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g92774_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self92416_ _e92417_)
        (if (##fx< '3 (##structure-length _self92416_))
            (begin
              (##unchecked-structure-set!
               _self92416_
               _e92417_
               '1
               (##structure-type _self92416_)
               '#f)
              (##unchecked-structure-set!
               _self92416_
               (gx#current-expander-context)
               '2
               (##structure-type _self92416_)
               '#f)
              (##unchecked-structure-set!
               _self92416_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self92416_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92416_
                   '3
                   (##vector-length _self92416_)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (bind-method!__%
     gx#import-expander::t
     ':init!
     gx#import-expander:::init!
     '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (bind-method!__%
     gx#export-expander::t
     ':init!
     gx#export-expander:::init!
     '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (bind-method!__%
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_g9204292045_ _g9204392047_)
        (gx#core-apply-user-expander__%
         _g9204292045_
         _g9204392047_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9191391916_ _g9191491918_)
        (gx#core-apply-user-expander__%
         _g9191391916_
         _g9191491918_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx91784_)
        (let* ((_path91786_
                (##structure-ref _ctx91784_ '7 gx#module-context::t '#f))
               (_path91788_
                (if (pair? _path91786_) (last _path91786_) _path91786_)))
          (if (string? _path91788_) _path91788_ '#f))))
    (define gx#import-module__%
      (lambda (_path91760_ _reload?91761_ _eval?91762_)
        (let ((_ctx91764_
               ((gx#current-expander-module-import)
                _path91760_
                _reload?91761_)))
          (if (and _ctx91764_ _eval?91762_)
              (gx#eval-module _ctx91764_)
              '#!void)
          _ctx91764_)))
    (define gx#import-module__0
      (lambda (_path91769_)
        (let* ((_reload?91771_ '#f) (_eval?91773_ '#f))
          (gx#import-module__% _path91769_ _reload?91771_ _eval?91773_))))
    (define gx#import-module__1
      (lambda (_path91775_ _reload?91776_)
        (let ((_eval?91778_ '#f))
          (gx#import-module__% _path91775_ _reload?91776_ _eval?91778_))))
    (define gx#import-module
      (lambda _g92776_
        (let ((_g92775_ (##length _g92776_)))
          (cond ((##fx= _g92775_ 1)
                 (apply (lambda (_path91769_)
                          (gx#import-module__0 _path91769_))
                        _g92776_))
                ((##fx= _g92775_ 2)
                 (apply (lambda (_path91775_ _reload?91776_)
                          (gx#import-module__1 _path91775_ _reload?91776_))
                        _g92776_))
                ((##fx= _g92775_ 3)
                 (apply (lambda (_path91780_ _reload?91781_ _eval?91782_)
                          (gx#import-module__%
                           _path91780_
                           _reload?91781_
                           _eval?91782_))
                        _g92776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g92776_))))))
    (define gx#eval-module
      (lambda (_mod91757_) ((gx#current-expander-module-eval) _mod91757_)))
    (define gx#core-eval-module
      (lambda (_obj91742_)
        (letrec ((_force-e91744_
                  (lambda (_getf91753_ _e91754_)
                    (call-with-parameters
                     (lambda () (force (_getf91753_ _e91754_)))
                     gx#current-expander-context
                     _e91754_
                     gx#current-expander-phi
                     '0))))
          (let _recur91746_ ((_e91748_ _obj91742_))
            (if (##structure-instance-of? _e91748_ 'gx#module-context::t)
                (begin
                  (let ((_$e91750_ (gx#core-context-prelude__% _e91748_)))
                    (if _$e91750_ (_recur91746_ _$e91750_) '#!void))
                  (_force-e91744_ gx#module-context-e _e91748_))
                (if (##structure-instance-of? _e91748_ 'gx#prelude-context::t)
                    (_force-e91744_ gx#prelude-context-e _e91748_)
                    (if (gx#stx-string? _e91748_)
                        (_recur91746_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e91748_)))
                        (if (gx#core-library-module-path? _e91748_)
                            (_recur91746_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e91748_)))
                            (error '"Cannot eval module" _obj91742_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx91725_)
        (let _lp91727_ ((_e91729_ _ctx91725_))
          (if (or (##structure-instance-of? _e91729_ 'gx#module-context::t)
                  (##structure-instance-of? _e91729_ 'gx#local-context::t))
              (_lp91727_
               (##unchecked-structure-ref _e91729_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e91729_ 'gx#prelude-context::t)
                  _e91729_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx91738_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx91738_))))
    (define gx#core-context-prelude
      (lambda _g92778_
        (let ((_g92777_ (##length _g92778_)))
          (cond ((##fx= _g92777_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g92778_))
                ((##fx= _g92777_ 1)
                 (apply (lambda (_ctx91740_)
                          (gx#core-context-prelude__% _ctx91740_))
                        _g92778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g92778_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx91715_)
        (let* ((_ht91717_ (gx#current-expander-module-registry))
               (_$e91719_ (hash-get _ht91717_ _ctx91715_)))
          (if _$e91719_
              (values _$e91719_)
              (let ((_pre91722_
                     (let ((__obj92769
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
                       (gx#prelude-context:::init! __obj92769 _ctx91715_)
                       __obj92769)))
                (hash-put! _ht91717_ _ctx91715_ _pre91722_)
                _pre91722_)))))
    (define gx#core-import-module__%
      (lambda (_rpath91596_ _reload?91597_)
        (letrec ((_import-source91599_
                  (lambda (_path91684_)
                    (if (member _path91684_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path91684_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g92779_ (gx#core-read-module _path91684_)))
                         (begin
                           (let ((_g92780_
                                  (if (##values? _g92779_)
                                      (##vector-length _g92779_)
                                      1)))
                             (if (not (##fx= _g92780_ 4))
                                 (error "Context expects 4 values" _g92780_)))
                           (let ((_pre91687_ (##vector-ref _g92779_ 0))
                                 (_id91688_ (##vector-ref _g92779_ 1))
                                 (_ns91689_ (##vector-ref _g92779_ 2))
                                 (_body91690_ (##vector-ref _g92779_ 3)))
                             (let* ((_prelude91695_
                                     (if (##structure-instance-of?
                                          _pre91687_
                                          'gx#prelude-context::t)
                                         _pre91687_
                                         (if (##structure-instance-of?
                                              _pre91687_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre91687_)
                                             (if (string? _pre91687_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre91687_))
                                                 (if (not _pre91687_)
                                                     (let ((_$e91692_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e91692_
                                                           _$e91692_
                                                           (let ((__obj92770
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
                     (gx#prelude-context:::init! __obj92770 '#f)
                     __obj92770)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath91596_
                                                            _pre91687_))))))
                                    (_ctx91697_
                                     (let ((__obj92771
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
                                        __obj92771
                                        _id91688_
                                        _prelude91695_
                                        _ns91689_
                                        _path91684_)
                                       __obj92771))
                                    (_body91699_
                                     (gx#core-expand-module-begin
                                      _body91690_
                                      _ctx91697_))
                                    (_body91701_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body91699_)
                                      _path91684_
                                      _ctx91697_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx91697_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body91701_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx91697_
                                _body91701_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path91684_
                                _ctx91697_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id91688_
                                _ctx91697_)
                               _ctx91697_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path91684_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule91600_
                  (lambda (_rpath91612_)
                    (let* ((_rpath9161391620_ _rpath91612_)
                           (_E9161591624_
                            (lambda ()
                              (error '"No clause matching" _rpath9161391620_)))
                           (_K9161691672_
                            (lambda (_refs91627_ _origin91628_)
                              (let ((_ctx91630_
                                     (if _origin91628_
                                         (gx#core-import-module__%
                                          _origin91628_
                                          _reload?91597_)
                                         (gx#current-expander-context))))
                                (let _lp91632_ ((_rest91634_ _refs91627_)
                                                (_ctx91635_ _ctx91630_))
                                  (let* ((_rest9163691644_ _rest91634_)
                                         (_else9163891652_
                                          (lambda () _ctx91635_))
                                         (_K9164091660_
                                          (lambda (_rest91655_ _id91656_)
                                            (let ((_bind91658_
                                                   (gx#resolve-identifier__%
                                                    _id91656_
                                                    '0
                                                    _ctx91635_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind91658_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind91658_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp91632_
                                                   _rest91655_
                                                   (##unchecked-structure-ref
                                                    _bind91658_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath91612_
                                                         _id91656_
                                                         _bind91658_))))))
                                    (if (##pair? _rest9163691644_)
                                        (let ((_hd9164191663_
                                               (##car _rest9163691644_))
                                              (_tl9164291665_
                                               (##cdr _rest9163691644_)))
                                          (let* ((_id91668_ _hd9164191663_)
                                                 (_rest91670_ _tl9164291665_))
                                            (_K9164091660_
                                             _rest91670_
                                             _id91668_)))
                                        (_else9163891652_))))))))
                      (if (##pair? _rpath9161391620_)
                          (let ((_hd9161791675_ (##car _rpath9161391620_))
                                (_tl9161891677_ (##cdr _rpath9161391620_)))
                            (let* ((_origin91680_ _hd9161791675_)
                                   (_refs91682_ _tl9161891677_))
                              (_K9161691672_ _refs91682_ _origin91680_)))
                          (_E9161591624_))))))
          (let ((_$e91602_
                 (if (not _reload?91597_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath91596_)
                     '#f)))
            (if _$e91602_
                (values _$e91602_)
                (if (list? _rpath91596_)
                    (_import-submodule91600_ _rpath91596_)
                    (if (gx#core-library-module-path? _rpath91596_)
                        (let ((_ctx91605_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath91596_)
                                _reload?91597_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath91596_
                           _ctx91605_)
                          _ctx91605_)
                        (let* ((_npath91607_ (path-normalize _rpath91596_))
                               (_$e91609_
                                (if (not _reload?91597_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath91607_)
                                    '#f)))
                          (if _$e91609_
                              (values _$e91609_)
                              (_import-source91599_ _npath91607_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath91708_)
        (let ((_reload?91710_ '#f))
          (gx#core-import-module__% _rpath91708_ _reload?91710_))))
    (define gx#core-import-module
      (lambda _g92782_
        (let ((_g92781_ (##length _g92782_)))
          (cond ((##fx= _g92781_ 1)
                 (apply (lambda (_rpath91708_)
                          (gx#core-import-module__0 _rpath91708_))
                        _g92782_))
                ((##fx= _g92781_ 2)
                 (apply (lambda (_rpath91712_ _reload?91713_)
                          (gx#core-import-module__%
                           _rpath91712_
                           _reload?91713_))
                        _g92782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g92782_))))))
    (define gx#core-read-module
      (lambda (_path91585_)
        (with-catch
         (lambda (_exn91587_)
           (if (and (datum-parsing-exception? _exn91587_)
                    (eq? (datum-parsing-exception-filepos _exn91587_) '0))
               (gx#core-read-module/lang _path91585_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path91585_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9158991591_)
                      (display-exception _exn91587_ _g9158991591_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path91585_)))))
    (define gx#core-read-module/sexp
      (lambda (_path91448_)
        (let _lp91450_ ((_body91452_ (read-syntax-from-file _path91448_))
                        (_pre91453_ '#f)
                        (_ns91454_ '#f)
                        (_pkg91455_ '#f))
          (let* ((_e9145691480_ _body91452_)
                 (_E9147291502_
                  (lambda ()
                    (let ((_g92783_
                           (if _pkg91455_
                               (values _pre91453_ _ns91454_ _pkg91455_)
                               (gx#core-read-module-package
                                _path91448_
                                _pre91453_
                                _ns91454_))))
                      (begin
                        (let ((_g92784_
                               (if (##values? _g92783_)
                                   (##vector-length _g92783_)
                                   1)))
                          (if (not (##fx= _g92784_ 3))
                              (error "Context expects 3 values" _g92784_)))
                        (let ((_pre91484_ (##vector-ref _g92783_ 0))
                              (_ns91485_ (##vector-ref _g92783_ 1))
                              (_pkg91486_ (##vector-ref _g92783_ 2)))
                          (let* ((_prelude91488_
                                  (if (gx#core-bound-module-prelude?
                                       _pre91484_)
                                      (gx#syntax-local-e__0 _pre91484_)
                                      (if (gx#core-library-module-path?
                                           _pre91484_)
                                          (gx#core-resolve-library-module-path
                                           _pre91484_)
                                          (if (gx#stx-string? _pre91484_)
                                              (gx#core-resolve-module-path__%
                                               _pre91484_
                                               _path91448_)
                                              (gx#stx-e _pre91484_)))))
                                 (_path-id91490_
                                  (gx#core-module-path->namespace _path91448_))
                                 (_pkg-id91492_
                                  (if _pkg91486_
                                      (string-append
                                       _pkg91486_
                                       '"/"
                                       _path-id91490_)
                                      _path-id91490_))
                                 (_module-id91494_
                                  (string->symbol _pkg-id91492_))
                                 (_module-ns91499_
                                  (if (eq? _ns91485_ '#!void)
                                      '#f
                                      (let ((_$e91496_ _ns91485_))
                                        (if _$e91496_
                                            _$e91496_
                                            _pkg-id91492_)))))
                            (values _prelude91488_
                                    _module-id91494_
                                    _module-ns91499_
                                    _body91452_)))))))
                 (_E9146591531_
                  (lambda ()
                    (if (gx#stx-pair? _e9145691480_)
                        (let ((_e9147391506_ (gx#syntax-e _e9145691480_)))
                          (let ((_hd9147491509_ (##car _e9147391506_))
                                (_tl9147591511_ (##cdr _e9147391506_)))
                            (if (eq? (gx#stx-e _hd9147491509_) 'package:)
                                (if (gx#stx-pair? _tl9147591511_)
                                    (let ((_e9147691514_
                                           (gx#syntax-e _tl9147591511_)))
                                      (let ((_hd9147791517_
                                             (##car _e9147691514_))
                                            (_tl9147891519_
                                             (##cdr _e9147691514_)))
                                        (let* ((_pkg91522_ _hd9147791517_)
                                               (_rest91524_ _tl9147891519_))
                                          (if '#t
                                              (let ((_pkg91529_
                                                     (if (gx#identifier?
                                                          _pkg91522_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg91522_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg91522_)
                         (gx#stx-false? _pkg91522_))
                     (gx#stx-e _pkg91522_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg91522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91450_
                                                 _rest91524_
                                                 _pre91453_
                                                 _ns91454_
                                                 _pkg91529_))
                                              (_E9147291502_)))))
                                    (_E9147291502_))
                                (_E9147291502_))))
                        (_E9147291502_))))
                 (_E9145891557_
                  (lambda ()
                    (if (gx#stx-pair? _e9145691480_)
                        (let ((_e9146691535_ (gx#syntax-e _e9145691480_)))
                          (let ((_hd9146791538_ (##car _e9146691535_))
                                (_tl9146891540_ (##cdr _e9146691535_)))
                            (if (eq? (gx#stx-e _hd9146791538_) 'namespace:)
                                (if (gx#stx-pair? _tl9146891540_)
                                    (let ((_e9146991543_
                                           (gx#syntax-e _tl9146891540_)))
                                      (let ((_hd9147091546_
                                             (##car _e9146991543_))
                                            (_tl9147191548_
                                             (##cdr _e9146991543_)))
                                        (let* ((_ns91551_ _hd9147091546_)
                                               (_rest91553_ _tl9147191548_))
                                          (if '#t
                                              (let ((_ns91555_
                                                     (if (gx#identifier?
                                                          _ns91551_)
                                                         (symbol->string
                                                          (gx#stx-e _ns91551_))
                                                         (if (gx#stx-string?
                                                              _ns91551_)
                                                             (gx#stx-e
                                                              _ns91551_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns91551_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns91551_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91450_
                                                 _rest91553_
                                                 _pre91453_
                                                 _ns91555_
                                                 _pkg91455_))
                                              (_E9146591531_)))))
                                    (_E9146591531_))
                                (_E9146591531_))))
                        (_E9146591531_))))
                 (_E9145791581_
                  (lambda ()
                    (if (gx#stx-pair? _e9145691480_)
                        (let ((_e9145991561_ (gx#syntax-e _e9145691480_)))
                          (let ((_hd9146091564_ (##car _e9145991561_))
                                (_tl9146191566_ (##cdr _e9145991561_)))
                            (if (eq? (gx#stx-e _hd9146091564_) 'prelude:)
                                (if (gx#stx-pair? _tl9146191566_)
                                    (let ((_e9146291569_
                                           (gx#syntax-e _tl9146191566_)))
                                      (let ((_hd9146391572_
                                             (##car _e9146291569_))
                                            (_tl9146491574_
                                             (##cdr _e9146291569_)))
                                        (let* ((_prelude91577_ _hd9146391572_)
                                               (_rest91579_ _tl9146491574_))
                                          (if '#t
                                              (_lp91450_
                                               _rest91579_
                                               _prelude91577_
                                               _ns91454_
                                               _pkg91455_)
                                              (_E9145891557_)))))
                                    (_E9145891557_))
                                (_E9145891557_))))
                        (_E9145891557_)))))
            (_E9145791581_)))))
    (define gx#core-read-module/lang
      (lambda (_path91275_)
        (letrec ((_default-read-module-body91277_
                  (lambda (_inp91440_)
                    (let _lp91442_ ((_body91444_ '()))
                      (let ((_next91446_ (read-syntax _inp91440_)))
                        (if (eof-object? _next91446_)
                            (reverse _body91444_)
                            (_lp91442_ (cons _next91446_ _body91444_)))))))
                 (_read-body91278_
                  (lambda (_inp91359_
                           _pre91360_
                           _ns91361_
                           _pkg91362_
                           _args91363_)
                    (let ((_g92785_
                           (if _pkg91362_
                               (values _pre91360_ _ns91361_ _pkg91362_)
                               (gx#core-read-module-package
                                _path91275_
                                _pre91360_
                                _ns91361_))))
                      (begin
                        (let ((_g92786_
                               (if (##values? _g92785_)
                                   (##vector-length _g92785_)
                                   1)))
                          (if (not (##fx= _g92786_ 3))
                              (error "Context expects 3 values" _g92786_)))
                        (let ((_pre91365_ (##vector-ref _g92785_ 0))
                              (_ns91366_ (##vector-ref _g92785_ 1))
                              (_pkg91367_ (##vector-ref _g92785_ 2)))
                          (let* ((_prelude91369_
                                  (gx#import-module__0 _pre91365_))
                                 (_read-module-body91423_
                                  (let ((_$e91415_
                                         (find (lambda (_e9137091372_)
                                                 (let* ((_g9137491384_
                                                         _e9137091372_)
                                                        (_else9137691392_
                                                         (lambda () '#f))
                                                        (_K9137891396_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9137491384_
                                                        'gx#module-export::t)
                                                       (let* ((_e9137991399_
                                                               (##unchecked-structure-ref
                                                                _g9137491384_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9138091402_
                                                               (##unchecked-structure-ref
                                                                _g9137491384_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9138191405_
                                                               (##unchecked-structure-ref
                                                                _g9137491384_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9138191405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9138291408_
                            (##unchecked-structure-ref
                             _g9137491384_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9141091412_)
                              (eq? _g9141091412_ 'read-module-body))
                            _e9138291408_)
                           (_K9137891396_)
                           (_else9137691392_)))
                     (_else9137691392_)))
               (_else9137691392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude91369_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e91415_
                                        ((lambda (_xport91418_)
                                           (let ((_proc91421_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport91418_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc91421_)
                                                 _proc91421_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path91275_
                                                  _pre91365_
                                                  _proc91421_))))
                                         _$e91415_)
                                        _default-read-module-body91277_)))
                                 (_path-id91425_
                                  (gx#core-module-path->namespace _path91275_))
                                 (_pkg-id91427_
                                  (if _pkg91367_
                                      (string-append
                                       _pkg91367_
                                       '"/"
                                       _path-id91425_)
                                      _path-id91425_))
                                 (_module-id91429_
                                  (string->symbol _pkg-id91427_))
                                 (_module-ns91434_
                                  (let ((_$e91431_ _ns91366_))
                                    (if _$e91431_ _$e91431_ _pkg-id91427_)))
                                 (_body91437_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body91423_ _inp91359_))
                                   gx#current-module-reader-path
                                   _path91275_
                                   gx#current-module-reader-args
                                   _args91363_)))
                            (values _prelude91369_
                                    _module-id91429_
                                    _module-ns91434_
                                    _body91437_)))))))
                 (_string-e91279_
                  (lambda (_obj91356_ _what91357_)
                    (if (string? _obj91356_)
                        _obj91356_
                        (if (symbol? _obj91356_)
                            (symbol->string _obj91356_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what91357_)
                             _path91275_
                             _obj91356_)))))
                 (_read-lang-args91280_
                  (lambda (_inp91311_ _args91312_)
                    (let* ((_args9131391321_ _args91312_)
                           (_else9131591329_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path91275_)))
                           (_K9131791344_
                            (lambda (_args91332_ _prelude91333_)
                              (let* ((_pkg91335_
                                      (pgetq__0 'package: _args91332_))
                                     (_pkg91337_
                                      (if _pkg91335_
                                          (_string-e91279_
                                           _pkg91335_
                                           '"package")
                                          '#f))
                                     (_ns91339_
                                      (pgetq__0 'namespace: _args91332_))
                                     (_ns91341_
                                      (if _ns91339_
                                          (_string-e91279_
                                           _ns91339_
                                           '"namespace")
                                          '#f)))
                                (_read-body91278_
                                 _inp91311_
                                 _prelude91333_
                                 _ns91341_
                                 _pkg91337_
                                 _args91332_)))))
                      (if (##pair? _args9131391321_)
                          (let ((_hd9131891347_ (##car _args9131391321_))
                                (_tl9131991349_ (##cdr _args9131391321_)))
                            (let* ((_prelude91352_ _hd9131891347_)
                                   (_args91354_ _tl9131991349_))
                              (_K9131791344_ _args91354_ _prelude91352_)))
                          (_else9131591329_)))))
                 (_read-lang91281_
                  (lambda (_inp91286_)
                    (let* ((_head91288_ (read-line _inp91286_))
                           (_$e91290_ (string-index__0 _head91288_ '#\space)))
                      (if _$e91290_
                          ((lambda (_ix91293_)
                             (let ((_lang91295_
                                    (substring _head91288_ '0 _ix91293_)))
                               (if (equal? _lang91295_ '"#lang")
                                   (let* ((_rest91297_
                                           (substring
                                            _head91288_
                                            (fx+ _ix91293_ '1)
                                            (string-length _head91288_)))
                                          (_args91308_
                                           (with-catch
                                            (lambda (_g9129891300_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path91275_
                                               _g9129891300_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest91297_
                                               (lambda (_g9130391305_)
                                                 (read-all
                                                  _g9130391305_
                                                  read)))))))
                                     (_read-lang-args91280_
                                      _inp91286_
                                      _args91308_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path91275_))))
                           _$e91290_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path91275_)))))
                 (_read-e91282_
                  (lambda (_inp91284_)
                    (if (eq? (peek-char _inp91284_) '#\#)
                        (_read-lang91281_ _inp91284_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path91275_)))))
          (gx#call-with-input-source-file _path91275_ _read-e91282_))))
    (define gx#core-read-module-package
      (lambda (_path91229_ _pre91230_ _ns91231_)
        (letrec ((_string-e91233_
                  (lambda (_e91273_)
                    (if (symbol? _e91273_)
                        (symbol->string _e91273_)
                        (if (string? _e91273_)
                            _e91273_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e91273_))))))
          (let _lp91235_ ((_dir91237_ (path-directory _path91229_))
                          (_pkg-path91238_ '()))
            (let ((_gerbil.pkg91240_ (path-expand '"gerbil.pkg" _dir91237_)))
              (if (file-exists? _gerbil.pkg91240_)
                  (let ((_plist91242_
                         (gx#core-library-package-plist__% _dir91237_ '#t)))
                    (if (null? _plist91242_)
                        (let ((_pkg91244_
                               (if (not (null? _pkg-path91238_))
                                   (string-join _pkg-path91238_ '"/")
                                   '#f)))
                          (values _pre91230_ _ns91231_ _pkg91244_))
                        (if (list? _plist91242_)
                            (let* ((_root91246_
                                    (pgetq__0 'package: _plist91242_))
                                   (_pkg91250_
                                    (let ((_pkg-path91248_
                                           (if _root91246_
                                               (cons (_string-e91233_
                                                      _root91246_)
                                                     _pkg-path91238_)
                                               _pkg-path91238_)))
                                      (if (not (null? _pkg-path91248_))
                                          (string-join _pkg-path91248_ '"/")
                                          '#f)))
                                   (_ns91257_
                                    (let ((_ns91255_
                                           (let ((_$e91252_ _ns91231_))
                                             (if _$e91252_
                                                 _$e91252_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist91242_)))))
                                      (if _ns91255_
                                          (_string-e91233_ _ns91255_)
                                          '#f)))
                                   (_pre91262_
                                    (let ((_$e91259_ _pre91230_))
                                      (if _$e91259_
                                          _$e91259_
                                          (pgetq__0 'prelude: _plist91242_)))))
                              (values _pre91262_ _ns91257_ _pkg91250_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist91242_))))
                  (let ((_dir*91265_
                         (path-strip-trailing-directory-separator _dir91237_)))
                    (if (or (string-empty? _dir*91265_)
                            (equal? _dir91237_ _dir*91265_))
                        (values _pre91230_ _ns91231_ '#f)
                        (let ((_xpath91270_ (path-strip-directory _dir*91265_))
                              (_xdir91271_ (path-directory _dir*91265_)))
                          (_lp91235_
                           _xdir91271_
                           (cons _xpath91270_ _pkg-path91238_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path91227_)
        (path-strip-extension (path-strip-directory _path91227_))))
    (define gx#core-module-path->id
      (lambda (_path91225_)
        (string->symbol (gx#core-module-path->namespace _path91225_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path91204_ _rel91205_)
        (let* ((_path91207_ (gx#stx-e _stx-path91204_))
               (_path91209_
                (if (string-empty? (path-extension _path91207_))
                    (string-append _path91207_ '".ss")
                    _path91207_)))
          (gx#core-resolve-path__%
           _path91209_
           (let ((_$e91212_ (gx#stx-source _stx-path91204_)))
             (if _$e91212_ _$e91212_ _rel91205_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path91218_)
        (let ((_rel91220_ '#f))
          (gx#core-resolve-module-path__% _stx-path91218_ _rel91220_))))
    (define gx#core-resolve-module-path
      (lambda _g92788_
        (let ((_g92787_ (##length _g92788_)))
          (cond ((##fx= _g92787_ 1)
                 (apply (lambda (_stx-path91218_)
                          (gx#core-resolve-module-path__0 _stx-path91218_))
                        _g92788_))
                ((##fx= _g92787_ 2)
                 (apply (lambda (_stx-path91222_ _rel91223_)
                          (gx#core-resolve-module-path__%
                           _stx-path91222_
                           _rel91223_))
                        _g92788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g92788_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath91090_)
        (let* ((_spath91092_ (symbol->string (gx#stx-e _libpath91090_)))
               (_spath91094_
                (substring _spath91092_ '1 (string-length _spath91092_)))
               (_ext91096_ (path-extension _spath91094_))
               (_ssi91098_
                (if (string-empty? _ext91096_)
                    (string-append _spath91094_ '".ssi")
                    (string-append
                     (path-strip-extension _spath91094_)
                     '".ssi")))
               (_srcs91102_
                (if (string-empty? _ext91096_)
                    (map (lambda (_ext91100_)
                           (string-append _spath91094_ _ext91100_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath91094_ '()))))
          (let _lp91105_ ((_rest91107_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest9110891117_ _rest91107_)
                   (_E9111191121_
                    (lambda ()
                      (error '"No clause matching" _rest9110891117_))))
              (let ((_K9111391191_
                     (lambda (_rest91132_ _dir91133_)
                       (letrec ((_resolve91135_
                                 (lambda (_ssi91147_ _srcs91148_)
                                   (let ((_compiled-path91150_
                                          (path-expand _ssi91147_ _dir91133_)))
                                     (if (file-exists? _compiled-path91150_)
                                         (path-normalize _compiled-path91150_)
                                         (let _lpr91152_ ((_rest-src91154_
                                                           _srcs91148_))
                                           (let* ((_rest-src9115591163_
                                                   _rest-src91154_)
                                                  (_else9115791171_
                                                   (lambda ()
                                                     (_lp91105_ _rest91132_)))
                                                  (_K9115991179_
                                                   (lambda (_rest-src91174_
                                                            _src91175_)
                                                     (let ((_src-path91177_
                                                            (path-expand
                                                             _src91175_
                                                             _dir91133_)))
                                                       (if (file-exists?
                                                            _src-path91177_)
                                                           (path-normalize
                                                            _src-path91177_)
                                                           (_lpr91152_
                                                            _rest-src91174_))))))
                                             (if (##pair? _rest-src9115591163_)
                                                 (let ((_hd9116091182_
                                                        (##car _rest-src9115591163_))
                                                       (_tl9116191184_
                                                        (##cdr _rest-src9115591163_)))
                                                   (let* ((_src91187_
                                                           _hd9116091182_)
                                                          (_rest-src91189_
                                                           _tl9116191184_))
                                                     (_K9115991179_
                                                      _rest-src91189_
                                                      _src91187_)))
                                                 (_else9115791171_)))))))))
                         (let ((_$e91137_
                                (gx#core-library-package-path-prefix
                                 _dir91133_)))
                           (if _$e91137_
                               ((lambda (_prefix91140_)
                                  (if (string-prefix?
                                       _prefix91140_
                                       _spath91094_)
                                      (let ((_ssi91144_
                                             (substring
                                              _ssi91098_
                                              (string-length _prefix91140_)
                                              (string-length _ssi91098_)))
                                            (_srcs91145_
                                             (map (lambda (_src91142_)
                                                    (substring
                                                     _src91142_
                                                     (string-length
                                                      _prefix91140_)
                                                     (string-length
                                                      _src91142_)))
                                                  _srcs91102_)))
                                        (_resolve91135_
                                         _ssi91144_
                                         _srcs91145_))
                                      (_lp91105_ _rest91132_)))
                                _$e91137_)
                               (_resolve91135_ _ssi91098_ _srcs91102_))))))
                    (_K9111291126_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath91090_))))
                (let ((_try-match9111091129_
                       (lambda ()
                         (if (##null? _rest9110891117_)
                             (_K9111291126_)
                             (_E9111191121_)))))
                  (if (##pair? _rest9110891117_)
                      (let ((_tl9111591196_ (##cdr _rest9110891117_))
                            (_hd9111491194_ (##car _rest9110891117_)))
                        (let ((_dir91199_ _hd9111491194_)
                              (_rest91201_ _tl9111591196_))
                          (_K9111391191_ _rest91201_ _dir91199_)))
                      (_try-match9111091129_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath91063_)
        (letrec ((_resolve91065_
                  (lambda (_path91082_ _base91083_)
                    (let ((_$e91085_ (string-rindex__0 _base91083_ '#\/)))
                      (if _$e91085_
                          ((lambda (_idx91088_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base91083_ '0 _idx91088_)
                                '"/"
                                _path91082_))))
                           _$e91085_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path91082_))))))))
          (let ((_spath91067_ (symbol->string (gx#stx-e _modpath91063_)))
                (_mod91068_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod91068_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath91063_))
            (let ((_mpath91070_
                   (symbol->string
                    (##structure-ref
                     _mod91068_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp91072_ ((_spath91074_ _spath91067_)
                              (_mpath91075_ _mpath91070_))
                (if (string-prefix? '"../" _spath91074_)
                    (let ((_$e91077_ (string-rindex__0 _mpath91075_ '#\/)))
                      (if _$e91077_
                          ((lambda (_idx91080_)
                             (_lp91072_
                              (substring
                               _spath91074_
                               '3
                               (string-length _spath91074_))
                              (substring _mpath91075_ '0 _idx91080_)))
                           _$e91077_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath91063_)))
                    (if (string-prefix? '"./" _spath91074_)
                        (_lp91072_
                         (substring
                          _spath91074_
                          '2
                          (string-length _spath91074_))
                         _mpath91075_)
                        (_resolve91065_ _spath91074_ _mpath91075_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir91056_)
        (let ((_$e91058_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir91056_))))
          (if _$e91058_
              ((lambda (_pkg91061_)
                 (string-append (symbol->string _pkg91061_) '"/"))
               _$e91058_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir91028_ _exists?91029_)
        (let* ((_cache91031_ (gx#core-library-package-cache))
               (_$e91033_ (hash-get _cache91031_ _dir91028_)))
          (if _$e91033_
              (values _$e91033_)
              (let* ((_gerbil.pkg91036_ (path-expand '"gerbil.pkg" _dir91028_))
                     (_plist91043_
                      (if (or _exists?91029_ (file-exists? _gerbil.pkg91036_))
                          (let ((_e91041_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg91036_
                                  read)))
                            (if (eof-object? _e91041_)
                                '()
                                (if (list? _e91041_)
                                    _e91041_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg91036_
                                     _e91041_))))
                          '())))
                (hash-put! _cache91031_ _dir91028_ _plist91043_)
                _plist91043_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir91049_)
        (let ((_exists?91051_ '#f))
          (gx#core-library-package-plist__% _dir91049_ _exists?91051_))))
    (define gx#core-library-package-plist
      (lambda _g92790_
        (let ((_g92789_ (##length _g92790_)))
          (cond ((##fx= _g92789_ 1)
                 (apply (lambda (_dir91049_)
                          (gx#core-library-package-plist__0 _dir91049_))
                        _g92790_))
                ((##fx= _g92789_ 2)
                 (apply (lambda (_dir91053_ _exists?91054_)
                          (gx#core-library-package-plist__%
                           _dir91053_
                           _exists?91054_))
                        _g92790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g92790_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e91022_ (gx#current-expander-module-library-package-cache)))
          (if _$e91022_
              (values _$e91022_)
              (let ((_cache91025_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache91025_)
                _cache91025_)))))
    (define gx#core-library-module-path?
      (lambda (_stx91019_) (gx#core-special-module-path? _stx91019_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx91017_) (gx#core-special-module-path? _stx91017_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx91012_ _char91013_)
        (if (gx#identifier? _stx91012_)
            (if (interned-symbol? (gx#stx-e _stx91012_))
                (let ((_str91015_ (symbol->string (gx#stx-e _stx91012_))))
                  (if (fx> (string-length _str91015_) '1)
                      (eq? (string-ref _str91015_ '0) _char91013_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx91006_)
        (gx#core-bound-identifier?__%
         _stx91006_
         (lambda (_g9100791009_)
           (gx#expander-binding?__% _g9100791009_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx91000_)
        (gx#core-bound-identifier?__%
         _stx91000_
         (lambda (_g9100191003_)
           (gx#expander-binding?__% _g9100191003_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx90987_)
        (letrec ((_module-prelude?90989_
                  (lambda (_e90995_)
                    (let ((_$e90997_
                           (##structure-instance-of?
                            _e90995_
                            'gx#module-context::t)))
                      (if _$e90997_
                          _$e90997_
                          (##structure-instance-of?
                           _e90995_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx90987_
           (lambda (_g9099090992_)
             (gx#expander-binding?__%
              _g9099090992_
              _module-prelude?90989_))))))
    (define gx#core-bind-import!__%
      (lambda (_in90917_ _ctx90918_ _force-weak?90919_)
        (let* ((_in9092090929_ _in90917_)
               (_E9092290933_
                (lambda () (error '"No clause matching" _in9092090929_)))
               (_K9092390946_
                (lambda (_weak?90936_ _phi90937_ _key90938_ _source90939_)
                  (gx#core-bind!__%
                   _key90938_
                   (let ((_e90941_
                          (gx#core-resolve-module-export _source90939_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e90941_ '1 gx#binding::t '#f)
                      _key90938_
                      _phi90937_
                      _e90941_
                      (##unchecked-structure-ref
                       _source90939_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e90943_ _force-weak?90919_))
                        (if _$e90943_ _$e90943_ _weak?90936_))))
                   gx#core-context-rebind?
                   _phi90937_
                   _ctx90918_))))
          (if (##structure-direct-instance-of?
               _in9092090929_
               'gx#module-import::t)
              (let* ((_e9092490949_
                      (##unchecked-structure-ref
                       _in9092090929_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source90952_ _e9092490949_)
                     (_e9092590954_
                      (##unchecked-structure-ref
                       _in9092090929_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key90957_ _e9092590954_)
                     (_e9092690959_
                      (##unchecked-structure-ref
                       _in9092090929_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi90962_ _e9092690959_)
                     (_e9092790964_
                      (##unchecked-structure-ref
                       _in9092090929_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?90967_ _e9092790964_))
                (_K9092390946_
                 _weak?90967_
                 _phi90962_
                 _key90957_
                 _source90952_))
              (_E9092290933_)))))
    (define gx#core-bind-import!__0
      (lambda (_in90972_)
        (let* ((_ctx90974_ (gx#current-expander-context))
               (_force-weak?90976_ '#f))
          (gx#core-bind-import!__% _in90972_ _ctx90974_ _force-weak?90976_))))
    (define gx#core-bind-import!__1
      (lambda (_in90978_ _ctx90979_)
        (let ((_force-weak?90981_ '#f))
          (gx#core-bind-import!__% _in90978_ _ctx90979_ _force-weak?90981_))))
    (define gx#core-bind-import!
      (lambda _g92792_
        (let ((_g92791_ (##length _g92792_)))
          (cond ((##fx= _g92791_ 1)
                 (apply (lambda (_in90972_)
                          (gx#core-bind-import!__0 _in90972_))
                        _g92792_))
                ((##fx= _g92791_ 2)
                 (apply (lambda (_in90978_ _ctx90979_)
                          (gx#core-bind-import!__1 _in90978_ _ctx90979_))
                        _g92792_))
                ((##fx= _g92791_ 3)
                 (apply (lambda (_in90983_ _ctx90984_ _force-weak?90985_)
                          (gx#core-bind-import!__%
                           _in90983_
                           _ctx90984_
                           _force-weak?90985_))
                        _g92792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g92792_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in90903_ _ctx90904_)
        (gx#core-bind-import!__% _in90903_ _ctx90904_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in90909_)
        (let ((_ctx90911_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in90909_ _ctx90911_))))
    (define gx#core-bind-weak-import!
      (lambda _g92794_
        (let ((_g92793_ (##length _g92794_)))
          (cond ((##fx= _g92793_ 1)
                 (apply (lambda (_in90909_)
                          (gx#core-bind-weak-import!__0 _in90909_))
                        _g92794_))
                ((##fx= _g92793_ 2)
                 (apply (lambda (_in90913_ _ctx90914_)
                          (gx#core-bind-weak-import!__% _in90913_ _ctx90914_))
                        _g92794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g92794_))))))
    (define gx#core-resolve-module-export
      (lambda (_out90794_)
        (letrec ((_subst90796_
                  (lambda (_key90842_)
                    (let* ((_key9084390851_ _key90842_)
                           (_else9084590859_ (lambda () _key90842_))
                           (_K9084790890_
                            (lambda (_mark90862_ _id90863_)
                              (let* ((_mark9086490870_ _mark90862_)
                                     (_E9086690874_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9086490870_)))
                                     (_K9086790882_
                                      (lambda (_subst90877_)
                                        (let ((_$e90879_
                                               (if _subst90877_
                                                   (hash-get
                                                    _subst90877_
                                                    _id90863_)
                                                   '#f)))
                                          (if _$e90879_
                                              _$e90879_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key90842_))))))
                                (if (##structure-instance-of?
                                     _mark9086490870_
                                     'gx#expander-mark::t)
                                    (let* ((_e9086890885_
                                            (##unchecked-structure-ref
                                             _mark9086490870_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst90888_ _e9086890885_))
                                      (_K9086790882_ _subst90888_))
                                    (_E9086690874_))))))
                      (if (##pair? _key9084390851_)
                          (let ((_hd9084890893_ (##car _key9084390851_))
                                (_tl9084990895_ (##cdr _key9084390851_)))
                            (let* ((_id90898_ _hd9084890893_)
                                   (_mark90900_ _tl9084990895_))
                              (_K9084790890_ _mark90900_ _id90898_)))
                          (_else9084590859_))))))
          (let* ((_out9079790807_ _out90794_)
                 (_E9079990811_
                  (lambda () (error '"No clause matching" _out9079790807_)))
                 (_K9080090818_
                  (lambda (_phi90814_ _key90815_ _ctx90816_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx90816_ _phi90814_)
                     (_subst90796_ _key90815_)))))
            (if (##structure-direct-instance-of?
                 _out9079790807_
                 'gx#module-export::t)
                (let* ((_e9080190821_
                        (##unchecked-structure-ref
                         _out9079790807_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx90824_ _e9080190821_)
                       (_e9080290826_
                        (##unchecked-structure-ref
                         _out9079790807_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key90829_ _e9080290826_)
                       (_e9080390831_
                        (##unchecked-structure-ref
                         _out9079790807_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi90834_ _e9080390831_)
                       (_e9080490836_
                        (##unchecked-structure-ref
                         _out9079790807_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9080590839_
                        (##unchecked-structure-ref
                         _out9079790807_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9080090818_ _phi90834_ _key90829_ _ctx90824_))
                (_E9079990811_))))))
    (define gx#core-module-export->import__%
      (lambda (_out90719_ _rename90720_ _dphi90721_)
        (let* ((_out9072290732_ _out90719_)
               (_E9072490736_
                (lambda () (error '"No clause matching" _out9072290732_)))
               (_K9072590748_
                (lambda (_weak?90739_
                         _name90740_
                         _phi90741_
                         _key90742_
                         _ctx90743_)
                  (##structure
                   gx#module-import::t
                   _out90719_
                   (let ((_$e90745_ _rename90720_))
                     (if _$e90745_ _$e90745_ _name90740_))
                   (fx+ _phi90741_ _dphi90721_)
                   _weak?90739_))))
          (if (##structure-direct-instance-of?
               _out9072290732_
               'gx#module-export::t)
              (let* ((_e9072690751_
                      (##unchecked-structure-ref
                       _out9072290732_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx90754_ _e9072690751_)
                     (_e9072790756_
                      (##unchecked-structure-ref
                       _out9072290732_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key90759_ _e9072790756_)
                     (_e9072890761_
                      (##unchecked-structure-ref
                       _out9072290732_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi90764_ _e9072890761_)
                     (_e9072990766_
                      (##unchecked-structure-ref
                       _out9072290732_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name90769_ _e9072990766_)
                     (_e9073090771_
                      (##unchecked-structure-ref
                       _out9072290732_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?90774_ _e9073090771_))
                (_K9072590748_
                 _weak?90774_
                 _name90769_
                 _phi90764_
                 _key90759_
                 _ctx90754_))
              (_E9072490736_)))))
    (define gx#core-module-export->import__0
      (lambda (_out90779_)
        (let* ((_rename90781_ '#f) (_dphi90783_ '0))
          (gx#core-module-export->import__%
           _out90779_
           _rename90781_
           _dphi90783_))))
    (define gx#core-module-export->import__1
      (lambda (_out90785_ _rename90786_)
        (let ((_dphi90788_ '0))
          (gx#core-module-export->import__%
           _out90785_
           _rename90786_
           _dphi90788_))))
    (define gx#core-module-export->import
      (lambda _g92796_
        (let ((_g92795_ (##length _g92796_)))
          (cond ((##fx= _g92795_ 1)
                 (apply (lambda (_out90779_)
                          (gx#core-module-export->import__0 _out90779_))
                        _g92796_))
                ((##fx= _g92795_ 2)
                 (apply (lambda (_out90785_ _rename90786_)
                          (gx#core-module-export->import__1
                           _out90785_
                           _rename90786_))
                        _g92796_))
                ((##fx= _g92795_ 3)
                 (apply (lambda (_out90790_ _rename90791_ _dphi90792_)
                          (gx#core-module-export->import__%
                           _out90790_
                           _rename90791_
                           _dphi90792_))
                        _g92796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g92796_))))))
    (define gx#core-expand-module%
      (lambda (_stx90647_)
        (letrec ((_make-context90649_
                  (lambda (_id90700_)
                    (let* ((_super90702_ (gx#current-expander-context))
                           (_bind-id90704_ (gx#stx-e _id90700_))
                           (_mod-id90706_
                            (if (##structure-instance-of?
                                 _super90702_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super90702_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id90704_)
                                _bind-id90704_))
                           (_ns90708_ (symbol->string _mod-id90706_))
                           (_path90715_
                            (if (##structure-instance-of?
                                 _super90702_
                                 'gx#module-context::t)
                                (let ((_path90710_
                                       (##unchecked-structure-ref
                                        _super90702_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path90710_)
                                          (null? _path90710_))
                                      (cons _bind-id90704_ _path90710_)
                                      (if (not _path90710_)
                                          _bind-id90704_
                                          (cons _bind-id90704_
                                                (cons _path90710_ '())))))
                                _bind-id90704_)))
                      (let ((__obj92772
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
                         __obj92772
                         _mod-id90706_
                         _super90702_
                         _ns90708_
                         _path90715_)
                        __obj92772)))))
          (let* ((_e9065090660_ _stx90647_)
                 (_E9065290664_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9065090660_)))
                 (_E9065190696_
                  (lambda ()
                    (if (gx#stx-pair? _e9065090660_)
                        (let ((_e9065390668_ (gx#syntax-e _e9065090660_)))
                          (let ((_hd9065490671_ (##car _e9065390668_))
                                (_tl9065590673_ (##cdr _e9065390668_)))
                            (if (gx#stx-pair? _tl9065590673_)
                                (let ((_e9065690676_
                                       (gx#syntax-e _tl9065590673_)))
                                  (let ((_hd9065790679_ (##car _e9065690676_))
                                        (_tl9065890681_ (##cdr _e9065690676_)))
                                    (let* ((_id90684_ _hd9065790679_)
                                           (_body90686_ _tl9065890681_))
                                      (if (and (gx#identifier? _id90684_)
                                               (gx#stx-list? _body90686_))
                                          (let* ((_ctx90688_
                                                  (_make-context90649_
                                                   _id90684_))
                                                 (_body90690_
                                                  (gx#core-expand-module-begin
                                                   _body90686_
                                                   _ctx90688_))
                                                 (_body90692_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90690_)
                                                   (gx#stx-source
                                                    _stx90647_))))
                                            (##unchecked-structure-set!
                                             _ctx90688_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body90692_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx90688_
                                             _body90692_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id90684_
                                             _ctx90688_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id90684_)
                                              _body90692_)
                                             (gx#stx-source _stx90647_)))
                                          (_E9065290664_)))))
                                (_E9065290664_))))
                        (_E9065290664_)))))
            (_E9065190696_)))))
    (define gx#core-expand-module-begin
      (lambda (_body90613_ _ctx90614_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx90617_
                   (gx#core-expand-head (cons '%%begin-module _body90613_)))
                  (_e9061890625_ _stx90617_)
                  (_E9062090629_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx90617_)))
                  (_E9061990643_
                   (lambda ()
                     (if (gx#stx-pair? _e9061890625_)
                         (let ((_e9062190633_ (gx#syntax-e _e9061890625_)))
                           (let ((_hd9062290636_ (##car _e9062190633_))
                                 (_tl9062390638_ (##cdr _e9062190633_)))
                             (if (and (gx#identifier? _hd9062290636_)
                                      (gx#core-identifier=?
                                       _hd9062290636_
                                       '%#begin-module))
                                 (let ((_body90641_ _tl9062390638_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx90617_)
                                           _body90641_
                                           (gx#core-expand-module-body
                                            _body90641_))
                                       (_E9062090629_)))
                                 (_E9062090629_))))
                         (_E9062090629_)))))
             (_E9061990643_)))
         gx#current-expander-context
         _ctx90614_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body90409_)
        (letrec ((_expand-special90411_
                  (lambda (_hd90540_ _K90541_ _rest90542_ _r90543_)
                    (let* ((_e9054490561_ _hd90540_)
                           (_E9055690565_
                            (lambda ()
                              (_K90541_
                               _rest90542_
                               (cons (gx#core-expand-top _hd90540_)
                                     _r90543_))))
                           (_E9054690577_
                            (lambda ()
                              (if (gx#stx-pair? _e9054490561_)
                                  (let ((_e9055790569_
                                         (gx#syntax-e _e9054490561_)))
                                    (let ((_hd9055890572_
                                           (##car _e9055790569_))
                                          (_tl9055990574_
                                           (##cdr _e9055790569_)))
                                      (if (and (gx#identifier? _hd9055890572_)
                                               (gx#core-identifier=?
                                                _hd9055890572_
                                                '%#export))
                                          (if '#t
                                              (_K90541_
                                               _rest90542_
                                               (cons _hd90540_ _r90543_))
                                              (_E9055690565_))
                                          (_E9055690565_))))
                                  (_E9055690565_))))
                           (_E9054590609_
                            (lambda ()
                              (if (gx#stx-pair? _e9054490561_)
                                  (let ((_e9054790581_
                                         (gx#syntax-e _e9054490561_)))
                                    (let ((_hd9054890584_
                                           (##car _e9054790581_))
                                          (_tl9054990586_
                                           (##cdr _e9054790581_)))
                                      (if (and (gx#identifier? _hd9054890584_)
                                               (gx#core-identifier=?
                                                _hd9054890584_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9054990586_)
                                              (let ((_e9055090589_
                                                     (gx#syntax-e
                                                      _tl9054990586_)))
                                                (let ((_hd9055190592_
                                                       (##car _e9055090589_))
                                                      (_tl9055290594_
                                                       (##cdr _e9055090589_)))
                                                  (let ((_hd-bind90597_
                                                         _hd9055190592_))
                                                    (if (gx#stx-pair?
                                                         _tl9055290594_)
                                                        (let ((_e9055390599_
                                                               (gx#syntax-e
                                                                _tl9055290594_)))
                                                          (let ((_hd9055490602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9055390599_))
                        (_tl9055590604_ (##cdr _e9055390599_)))
                    (let ((_expr90607_ _hd9055490602_))
                      (if (gx#stx-null? _tl9055590604_)
                          (if (gx#core-bind-values? _hd-bind90597_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90597_)
                                (_K90541_
                                 _rest90542_
                                 (cons _hd90540_ _r90543_)))
                              (_E9054690577_))
                          (_E9054690577_)))))
                (_E9054690577_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9054690577_))
                                          (_E9054690577_))))
                                  (_E9054690577_)))))
                      (_E9054590609_))))
                 (_expand-body90412_
                  (lambda (_rbody90414_)
                    (let _lp90416_ ((_rest90418_ _rbody90414_)
                                    (_body90419_ '()))
                      (let* ((_rest9042090428_ _rest90418_)
                             (_else9042290436_ (lambda () _body90419_))
                             (_K9042490528_
                              (lambda (_rest90439_ _hd90440_)
                                (let* ((_e9044190462_ _hd90440_)
                                       (_E9045790466_
                                        (lambda ()
                                          (_lp90416_
                                           _rest90439_
                                           (cons (gx#core-expand-expression
                                                  _hd90440_)
                                                 _body90419_))))
                                       (_E9045390480_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9044190462_)
                                              (let ((_e9045890470_
                                                     (gx#syntax-e
                                                      _e9044190462_)))
                                                (let ((_hd9045990473_
                                                       (##car _e9045890470_))
                                                      (_tl9046090475_
                                                       (##cdr _e9045890470_)))
                                                  (let ((_form90478_
                                                         _hd9045990473_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form90478_
                                                         gx#special-form-binding?)
                                                        (_lp90416_
                                                         _rest90439_
                                                         (cons _hd90440_
                                                               _body90419_))
                                                        (_E9045790466_)))))
                                              (_E9045790466_))))
                                       (_E9044390492_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9044190462_)
                                              (let ((_e9045490484_
                                                     (gx#syntax-e
                                                      _e9044190462_)))
                                                (let ((_hd9045590487_
                                                       (##car _e9045490484_))
                                                      (_tl9045690489_
                                                       (##cdr _e9045490484_)))
                                                  (if (and (gx#identifier?
                                                            _hd9045590487_)
                                                           (gx#core-identifier=?
                                                            _hd9045590487_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp90416_
                                                           _rest90439_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90440_)
                         _body90419_))
                  (_E9045390480_))
              (_E9045390480_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9045390480_))))
                                       (_E9044290524_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9044190462_)
                                              (let ((_e9044490496_
                                                     (gx#syntax-e
                                                      _e9044190462_)))
                                                (let ((_hd9044590499_
                                                       (##car _e9044490496_))
                                                      (_tl9044690501_
                                                       (##cdr _e9044490496_)))
                                                  (if (and (gx#identifier?
                                                            _hd9044590499_)
                                                           (gx#core-identifier=?
                                                            _hd9044590499_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9044690501_)
                                                          (let ((_e9044790504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9044690501_)))
                    (let ((_hd9044890507_ (##car _e9044790504_))
                          (_tl9044990509_ (##cdr _e9044790504_)))
                      (let ((_hd-bind90512_ _hd9044890507_))
                        (if (gx#stx-pair? _tl9044990509_)
                            (let ((_e9045090514_ (gx#syntax-e _tl9044990509_)))
                              (let ((_hd9045190517_ (##car _e9045090514_))
                                    (_tl9045290519_ (##cdr _e9045090514_)))
                                (let ((_expr90522_ _hd9045190517_))
                                  (if (gx#stx-null? _tl9045290519_)
                                      (if '#t
                                          (_lp90416_
                                           _rest90439_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind90512_)
                                                   (gx#core-expand-expression
                                                    _expr90522_))
                                                  (gx#stx-source _hd90440_))
                                                 _body90419_))
                                          (_E9044390492_))
                                      (_E9044390492_)))))
                            (_E9044390492_)))))
                  (_E9044390492_))
              (_E9044390492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9044390492_)))))
                                  (_E9044290524_)))))
                        (if (##pair? _rest9042090428_)
                            (let ((_hd9042590531_ (##car _rest9042090428_))
                                  (_tl9042690533_ (##cdr _rest9042090428_)))
                              (let* ((_hd90536_ _hd9042590531_)
                                     (_rest90538_ _tl9042690533_))
                                (_K9042490528_ _rest90538_ _hd90536_)))
                            (_else9042290436_)))))))
          (_expand-body90412_
           (gx#core-expand-block__%
            (cons '%#begin-module _body90409_)
            _expand-special90411_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx90252_
               _expanded?90253_
               _method90254_
               _current-phi90255_
               _expand190256_)
        (letrec ((_K90258_
                  (lambda (_rest90376_ _r90377_)
                    (let* ((_e9037890385_ _rest90376_)
                           (_E9038090389_ (lambda () _r90377_))
                           (_E9037990405_
                            (lambda ()
                              (if (gx#stx-pair? _e9037890385_)
                                  (let ((_e9038190393_
                                         (gx#syntax-e _e9037890385_)))
                                    (let ((_hd9038290396_
                                           (##car _e9038190393_))
                                          (_tl9038390398_
                                           (##cdr _e9038190393_)))
                                      (let* ((_hd90401_ _hd9038290396_)
                                             (_rest90403_ _tl9038390398_))
                                        (if '#t
                                            (_step90259_
                                             _hd90401_
                                             _rest90403_
                                             _r90377_)
                                            (_E9038090389_)))))
                                  (_E9038090389_)))))
                      (_E9037990405_))))
                 (_step90259_
                  (lambda (_hd90290_ _rest90291_ _r90292_)
                    (let* ((_e9029390311_ _hd90290_)
                           (_E9030690315_
                            (lambda ()
                              (if (_expanded?90253_ (gx#stx-e _hd90290_))
                                  (_K90258_
                                   _rest90291_
                                   (cons (gx#stx-e _hd90290_) _r90292_))
                                  (_expand190256_
                                   _hd90290_
                                   _K90258_
                                   _rest90291_
                                   _r90292_))))
                           (_E9030290331_
                            (lambda ()
                              (if (gx#stx-pair? _e9029390311_)
                                  (let ((_e9030790319_
                                         (gx#syntax-e _e9029390311_)))
                                    (let ((_hd9030890322_
                                           (##car _e9030790319_))
                                          (_tl9030990324_
                                           (##cdr _e9030790319_)))
                                      (let* ((_macro90327_ _hd9030890322_)
                                             (_body90329_ _tl9030990324_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro90327_
                                             gx#syntax-binding?)
                                            (_K90258_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro90327_)
                                                    _hd90290_
                                                    _method90254_)
                                                   _rest90291_)
                                             _r90292_)
                                            (_E9030690315_)))))
                                  (_E9030690315_))))
                           (_E9029590345_
                            (lambda ()
                              (if (gx#stx-pair? _e9029390311_)
                                  (let ((_e9030390335_
                                         (gx#syntax-e _e9029390311_)))
                                    (let ((_hd9030490338_
                                           (##car _e9030390335_))
                                          (_tl9030590340_
                                           (##cdr _e9030390335_)))
                                      (if (eq? (gx#stx-e _hd9030490338_)
                                               'begin:)
                                          (let ((_body90343_ _tl9030590340_))
                                            (if '#t
                                                (_K90258_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest90291_
                                                  _body90343_)
                                                 _r90292_)
                                                (_E9030290331_)))
                                          (_E9030290331_))))
                                  (_E9030290331_))))
                           (_E9029490372_
                            (lambda ()
                              (if (gx#stx-pair? _e9029390311_)
                                  (let ((_e9029690349_
                                         (gx#syntax-e _e9029390311_)))
                                    (let ((_hd9029790352_
                                           (##car _e9029690349_))
                                          (_tl9029890354_
                                           (##cdr _e9029690349_)))
                                      (if (eq? (gx#stx-e _hd9029790352_) 'phi:)
                                          (if (gx#stx-pair? _tl9029890354_)
                                              (let ((_e9029990357_
                                                     (gx#syntax-e
                                                      _tl9029890354_)))
                                                (let ((_hd9030090360_
                                                       (##car _e9029990357_))
                                                      (_tl9030190362_
                                                       (##cdr _e9029990357_)))
                                                  (let* ((_dphi90365_
                                                          _hd9030090360_)
                                                         (_body90367_
                                                          _tl9030190362_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi90365_)
                                                        (let ((_rbody90370_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K90258_ _body90367_ '()))
                        _current-phi90255_
                        (fx+ (gx#stx-e _dphi90365_) (_current-phi90255_)))))
                  (_K90258_ _rest90291_ (foldr1 cons _r90292_ _rbody90370_)))
                (_E9029590345_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9029590345_))
                                          (_E9029590345_))))
                                  (_E9029590345_)))))
                      (_E9029490372_)))))
          (let* ((_e9026090267_ _stx90252_)
                 (_E9026290271_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9026090267_)))
                 (_E9026190286_
                  (lambda ()
                    (if (gx#stx-pair? _e9026090267_)
                        (let ((_e9026390275_ (gx#syntax-e _e9026090267_)))
                          (let ((_hd9026490278_ (##car _e9026390275_))
                                (_tl9026590280_ (##cdr _e9026390275_)))
                            (let ((_body90283_ _tl9026590280_))
                              (if '#t
                                  (if (_current-phi90255_)
                                      (_K90258_ _body90283_ '())
                                      (call-with-parameters
                                       (lambda () (_K90258_ _body90283_ '()))
                                       _current-phi90255_
                                       (gx#current-expander-phi)))
                                  (_E9026290271_)))))
                        (_E9026290271_)))))
            (_E9026190286_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx89919_ _internal-expand?89920_)
        (letrec ((_expand189922_
                  (lambda (_hd90232_ _K90233_ _rest90234_ _r90235_)
                    (if (gx#core-bound-module? _hd90232_)
                        (_import189923_
                         (gx#syntax-local-e__0 _hd90232_)
                         _K90233_
                         _rest90234_
                         _r90235_)
                        (if (gx#core-library-module-path? _hd90232_)
                            (_import189923_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd90232_))
                             _K90233_
                             _rest90234_
                             _r90235_)
                            (if (gx#core-library-relative-module-path?
                                 _hd90232_)
                                (_import189923_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd90232_))
                                 _K90233_
                                 _rest90234_
                                 _r90235_)
                                (let ((_e90237_ (gx#stx-e _hd90232_)))
                                  (if (pair? _e90237_)
                                      (let ((_$e90239_
                                             (gx#stx-e (car _e90237_))))
                                        (if (eq? 'spec: _$e90239_)
                                            (_import-spec89926_
                                             _hd90232_
                                             _K90233_
                                             _rest90234_
                                             _r90235_)
                                            (if (eq? 'in: _$e90239_)
                                                (_import-submodule89924_
                                                 _hd90232_
                                                 _K90233_
                                                 _rest90234_
                                                 _r90235_)
                                                (if (eq? 'runtime: _$e90239_)
                                                    (_import-runtime89925_
                                                     _hd90232_
                                                     _K90233_
                                                     _rest90234_
                                                     _r90235_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx89919_
                                                     _hd90232_)))))
                                      (if (string? _e90237_)
                                          (_import189923_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd90232_
                                             (gx#stx-source _stx89919_)))
                                           _K90233_
                                           _rest90234_
                                           _r90235_)
                                          (if (##structure-instance-of?
                                               _e90237_
                                               'gx#module-context::t)
                                              (_K90233_
                                               _rest90234_
                                               (cons _e90237_ _r90235_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx89919_
                                               _hd90232_))))))))))
                 (_import189923_
                  (lambda (_ctx90221_ _K90222_ _rest90223_ _r90224_)
                    (let ((_dphi90226_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K90222_
                       _rest90223_
                       (cons (##structure
                              gx#import-set::t
                              _ctx90221_
                              _dphi90226_
                              (map (lambda (_g9022790229_)
                                     (gx#core-module-export->import__%
                                      _g9022790229_
                                      '#f
                                      _dphi90226_))
                                   (##unchecked-structure-ref
                                    _ctx90221_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r90224_)))))
                 (_import-submodule89924_
                  (lambda (_hd90188_ _K90189_ _rest90190_ _r90191_)
                    (let* ((_e9019290199_ _hd90188_)
                           (_E9019490203_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9019290199_)))
                           (_E9019390217_
                            (lambda ()
                              (if (gx#stx-pair? _e9019290199_)
                                  (let ((_e9019590207_
                                         (gx#syntax-e _e9019290199_)))
                                    (let ((_hd9019690210_
                                           (##car _e9019590207_))
                                          (_tl9019790212_
                                           (##cdr _e9019590207_)))
                                      (let ((_spath90215_ _tl9019790212_))
                                        (if '#t
                                            (_import189923_
                                             (_import-spec-source89927_
                                              _spath90215_)
                                             _K90189_
                                             _rest90190_
                                             _r90191_)
                                            (_E9019490203_)))))
                                  (_E9019490203_)))))
                      (_E9019390217_))))
                 (_import-runtime89925_
                  (lambda (_hd90155_ _K90156_ _rest90157_ _r90158_)
                    (let* ((_e9015990166_ _hd90155_)
                           (_E9016190170_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9015990166_)))
                           (_E9016090184_
                            (lambda ()
                              (if (gx#stx-pair? _e9015990166_)
                                  (let ((_e9016290174_
                                         (gx#syntax-e _e9015990166_)))
                                    (let ((_hd9016390177_
                                           (##car _e9016290174_))
                                          (_tl9016490179_
                                           (##cdr _e9016290174_)))
                                      (let ((_spath90182_ _tl9016490179_))
                                        (if '#t
                                            (_K90156_
                                             _rest90157_
                                             (cons (_import-spec-source89927_
                                                    _spath90182_)
                                                   _r90158_))
                                            (_E9016190170_)))))
                                  (_E9016190170_)))))
                      (_E9016090184_))))
                 (_import-spec89926_
                  (lambda (_hd89994_ _K89995_ _rest89996_ _r89997_)
                    (let* ((_e8999890015_ _hd89994_)
                           (_E9000790019_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8999890015_)))
                           (_E9000090129_
                            (lambda ()
                              (if (gx#stx-pair? _e8999890015_)
                                  (let ((_e9000890023_
                                         (gx#syntax-e _e8999890015_)))
                                    (let ((_hd9000990026_
                                           (##car _e9000890023_))
                                          (_tl9001090028_
                                           (##cdr _e9000890023_)))
                                      (if (gx#stx-pair? _tl9001090028_)
                                          (let ((_e9001190031_
                                                 (gx#syntax-e _tl9001090028_)))
                                            (let ((_hd9001290034_
                                                   (##car _e9001190031_))
                                                  (_tl9001390036_
                                                   (##cdr _e9001190031_)))
                                              (let* ((_path90039_
                                                      _hd9001290034_)
                                                     (_specs90041_
                                                      _tl9001390036_))
                                                (if '#t
                                                    (let ((_src-ctx90043_
                                                           (_import-spec-source89927_
                                                            _path90039_))
                                                          (_exports90044_
                                                           (make-hash-table))
                                                          (_specs90045_
                                                           (gx#syntax->list
                                                            _specs90041_)))
                                                      (for-each
                                                       (lambda (_out90047_)
                                                         (hash-put!
                                                          _exports90044_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out90047_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out90047_
                         '4
                         gx#module-export::t
                         '#f))
                  _out90047_))
               (##unchecked-structure-ref
                _src-ctx90043_
                '9
                gx#module-context::t
                '#f))
              (_K89995_
               _rest89996_
               (foldl1 (lambda (_spec90049_ _r90050_)
                         (let* ((_e9005190067_ _spec90049_)
                                (_E9005390071_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9005190067_)))
                                (_E9005290125_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9005190067_)
                                       (let ((_e9005490075_
                                              (gx#syntax-e _e9005190067_)))
                                         (let ((_hd9005590078_
                                                (##car _e9005490075_))
                                               (_tl9005690080_
                                                (##cdr _e9005490075_)))
                                           (let ((_phi90083_ _hd9005590078_))
                                             (if (gx#stx-pair? _tl9005690080_)
                                                 (let ((_e9005790085_
                                                        (gx#syntax-e
                                                         _tl9005690080_)))
                                                   (let ((_hd9005890088_
                                                          (##car _e9005790085_))
                                                         (_tl9005990090_
                                                          (##cdr _e9005790085_)))
                                                     (let ((_name90093_
                                                            _hd9005890088_))
                                                       (if (gx#stx-pair?
                                                            _tl9005990090_)
                                                           (let ((_e9006090095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9005990090_)))
                     (let ((_hd9006190098_ (##car _e9006090095_))
                           (_tl9006290100_ (##cdr _e9006090095_)))
                       (let ((_src-phi90103_ _hd9006190098_))
                         (if (gx#stx-pair? _tl9006290100_)
                             (let ((_e9006390105_
                                    (gx#syntax-e _tl9006290100_)))
                               (let ((_hd9006490108_ (##car _e9006390105_))
                                     (_tl9006590110_ (##cdr _e9006390105_)))
                                 (let ((_src-name90113_ _hd9006490108_))
                                   (if (gx#stx-null? _tl9006590110_)
                                       (if (and (gx#stx-fixnum? _src-phi90103_)
                                                (gx#identifier?
                                                 _src-name90113_)
                                                (gx#stx-fixnum? _phi90083_)
                                                (gx#identifier? _name90093_))
                                           (let ((_src-phi90115_
                                                  (gx#stx-e _src-phi90103_))
                                                 (_src-name90116_
                                                  (gx#core-identifier-key
                                                   _src-name90113_))
                                                 (_phi90117_
                                                  (gx#stx-e _phi90083_))
                                                 (_name90118_
                                                  (gx#core-identifier-key
                                                   _name90093_)))
                                             (let ((_$e90120_
                                                    (hash-get
                                                     _exports90044_
                                                     (cons _src-phi90115_
                                                           _src-name90116_))))
                                               (if _$e90120_
                                                   ((lambda (_out90123_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out90123_
                                                             _name90118_
                                                             (fx- _phi90117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi90115_))
                    _r90050_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e90120_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx89919_
                                                    _hd89994_))))
                                           (_E9005390071_))
                                       (_E9005390071_)))))
                             (_E9005390071_)))))
                   (_E9005390071_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9005390071_)))))
                                       (_E9005390071_)))))
                           (_E9005290125_)))
                       _r89997_
                       _specs90045_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9000790019_)))))
                                          (_E9000790019_))))
                                  (_E9000790019_))))
                           (_E8999990151_
                            (lambda ()
                              (if (gx#stx-pair? _e8999890015_)
                                  (let ((_e9000190133_
                                         (gx#syntax-e _e8999890015_)))
                                    (let ((_hd9000290136_
                                           (##car _e9000190133_))
                                          (_tl9000390138_
                                           (##cdr _e9000190133_)))
                                      (if (gx#stx-pair? _tl9000390138_)
                                          (let ((_e9000490141_
                                                 (gx#syntax-e _tl9000390138_)))
                                            (let ((_hd9000590144_
                                                   (##car _e9000490141_))
                                                  (_tl9000690146_
                                                   (##cdr _e9000490141_)))
                                              (let ((_path90149_
                                                     _hd9000590144_))
                                                (if (gx#stx-null?
                                                     _tl9000690146_)
                                                    (if '#t
                                                        (_K89995_
                                                         _rest89996_
                                                         (cons (_import-spec-source89927_
                                                                _path90149_)
                                                               _r89997_))
                                                        (_E9000090129_))
                                                    (_E9000090129_)))))
                                          (_E9000090129_))))
                                  (_E9000090129_)))))
                      (_E8999990151_))))
                 (_import-spec-source89927_
                  (lambda (_spath89992_)
                    (gx#core-import-nested-module _spath89992_ _stx89919_)))
                 (_import!89928_
                  (lambda (_rbody89941_)
                    (letrec* ((_current-ctx89943_
                               (gx#current-expander-context))
                              (_deps89944_ (make-hash-table-eq))
                              (_bind!89945_
                               (lambda (_hd89990_)
                                 (gx#core-bind-import!__1
                                  _hd89990_
                                  _current-ctx89943_))))
                      (let _lp89947_ ((_rest89949_ _rbody89941_)
                                      (_body89950_ '()))
                        (let* ((_rest8995189959_ _rest89949_)
                               (_else8995389969_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx89943_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx89943_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx89943_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body89950_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx89967_ _g92797_)
                                     (gx#eval-module _ctx89967_))
                                   _deps89944_)
                                  _body89950_))
                               (_K8995589978_
                                (lambda (_rest89972_ _hd89973_)
                                  (if (##structure-direct-instance-of?
                                       _hd89973_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!89945_ _hd89973_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd89973_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd89973_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps89944_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd89973_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd89973_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!89945_
                                             (##unchecked-structure-ref
                                              _hd89973_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd89973_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps89944_
                                                 (##unchecked-structure-ref
                                                  _hd89973_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e89975_
                                                 (##structure-instance-of?
                                                  _hd89973_
                                                  'gx#module-context::t)))
                                            (if _$e89975_
                                                _$e89975_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx89919_
                                                 _hd89973_)))))
                                  (_lp89947_
                                   _rest89972_
                                   (cons _hd89973_ _body89950_)))))
                          (if (##pair? _rest8995189959_)
                              (let ((_hd8995689981_ (##car _rest8995189959_))
                                    (_tl8995789983_ (##cdr _rest8995189959_)))
                                (let* ((_hd89986_ _hd8995689981_)
                                       (_rest89988_ _tl8995789983_))
                                  (_K8995589978_ _rest89988_ _hd89986_)))
                              (_else8995389969_)))))))
                 (_expanded-import?89929_
                  (lambda (_e89933_)
                    (let ((_$e89935_
                           (##structure-direct-instance-of?
                            _e89933_
                            'gx#import-set::t)))
                      (if _$e89935_
                          _$e89935_
                          (let ((_$e89938_
                                 (##structure-direct-instance-of?
                                  _e89933_
                                  'gx#module-import::t)))
                            (if _$e89938_
                                _$e89938_
                                (##structure-instance-of?
                                 _e89933_
                                 'gx#module-context::t))))))))
          (let ((_rbody89931_
                 (gx#core-expand-import/export
                  _stx89919_
                  _expanded-import?89929_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand189922_)))
            (if _internal-expand?89920_
                (reverse _rbody89931_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!89928_ _rbody89931_))
                 (gx#stx-source _stx89919_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx90245_)
        (let ((_internal-expand?90247_ '#f))
          (gx#core-expand-import%__% _stx90245_ _internal-expand?90247_))))
    (define gx#core-expand-import%
      (lambda _g92799_
        (let ((_g92798_ (##length _g92799_)))
          (cond ((##fx= _g92798_ 1)
                 (apply (lambda (_stx90245_)
                          (gx#core-expand-import%__0 _stx90245_))
                        _g92799_))
                ((##fx= _g92798_ 2)
                 (apply (lambda (_stx90249_ _internal-expand?90250_)
                          (gx#core-expand-import%__%
                           _stx90249_
                           _internal-expand?90250_))
                        _g92799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g92799_))))))
    (define gx#core-import-nested-module
      (lambda (_spath89846_ _where89847_)
        (let* ((_e8984889855_ _spath89846_)
               (_E8985089859_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8984889855_)))
               (_E8984989914_
                (lambda ()
                  (if (gx#stx-pair? _e8984889855_)
                      (let ((_e8985189863_ (gx#syntax-e _e8984889855_)))
                        (let ((_hd8985289866_ (##car _e8985189863_))
                              (_tl8985389868_ (##cdr _e8985189863_)))
                          (let* ((_origin89871_ _hd8985289866_)
                                 (_sub89873_ _tl8985389868_))
                            (if '#t
                                (let ((_origin-ctx89875_
                                       (if (gx#stx-false? _origin89871_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin89871_))))
                                  (let _lp89877_ ((_rest89879_ _sub89873_)
                                                  (_ctx89880_
                                                   _origin-ctx89875_))
                                    (let* ((_e8988189888_ _rest89879_)
                                           (_E8988389892_
                                            (lambda () _ctx89880_))
                                           (_E8988289910_
                                            (lambda ()
                                              (if (gx#stx-pair? _e8988189888_)
                                                  (let ((_e8988489896_
                                                         (gx#syntax-e
                                                          _e8988189888_)))
                                                    (let ((_hd8988589899_
                                                           (##car _e8988489896_))
                                                          (_tl8988689901_
                                                           (##cdr _e8988489896_)))
                                                      (let* ((_id89904_
                                                              _hd8988589899_)
                                                             (_rest89906_
                                                              _tl8988689901_))
                                                        (if '#t
                                                            (let ((_bind89908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id89904_ '0 _ctx89880_)))
                      (if (and (##structure-direct-instance-of?
                                _bind89908_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind89908_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where89847_
                           _spath89846_
                           _id89904_))
                      (_lp89877_
                       _rest89906_
                       (##unchecked-structure-ref
                        _bind89908_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E8988389892_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8988389892_)))))
                                      (_E8988289910_))))
                                (_E8985089859_)))))
                      (_E8985089859_)))))
          (_E8984989914_))))
    (define gx#core-expand-import-source
      (lambda (_hd89844_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd89844_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx89352_ _internal-expand?89353_)
        (letrec* ((_make-export__9272892729_
                   (lambda (_bind89792_ _phi89793_ _ctx89794_ _name89795_)
                     (let* ((_key89797_
                             (##unchecked-structure-ref
                              _bind89792_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key89799_
                             (if _name89795_
                                 (gx#core-identifier-key _name89795_)
                                 _key89797_)))
                       (##structure
                        gx#module-export::t
                        _ctx89794_
                        _key89797_
                        _phi89793_
                        _export-key89799_
                        (let ((_$e89802_
                               (##structure-instance-of?
                                _bind89792_
                                'gx#extern-binding::t)))
                          (if _$e89802_
                              _$e89802_
                              (##structure-direct-instance-of?
                               _bind89792_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9273092733_
                   (lambda (_bind89808_)
                     (let* ((_phi89810_ (gx#current-export-expander-phi))
                            (_ctx89812_ (gx#current-expander-context))
                            (_name89814_ '#f))
                       (_make-export__9272892729_
                        _bind89808_
                        _phi89810_
                        _ctx89812_
                        _name89814_))))
                  (_make-export__1__9273192734_
                   (lambda (_bind89816_ _phi89817_)
                     (let* ((_ctx89819_ (gx#current-expander-context))
                            (_name89821_ '#f))
                       (_make-export__9272892729_
                        _bind89816_
                        _phi89817_
                        _ctx89819_
                        _name89821_))))
                  (_make-export__2__9273292735_
                   (lambda (_bind89823_ _phi89824_ _ctx89825_)
                     (let ((_name89827_ '#f))
                       (_make-export__9272892729_
                        _bind89823_
                        _phi89824_
                        _ctx89825_
                        _name89827_))))
                  (_make-export89355_
                   (lambda _g92801_
                     (let ((_g92800_ (##length _g92801_)))
                       (cond ((##fx= _g92800_ 1)
                              (apply (lambda (_bind89808_)
                                       (_make-export__0__9273092733_
                                        _bind89808_))
                                     _g92801_))
                             ((##fx= _g92800_ 2)
                              (apply (lambda (_bind89816_ _phi89817_)
                                       (_make-export__1__9273192734_
                                        _bind89816_
                                        _phi89817_))
                                     _g92801_))
                             ((##fx= _g92800_ 3)
                              (apply (lambda (_bind89823_
                                              _phi89824_
                                              _ctx89825_)
                                       (_make-export__2__9273292735_
                                        _bind89823_
                                        _phi89824_
                                        _ctx89825_))
                                     _g92801_))
                             ((##fx= _g92800_ 4)
                              (apply (lambda (_bind89829_
                                              _phi89830_
                                              _ctx89831_
                                              _name89832_)
                                       (_make-export__9272892729_
                                        _bind89829_
                                        _phi89830_
                                        _ctx89831_
                                        _name89832_))
                                     _g92801_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g92801_))))))
                  (_expand189356_
                   (lambda (_hd89505_ _K89506_ _rest89507_ _r89508_)
                     (let* ((_e8950989541_ _hd89505_)
                            (_E8953689545_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx89352_
                                _hd89505_)))
                            (_E8952689624_
                             (lambda ()
                               (if (gx#stx-pair? _e8950989541_)
                                   (let ((_e8953789549_
                                          (gx#syntax-e _e8950989541_)))
                                     (let ((_hd8953889552_
                                            (##car _e8953789549_))
                                           (_tl8953989554_
                                            (##cdr _e8953789549_)))
                                       (if (eq? (gx#stx-e _hd8953889552_)
                                                'import:)
                                           (let ((_in89557_ _tl8953989554_))
                                             (if (gx#stx-list? _in89557_)
                                                 (let _lp89559_ ((_in-rest89561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in89557_)
                         (_r89562_ _r89508_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e8956389570_
                                                           _in-rest89561_)
                                                          (_E8956589574_
                                                           (lambda ()
                                                             (_K89506_
                                                              _rest89507_
                                                              _r89562_)))
                                                          (_E8956489620_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e8956389570_)
                         (let ((_e8956689578_ (gx#syntax-e _e8956389570_)))
                           (let ((_hd8956789581_ (##car _e8956689578_))
                                 (_tl8956889583_ (##cdr _e8956689578_)))
                             (let* ((_hd89586_ _hd8956789581_)
                                    (_in-rest89588_ _tl8956889583_))
                               (if '#t
                                   (let ((_src89618_
                                          (if (gx#core-bound-module? _hd89586_)
                                              (gx#syntax-local-e__0 _hd89586_)
                                              (if (gx#core-library-module-path?
                                                   _hd89586_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd89586_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd89586_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd89586_))
                                                      (if (gx#stx-string?
                                                           _hd89586_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd89586_
                                                            (gx#stx-source
                                                             _stx89352_)))
                                                          (let* ((_e8958989596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd89586_)
                         (_E8959189600_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx89352_
                             _hd89586_)))
                         (_E8959089614_
                          (lambda ()
                            (if (gx#stx-pair? _e8958989596_)
                                (let ((_e8959289604_
                                       (gx#syntax-e _e8958989596_)))
                                  (let ((_hd8959389607_ (##car _e8959289604_))
                                        (_tl8959489609_ (##cdr _e8959289604_)))
                                    (if (eq? (gx#stx-e _hd8959389607_) 'in:)
                                        (let ((_spath89612_ _tl8959489609_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath89612_
                                               _stx89352_)
                                              (_E8959189600_)))
                                        (_E8959189600_))))
                                (_E8959189600_)))))
                    (_E8959089614_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp89559_
                                      _in-rest89588_
                                      (_export-imports89357_
                                       _src89618_
                                       _r89562_)))
                                   (_E8956589574_)))))
                         (_E8956589574_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8956489620_)))
                                                 (_E8953689545_)))
                                           (_E8953689545_))))
                                   (_E8953689545_))))
                            (_E8951389663_
                             (lambda ()
                               (if (gx#stx-pair? _e8950989541_)
                                   (let ((_e8952789628_
                                          (gx#syntax-e _e8950989541_)))
                                     (let ((_hd8952889631_
                                            (##car _e8952789628_))
                                           (_tl8952989633_
                                            (##cdr _e8952789628_)))
                                       (if (eq? (gx#stx-e _hd8952889631_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl8952989633_)
                                               (let ((_e8953089636_
                                                      (gx#syntax-e
                                                       _tl8952989633_)))
                                                 (let ((_hd8953189639_
                                                        (##car _e8953089636_))
                                                       (_tl8953289641_
                                                        (##cdr _e8953089636_)))
                                                   (let ((_id89644_
                                                          _hd8953189639_))
                                                     (if (gx#stx-pair?
                                                          _tl8953289641_)
                                                         (let ((_e8953389646_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8953289641_)))
                   (let ((_hd8953489649_ (##car _e8953389646_))
                         (_tl8953589651_ (##cdr _e8953389646_)))
                     (let ((_name89654_ _hd8953489649_))
                       (if (gx#stx-null? _tl8953589651_)
                           (if '#t
                               (let* ((_phi89656_
                                       (gx#current-export-expander-phi))
                                      (_$e89658_
                                       (gx#core-resolve-identifier__1
                                        _id89644_
                                        _phi89656_)))
                                 (if _$e89658_
                                     ((lambda (_bind89661_)
                                        (_K89506_
                                         _rest89507_
                                         (cons (_make-export__9272892729_
                                                _bind89661_
                                                _phi89656_
                                                (gx#current-expander-context)
                                                _name89654_)
                                               _r89508_)))
                                      _$e89658_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx89352_
                                      _hd89505_
                                      _id89644_)))
                               (_E8952689624_))
                           (_E8952689624_)))))
                 (_E8952689624_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8952689624_))
                                           (_E8952689624_))))
                                   (_E8952689624_))))
                            (_E8951289712_
                             (lambda ()
                               (if (gx#stx-pair? _e8950989541_)
                                   (let ((_e8951489667_
                                          (gx#syntax-e _e8950989541_)))
                                     (let ((_hd8951589670_
                                            (##car _e8951489667_))
                                           (_tl8951689672_
                                            (##cdr _e8951489667_)))
                                       (if (eq? (gx#stx-e _hd8951589670_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8951689672_)
                                               (let ((_e8951789675_
                                                      (gx#syntax-e
                                                       _tl8951689672_)))
                                                 (let ((_hd8951889678_
                                                        (##car _e8951789675_))
                                                       (_tl8951989680_
                                                        (##cdr _e8951789675_)))
                                                   (let ((_phi89683_
                                                          _hd8951889678_))
                                                     (if (gx#stx-pair?
                                                          _tl8951989680_)
                                                         (let ((_e8952089685_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8951989680_)))
                   (let ((_hd8952189688_ (##car _e8952089685_))
                         (_tl8952289690_ (##cdr _e8952089685_)))
                     (let ((_id89693_ _hd8952189688_))
                       (if (gx#stx-pair? _tl8952289690_)
                           (let ((_e8952389695_ (gx#syntax-e _tl8952289690_)))
                             (let ((_hd8952489698_ (##car _e8952389695_))
                                   (_tl8952589700_ (##cdr _e8952389695_)))
                               (let ((_name89703_ _hd8952489698_))
                                 (if (gx#stx-null? _tl8952589700_)
                                     (if (and (gx#stx-fixnum? _phi89683_)
                                              (gx#identifier? _id89693_)
                                              (gx#identifier? _name89703_))
                                         (let* ((_phi89705_
                                                 (gx#stx-e _phi89683_))
                                                (_$e89707_
                                                 (gx#core-resolve-identifier__1
                                                  _id89693_
                                                  _phi89705_)))
                                           (if _$e89707_
                                               ((lambda (_bind89710_)
                                                  (_K89506_
                                                   _rest89507_
                                                   (cons (_make-export__9272892729_
                                                          _bind89710_
                                                          _phi89705_
                                                          (gx#current-expander-context)
                                                          _name89703_)
                                                         _r89508_)))
                                                _$e89707_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx89352_
                                                _hd89505_
                                                _id89693_)))
                                         (_E8951389663_))
                                     (_E8951389663_)))))
                           (_E8951389663_)))))
                 (_E8951389663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8951389663_))
                                           (_E8951389663_))))
                                   (_E8951389663_))))
                            (_E8951189723_
                             (lambda ()
                               (let ((_id89716_ _e8950989541_))
                                 (if (gx#identifier? _id89716_)
                                     (let ((_$e89718_
                                            (gx#core-resolve-identifier__1
                                             _id89716_
                                             (gx#current-export-expander-phi))))
                                       (if _$e89718_
                                           ((lambda (_bind89721_)
                                              (_K89506_
                                               _rest89507_
                                               (cons (_make-export__0__9273092733_
                                                      _bind89721_)
                                                     _r89508_)))
                                            _$e89718_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx89352_
                                            _hd89505_)))
                                     (_E8951289712_)))))
                            (_E8951089787_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8950989541_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx89727_
                                               (gx#current-expander-context))
                                              (_current-phi89729_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx89731_
                                               (gx#core-context-shift
                                                _current-ctx89727_
                                                _current-phi89729_))
                                              (_phi-bind89733_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx89731_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp89736_ ((_bind-rest89738_
                                                          _phi-bind89733_)
                                                         (_set89739_ '()))
                                           (let* ((_bind-rest8974089750_
                                                   _bind-rest89738_)
                                                  (_else8974289758_
                                                   (lambda ()
                                                     (_K89506_
                                                      _rest89507_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi89729_
                                                             _set89739_)
                                                            _r89508_))))
                                                  (_K8974489768_
                                                   (lambda (_bind-rest89761_
                                                            _bind89762_
                                                            _key89763_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind89762_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind89762_))
                                                         (_lp89736_
                                                          _bind-rest89761_
                                                          _set89739_)
                                                         (_lp89736_
                                                          _bind-rest89761_
                                                          (cons (_make-export__2__9273292735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind89762_
                         _current-phi89729_
                         _current-ctx89727_)
                        _set89739_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest8974089750_)
                                                 (let ((_hd8974589771_
                                                        (##car _bind-rest8974089750_))
                                                       (_tl8974689773_
                                                        (##cdr _bind-rest8974089750_)))
                                                   (if (##pair? _hd8974589771_)
                                                       (let ((_hd8974789776_
                                                              (##car _hd8974589771_))
                                                             (_tl8974889778_
                                                              (##cdr _hd8974589771_)))
                                                         (let* ((_key89781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd8974789776_)
                        (_bind89783_ _tl8974889778_)
                        (_bind-rest89785_ _tl8974689773_))
                   (_K8974489768_ _bind-rest89785_ _bind89783_ _key89781_)))
               (_else8974289758_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else8974289758_)))))
                                       (_E8951189723_))
                                   (_E8951189723_)))))
                       (_E8951089787_))))
                  (_export-imports89357_
                   (lambda (_src89381_ _r89382_)
                     (letrec* ((_current-ctx89384_
                                (gx#current-expander-context))
                               (_current-phi89385_
                                (gx#current-export-expander-phi))
                               (_import->export89386_
                                (lambda (_in89467_)
                                  (let* ((_in8946889476_ _in89467_)
                                         (_E8947089480_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8946889476_)))
                                         (_K8947189487_
                                          (lambda (_phi89483_
                                                   _key89484_
                                                   _out89485_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx89384_
                                             _key89484_
                                             _phi89483_
                                             _key89484_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8946889476_
                                         'gx#module-import::t)
                                        (let* ((_e8947289490_
                                                (##unchecked-structure-ref
                                                 _in8946889476_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out89493_ _e8947289490_)
                                               (_e8947389495_
                                                (##unchecked-structure-ref
                                                 _in8946889476_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key89498_ _e8947389495_)
                                               (_e8947489500_
                                                (##unchecked-structure-ref
                                                 _in8946889476_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi89503_ _e8947489500_))
                                          (_K8947189487_
                                           _phi89503_
                                           _key89498_
                                           _out89493_))
                                        (_E8947089480_)))))
                               (_fold-e89387_
                                (lambda (_in89389_ _r89390_)
                                  (let* ((_in8939189405_ _in89389_)
                                         (_else8939489413_
                                          (lambda () _r89390_)))
                                    (let ((_K8940089449_
                                           (lambda (_phi89445_
                                                    _key89446_
                                                    _out89447_)
                                             (if (and (fx= _phi89445_
                                                           _current-phi89385_)
                                                      (eq? _src89381_
                                                           (##unchecked-structure-ref
                                                            _out89447_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export89386_
                                                        _in89389_)
                                                       _r89390_)
                                                 _r89390_)))
                                          (_K8939689424_
                                           (lambda (_imports89417_
                                                    _phi89418_
                                                    _ctx89419_)
                                             (if (and (fx= _phi89418_
                                                           _current-phi89385_)
                                                      (eq? _src89381_
                                                           _ctx89419_))
                                                 (foldl1 (lambda (_in89421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r89422_)
                   (cons (_import->export89386_ _in89421_) _r89422_))
                 _r89390_
                 _imports89417_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r89390_))))
                                      (let ((_try-match8939389442_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8939189405_
                                                    'gx#import-set::t)
                                                   (let* ((_e8939789427_
                                                           (##unchecked-structure-ref
                                                            _in8939189405_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8939889432_
                                                           (##unchecked-structure-ref
                                                            _in8939189405_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8939989437_
                                                           (##unchecked-structure-ref
                                                            _in8939189405_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx89430_
                                                            _e8939789427_)
                                                           (_phi89435_
                                                            _e8939889432_)
                                                           (_imports89440_
                                                            _e8939989437_))
                                                       (_K8939689424_
                                                        _imports89440_
                                                        _phi89435_
                                                        _ctx89430_)))
                                                   (_else8939489413_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8939189405_
                                             'gx#module-import::t)
                                            (let* ((_e8940189452_
                                                    (##unchecked-structure-ref
                                                     _in8939189405_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8940289457_
                                                    (##unchecked-structure-ref
                                                     _in8939189405_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8940389462_
                                                    (##unchecked-structure-ref
                                                     _in8939189405_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out89455_ _e8940189452_)
                                                    (_key89460_ _e8940289457_)
                                                    (_phi89465_ _e8940389462_))
                                                (_K8940089449_
                                                 _phi89465_
                                                 _key89460_
                                                 _out89455_)))
                                            (_try-match8939389442_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src89381_
                              _current-phi89385_
                              (foldl1 _fold-e89387_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx89384_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r89382_))))
                  (_export!89358_
                   (lambda (_rbody89371_)
                     (letrec* ((_current-ctx89373_
                                (gx#current-expander-context))
                               (_fold-e89374_
                                (lambda (_out89378_ _r89379_)
                                  (if (##structure-direct-instance-of?
                                       _out89378_
                                       'gx#module-export::t)
                                      (cons _out89378_ _r89379_)
                                      (if (##structure-direct-instance-of?
                                           _out89378_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r89379_
                                                  (##unchecked-structure-ref
                                                   _out89378_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r89379_)))))
                       (let ((_body89376_ (reverse _rbody89371_)))
                         (##unchecked-structure-set!
                          _current-ctx89373_
                          (foldl1 _fold-e89374_
                                  (##unchecked-structure-ref
                                   _current-ctx89373_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body89376_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body89376_))))
                  (_expanded-export?89359_
                   (lambda (_e89366_)
                     (let ((_$e89368_
                            (##structure-direct-instance-of?
                             _e89366_
                             'gx#module-export::t)))
                       (if _$e89368_
                           _$e89368_
                           (##structure-direct-instance-of?
                            _e89366_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?89353_)
              (let ((_rbody89364_
                     (gx#core-expand-import/export
                      _stx89352_
                      _expanded-export?89359_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand189356_)))
                (if _internal-expand?89353_
                    (reverse _rbody89364_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!89358_ _rbody89364_))
                     (gx#stx-source _stx89352_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx89352_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx89352_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx89837_)
        (let ((_internal-expand?89839_ '#f))
          (gx#core-expand-export%__% _stx89837_ _internal-expand?89839_))))
    (define gx#core-expand-export%
      (lambda _g92803_
        (let ((_g92802_ (##length _g92803_)))
          (cond ((##fx= _g92802_ 1)
                 (apply (lambda (_stx89837_)
                          (gx#core-expand-export%__0 _stx89837_))
                        _g92803_))
                ((##fx= _g92802_ 2)
                 (apply (lambda (_stx89841_ _internal-expand?89842_)
                          (gx#core-expand-export%__%
                           _stx89841_
                           _internal-expand?89842_))
                        _g92803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g92803_))))))
    (define gx#core-expand-export-source
      (lambda (_hd89349_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd89349_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx89319_)
        (let* ((_e8932089327_ _stx89319_)
               (_E8932289331_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8932089327_)))
               (_E8932189345_
                (lambda ()
                  (if (gx#stx-pair? _e8932089327_)
                      (let ((_e8932389335_ (gx#syntax-e _e8932089327_)))
                        (let ((_hd8932489338_ (##car _e8932389335_))
                              (_tl8932589340_ (##cdr _e8932389335_)))
                          (let ((_body89343_ _tl8932589340_))
                            (if (gx#identifier-list? _body89343_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body89343_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body89343_))
                                   (gx#stx-source _stx89319_)))
                                (_E8932289331_)))))
                      (_E8932289331_)))))
          (_E8932189345_))))
    (define gx#core-bind-feature!__%
      (lambda (_id89285_ _private?89286_ _phi89287_ _ctx89288_)
        (gx#core-bind-syntax!__%
         _id89285_
         ((if _private?89286_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id89285_))
         _private?89286_
         _phi89287_
         _ctx89288_)))
    (define gx#core-bind-feature!__0
      (lambda (_id89293_)
        (let* ((_private?89295_ '#f)
               (_phi89297_ (gx#current-expander-phi))
               (_ctx89299_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89293_
           _private?89295_
           _phi89297_
           _ctx89299_))))
    (define gx#core-bind-feature!__1
      (lambda (_id89301_ _private?89302_)
        (let* ((_phi89304_ (gx#current-expander-phi))
               (_ctx89306_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89301_
           _private?89302_
           _phi89304_
           _ctx89306_))))
    (define gx#core-bind-feature!__2
      (lambda (_id89308_ _private?89309_ _phi89310_)
        (let ((_ctx89312_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89308_
           _private?89309_
           _phi89310_
           _ctx89312_))))
    (define gx#core-bind-feature!
      (lambda _g92805_
        (let ((_g92804_ (##length _g92805_)))
          (cond ((##fx= _g92804_ 1)
                 (apply (lambda (_id89293_)
                          (gx#core-bind-feature!__0 _id89293_))
                        _g92805_))
                ((##fx= _g92804_ 2)
                 (apply (lambda (_id89301_ _private?89302_)
                          (gx#core-bind-feature!__1 _id89301_ _private?89302_))
                        _g92805_))
                ((##fx= _g92804_ 3)
                 (apply (lambda (_id89308_ _private?89309_ _phi89310_)
                          (gx#core-bind-feature!__2
                           _id89308_
                           _private?89309_
                           _phi89310_))
                        _g92805_))
                ((##fx= _g92804_ 4)
                 (apply (lambda (_id89314_
                                 _private?89315_
                                 _phi89316_
                                 _ctx89317_)
                          (gx#core-bind-feature!__%
                           _id89314_
                           _private?89315_
                           _phi89316_
                           _ctx89317_))
                        _g92805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g92805_))))))))
