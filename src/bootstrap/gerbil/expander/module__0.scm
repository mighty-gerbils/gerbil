(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708102803)
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
      (lambda _$args163782_
        (apply make-instance gx#module-import::t _$args163782_)))
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
      (lambda _$args163779_
        (apply make-instance gx#module-export::t _$args163779_)))
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
      (lambda _$args163776_
        (apply make-instance gx#import-set::t _$args163776_)))
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
      (lambda _$args163773_
        (apply make-instance gx#export-set::t _$args163773_)))
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
      (lambda _$args163770_
        (apply make-instance gx#import-expander::t _$args163770_)))
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
      (lambda _$args163767_
        (apply make-instance gx#export-expander::t _$args163767_)))
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
      (lambda _$args163764_
        (apply make-instance gx#import-export-expander::t _$args163764_)))
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
      (lambda (_path163761_ _fun163762_)
        (call-with-input-file
         (cons 'path: (cons _path163761_ gx#source-file-settings))
         _fun163762_)))
    (define gx#module-context:::init!
      (lambda (_self163755_ _id163756_ _super163757_ _ns163758_ _path163759_)
        (if (##fx< '11 (##structure-length _self163755_))
            (begin
              (##unchecked-structure-set!
               _self163755_
               _id163756_
               '1
               (##structure-type _self163755_)
               '#f)
              (##unchecked-structure-set!
               _self163755_
               (make-table 'test: eq?)
               '2
               (##structure-type _self163755_)
               '#f)
              (##unchecked-structure-set!
               _self163755_
               _super163757_
               '3
               (##structure-type _self163755_)
               '#f)
              (##unchecked-structure-set!
               _self163755_
               '#f
               '4
               (##structure-type _self163755_)
               '#f)
              (##unchecked-structure-set!
               _self163755_
               '#f
               '5
               (##structure-type _self163755_)
               '#f)
              (##unchecked-structure-set!
               _self163755_
               _ns163758_
               '6
               (##structure-type _self163755_)
               '#f)
              (##unchecked-structure-set!
               _self163755_
               _path163759_
               '7
               (##structure-type _self163755_)
               '#f)
              (##unchecked-structure-set!
               _self163755_
               '()
               '8
               (##structure-type _self163755_)
               '#f)
              (##unchecked-structure-set!
               _self163755_
               '()
               '9
               (##structure-type _self163755_)
               '#f)
              (##unchecked-structure-set!
               _self163755_
               '#f
               '10
               (##structure-type _self163755_)
               '#f)
              (##unchecked-structure-set!
               _self163755_
               '#f
               '11
               (##structure-type _self163755_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self163755_
                   '11
                   (##vector-length _self163755_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self163599_ _ctx163600_ _root163601_)
        (let ((_super163609_
               (let ((_$e163603_ _root163601_))
                 (if _$e163603_
                     _$e163603_
                     (let ((_$e163606_ (gx#core-context-root__0)))
                       (if _$e163606_
                           _$e163606_
                           (let ((__obj168392
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor168393
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj168392
                                     ':init!)))
                               (if __constructor168393
                                   (__constructor168393 __obj168392)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj168392)))))))
          (if _ctx163600_
              (let ((_id163612_
                     (##structure-ref
                      _ctx163600_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path163613_
                     (##structure-ref _ctx163600_ '7 gx#module-context::t '#f))
                    (_in163614_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx163600_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e163615_
                     (make-promise (lambda () (gx#eval-module _ctx163600_)))))
                (if (##fx< '8 (##structure-length _self163599_))
                    (begin
                      (##unchecked-structure-set!
                       _self163599_
                       _id163612_
                       '1
                       (##structure-type _self163599_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163599_
                       (make-table 'test: eq? 'size: (length _in163614_))
                       '2
                       (##structure-type _self163599_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163599_
                       _super163609_
                       '3
                       (##structure-type _self163599_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163599_
                       '#f
                       '4
                       (##structure-type _self163599_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163599_
                       '#f
                       '5
                       (##structure-type _self163599_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163599_
                       _path163613_
                       '6
                       (##structure-type _self163599_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163599_
                       _in163614_
                       '7
                       (##structure-type _self163599_)
                       '#f)
                      (##unchecked-structure-set!
                       _self163599_
                       _e163615_
                       '8
                       (##structure-type _self163599_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self163599_
                           '8
                           (##vector-length _self163599_)))
                (for-each
                 (lambda (_g163616163618_)
                   (gx#core-bind-weak-import!__% _g163616163618_ _self163599_))
                 _in163614_))
              (if (##fx< '8 (##structure-length _self163599_))
                  (begin
                    (##unchecked-structure-set!
                     _self163599_
                     '#f
                     '1
                     (##structure-type _self163599_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163599_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self163599_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163599_
                     _super163609_
                     '3
                     (##structure-type _self163599_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163599_
                     '#f
                     '4
                     (##structure-type _self163599_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163599_
                     '#f
                     '5
                     (##structure-type _self163599_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163599_
                     '#f
                     '6
                     (##structure-type _self163599_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163599_
                     '()
                     '7
                     (##structure-type _self163599_)
                     '#f)
                    (##unchecked-structure-set!
                     _self163599_
                     '#f
                     '8
                     (##structure-type _self163599_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self163599_
                         '8
                         (##vector-length _self163599_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self163624_ _ctx163625_)
        (let ((_root163627_ '#f))
          (gx#prelude-context:::init!__%
           _self163624_
           _ctx163625_
           _root163627_))))
    (define gx#prelude-context:::init!
      (lambda _g168399_
        (let ((_g168398_ (##length _g168399_)))
          (cond ((##fx= _g168398_ 2)
                 (apply (lambda (_self163624_ _ctx163625_)
                          (gx#prelude-context:::init!__0
                           _self163624_
                           _ctx163625_))
                        _g168399_))
                ((##fx= _g168398_ 3)
                 (apply (lambda (_self163629_ _ctx163630_ _root163631_)
                          (gx#prelude-context:::init!__%
                           _self163629_
                           _ctx163630_
                           _root163631_))
                        _g168399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g168399_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self163473_ _e163474_)
        (if (##fx< '3 (##structure-length _self163473_))
            (begin
              (##unchecked-structure-set!
               _self163473_
               _e163474_
               '1
               (##structure-type _self163473_)
               '#f)
              (##unchecked-structure-set!
               _self163473_
               (gx#current-expander-context)
               '2
               (##structure-type _self163473_)
               '#f)
              (##unchecked-structure-set!
               _self163473_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self163473_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self163473_
                   '3
                   (##vector-length _self163473_)))))
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
      (lambda (_g163099163102_ _g163100163104_)
        (gx#core-apply-user-expander__%
         _g163099163102_
         _g163100163104_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g162970162973_ _g162971162975_)
        (gx#core-apply-user-expander__%
         _g162970162973_
         _g162971162975_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx162841_)
        (let* ((_path162843_
                (##structure-ref _ctx162841_ '7 gx#module-context::t '#f))
               (_path162845_
                (if (pair? _path162843_) (last _path162843_) _path162843_)))
          (if (string? _path162845_) _path162845_ '#f))))
    (define gx#import-module__%
      (lambda (_path162817_ _reload?162818_ _eval?162819_)
        (let ((_ctx162821_
               ((gx#current-expander-module-import)
                _path162817_
                _reload?162818_)))
          (if (and _ctx162821_ _eval?162819_)
              (gx#eval-module _ctx162821_)
              '#!void)
          _ctx162821_)))
    (define gx#import-module__0
      (lambda (_path162826_)
        (let* ((_reload?162828_ '#f) (_eval?162830_ '#f))
          (gx#import-module__% _path162826_ _reload?162828_ _eval?162830_))))
    (define gx#import-module__1
      (lambda (_path162832_ _reload?162833_)
        (let ((_eval?162835_ '#f))
          (gx#import-module__% _path162832_ _reload?162833_ _eval?162835_))))
    (define gx#import-module
      (lambda _g168401_
        (let ((_g168400_ (##length _g168401_)))
          (cond ((##fx= _g168400_ 1)
                 (apply (lambda (_path162826_)
                          (gx#import-module__0 _path162826_))
                        _g168401_))
                ((##fx= _g168400_ 2)
                 (apply (lambda (_path162832_ _reload?162833_)
                          (gx#import-module__1 _path162832_ _reload?162833_))
                        _g168401_))
                ((##fx= _g168400_ 3)
                 (apply (lambda (_path162837_ _reload?162838_ _eval?162839_)
                          (gx#import-module__%
                           _path162837_
                           _reload?162838_
                           _eval?162839_))
                        _g168401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g168401_))))))
    (define gx#eval-module
      (lambda (_mod162814_) ((gx#current-expander-module-eval) _mod162814_)))
    (define gx#core-eval-module
      (lambda (_obj162799_)
        (letrec ((_force-e162801_
                  (lambda (_getf162810_ _e162811_)
                    (call-with-parameters
                     (lambda () (force (_getf162810_ _e162811_)))
                     gx#current-expander-context
                     _e162811_
                     gx#current-expander-phi
                     '0))))
          (let _recur162803_ ((_e162805_ _obj162799_))
            (if (##structure-instance-of? _e162805_ 'gx#module-context::t)
                (begin
                  (let ((_$e162807_ (gx#core-context-prelude__% _e162805_)))
                    (if _$e162807_ (_recur162803_ _$e162807_) '#!void))
                  (_force-e162801_ gx#module-context-e _e162805_))
                (if (##structure-instance-of? _e162805_ 'gx#prelude-context::t)
                    (_force-e162801_ gx#prelude-context-e _e162805_)
                    (if (gx#stx-string? _e162805_)
                        (_recur162803_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e162805_)))
                        (if (gx#core-library-module-path? _e162805_)
                            (_recur162803_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e162805_)))
                            (error '"Cannot eval module" _obj162799_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx162782_)
        (let _lp162784_ ((_e162786_ _ctx162782_))
          (if (or (##structure-instance-of? _e162786_ 'gx#module-context::t)
                  (##structure-instance-of? _e162786_ 'gx#local-context::t))
              (_lp162784_
               (##unchecked-structure-ref _e162786_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e162786_ 'gx#prelude-context::t)
                  _e162786_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx162795_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx162795_))))
    (define gx#core-context-prelude
      (lambda _g168403_
        (let ((_g168402_ (##length _g168403_)))
          (cond ((##fx= _g168402_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g168403_))
                ((##fx= _g168402_ 1)
                 (apply (lambda (_ctx162797_)
                          (gx#core-context-prelude__% _ctx162797_))
                        _g168403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g168403_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx162772_)
        (let* ((_ht162774_ (gx#current-expander-module-registry))
               (_$e162776_ (table-ref _ht162774_ _ctx162772_ '#f)))
          (if _$e162776_
              (values _$e162776_)
              (let ((_pre162779_
                     (let ((__obj168394
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
                       (gx#prelude-context:::init! __obj168394 _ctx162772_)
                       __obj168394)))
                (table-set! _ht162774_ _ctx162772_ _pre162779_)
                _pre162779_)))))
    (define gx#core-import-module__%
      (lambda (_rpath162653_ _reload?162654_)
        (letrec ((_import-source162656_
                  (lambda (_path162741_)
                    (if (member _path162741_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path162741_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g168404_ (gx#core-read-module _path162741_)))
                         (begin
                           (let ((_g168405_
                                  (if (##values? _g168404_)
                                      (##vector-length _g168404_)
                                      1)))
                             (if (not (##fx= _g168405_ 4))
                                 (error "Context expects 4 values" _g168405_)))
                           (let ((_pre162744_ (##vector-ref _g168404_ 0))
                                 (_id162745_ (##vector-ref _g168404_ 1))
                                 (_ns162746_ (##vector-ref _g168404_ 2))
                                 (_body162747_ (##vector-ref _g168404_ 3)))
                             (let* ((_prelude162752_
                                     (if (##structure-instance-of?
                                          _pre162744_
                                          'gx#prelude-context::t)
                                         _pre162744_
                                         (if (##structure-instance-of?
                                              _pre162744_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre162744_)
                                             (if (string? _pre162744_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre162744_))
                                                 (if (not _pre162744_)
                                                     (let ((_$e162749_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e162749_
                                                           _$e162749_
                                                           (let ((__obj168395
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
                     (gx#prelude-context:::init! __obj168395 '#f)
                     __obj168395)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath162653_
                                                            _pre162744_))))))
                                    (_ctx162754_
                                     (let ((__obj168396
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
                                        __obj168396
                                        _id162745_
                                        _prelude162752_
                                        _ns162746_
                                        _path162741_)
                                       __obj168396))
                                    (_body162756_
                                     (gx#core-expand-module-begin
                                      _body162747_
                                      _ctx162754_))
                                    (_body162758_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body162756_)
                                      _path162741_
                                      _ctx162754_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx162754_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body162758_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx162754_
                                _body162758_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path162741_
                                _ctx162754_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id162745_
                                _ctx162754_)
                               _ctx162754_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path162741_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule162657_
                  (lambda (_rpath162669_)
                    (let* ((_rpath162670162677_ _rpath162669_)
                           (_E162672162681_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath162670162677_)))
                           (_K162673162729_
                            (lambda (_refs162684_ _origin162685_)
                              (let ((_ctx162687_
                                     (if _origin162685_
                                         (gx#core-import-module__%
                                          _origin162685_
                                          _reload?162654_)
                                         (gx#current-expander-context))))
                                (let _lp162689_ ((_rest162691_ _refs162684_)
                                                 (_ctx162692_ _ctx162687_))
                                  (let* ((_rest162693162701_ _rest162691_)
                                         (_else162695162709_
                                          (lambda () _ctx162692_))
                                         (_K162697162717_
                                          (lambda (_rest162712_ _id162713_)
                                            (let ((_bind162715_
                                                   (gx#resolve-identifier__%
                                                    _id162713_
                                                    '0
                                                    _ctx162692_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind162715_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind162715_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp162689_
                                                   _rest162712_
                                                   (##unchecked-structure-ref
                                                    _bind162715_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath162669_
                                                         _id162713_
                                                         _bind162715_))))))
                                    (if (##pair? _rest162693162701_)
                                        (let ((_hd162698162720_
                                               (##car _rest162693162701_))
                                              (_tl162699162722_
                                               (##cdr _rest162693162701_)))
                                          (let* ((_id162725_ _hd162698162720_)
                                                 (_rest162727_
                                                  _tl162699162722_))
                                            (_K162697162717_
                                             _rest162727_
                                             _id162725_)))
                                        (_else162695162709_))))))))
                      (if (##pair? _rpath162670162677_)
                          (let ((_hd162674162732_ (##car _rpath162670162677_))
                                (_tl162675162734_ (##cdr _rpath162670162677_)))
                            (let* ((_origin162737_ _hd162674162732_)
                                   (_refs162739_ _tl162675162734_))
                              (_K162673162729_ _refs162739_ _origin162737_)))
                          (_E162672162681_))))))
          (let ((_$e162659_
                 (if (not _reload?162654_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath162653_
                      '#f)
                     '#f)))
            (if _$e162659_
                (values _$e162659_)
                (if (list? _rpath162653_)
                    (_import-submodule162657_ _rpath162653_)
                    (if (gx#core-library-module-path? _rpath162653_)
                        (let ((_ctx162662_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath162653_)
                                _reload?162654_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath162653_
                           _ctx162662_)
                          _ctx162662_)
                        (let* ((_npath162664_ (path-normalize _rpath162653_))
                               (_$e162666_
                                (if (not _reload?162654_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath162664_
                                     '#f)
                                    '#f)))
                          (if _$e162666_
                              (values _$e162666_)
                              (_import-source162656_ _npath162664_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath162765_)
        (let ((_reload?162767_ '#f))
          (gx#core-import-module__% _rpath162765_ _reload?162767_))))
    (define gx#core-import-module
      (lambda _g168407_
        (let ((_g168406_ (##length _g168407_)))
          (cond ((##fx= _g168406_ 1)
                 (apply (lambda (_rpath162765_)
                          (gx#core-import-module__0 _rpath162765_))
                        _g168407_))
                ((##fx= _g168406_ 2)
                 (apply (lambda (_rpath162769_ _reload?162770_)
                          (gx#core-import-module__%
                           _rpath162769_
                           _reload?162770_))
                        _g168407_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g168407_))))))
    (define gx#core-read-module
      (lambda (_path162642_)
        (with-catch
         (lambda (_exn162644_)
           (if (and (datum-parsing-exception? _exn162644_)
                    (eq? (datum-parsing-exception-filepos _exn162644_) '0))
               (gx#core-read-module/lang _path162642_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path162642_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g162646162648_)
                      (display-exception _exn162644_ _g162646162648_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path162642_)))))
    (define gx#core-read-module/sexp
      (lambda (_path162505_)
        (let _lp162507_ ((_body162509_ (read-syntax-from-file _path162505_))
                         (_pre162510_ '#f)
                         (_ns162511_ '#f)
                         (_pkg162512_ '#f))
          (let* ((_e162513162537_ _body162509_)
                 (_E162529162559_
                  (lambda ()
                    (let ((_g168408_
                           (if _pkg162512_
                               (values _pre162510_ _ns162511_ _pkg162512_)
                               (gx#core-read-module-package
                                _path162505_
                                _pre162510_
                                _ns162511_))))
                      (begin
                        (let ((_g168409_
                               (if (##values? _g168408_)
                                   (##vector-length _g168408_)
                                   1)))
                          (if (not (##fx= _g168409_ 3))
                              (error "Context expects 3 values" _g168409_)))
                        (let ((_pre162541_ (##vector-ref _g168408_ 0))
                              (_ns162542_ (##vector-ref _g168408_ 1))
                              (_pkg162543_ (##vector-ref _g168408_ 2)))
                          (let* ((_prelude162545_
                                  (if (gx#core-bound-module-prelude?
                                       _pre162541_)
                                      (gx#syntax-local-e__0 _pre162541_)
                                      (if (gx#core-library-module-path?
                                           _pre162541_)
                                          (gx#core-resolve-library-module-path
                                           _pre162541_)
                                          (if (gx#stx-string? _pre162541_)
                                              (gx#core-resolve-module-path__%
                                               _pre162541_
                                               _path162505_)
                                              (gx#stx-e _pre162541_)))))
                                 (_path-id162547_
                                  (gx#core-module-path->namespace
                                   _path162505_))
                                 (_pkg-id162549_
                                  (if _pkg162543_
                                      (string-append
                                       _pkg162543_
                                       '"/"
                                       _path-id162547_)
                                      _path-id162547_))
                                 (_module-id162551_
                                  (string->symbol _pkg-id162549_))
                                 (_module-ns162556_
                                  (if (eq? _ns162542_ '#!void)
                                      '#f
                                      (let ((_$e162553_ _ns162542_))
                                        (if _$e162553_
                                            _$e162553_
                                            _pkg-id162549_)))))
                            (values _prelude162545_
                                    _module-id162551_
                                    _module-ns162556_
                                    _body162509_)))))))
                 (_E162522162588_
                  (lambda ()
                    (if (gx#stx-pair? _e162513162537_)
                        (let ((_e162530162563_ (gx#syntax-e _e162513162537_)))
                          (let ((_hd162531162566_ (##car _e162530162563_))
                                (_tl162532162568_ (##cdr _e162530162563_)))
                            (if (eq? (gx#stx-e _hd162531162566_) 'package:)
                                (if (gx#stx-pair? _tl162532162568_)
                                    (let ((_e162533162571_
                                           (gx#syntax-e _tl162532162568_)))
                                      (let ((_hd162534162574_
                                             (##car _e162533162571_))
                                            (_tl162535162576_
                                             (##cdr _e162533162571_)))
                                        (let* ((_pkg162579_ _hd162534162574_)
                                               (_rest162581_ _tl162535162576_))
                                          (if '#t
                                              (let ((_pkg162586_
                                                     (if (gx#identifier?
                                                          _pkg162579_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg162579_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg162579_)
                         (gx#stx-false? _pkg162579_))
                     (gx#stx-e _pkg162579_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg162579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp162507_
                                                 _rest162581_
                                                 _pre162510_
                                                 _ns162511_
                                                 _pkg162586_))
                                              (_E162529162559_)))))
                                    (_E162529162559_))
                                (_E162529162559_))))
                        (_E162529162559_))))
                 (_E162515162614_
                  (lambda ()
                    (if (gx#stx-pair? _e162513162537_)
                        (let ((_e162523162592_ (gx#syntax-e _e162513162537_)))
                          (let ((_hd162524162595_ (##car _e162523162592_))
                                (_tl162525162597_ (##cdr _e162523162592_)))
                            (if (eq? (gx#stx-e _hd162524162595_) 'namespace:)
                                (if (gx#stx-pair? _tl162525162597_)
                                    (let ((_e162526162600_
                                           (gx#syntax-e _tl162525162597_)))
                                      (let ((_hd162527162603_
                                             (##car _e162526162600_))
                                            (_tl162528162605_
                                             (##cdr _e162526162600_)))
                                        (let* ((_ns162608_ _hd162527162603_)
                                               (_rest162610_ _tl162528162605_))
                                          (if '#t
                                              (let ((_ns162612_
                                                     (if (gx#identifier?
                                                          _ns162608_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns162608_))
                                                         (if (gx#stx-string?
                                                              _ns162608_)
                                                             (gx#stx-e
                                                              _ns162608_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns162608_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns162608_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp162507_
                                                 _rest162610_
                                                 _pre162510_
                                                 _ns162612_
                                                 _pkg162512_))
                                              (_E162522162588_)))))
                                    (_E162522162588_))
                                (_E162522162588_))))
                        (_E162522162588_))))
                 (_E162514162638_
                  (lambda ()
                    (if (gx#stx-pair? _e162513162537_)
                        (let ((_e162516162618_ (gx#syntax-e _e162513162537_)))
                          (let ((_hd162517162621_ (##car _e162516162618_))
                                (_tl162518162623_ (##cdr _e162516162618_)))
                            (if (eq? (gx#stx-e _hd162517162621_) 'prelude:)
                                (if (gx#stx-pair? _tl162518162623_)
                                    (let ((_e162519162626_
                                           (gx#syntax-e _tl162518162623_)))
                                      (let ((_hd162520162629_
                                             (##car _e162519162626_))
                                            (_tl162521162631_
                                             (##cdr _e162519162626_)))
                                        (let* ((_prelude162634_
                                                _hd162520162629_)
                                               (_rest162636_ _tl162521162631_))
                                          (if '#t
                                              (_lp162507_
                                               _rest162636_
                                               _prelude162634_
                                               _ns162511_
                                               _pkg162512_)
                                              (_E162515162614_)))))
                                    (_E162515162614_))
                                (_E162515162614_))))
                        (_E162515162614_)))))
            (_E162514162638_)))))
    (define gx#core-read-module/lang
      (lambda (_path162332_)
        (letrec ((_default-read-module-body162334_
                  (lambda (_inp162497_)
                    (let _lp162499_ ((_body162501_ '()))
                      (let ((_next162503_ (read-syntax _inp162497_)))
                        (if (eof-object? _next162503_)
                            (reverse _body162501_)
                            (_lp162499_ (cons _next162503_ _body162501_)))))))
                 (_read-body162335_
                  (lambda (_inp162416_
                           _pre162417_
                           _ns162418_
                           _pkg162419_
                           _args162420_)
                    (let ((_g168410_
                           (if _pkg162419_
                               (values _pre162417_ _ns162418_ _pkg162419_)
                               (gx#core-read-module-package
                                _path162332_
                                _pre162417_
                                _ns162418_))))
                      (begin
                        (let ((_g168411_
                               (if (##values? _g168410_)
                                   (##vector-length _g168410_)
                                   1)))
                          (if (not (##fx= _g168411_ 3))
                              (error "Context expects 3 values" _g168411_)))
                        (let ((_pre162422_ (##vector-ref _g168410_ 0))
                              (_ns162423_ (##vector-ref _g168410_ 1))
                              (_pkg162424_ (##vector-ref _g168410_ 2)))
                          (let* ((_prelude162426_
                                  (gx#import-module__0 _pre162422_))
                                 (_read-module-body162480_
                                  (let ((_$e162472_
                                         (find (lambda (_e162427162429_)
                                                 (let* ((_g162431162441_
                                                         _e162427162429_)
                                                        (_else162433162449_
                                                         (lambda () '#f))
                                                        (_K162435162453_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g162431162441_
                                                        'gx#module-export::t)
                                                       (let* ((_e162436162456_
                                                               (##unchecked-structure-ref
                                                                _g162431162441_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e162437162459_
                                                               (##unchecked-structure-ref
                                                                _g162431162441_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e162438162462_
                                                               (##unchecked-structure-ref
                                                                _g162431162441_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e162438162462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e162439162465_
                            (##unchecked-structure-ref
                             _g162431162441_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g162467162469_)
                              (eq? _g162467162469_ 'read-module-body))
                            _e162439162465_)
                           (_K162435162453_)
                           (_else162433162449_)))
                     (_else162433162449_)))
               (_else162433162449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude162426_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e162472_
                                        ((lambda (_xport162475_)
                                           (let ((_proc162478_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport162475_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc162478_)
                                                 _proc162478_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path162332_
                                                  _pre162422_
                                                  _proc162478_))))
                                         _$e162472_)
                                        _default-read-module-body162334_)))
                                 (_path-id162482_
                                  (gx#core-module-path->namespace
                                   _path162332_))
                                 (_pkg-id162484_
                                  (if _pkg162424_
                                      (string-append
                                       _pkg162424_
                                       '"/"
                                       _path-id162482_)
                                      _path-id162482_))
                                 (_module-id162486_
                                  (string->symbol _pkg-id162484_))
                                 (_module-ns162491_
                                  (let ((_$e162488_ _ns162423_))
                                    (if _$e162488_ _$e162488_ _pkg-id162484_)))
                                 (_body162494_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body162480_ _inp162416_))
                                   gx#current-module-reader-path
                                   _path162332_
                                   gx#current-module-reader-args
                                   _args162420_)))
                            (values _prelude162426_
                                    _module-id162486_
                                    _module-ns162491_
                                    _body162494_)))))))
                 (_string-e162336_
                  (lambda (_obj162413_ _what162414_)
                    (if (string? _obj162413_)
                        _obj162413_
                        (if (symbol? _obj162413_)
                            (symbol->string _obj162413_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what162414_)
                             _path162332_
                             _obj162413_)))))
                 (_read-lang-args162337_
                  (lambda (_inp162368_ _args162369_)
                    (let* ((_args162370162378_ _args162369_)
                           (_else162372162386_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path162332_)))
                           (_K162374162401_
                            (lambda (_args162389_ _prelude162390_)
                              (let* ((_pkg162392_
                                      (pgetq 'package: _args162389_))
                                     (_pkg162394_
                                      (if _pkg162392_
                                          (_string-e162336_
                                           _pkg162392_
                                           '"package")
                                          '#f))
                                     (_ns162396_
                                      (pgetq 'namespace: _args162389_))
                                     (_ns162398_
                                      (if _ns162396_
                                          (_string-e162336_
                                           _ns162396_
                                           '"namespace")
                                          '#f)))
                                (_read-body162335_
                                 _inp162368_
                                 _prelude162390_
                                 _ns162398_
                                 _pkg162394_
                                 _args162389_)))))
                      (if (##pair? _args162370162378_)
                          (let ((_hd162375162404_ (##car _args162370162378_))
                                (_tl162376162406_ (##cdr _args162370162378_)))
                            (let* ((_prelude162409_ _hd162375162404_)
                                   (_args162411_ _tl162376162406_))
                              (_K162374162401_ _args162411_ _prelude162409_)))
                          (_else162372162386_)))))
                 (_read-lang162338_
                  (lambda (_inp162343_)
                    (let* ((_head162345_ (read-line _inp162343_))
                           (_$e162347_ (string-index _head162345_ '#\space)))
                      (if _$e162347_
                          ((lambda (_ix162350_)
                             (let ((_lang162352_
                                    (substring _head162345_ '0 _ix162350_)))
                               (if (equal? _lang162352_ '"#lang")
                                   (let* ((_rest162354_
                                           (substring
                                            _head162345_
                                            (fx+ _ix162350_ '1)
                                            (string-length _head162345_)))
                                          (_args162365_
                                           (with-catch
                                            (lambda (_g162355162357_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path162332_
                                               _g162355162357_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest162354_
                                               (lambda (_g162360162362_)
                                                 (read-all
                                                  _g162360162362_
                                                  read)))))))
                                     (_read-lang-args162337_
                                      _inp162343_
                                      _args162365_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path162332_))))
                           _$e162347_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path162332_)))))
                 (_read-e162339_
                  (lambda (_inp162341_)
                    (if (eq? (peek-char _inp162341_) '#\#)
                        (_read-lang162338_ _inp162341_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path162332_)))))
          (gx#call-with-input-source-file _path162332_ _read-e162339_))))
    (define gx#core-read-module-package
      (lambda (_path162286_ _pre162287_ _ns162288_)
        (letrec ((_string-e162290_
                  (lambda (_e162330_)
                    (if (symbol? _e162330_)
                        (symbol->string _e162330_)
                        (if (string? _e162330_)
                            _e162330_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e162330_))))))
          (let _lp162292_ ((_dir162294_ (path-directory _path162286_))
                           (_pkg-path162295_ '()))
            (let ((_gerbil.pkg162297_ (path-expand '"gerbil.pkg" _dir162294_)))
              (if (file-exists? _gerbil.pkg162297_)
                  (let ((_plist162299_
                         (gx#core-library-package-plist__% _dir162294_ '#t)))
                    (if (null? _plist162299_)
                        (let ((_pkg162301_
                               (if (not (null? _pkg-path162295_))
                                   (string-join _pkg-path162295_ '"/")
                                   '#f)))
                          (values _pre162287_ _ns162288_ _pkg162301_))
                        (if (list? _plist162299_)
                            (let* ((_root162303_
                                    (pgetq 'package: _plist162299_))
                                   (_pkg162307_
                                    (let ((_pkg-path162305_
                                           (if _root162303_
                                               (cons (_string-e162290_
                                                      _root162303_)
                                                     _pkg-path162295_)
                                               _pkg-path162295_)))
                                      (if (not (null? _pkg-path162305_))
                                          (string-join _pkg-path162305_ '"/")
                                          '#f)))
                                   (_ns162314_
                                    (let ((_ns162312_
                                           (let ((_$e162309_ _ns162288_))
                                             (if _$e162309_
                                                 _$e162309_
                                                 (pgetq 'namespace:
                                                        _plist162299_)))))
                                      (if _ns162312_
                                          (_string-e162290_ _ns162312_)
                                          '#f)))
                                   (_pre162319_
                                    (let ((_$e162316_ _pre162287_))
                                      (if _$e162316_
                                          _$e162316_
                                          (pgetq 'prelude: _plist162299_)))))
                              (values _pre162319_ _ns162314_ _pkg162307_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist162299_))))
                  (let ((_dir*162322_
                         (path-strip-trailing-directory-separator
                          _dir162294_)))
                    (if (or (string-empty? _dir*162322_)
                            (equal? _dir162294_ _dir*162322_))
                        (values _pre162287_ _ns162288_ '#f)
                        (let ((_xpath162327_
                               (path-strip-directory _dir*162322_))
                              (_xdir162328_ (path-directory _dir*162322_)))
                          (_lp162292_
                           _xdir162328_
                           (cons _xpath162327_ _pkg-path162295_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path162284_)
        (path-strip-extension (path-strip-directory _path162284_))))
    (define gx#core-module-path->id
      (lambda (_path162282_)
        (string->symbol (gx#core-module-path->namespace _path162282_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path162261_ _rel162262_)
        (let* ((_path162264_ (gx#stx-e _stx-path162261_))
               (_path162266_
                (if (string-empty? (path-extension _path162264_))
                    (string-append _path162264_ '".ss")
                    _path162264_)))
          (gx#core-resolve-path__%
           _path162266_
           (let ((_$e162269_ (gx#stx-source _stx-path162261_)))
             (if _$e162269_ _$e162269_ _rel162262_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path162275_)
        (let ((_rel162277_ '#f))
          (gx#core-resolve-module-path__% _stx-path162275_ _rel162277_))))
    (define gx#core-resolve-module-path
      (lambda _g168413_
        (let ((_g168412_ (##length _g168413_)))
          (cond ((##fx= _g168412_ 1)
                 (apply (lambda (_stx-path162275_)
                          (gx#core-resolve-module-path__0 _stx-path162275_))
                        _g168413_))
                ((##fx= _g168412_ 2)
                 (apply (lambda (_stx-path162279_ _rel162280_)
                          (gx#core-resolve-module-path__%
                           _stx-path162279_
                           _rel162280_))
                        _g168413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g168413_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath162147_)
        (let* ((_spath162149_ (symbol->string (gx#stx-e _libpath162147_)))
               (_spath162151_
                (substring _spath162149_ '1 (string-length _spath162149_)))
               (_ext162153_ (path-extension _spath162151_))
               (_ssi162155_
                (if (string-empty? _ext162153_)
                    (string-append _spath162151_ '".ssi")
                    (string-append
                     (path-strip-extension _spath162151_)
                     '".ssi")))
               (_srcs162159_
                (if (string-empty? _ext162153_)
                    (map (lambda (_ext162157_)
                           (string-append _spath162151_ _ext162157_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath162151_ '()))))
          (let _lp162162_ ((_rest162164_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest162165162174_ _rest162164_)
                   (_E162168162178_
                    (lambda ()
                      (error '"No clause matching" _rest162165162174_))))
              (let ((_K162170162248_
                     (lambda (_rest162189_ _dir162190_)
                       (letrec ((_resolve162192_
                                 (lambda (_ssi162204_ _srcs162205_)
                                   (let ((_compiled-path162207_
                                          (path-expand
                                           _ssi162204_
                                           _dir162190_)))
                                     (if (file-exists? _compiled-path162207_)
                                         (path-normalize _compiled-path162207_)
                                         (let _lpr162209_ ((_rest-src162211_
                                                            _srcs162205_))
                                           (let* ((_rest-src162212162220_
                                                   _rest-src162211_)
                                                  (_else162214162228_
                                                   (lambda ()
                                                     (_lp162162_
                                                      _rest162189_)))
                                                  (_K162216162236_
                                                   (lambda (_rest-src162231_
                                                            _src162232_)
                                                     (let ((_src-path162234_
                                                            (path-expand
                                                             _src162232_
                                                             _dir162190_)))
                                                       (if (file-exists?
                                                            _src-path162234_)
                                                           (path-normalize
                                                            _src-path162234_)
                                                           (_lpr162209_
                                                            _rest-src162231_))))))
                                             (if (##pair? _rest-src162212162220_)
                                                 (let ((_hd162217162239_
                                                        (##car _rest-src162212162220_))
                                                       (_tl162218162241_
                                                        (##cdr _rest-src162212162220_)))
                                                   (let* ((_src162244_
                                                           _hd162217162239_)
                                                          (_rest-src162246_
                                                           _tl162218162241_))
                                                     (_K162216162236_
                                                      _rest-src162246_
                                                      _src162244_)))
                                                 (_else162214162228_)))))))))
                         (let ((_$e162194_
                                (gx#core-library-package-path-prefix
                                 _dir162190_)))
                           (if _$e162194_
                               ((lambda (_prefix162197_)
                                  (if (string-prefix?
                                       _prefix162197_
                                       _spath162151_)
                                      (let ((_ssi162201_
                                             (substring
                                              _ssi162155_
                                              (string-length _prefix162197_)
                                              (string-length _ssi162155_)))
                                            (_srcs162202_
                                             (map (lambda (_src162199_)
                                                    (substring
                                                     _src162199_
                                                     (string-length
                                                      _prefix162197_)
                                                     (string-length
                                                      _src162199_)))
                                                  _srcs162159_)))
                                        (_resolve162192_
                                         _ssi162201_
                                         _srcs162202_))
                                      (_lp162162_ _rest162189_)))
                                _$e162194_)
                               (_resolve162192_ _ssi162155_ _srcs162159_))))))
                    (_K162169162183_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath162147_))))
                (let ((_try-match162167162186_
                       (lambda ()
                         (if (##null? _rest162165162174_)
                             (_K162169162183_)
                             (_E162168162178_)))))
                  (if (##pair? _rest162165162174_)
                      (let ((_tl162172162253_ (##cdr _rest162165162174_))
                            (_hd162171162251_ (##car _rest162165162174_)))
                        (let ((_dir162256_ _hd162171162251_)
                              (_rest162258_ _tl162172162253_))
                          (_K162170162248_ _rest162258_ _dir162256_)))
                      (_try-match162167162186_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath162120_)
        (letrec ((_resolve162122_
                  (lambda (_path162139_ _base162140_)
                    (let ((_$e162142_ (string-rindex _base162140_ '#\/)))
                      (if _$e162142_
                          ((lambda (_idx162145_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base162140_ '0 _idx162145_)
                                '"/"
                                _path162139_))))
                           _$e162142_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path162139_))))))))
          (let ((_spath162124_ (symbol->string (gx#stx-e _modpath162120_)))
                (_mod162125_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod162125_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath162120_))
            (let ((_mpath162127_
                   (symbol->string
                    (##structure-ref
                     _mod162125_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp162129_ ((_spath162131_ _spath162124_)
                               (_mpath162132_ _mpath162127_))
                (if (string-prefix? '"../" _spath162131_)
                    (let ((_$e162134_ (string-rindex _mpath162132_ '#\/)))
                      (if _$e162134_
                          ((lambda (_idx162137_)
                             (_lp162129_
                              (substring
                               _spath162131_
                               '3
                               (string-length _spath162131_))
                              (substring _mpath162132_ '0 _idx162137_)))
                           _$e162134_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath162120_)))
                    (if (string-prefix? '"./" _spath162131_)
                        (_lp162129_
                         (substring
                          _spath162131_
                          '2
                          (string-length _spath162131_))
                         _mpath162132_)
                        (_resolve162122_ _spath162131_ _mpath162132_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir162113_)
        (let ((_$e162115_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir162113_))))
          (if _$e162115_
              ((lambda (_pkg162118_)
                 (string-append (symbol->string _pkg162118_) '"/"))
               _$e162115_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir162085_ _exists?162086_)
        (let* ((_cache162088_ (gx#core-library-package-cache))
               (_$e162090_ (table-ref _cache162088_ _dir162085_ '#f)))
          (if _$e162090_
              (values _$e162090_)
              (let* ((_gerbil.pkg162093_
                      (path-expand '"gerbil.pkg" _dir162085_))
                     (_plist162100_
                      (if (or _exists?162086_
                              (file-exists? _gerbil.pkg162093_))
                          (let ((_e162098_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg162093_
                                  read)))
                            (if (eof-object? _e162098_)
                                '()
                                (if (list? _e162098_)
                                    _e162098_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg162093_
                                     _e162098_))))
                          '())))
                (table-set! _cache162088_ _dir162085_ _plist162100_)
                _plist162100_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir162106_)
        (let ((_exists?162108_ '#f))
          (gx#core-library-package-plist__% _dir162106_ _exists?162108_))))
    (define gx#core-library-package-plist
      (lambda _g168415_
        (let ((_g168414_ (##length _g168415_)))
          (cond ((##fx= _g168414_ 1)
                 (apply (lambda (_dir162106_)
                          (gx#core-library-package-plist__0 _dir162106_))
                        _g168415_))
                ((##fx= _g168414_ 2)
                 (apply (lambda (_dir162110_ _exists?162111_)
                          (gx#core-library-package-plist__%
                           _dir162110_
                           _exists?162111_))
                        _g168415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g168415_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e162079_ (gx#current-expander-module-library-package-cache)))
          (if _$e162079_
              (values _$e162079_)
              (let ((_cache162082_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache162082_)
                _cache162082_)))))
    (define gx#core-library-module-path?
      (lambda (_stx162076_) (gx#core-special-module-path? _stx162076_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx162074_) (gx#core-special-module-path? _stx162074_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx162069_ _char162070_)
        (if (gx#identifier? _stx162069_)
            (if (interned-symbol? (gx#stx-e _stx162069_))
                (let ((_str162072_ (symbol->string (gx#stx-e _stx162069_))))
                  (if (fx> (string-length _str162072_) '1)
                      (eq? (string-ref _str162072_ '0) _char162070_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx162063_)
        (gx#core-bound-identifier?__%
         _stx162063_
         (lambda (_g162064162066_)
           (gx#expander-binding?__% _g162064162066_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx162057_)
        (gx#core-bound-identifier?__%
         _stx162057_
         (lambda (_g162058162060_)
           (gx#expander-binding?__% _g162058162060_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx162044_)
        (letrec ((_module-prelude?162046_
                  (lambda (_e162052_)
                    (let ((_$e162054_
                           (##structure-instance-of?
                            _e162052_
                            'gx#module-context::t)))
                      (if _$e162054_
                          _$e162054_
                          (##structure-instance-of?
                           _e162052_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx162044_
           (lambda (_g162047162049_)
             (gx#expander-binding?__%
              _g162047162049_
              _module-prelude?162046_))))))
    (define gx#core-bind-import!__%
      (lambda (_in161974_ _ctx161975_ _force-weak?161976_)
        (let* ((_in161977161986_ _in161974_)
               (_E161979161990_
                (lambda () (error '"No clause matching" _in161977161986_)))
               (_K161980162003_
                (lambda (_weak?161993_ _phi161994_ _key161995_ _source161996_)
                  (gx#core-bind!__%
                   _key161995_
                   (let ((_e161998_
                          (gx#core-resolve-module-export _source161996_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e161998_
                       '1
                       gx#binding::t
                       '#f)
                      _key161995_
                      _phi161994_
                      _e161998_
                      (##unchecked-structure-ref
                       _source161996_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e162000_ _force-weak?161976_))
                        (if _$e162000_ _$e162000_ _weak?161993_))))
                   gx#core-context-rebind?
                   _phi161994_
                   _ctx161975_))))
          (if (##structure-direct-instance-of?
               _in161977161986_
               'gx#module-import::t)
              (let* ((_e161981162006_
                      (##unchecked-structure-ref
                       _in161977161986_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source162009_ _e161981162006_)
                     (_e161982162011_
                      (##unchecked-structure-ref
                       _in161977161986_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key162014_ _e161982162011_)
                     (_e161983162016_
                      (##unchecked-structure-ref
                       _in161977161986_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi162019_ _e161983162016_)
                     (_e161984162021_
                      (##unchecked-structure-ref
                       _in161977161986_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?162024_ _e161984162021_))
                (_K161980162003_
                 _weak?162024_
                 _phi162019_
                 _key162014_
                 _source162009_))
              (_E161979161990_)))))
    (define gx#core-bind-import!__0
      (lambda (_in162029_)
        (let* ((_ctx162031_ (gx#current-expander-context))
               (_force-weak?162033_ '#f))
          (gx#core-bind-import!__%
           _in162029_
           _ctx162031_
           _force-weak?162033_))))
    (define gx#core-bind-import!__1
      (lambda (_in162035_ _ctx162036_)
        (let ((_force-weak?162038_ '#f))
          (gx#core-bind-import!__%
           _in162035_
           _ctx162036_
           _force-weak?162038_))))
    (define gx#core-bind-import!
      (lambda _g168417_
        (let ((_g168416_ (##length _g168417_)))
          (cond ((##fx= _g168416_ 1)
                 (apply (lambda (_in162029_)
                          (gx#core-bind-import!__0 _in162029_))
                        _g168417_))
                ((##fx= _g168416_ 2)
                 (apply (lambda (_in162035_ _ctx162036_)
                          (gx#core-bind-import!__1 _in162035_ _ctx162036_))
                        _g168417_))
                ((##fx= _g168416_ 3)
                 (apply (lambda (_in162040_ _ctx162041_ _force-weak?162042_)
                          (gx#core-bind-import!__%
                           _in162040_
                           _ctx162041_
                           _force-weak?162042_))
                        _g168417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g168417_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in161960_ _ctx161961_)
        (gx#core-bind-import!__% _in161960_ _ctx161961_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in161966_)
        (let ((_ctx161968_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in161966_ _ctx161968_))))
    (define gx#core-bind-weak-import!
      (lambda _g168419_
        (let ((_g168418_ (##length _g168419_)))
          (cond ((##fx= _g168418_ 1)
                 (apply (lambda (_in161966_)
                          (gx#core-bind-weak-import!__0 _in161966_))
                        _g168419_))
                ((##fx= _g168418_ 2)
                 (apply (lambda (_in161970_ _ctx161971_)
                          (gx#core-bind-weak-import!__%
                           _in161970_
                           _ctx161971_))
                        _g168419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g168419_))))))
    (define gx#core-resolve-module-export
      (lambda (_out161851_)
        (letrec ((_subst161853_
                  (lambda (_key161899_)
                    (let* ((_key161900161908_ _key161899_)
                           (_else161902161916_ (lambda () _key161899_))
                           (_K161904161947_
                            (lambda (_mark161919_ _id161920_)
                              (let* ((_mark161921161927_ _mark161919_)
                                     (_E161923161931_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark161921161927_)))
                                     (_K161924161939_
                                      (lambda (_subst161934_)
                                        (let ((_$e161936_
                                               (if _subst161934_
                                                   (table-ref
                                                    _subst161934_
                                                    _id161920_
                                                    '#f)
                                                   '#f)))
                                          (if _$e161936_
                                              _$e161936_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key161899_))))))
                                (if (##structure-instance-of?
                                     _mark161921161927_
                                     'gx#expander-mark::t)
                                    (let* ((_e161925161942_
                                            (##unchecked-structure-ref
                                             _mark161921161927_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst161945_ _e161925161942_))
                                      (_K161924161939_ _subst161945_))
                                    (_E161923161931_))))))
                      (if (##pair? _key161900161908_)
                          (let ((_hd161905161950_ (##car _key161900161908_))
                                (_tl161906161952_ (##cdr _key161900161908_)))
                            (let* ((_id161955_ _hd161905161950_)
                                   (_mark161957_ _tl161906161952_))
                              (_K161904161947_ _mark161957_ _id161955_)))
                          (_else161902161916_))))))
          (let* ((_out161854161864_ _out161851_)
                 (_E161856161868_
                  (lambda () (error '"No clause matching" _out161854161864_)))
                 (_K161857161875_
                  (lambda (_phi161871_ _key161872_ _ctx161873_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx161873_ _phi161871_)
                     (_subst161853_ _key161872_)))))
            (if (##structure-direct-instance-of?
                 _out161854161864_
                 'gx#module-export::t)
                (let* ((_e161858161878_
                        (##unchecked-structure-ref
                         _out161854161864_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx161881_ _e161858161878_)
                       (_e161859161883_
                        (##unchecked-structure-ref
                         _out161854161864_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key161886_ _e161859161883_)
                       (_e161860161888_
                        (##unchecked-structure-ref
                         _out161854161864_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi161891_ _e161860161888_)
                       (_e161861161893_
                        (##unchecked-structure-ref
                         _out161854161864_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e161862161896_
                        (##unchecked-structure-ref
                         _out161854161864_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K161857161875_ _phi161891_ _key161886_ _ctx161881_))
                (_E161856161868_))))))
    (define gx#core-module-export->import__%
      (lambda (_out161776_ _rename161777_ _dphi161778_)
        (let* ((_out161779161789_ _out161776_)
               (_E161781161793_
                (lambda () (error '"No clause matching" _out161779161789_)))
               (_K161782161805_
                (lambda (_weak?161796_
                         _name161797_
                         _phi161798_
                         _key161799_
                         _ctx161800_)
                  (##structure
                   gx#module-import::t
                   _out161776_
                   (let ((_$e161802_ _rename161777_))
                     (if _$e161802_ _$e161802_ _name161797_))
                   (fx+ _phi161798_ _dphi161778_)
                   _weak?161796_))))
          (if (##structure-direct-instance-of?
               _out161779161789_
               'gx#module-export::t)
              (let* ((_e161783161808_
                      (##unchecked-structure-ref
                       _out161779161789_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx161811_ _e161783161808_)
                     (_e161784161813_
                      (##unchecked-structure-ref
                       _out161779161789_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key161816_ _e161784161813_)
                     (_e161785161818_
                      (##unchecked-structure-ref
                       _out161779161789_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi161821_ _e161785161818_)
                     (_e161786161823_
                      (##unchecked-structure-ref
                       _out161779161789_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name161826_ _e161786161823_)
                     (_e161787161828_
                      (##unchecked-structure-ref
                       _out161779161789_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?161831_ _e161787161828_))
                (_K161782161805_
                 _weak?161831_
                 _name161826_
                 _phi161821_
                 _key161816_
                 _ctx161811_))
              (_E161781161793_)))))
    (define gx#core-module-export->import__0
      (lambda (_out161836_)
        (let* ((_rename161838_ '#f) (_dphi161840_ '0))
          (gx#core-module-export->import__%
           _out161836_
           _rename161838_
           _dphi161840_))))
    (define gx#core-module-export->import__1
      (lambda (_out161842_ _rename161843_)
        (let ((_dphi161845_ '0))
          (gx#core-module-export->import__%
           _out161842_
           _rename161843_
           _dphi161845_))))
    (define gx#core-module-export->import
      (lambda _g168421_
        (let ((_g168420_ (##length _g168421_)))
          (cond ((##fx= _g168420_ 1)
                 (apply (lambda (_out161836_)
                          (gx#core-module-export->import__0 _out161836_))
                        _g168421_))
                ((##fx= _g168420_ 2)
                 (apply (lambda (_out161842_ _rename161843_)
                          (gx#core-module-export->import__1
                           _out161842_
                           _rename161843_))
                        _g168421_))
                ((##fx= _g168420_ 3)
                 (apply (lambda (_out161847_ _rename161848_ _dphi161849_)
                          (gx#core-module-export->import__%
                           _out161847_
                           _rename161848_
                           _dphi161849_))
                        _g168421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g168421_))))))
    (define gx#core-expand-module%
      (lambda (_stx161704_)
        (letrec ((_make-context161706_
                  (lambda (_id161757_)
                    (let* ((_super161759_ (gx#current-expander-context))
                           (_bind-id161761_ (gx#stx-e _id161757_))
                           (_mod-id161763_
                            (if (##structure-instance-of?
                                 _super161759_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super161759_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id161761_)
                                _bind-id161761_))
                           (_ns161765_ (symbol->string _mod-id161763_))
                           (_path161772_
                            (if (##structure-instance-of?
                                 _super161759_
                                 'gx#module-context::t)
                                (let ((_path161767_
                                       (##unchecked-structure-ref
                                        _super161759_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path161767_)
                                          (null? _path161767_))
                                      (cons _bind-id161761_ _path161767_)
                                      (if (not _path161767_)
                                          _bind-id161761_
                                          (cons _bind-id161761_
                                                (cons _path161767_ '())))))
                                _bind-id161761_)))
                      (let ((__obj168397
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
                         __obj168397
                         _mod-id161763_
                         _super161759_
                         _ns161765_
                         _path161772_)
                        __obj168397)))))
          (let* ((_e161707161717_ _stx161704_)
                 (_E161709161721_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e161707161717_)))
                 (_E161708161753_
                  (lambda ()
                    (if (gx#stx-pair? _e161707161717_)
                        (let ((_e161710161725_ (gx#syntax-e _e161707161717_)))
                          (let ((_hd161711161728_ (##car _e161710161725_))
                                (_tl161712161730_ (##cdr _e161710161725_)))
                            (if (gx#stx-pair? _tl161712161730_)
                                (let ((_e161713161733_
                                       (gx#syntax-e _tl161712161730_)))
                                  (let ((_hd161714161736_
                                         (##car _e161713161733_))
                                        (_tl161715161738_
                                         (##cdr _e161713161733_)))
                                    (let* ((_id161741_ _hd161714161736_)
                                           (_body161743_ _tl161715161738_))
                                      (if (and (gx#identifier? _id161741_)
                                               (gx#stx-list? _body161743_))
                                          (let* ((_ctx161745_
                                                  (_make-context161706_
                                                   _id161741_))
                                                 (_body161747_
                                                  (gx#core-expand-module-begin
                                                   _body161743_
                                                   _ctx161745_))
                                                 (_body161749_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body161747_)
                                                   (gx#stx-source
                                                    _stx161704_))))
                                            (##unchecked-structure-set!
                                             _ctx161745_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body161749_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx161745_
                                             _body161749_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id161741_
                                             _ctx161745_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id161741_)
                                              _body161749_)
                                             (gx#stx-source _stx161704_)))
                                          (_E161709161721_)))))
                                (_E161709161721_))))
                        (_E161709161721_)))))
            (_E161708161753_)))))
    (define gx#core-expand-module-begin
      (lambda (_body161670_ _ctx161671_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx161674_
                   (gx#core-expand-head (cons '%%begin-module _body161670_)))
                  (_e161675161682_ _stx161674_)
                  (_E161677161686_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx161674_)))
                  (_E161676161700_
                   (lambda ()
                     (if (gx#stx-pair? _e161675161682_)
                         (let ((_e161678161690_ (gx#syntax-e _e161675161682_)))
                           (let ((_hd161679161693_ (##car _e161678161690_))
                                 (_tl161680161695_ (##cdr _e161678161690_)))
                             (if (and (gx#identifier? _hd161679161693_)
                                      (gx#core-identifier=?
                                       _hd161679161693_
                                       '%#begin-module))
                                 (let ((_body161698_ _tl161680161695_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx161674_)
                                           _body161698_
                                           (gx#core-expand-module-body
                                            _body161698_))
                                       (_E161677161686_)))
                                 (_E161677161686_))))
                         (_E161677161686_)))))
             (_E161676161700_)))
         gx#current-expander-context
         _ctx161671_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body161466_)
        (letrec ((_expand-special161468_
                  (lambda (_hd161597_ _K161598_ _rest161599_ _r161600_)
                    (let* ((_e161601161618_ _hd161597_)
                           (_E161613161622_
                            (lambda ()
                              (_K161598_
                               _rest161599_
                               (cons (gx#core-expand-top _hd161597_)
                                     _r161600_))))
                           (_E161603161634_
                            (lambda ()
                              (if (gx#stx-pair? _e161601161618_)
                                  (let ((_e161614161626_
                                         (gx#syntax-e _e161601161618_)))
                                    (let ((_hd161615161629_
                                           (##car _e161614161626_))
                                          (_tl161616161631_
                                           (##cdr _e161614161626_)))
                                      (if (and (gx#identifier?
                                                _hd161615161629_)
                                               (gx#core-identifier=?
                                                _hd161615161629_
                                                '%#export))
                                          (if '#t
                                              (_K161598_
                                               _rest161599_
                                               (cons _hd161597_ _r161600_))
                                              (_E161613161622_))
                                          (_E161613161622_))))
                                  (_E161613161622_))))
                           (_E161602161666_
                            (lambda ()
                              (if (gx#stx-pair? _e161601161618_)
                                  (let ((_e161604161638_
                                         (gx#syntax-e _e161601161618_)))
                                    (let ((_hd161605161641_
                                           (##car _e161604161638_))
                                          (_tl161606161643_
                                           (##cdr _e161604161638_)))
                                      (if (and (gx#identifier?
                                                _hd161605161641_)
                                               (gx#core-identifier=?
                                                _hd161605161641_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl161606161643_)
                                              (let ((_e161607161646_
                                                     (gx#syntax-e
                                                      _tl161606161643_)))
                                                (let ((_hd161608161649_
                                                       (##car _e161607161646_))
                                                      (_tl161609161651_
                                                       (##cdr _e161607161646_)))
                                                  (let ((_hd-bind161654_
                                                         _hd161608161649_))
                                                    (if (gx#stx-pair?
                                                         _tl161609161651_)
                                                        (let ((_e161610161656_
                                                               (gx#syntax-e
                                                                _tl161609161651_)))
                                                          (let ((_hd161611161659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e161610161656_))
                        (_tl161612161661_ (##cdr _e161610161656_)))
                    (let ((_expr161664_ _hd161611161659_))
                      (if (gx#stx-null? _tl161612161661_)
                          (if (gx#core-bind-values? _hd-bind161654_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind161654_)
                                (_K161598_
                                 _rest161599_
                                 (cons _hd161597_ _r161600_)))
                              (_E161603161634_))
                          (_E161603161634_)))))
                (_E161603161634_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161603161634_))
                                          (_E161603161634_))))
                                  (_E161603161634_)))))
                      (_E161602161666_))))
                 (_expand-body161469_
                  (lambda (_rbody161471_)
                    (let _lp161473_ ((_rest161475_ _rbody161471_)
                                     (_body161476_ '()))
                      (let* ((_rest161477161485_ _rest161475_)
                             (_else161479161493_ (lambda () _body161476_))
                             (_K161481161585_
                              (lambda (_rest161496_ _hd161497_)
                                (let* ((_e161498161519_ _hd161497_)
                                       (_E161514161523_
                                        (lambda ()
                                          (_lp161473_
                                           _rest161496_
                                           (cons (gx#core-expand-expression
                                                  _hd161497_)
                                                 _body161476_))))
                                       (_E161510161537_
                                        (lambda ()
                                          (if (gx#stx-pair? _e161498161519_)
                                              (let ((_e161515161527_
                                                     (gx#syntax-e
                                                      _e161498161519_)))
                                                (let ((_hd161516161530_
                                                       (##car _e161515161527_))
                                                      (_tl161517161532_
                                                       (##cdr _e161515161527_)))
                                                  (let ((_form161535_
                                                         _hd161516161530_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form161535_
                                                         gx#special-form-binding?)
                                                        (_lp161473_
                                                         _rest161496_
                                                         (cons _hd161497_
                                                               _body161476_))
                                                        (_E161514161523_)))))
                                              (_E161514161523_))))
                                       (_E161500161549_
                                        (lambda ()
                                          (if (gx#stx-pair? _e161498161519_)
                                              (let ((_e161511161541_
                                                     (gx#syntax-e
                                                      _e161498161519_)))
                                                (let ((_hd161512161544_
                                                       (##car _e161511161541_))
                                                      (_tl161513161546_
                                                       (##cdr _e161511161541_)))
                                                  (if (and (gx#identifier?
                                                            _hd161512161544_)
                                                           (gx#core-identifier=?
                                                            _hd161512161544_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp161473_
                                                           _rest161496_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd161497_)
                         _body161476_))
                  (_E161510161537_))
              (_E161510161537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161510161537_))))
                                       (_E161499161581_
                                        (lambda ()
                                          (if (gx#stx-pair? _e161498161519_)
                                              (let ((_e161501161553_
                                                     (gx#syntax-e
                                                      _e161498161519_)))
                                                (let ((_hd161502161556_
                                                       (##car _e161501161553_))
                                                      (_tl161503161558_
                                                       (##cdr _e161501161553_)))
                                                  (if (and (gx#identifier?
                                                            _hd161502161556_)
                                                           (gx#core-identifier=?
                                                            _hd161502161556_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl161503161558_)
                                                          (let ((_e161504161561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl161503161558_)))
                    (let ((_hd161505161564_ (##car _e161504161561_))
                          (_tl161506161566_ (##cdr _e161504161561_)))
                      (let ((_hd-bind161569_ _hd161505161564_))
                        (if (gx#stx-pair? _tl161506161566_)
                            (let ((_e161507161571_
                                   (gx#syntax-e _tl161506161566_)))
                              (let ((_hd161508161574_ (##car _e161507161571_))
                                    (_tl161509161576_ (##cdr _e161507161571_)))
                                (let ((_expr161579_ _hd161508161574_))
                                  (if (gx#stx-null? _tl161509161576_)
                                      (if '#t
                                          (_lp161473_
                                           _rest161496_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind161569_)
                                                   (gx#core-expand-expression
                                                    _expr161579_))
                                                  (gx#stx-source _hd161497_))
                                                 _body161476_))
                                          (_E161500161549_))
                                      (_E161500161549_)))))
                            (_E161500161549_)))))
                  (_E161500161549_))
              (_E161500161549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161500161549_)))))
                                  (_E161499161581_)))))
                        (if (##pair? _rest161477161485_)
                            (let ((_hd161482161588_ (##car _rest161477161485_))
                                  (_tl161483161590_
                                   (##cdr _rest161477161485_)))
                              (let* ((_hd161593_ _hd161482161588_)
                                     (_rest161595_ _tl161483161590_))
                                (_K161481161585_ _rest161595_ _hd161593_)))
                            (_else161479161493_)))))))
          (_expand-body161469_
           (gx#core-expand-block__%
            (cons '%#begin-module _body161466_)
            _expand-special161468_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx161309_
               _expanded?161310_
               _method161311_
               _current-phi161312_
               _expand1161313_)
        (letrec ((_K161315_
                  (lambda (_rest161433_ _r161434_)
                    (let* ((_e161435161442_ _rest161433_)
                           (_E161437161446_ (lambda () _r161434_))
                           (_E161436161462_
                            (lambda ()
                              (if (gx#stx-pair? _e161435161442_)
                                  (let ((_e161438161450_
                                         (gx#syntax-e _e161435161442_)))
                                    (let ((_hd161439161453_
                                           (##car _e161438161450_))
                                          (_tl161440161455_
                                           (##cdr _e161438161450_)))
                                      (let* ((_hd161458_ _hd161439161453_)
                                             (_rest161460_ _tl161440161455_))
                                        (if '#t
                                            (_step161316_
                                             _hd161458_
                                             _rest161460_
                                             _r161434_)
                                            (_E161437161446_)))))
                                  (_E161437161446_)))))
                      (_E161436161462_))))
                 (_step161316_
                  (lambda (_hd161347_ _rest161348_ _r161349_)
                    (let* ((_e161350161368_ _hd161347_)
                           (_E161363161372_
                            (lambda ()
                              (if (_expanded?161310_ (gx#stx-e _hd161347_))
                                  (_K161315_
                                   _rest161348_
                                   (cons (gx#stx-e _hd161347_) _r161349_))
                                  (_expand1161313_
                                   _hd161347_
                                   _K161315_
                                   _rest161348_
                                   _r161349_))))
                           (_E161359161388_
                            (lambda ()
                              (if (gx#stx-pair? _e161350161368_)
                                  (let ((_e161364161376_
                                         (gx#syntax-e _e161350161368_)))
                                    (let ((_hd161365161379_
                                           (##car _e161364161376_))
                                          (_tl161366161381_
                                           (##cdr _e161364161376_)))
                                      (let* ((_macro161384_ _hd161365161379_)
                                             (_body161386_ _tl161366161381_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro161384_
                                             gx#syntax-binding?)
                                            (_K161315_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro161384_)
                                                    _hd161347_
                                                    _method161311_)
                                                   _rest161348_)
                                             _r161349_)
                                            (_E161363161372_)))))
                                  (_E161363161372_))))
                           (_E161352161402_
                            (lambda ()
                              (if (gx#stx-pair? _e161350161368_)
                                  (let ((_e161360161392_
                                         (gx#syntax-e _e161350161368_)))
                                    (let ((_hd161361161395_
                                           (##car _e161360161392_))
                                          (_tl161362161397_
                                           (##cdr _e161360161392_)))
                                      (if (eq? (gx#stx-e _hd161361161395_)
                                               'begin:)
                                          (let ((_body161400_
                                                 _tl161362161397_))
                                            (if '#t
                                                (_K161315_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest161348_
                                                  _body161400_)
                                                 _r161349_)
                                                (_E161359161388_)))
                                          (_E161359161388_))))
                                  (_E161359161388_))))
                           (_E161351161429_
                            (lambda ()
                              (if (gx#stx-pair? _e161350161368_)
                                  (let ((_e161353161406_
                                         (gx#syntax-e _e161350161368_)))
                                    (let ((_hd161354161409_
                                           (##car _e161353161406_))
                                          (_tl161355161411_
                                           (##cdr _e161353161406_)))
                                      (if (eq? (gx#stx-e _hd161354161409_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl161355161411_)
                                              (let ((_e161356161414_
                                                     (gx#syntax-e
                                                      _tl161355161411_)))
                                                (let ((_hd161357161417_
                                                       (##car _e161356161414_))
                                                      (_tl161358161419_
                                                       (##cdr _e161356161414_)))
                                                  (let* ((_dphi161422_
                                                          _hd161357161417_)
                                                         (_body161424_
                                                          _tl161358161419_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi161422_)
                                                        (let ((_rbody161427_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K161315_ _body161424_ '()))
                        _current-phi161312_
                        (fx+ (gx#stx-e _dphi161422_) (_current-phi161312_)))))
                  (_K161315_
                   _rest161348_
                   (foldr1 cons _r161349_ _rbody161427_)))
                (_E161352161402_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E161352161402_))
                                          (_E161352161402_))))
                                  (_E161352161402_)))))
                      (_E161351161429_)))))
          (let* ((_e161317161324_ _stx161309_)
                 (_E161319161328_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e161317161324_)))
                 (_E161318161343_
                  (lambda ()
                    (if (gx#stx-pair? _e161317161324_)
                        (let ((_e161320161332_ (gx#syntax-e _e161317161324_)))
                          (let ((_hd161321161335_ (##car _e161320161332_))
                                (_tl161322161337_ (##cdr _e161320161332_)))
                            (let ((_body161340_ _tl161322161337_))
                              (if '#t
                                  (if (_current-phi161312_)
                                      (_K161315_ _body161340_ '())
                                      (call-with-parameters
                                       (lambda () (_K161315_ _body161340_ '()))
                                       _current-phi161312_
                                       (gx#current-expander-phi)))
                                  (_E161319161328_)))))
                        (_E161319161328_)))))
            (_E161318161343_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx160976_ _internal-expand?160977_)
        (letrec ((_expand1160979_
                  (lambda (_hd161289_ _K161290_ _rest161291_ _r161292_)
                    (if (gx#core-bound-module? _hd161289_)
                        (_import1160980_
                         (gx#syntax-local-e__0 _hd161289_)
                         _K161290_
                         _rest161291_
                         _r161292_)
                        (if (gx#core-library-module-path? _hd161289_)
                            (_import1160980_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd161289_))
                             _K161290_
                             _rest161291_
                             _r161292_)
                            (if (gx#core-library-relative-module-path?
                                 _hd161289_)
                                (_import1160980_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd161289_))
                                 _K161290_
                                 _rest161291_
                                 _r161292_)
                                (let ((_e161294_ (gx#stx-e _hd161289_)))
                                  (if (pair? _e161294_)
                                      (let ((_$e161296_
                                             (gx#stx-e (car _e161294_))))
                                        (if (eq? 'spec: _$e161296_)
                                            (_import-spec160983_
                                             _hd161289_
                                             _K161290_
                                             _rest161291_
                                             _r161292_)
                                            (if (eq? 'in: _$e161296_)
                                                (_import-submodule160981_
                                                 _hd161289_
                                                 _K161290_
                                                 _rest161291_
                                                 _r161292_)
                                                (if (eq? 'runtime: _$e161296_)
                                                    (_import-runtime160982_
                                                     _hd161289_
                                                     _K161290_
                                                     _rest161291_
                                                     _r161292_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx160976_
                                                     _hd161289_)))))
                                      (if (string? _e161294_)
                                          (_import1160980_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd161289_
                                             (gx#stx-source _stx160976_)))
                                           _K161290_
                                           _rest161291_
                                           _r161292_)
                                          (if (##structure-instance-of?
                                               _e161294_
                                               'gx#module-context::t)
                                              (_K161290_
                                               _rest161291_
                                               (cons _e161294_ _r161292_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx160976_
                                               _hd161289_))))))))))
                 (_import1160980_
                  (lambda (_ctx161278_ _K161279_ _rest161280_ _r161281_)
                    (let ((_dphi161283_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K161279_
                       _rest161280_
                       (cons (##structure
                              gx#import-set::t
                              _ctx161278_
                              _dphi161283_
                              (map (lambda (_g161284161286_)
                                     (gx#core-module-export->import__%
                                      _g161284161286_
                                      '#f
                                      _dphi161283_))
                                   (##unchecked-structure-ref
                                    _ctx161278_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r161281_)))))
                 (_import-submodule160981_
                  (lambda (_hd161245_ _K161246_ _rest161247_ _r161248_)
                    (let* ((_e161249161256_ _hd161245_)
                           (_E161251161260_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e161249161256_)))
                           (_E161250161274_
                            (lambda ()
                              (if (gx#stx-pair? _e161249161256_)
                                  (let ((_e161252161264_
                                         (gx#syntax-e _e161249161256_)))
                                    (let ((_hd161253161267_
                                           (##car _e161252161264_))
                                          (_tl161254161269_
                                           (##cdr _e161252161264_)))
                                      (let ((_spath161272_ _tl161254161269_))
                                        (if '#t
                                            (_import1160980_
                                             (_import-spec-source160984_
                                              _spath161272_)
                                             _K161246_
                                             _rest161247_
                                             _r161248_)
                                            (_E161251161260_)))))
                                  (_E161251161260_)))))
                      (_E161250161274_))))
                 (_import-runtime160982_
                  (lambda (_hd161212_ _K161213_ _rest161214_ _r161215_)
                    (let* ((_e161216161223_ _hd161212_)
                           (_E161218161227_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e161216161223_)))
                           (_E161217161241_
                            (lambda ()
                              (if (gx#stx-pair? _e161216161223_)
                                  (let ((_e161219161231_
                                         (gx#syntax-e _e161216161223_)))
                                    (let ((_hd161220161234_
                                           (##car _e161219161231_))
                                          (_tl161221161236_
                                           (##cdr _e161219161231_)))
                                      (let ((_spath161239_ _tl161221161236_))
                                        (if '#t
                                            (_K161213_
                                             _rest161214_
                                             (cons (_import-spec-source160984_
                                                    _spath161239_)
                                                   _r161215_))
                                            (_E161218161227_)))))
                                  (_E161218161227_)))))
                      (_E161217161241_))))
                 (_import-spec160983_
                  (lambda (_hd161051_ _K161052_ _rest161053_ _r161054_)
                    (let* ((_e161055161072_ _hd161051_)
                           (_E161064161076_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e161055161072_)))
                           (_E161057161186_
                            (lambda ()
                              (if (gx#stx-pair? _e161055161072_)
                                  (let ((_e161065161080_
                                         (gx#syntax-e _e161055161072_)))
                                    (let ((_hd161066161083_
                                           (##car _e161065161080_))
                                          (_tl161067161085_
                                           (##cdr _e161065161080_)))
                                      (if (gx#stx-pair? _tl161067161085_)
                                          (let ((_e161068161088_
                                                 (gx#syntax-e
                                                  _tl161067161085_)))
                                            (let ((_hd161069161091_
                                                   (##car _e161068161088_))
                                                  (_tl161070161093_
                                                   (##cdr _e161068161088_)))
                                              (let* ((_path161096_
                                                      _hd161069161091_)
                                                     (_specs161098_
                                                      _tl161070161093_))
                                                (if '#t
                                                    (let ((_src-ctx161100_
                                                           (_import-spec-source160984_
                                                            _path161096_))
                                                          (_exports161101_
                                                           (make-table))
                                                          (_specs161102_
                                                           (gx#syntax->list
                                                            _specs161098_)))
                                                      (for-each
                                                       (lambda (_out161104_)
                                                         (table-set!
                                                          _exports161101_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out161104_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out161104_
                         '4
                         gx#module-export::t
                         '#f))
                  _out161104_))
               (##unchecked-structure-ref
                _src-ctx161100_
                '9
                gx#module-context::t
                '#f))
              (_K161052_
               _rest161053_
               (foldl1 (lambda (_spec161106_ _r161107_)
                         (let* ((_e161108161124_ _spec161106_)
                                (_E161110161128_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e161108161124_)))
                                (_E161109161182_
                                 (lambda ()
                                   (if (gx#stx-pair? _e161108161124_)
                                       (let ((_e161111161132_
                                              (gx#syntax-e _e161108161124_)))
                                         (let ((_hd161112161135_
                                                (##car _e161111161132_))
                                               (_tl161113161137_
                                                (##cdr _e161111161132_)))
                                           (let ((_phi161140_
                                                  _hd161112161135_))
                                             (if (gx#stx-pair?
                                                  _tl161113161137_)
                                                 (let ((_e161114161142_
                                                        (gx#syntax-e
                                                         _tl161113161137_)))
                                                   (let ((_hd161115161145_
                                                          (##car _e161114161142_))
                                                         (_tl161116161147_
                                                          (##cdr _e161114161142_)))
                                                     (let ((_name161150_
                                                            _hd161115161145_))
                                                       (if (gx#stx-pair?
                                                            _tl161116161147_)
                                                           (let ((_e161117161152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl161116161147_)))
                     (let ((_hd161118161155_ (##car _e161117161152_))
                           (_tl161119161157_ (##cdr _e161117161152_)))
                       (let ((_src-phi161160_ _hd161118161155_))
                         (if (gx#stx-pair? _tl161119161157_)
                             (let ((_e161120161162_
                                    (gx#syntax-e _tl161119161157_)))
                               (let ((_hd161121161165_ (##car _e161120161162_))
                                     (_tl161122161167_
                                      (##cdr _e161120161162_)))
                                 (let ((_src-name161170_ _hd161121161165_))
                                   (if (gx#stx-null? _tl161122161167_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi161160_)
                                                (gx#identifier?
                                                 _src-name161170_)
                                                (gx#stx-fixnum? _phi161140_)
                                                (gx#identifier? _name161150_))
                                           (let ((_src-phi161172_
                                                  (gx#stx-e _src-phi161160_))
                                                 (_src-name161173_
                                                  (gx#core-identifier-key
                                                   _src-name161170_))
                                                 (_phi161174_
                                                  (gx#stx-e _phi161140_))
                                                 (_name161175_
                                                  (gx#core-identifier-key
                                                   _name161150_)))
                                             (let ((_$e161177_
                                                    (table-ref
                                                     _exports161101_
                                                     (cons _src-phi161172_
                                                           _src-name161173_)
                                                     '#f)))
                                               (if _$e161177_
                                                   ((lambda (_out161180_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out161180_
                                                             _name161175_
                                                             (fx- _phi161174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi161172_))
                    _r161107_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e161177_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx160976_
                                                    _hd161051_))))
                                           (_E161110161128_))
                                       (_E161110161128_)))))
                             (_E161110161128_)))))
                   (_E161110161128_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E161110161128_)))))
                                       (_E161110161128_)))))
                           (_E161109161182_)))
                       _r161054_
                       _specs161102_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E161064161076_)))))
                                          (_E161064161076_))))
                                  (_E161064161076_))))
                           (_E161056161208_
                            (lambda ()
                              (if (gx#stx-pair? _e161055161072_)
                                  (let ((_e161058161190_
                                         (gx#syntax-e _e161055161072_)))
                                    (let ((_hd161059161193_
                                           (##car _e161058161190_))
                                          (_tl161060161195_
                                           (##cdr _e161058161190_)))
                                      (if (gx#stx-pair? _tl161060161195_)
                                          (let ((_e161061161198_
                                                 (gx#syntax-e
                                                  _tl161060161195_)))
                                            (let ((_hd161062161201_
                                                   (##car _e161061161198_))
                                                  (_tl161063161203_
                                                   (##cdr _e161061161198_)))
                                              (let ((_path161206_
                                                     _hd161062161201_))
                                                (if (gx#stx-null?
                                                     _tl161063161203_)
                                                    (if '#t
                                                        (_K161052_
                                                         _rest161053_
                                                         (cons (_import-spec-source160984_
                                                                _path161206_)
                                                               _r161054_))
                                                        (_E161057161186_))
                                                    (_E161057161186_)))))
                                          (_E161057161186_))))
                                  (_E161057161186_)))))
                      (_E161056161208_))))
                 (_import-spec-source160984_
                  (lambda (_spath161049_)
                    (gx#core-import-nested-module _spath161049_ _stx160976_)))
                 (_import!160985_
                  (lambda (_rbody160998_)
                    (letrec* ((_current-ctx161000_
                               (gx#current-expander-context))
                              (_deps161001_ (make-table 'test: eq?))
                              (_bind!161002_
                               (lambda (_hd161047_)
                                 (gx#core-bind-import!__1
                                  _hd161047_
                                  _current-ctx161000_))))
                      (let _lp161004_ ((_rest161006_ _rbody160998_)
                                       (_body161007_ '()))
                        (let* ((_rest161008161016_ _rest161006_)
                               (_else161010161026_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx161000_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx161000_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx161000_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body161007_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx161024_ _g168422_)
                                     (gx#eval-module _ctx161024_))
                                   _deps161001_)
                                  _body161007_))
                               (_K161012161035_
                                (lambda (_rest161029_ _hd161030_)
                                  (if (##structure-direct-instance-of?
                                       _hd161030_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!161002_ _hd161030_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd161030_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd161030_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps161001_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd161030_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd161030_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!161002_
                                             (##unchecked-structure-ref
                                              _hd161030_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd161030_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps161001_
                                                 (##unchecked-structure-ref
                                                  _hd161030_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e161032_
                                                 (##structure-instance-of?
                                                  _hd161030_
                                                  'gx#module-context::t)))
                                            (if _$e161032_
                                                _$e161032_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx160976_
                                                 _hd161030_)))))
                                  (_lp161004_
                                   _rest161029_
                                   (cons _hd161030_ _body161007_)))))
                          (if (##pair? _rest161008161016_)
                              (let ((_hd161013161038_
                                     (##car _rest161008161016_))
                                    (_tl161014161040_
                                     (##cdr _rest161008161016_)))
                                (let* ((_hd161043_ _hd161013161038_)
                                       (_rest161045_ _tl161014161040_))
                                  (_K161012161035_ _rest161045_ _hd161043_)))
                              (_else161010161026_)))))))
                 (_expanded-import?160986_
                  (lambda (_e160990_)
                    (let ((_$e160992_
                           (##structure-direct-instance-of?
                            _e160990_
                            'gx#import-set::t)))
                      (if _$e160992_
                          _$e160992_
                          (let ((_$e160995_
                                 (##structure-direct-instance-of?
                                  _e160990_
                                  'gx#module-import::t)))
                            (if _$e160995_
                                _$e160995_
                                (##structure-instance-of?
                                 _e160990_
                                 'gx#module-context::t))))))))
          (let ((_rbody160988_
                 (gx#core-expand-import/export
                  _stx160976_
                  _expanded-import?160986_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1160979_)))
            (if _internal-expand?160977_
                (reverse _rbody160988_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!160985_ _rbody160988_))
                 (gx#stx-source _stx160976_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx161302_)
        (let ((_internal-expand?161304_ '#f))
          (gx#core-expand-import%__% _stx161302_ _internal-expand?161304_))))
    (define gx#core-expand-import%
      (lambda _g168424_
        (let ((_g168423_ (##length _g168424_)))
          (cond ((##fx= _g168423_ 1)
                 (apply (lambda (_stx161302_)
                          (gx#core-expand-import%__0 _stx161302_))
                        _g168424_))
                ((##fx= _g168423_ 2)
                 (apply (lambda (_stx161306_ _internal-expand?161307_)
                          (gx#core-expand-import%__%
                           _stx161306_
                           _internal-expand?161307_))
                        _g168424_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g168424_))))))
    (define gx#core-import-nested-module
      (lambda (_spath160903_ _where160904_)
        (let* ((_e160905160912_ _spath160903_)
               (_E160907160916_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160905160912_)))
               (_E160906160971_
                (lambda ()
                  (if (gx#stx-pair? _e160905160912_)
                      (let ((_e160908160920_ (gx#syntax-e _e160905160912_)))
                        (let ((_hd160909160923_ (##car _e160908160920_))
                              (_tl160910160925_ (##cdr _e160908160920_)))
                          (let* ((_origin160928_ _hd160909160923_)
                                 (_sub160930_ _tl160910160925_))
                            (if '#t
                                (let ((_origin-ctx160932_
                                       (if (gx#stx-false? _origin160928_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin160928_))))
                                  (let _lp160934_ ((_rest160936_ _sub160930_)
                                                   (_ctx160937_
                                                    _origin-ctx160932_))
                                    (let* ((_e160938160945_ _rest160936_)
                                           (_E160940160949_
                                            (lambda () _ctx160937_))
                                           (_E160939160967_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e160938160945_)
                                                  (let ((_e160941160953_
                                                         (gx#syntax-e
                                                          _e160938160945_)))
                                                    (let ((_hd160942160956_
                                                           (##car _e160941160953_))
                                                          (_tl160943160958_
                                                           (##cdr _e160941160953_)))
                                                      (let* ((_id160961_
                                                              _hd160942160956_)
                                                             (_rest160963_
                                                              _tl160943160958_))
                                                        (if '#t
                                                            (let ((_bind160965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id160961_
                            '0
                            _ctx160937_)))
                      (if (and (##structure-direct-instance-of?
                                _bind160965_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind160965_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where160904_
                           _spath160903_
                           _id160961_))
                      (_lp160934_
                       _rest160963_
                       (##unchecked-structure-ref
                        _bind160965_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E160940160949_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E160940160949_)))))
                                      (_E160939160967_))))
                                (_E160907160916_)))))
                      (_E160907160916_)))))
          (_E160906160971_))))
    (define gx#core-expand-import-source
      (lambda (_hd160901_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd160901_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx160409_ _internal-expand?160410_)
        (letrec* ((_make-export__168353168354_
                   (lambda (_bind160849_ _phi160850_ _ctx160851_ _name160852_)
                     (let* ((_key160854_
                             (##unchecked-structure-ref
                              _bind160849_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key160856_
                             (if _name160852_
                                 (gx#core-identifier-key _name160852_)
                                 _key160854_)))
                       (##structure
                        gx#module-export::t
                        _ctx160851_
                        _key160854_
                        _phi160850_
                        _export-key160856_
                        (let ((_$e160859_
                               (##structure-instance-of?
                                _bind160849_
                                'gx#extern-binding::t)))
                          (if _$e160859_
                              _$e160859_
                              (##structure-direct-instance-of?
                               _bind160849_
                               'gx#import-binding::t)))))))
                  (_make-export__0__168355168358_
                   (lambda (_bind160865_)
                     (let* ((_phi160867_ (gx#current-export-expander-phi))
                            (_ctx160869_ (gx#current-expander-context))
                            (_name160871_ '#f))
                       (_make-export__168353168354_
                        _bind160865_
                        _phi160867_
                        _ctx160869_
                        _name160871_))))
                  (_make-export__1__168356168359_
                   (lambda (_bind160873_ _phi160874_)
                     (let* ((_ctx160876_ (gx#current-expander-context))
                            (_name160878_ '#f))
                       (_make-export__168353168354_
                        _bind160873_
                        _phi160874_
                        _ctx160876_
                        _name160878_))))
                  (_make-export__2__168357168360_
                   (lambda (_bind160880_ _phi160881_ _ctx160882_)
                     (let ((_name160884_ '#f))
                       (_make-export__168353168354_
                        _bind160880_
                        _phi160881_
                        _ctx160882_
                        _name160884_))))
                  (_make-export160412_
                   (lambda _g168426_
                     (let ((_g168425_ (##length _g168426_)))
                       (cond ((##fx= _g168425_ 1)
                              (apply (lambda (_bind160865_)
                                       (_make-export__0__168355168358_
                                        _bind160865_))
                                     _g168426_))
                             ((##fx= _g168425_ 2)
                              (apply (lambda (_bind160873_ _phi160874_)
                                       (_make-export__1__168356168359_
                                        _bind160873_
                                        _phi160874_))
                                     _g168426_))
                             ((##fx= _g168425_ 3)
                              (apply (lambda (_bind160880_
                                              _phi160881_
                                              _ctx160882_)
                                       (_make-export__2__168357168360_
                                        _bind160880_
                                        _phi160881_
                                        _ctx160882_))
                                     _g168426_))
                             ((##fx= _g168425_ 4)
                              (apply (lambda (_bind160886_
                                              _phi160887_
                                              _ctx160888_
                                              _name160889_)
                                       (_make-export__168353168354_
                                        _bind160886_
                                        _phi160887_
                                        _ctx160888_
                                        _name160889_))
                                     _g168426_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g168426_))))))
                  (_expand1160413_
                   (lambda (_hd160562_ _K160563_ _rest160564_ _r160565_)
                     (let* ((_e160566160598_ _hd160562_)
                            (_E160593160602_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx160409_
                                _hd160562_)))
                            (_E160583160681_
                             (lambda ()
                               (if (gx#stx-pair? _e160566160598_)
                                   (let ((_e160594160606_
                                          (gx#syntax-e _e160566160598_)))
                                     (let ((_hd160595160609_
                                            (##car _e160594160606_))
                                           (_tl160596160611_
                                            (##cdr _e160594160606_)))
                                       (if (eq? (gx#stx-e _hd160595160609_)
                                                'import:)
                                           (let ((_in160614_ _tl160596160611_))
                                             (if (gx#stx-list? _in160614_)
                                                 (let _lp160616_ ((_in-rest160618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in160614_)
                          (_r160619_ _r160565_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e160620160627_
                                                           _in-rest160618_)
                                                          (_E160622160631_
                                                           (lambda ()
                                                             (_K160563_
                                                              _rest160564_
                                                              _r160619_)))
                                                          (_E160621160677_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e160620160627_)
                         (let ((_e160623160635_ (gx#syntax-e _e160620160627_)))
                           (let ((_hd160624160638_ (##car _e160623160635_))
                                 (_tl160625160640_ (##cdr _e160623160635_)))
                             (let* ((_hd160643_ _hd160624160638_)
                                    (_in-rest160645_ _tl160625160640_))
                               (if '#t
                                   (let ((_src160675_
                                          (if (gx#core-bound-module?
                                               _hd160643_)
                                              (gx#syntax-local-e__0 _hd160643_)
                                              (if (gx#core-library-module-path?
                                                   _hd160643_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd160643_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd160643_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd160643_))
                                                      (if (gx#stx-string?
                                                           _hd160643_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd160643_
                                                            (gx#stx-source
                                                             _stx160409_)))
                                                          (let* ((_e160646160653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd160643_)
                         (_E160648160657_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx160409_
                             _hd160643_)))
                         (_E160647160671_
                          (lambda ()
                            (if (gx#stx-pair? _e160646160653_)
                                (let ((_e160649160661_
                                       (gx#syntax-e _e160646160653_)))
                                  (let ((_hd160650160664_
                                         (##car _e160649160661_))
                                        (_tl160651160666_
                                         (##cdr _e160649160661_)))
                                    (if (eq? (gx#stx-e _hd160650160664_) 'in:)
                                        (let ((_spath160669_ _tl160651160666_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath160669_
                                               _stx160409_)
                                              (_E160648160657_)))
                                        (_E160648160657_))))
                                (_E160648160657_)))))
                    (_E160647160671_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp160616_
                                      _in-rest160645_
                                      (_export-imports160414_
                                       _src160675_
                                       _r160619_)))
                                   (_E160622160631_)))))
                         (_E160622160631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E160621160677_)))
                                                 (_E160593160602_)))
                                           (_E160593160602_))))
                                   (_E160593160602_))))
                            (_E160570160720_
                             (lambda ()
                               (if (gx#stx-pair? _e160566160598_)
                                   (let ((_e160584160685_
                                          (gx#syntax-e _e160566160598_)))
                                     (let ((_hd160585160688_
                                            (##car _e160584160685_))
                                           (_tl160586160690_
                                            (##cdr _e160584160685_)))
                                       (if (eq? (gx#stx-e _hd160585160688_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl160586160690_)
                                               (let ((_e160587160693_
                                                      (gx#syntax-e
                                                       _tl160586160690_)))
                                                 (let ((_hd160588160696_
                                                        (##car _e160587160693_))
                                                       (_tl160589160698_
                                                        (##cdr _e160587160693_)))
                                                   (let ((_id160701_
                                                          _hd160588160696_))
                                                     (if (gx#stx-pair?
                                                          _tl160589160698_)
                                                         (let ((_e160590160703_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl160589160698_)))
                   (let ((_hd160591160706_ (##car _e160590160703_))
                         (_tl160592160708_ (##cdr _e160590160703_)))
                     (let ((_name160711_ _hd160591160706_))
                       (if (gx#stx-null? _tl160592160708_)
                           (if '#t
                               (let* ((_phi160713_
                                       (gx#current-export-expander-phi))
                                      (_$e160715_
                                       (gx#core-resolve-identifier__1
                                        _id160701_
                                        _phi160713_)))
                                 (if _$e160715_
                                     ((lambda (_bind160718_)
                                        (_K160563_
                                         _rest160564_
                                         (cons (_make-export__168353168354_
                                                _bind160718_
                                                _phi160713_
                                                (gx#current-expander-context)
                                                _name160711_)
                                               _r160565_)))
                                      _$e160715_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx160409_
                                      _hd160562_
                                      _id160701_)))
                               (_E160583160681_))
                           (_E160583160681_)))))
                 (_E160583160681_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E160583160681_))
                                           (_E160583160681_))))
                                   (_E160583160681_))))
                            (_E160569160769_
                             (lambda ()
                               (if (gx#stx-pair? _e160566160598_)
                                   (let ((_e160571160724_
                                          (gx#syntax-e _e160566160598_)))
                                     (let ((_hd160572160727_
                                            (##car _e160571160724_))
                                           (_tl160573160729_
                                            (##cdr _e160571160724_)))
                                       (if (eq? (gx#stx-e _hd160572160727_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl160573160729_)
                                               (let ((_e160574160732_
                                                      (gx#syntax-e
                                                       _tl160573160729_)))
                                                 (let ((_hd160575160735_
                                                        (##car _e160574160732_))
                                                       (_tl160576160737_
                                                        (##cdr _e160574160732_)))
                                                   (let ((_phi160740_
                                                          _hd160575160735_))
                                                     (if (gx#stx-pair?
                                                          _tl160576160737_)
                                                         (let ((_e160577160742_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl160576160737_)))
                   (let ((_hd160578160745_ (##car _e160577160742_))
                         (_tl160579160747_ (##cdr _e160577160742_)))
                     (let ((_id160750_ _hd160578160745_))
                       (if (gx#stx-pair? _tl160579160747_)
                           (let ((_e160580160752_
                                  (gx#syntax-e _tl160579160747_)))
                             (let ((_hd160581160755_ (##car _e160580160752_))
                                   (_tl160582160757_ (##cdr _e160580160752_)))
                               (let ((_name160760_ _hd160581160755_))
                                 (if (gx#stx-null? _tl160582160757_)
                                     (if (and (gx#stx-fixnum? _phi160740_)
                                              (gx#identifier? _id160750_)
                                              (gx#identifier? _name160760_))
                                         (let* ((_phi160762_
                                                 (gx#stx-e _phi160740_))
                                                (_$e160764_
                                                 (gx#core-resolve-identifier__1
                                                  _id160750_
                                                  _phi160762_)))
                                           (if _$e160764_
                                               ((lambda (_bind160767_)
                                                  (_K160563_
                                                   _rest160564_
                                                   (cons (_make-export__168353168354_
                                                          _bind160767_
                                                          _phi160762_
                                                          (gx#current-expander-context)
                                                          _name160760_)
                                                         _r160565_)))
                                                _$e160764_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx160409_
                                                _hd160562_
                                                _id160750_)))
                                         (_E160570160720_))
                                     (_E160570160720_)))))
                           (_E160570160720_)))))
                 (_E160570160720_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E160570160720_))
                                           (_E160570160720_))))
                                   (_E160570160720_))))
                            (_E160568160780_
                             (lambda ()
                               (let ((_id160773_ _e160566160598_))
                                 (if (gx#identifier? _id160773_)
                                     (let ((_$e160775_
                                            (gx#core-resolve-identifier__1
                                             _id160773_
                                             (gx#current-export-expander-phi))))
                                       (if _$e160775_
                                           ((lambda (_bind160778_)
                                              (_K160563_
                                               _rest160564_
                                               (cons (_make-export__0__168355168358_
                                                      _bind160778_)
                                                     _r160565_)))
                                            _$e160775_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx160409_
                                            _hd160562_)))
                                     (_E160569160769_)))))
                            (_E160567160844_
                             (lambda ()
                               (if (eq? (gx#stx-e _e160566160598_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx160784_
                                               (gx#current-expander-context))
                                              (_current-phi160786_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx160788_
                                               (gx#core-context-shift
                                                _current-ctx160784_
                                                _current-phi160786_))
                                              (_phi-bind160790_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx160788_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp160793_ ((_bind-rest160795_
                                                           _phi-bind160790_)
                                                          (_set160796_ '()))
                                           (let* ((_bind-rest160797160807_
                                                   _bind-rest160795_)
                                                  (_else160799160815_
                                                   (lambda ()
                                                     (_K160563_
                                                      _rest160564_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi160786_
                                                             _set160796_)
                                                            _r160565_))))
                                                  (_K160801160825_
                                                   (lambda (_bind-rest160818_
                                                            _bind160819_
                                                            _key160820_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind160819_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind160819_))
                                                         (_lp160793_
                                                          _bind-rest160818_
                                                          _set160796_)
                                                         (_lp160793_
                                                          _bind-rest160818_
                                                          (cons (_make-export__2__168357168360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind160819_
                         _current-phi160786_
                         _current-ctx160784_)
                        _set160796_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest160797160807_)
                                                 (let ((_hd160802160828_
                                                        (##car _bind-rest160797160807_))
                                                       (_tl160803160830_
                                                        (##cdr _bind-rest160797160807_)))
                                                   (if (##pair? _hd160802160828_)
                                                       (let ((_hd160804160833_
                                                              (##car _hd160802160828_))
                                                             (_tl160805160835_
                                                              (##cdr _hd160802160828_)))
                                                         (let* ((_key160838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd160804160833_)
                        (_bind160840_ _tl160805160835_)
                        (_bind-rest160842_ _tl160803160830_))
                   (_K160801160825_
                    _bind-rest160842_
                    _bind160840_
                    _key160838_)))
               (_else160799160815_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else160799160815_)))))
                                       (_E160568160780_))
                                   (_E160568160780_)))))
                       (_E160567160844_))))
                  (_export-imports160414_
                   (lambda (_src160438_ _r160439_)
                     (letrec* ((_current-ctx160441_
                                (gx#current-expander-context))
                               (_current-phi160442_
                                (gx#current-export-expander-phi))
                               (_import->export160443_
                                (lambda (_in160524_)
                                  (let* ((_in160525160533_ _in160524_)
                                         (_E160527160537_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in160525160533_)))
                                         (_K160528160544_
                                          (lambda (_phi160540_
                                                   _key160541_
                                                   _out160542_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx160441_
                                             _key160541_
                                             _phi160540_
                                             _key160541_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in160525160533_
                                         'gx#module-import::t)
                                        (let* ((_e160529160547_
                                                (##unchecked-structure-ref
                                                 _in160525160533_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out160550_ _e160529160547_)
                                               (_e160530160552_
                                                (##unchecked-structure-ref
                                                 _in160525160533_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key160555_ _e160530160552_)
                                               (_e160531160557_
                                                (##unchecked-structure-ref
                                                 _in160525160533_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi160560_ _e160531160557_))
                                          (_K160528160544_
                                           _phi160560_
                                           _key160555_
                                           _out160550_))
                                        (_E160527160537_)))))
                               (_fold-e160444_
                                (lambda (_in160446_ _r160447_)
                                  (let* ((_in160448160462_ _in160446_)
                                         (_else160451160470_
                                          (lambda () _r160447_)))
                                    (let ((_K160457160506_
                                           (lambda (_phi160502_
                                                    _key160503_
                                                    _out160504_)
                                             (if (and (fx= _phi160502_
                                                           _current-phi160442_)
                                                      (eq? _src160438_
                                                           (##unchecked-structure-ref
                                                            _out160504_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export160443_
                                                        _in160446_)
                                                       _r160447_)
                                                 _r160447_)))
                                          (_K160453160481_
                                           (lambda (_imports160474_
                                                    _phi160475_
                                                    _ctx160476_)
                                             (if (and (fx= _phi160475_
                                                           _current-phi160442_)
                                                      (eq? _src160438_
                                                           _ctx160476_))
                                                 (foldl1 (lambda (_in160478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r160479_)
                   (cons (_import->export160443_ _in160478_) _r160479_))
                 _r160447_
                 _imports160474_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r160447_))))
                                      (let ((_try-match160450160499_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in160448160462_
                                                    'gx#import-set::t)
                                                   (let* ((_e160454160484_
                                                           (##unchecked-structure-ref
                                                            _in160448160462_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e160455160489_
                                                           (##unchecked-structure-ref
                                                            _in160448160462_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e160456160494_
                                                           (##unchecked-structure-ref
                                                            _in160448160462_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx160487_
                                                            _e160454160484_)
                                                           (_phi160492_
                                                            _e160455160489_)
                                                           (_imports160497_
                                                            _e160456160494_))
                                                       (_K160453160481_
                                                        _imports160497_
                                                        _phi160492_
                                                        _ctx160487_)))
                                                   (_else160451160470_)))))
                                        (if (##structure-direct-instance-of?
                                             _in160448160462_
                                             'gx#module-import::t)
                                            (let* ((_e160458160509_
                                                    (##unchecked-structure-ref
                                                     _in160448160462_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e160459160514_
                                                    (##unchecked-structure-ref
                                                     _in160448160462_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e160460160519_
                                                    (##unchecked-structure-ref
                                                     _in160448160462_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out160512_
                                                     _e160458160509_)
                                                    (_key160517_
                                                     _e160459160514_)
                                                    (_phi160522_
                                                     _e160460160519_))
                                                (_K160457160506_
                                                 _phi160522_
                                                 _key160517_
                                                 _out160512_)))
                                            (_try-match160450160499_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src160438_
                              _current-phi160442_
                              (foldl1 _fold-e160444_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx160441_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r160439_))))
                  (_export!160415_
                   (lambda (_rbody160428_)
                     (letrec* ((_current-ctx160430_
                                (gx#current-expander-context))
                               (_fold-e160431_
                                (lambda (_out160435_ _r160436_)
                                  (if (##structure-direct-instance-of?
                                       _out160435_
                                       'gx#module-export::t)
                                      (cons _out160435_ _r160436_)
                                      (if (##structure-direct-instance-of?
                                           _out160435_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r160436_
                                                  (##unchecked-structure-ref
                                                   _out160435_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r160436_)))))
                       (let ((_body160433_ (reverse _rbody160428_)))
                         (##unchecked-structure-set!
                          _current-ctx160430_
                          (foldl1 _fold-e160431_
                                  (##unchecked-structure-ref
                                   _current-ctx160430_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body160433_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body160433_))))
                  (_expanded-export?160416_
                   (lambda (_e160423_)
                     (let ((_$e160425_
                            (##structure-direct-instance-of?
                             _e160423_
                             'gx#module-export::t)))
                       (if _$e160425_
                           _$e160425_
                           (##structure-direct-instance-of?
                            _e160423_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?160410_)
              (let ((_rbody160421_
                     (gx#core-expand-import/export
                      _stx160409_
                      _expanded-export?160416_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1160413_)))
                (if _internal-expand?160410_
                    (reverse _rbody160421_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!160415_ _rbody160421_))
                     (gx#stx-source _stx160409_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx160409_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx160409_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx160894_)
        (let ((_internal-expand?160896_ '#f))
          (gx#core-expand-export%__% _stx160894_ _internal-expand?160896_))))
    (define gx#core-expand-export%
      (lambda _g168428_
        (let ((_g168427_ (##length _g168428_)))
          (cond ((##fx= _g168427_ 1)
                 (apply (lambda (_stx160894_)
                          (gx#core-expand-export%__0 _stx160894_))
                        _g168428_))
                ((##fx= _g168427_ 2)
                 (apply (lambda (_stx160898_ _internal-expand?160899_)
                          (gx#core-expand-export%__%
                           _stx160898_
                           _internal-expand?160899_))
                        _g168428_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g168428_))))))
    (define gx#core-expand-export-source
      (lambda (_hd160406_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd160406_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx160376_)
        (let* ((_e160377160384_ _stx160376_)
               (_E160379160388_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e160377160384_)))
               (_E160378160402_
                (lambda ()
                  (if (gx#stx-pair? _e160377160384_)
                      (let ((_e160380160392_ (gx#syntax-e _e160377160384_)))
                        (let ((_hd160381160395_ (##car _e160380160392_))
                              (_tl160382160397_ (##cdr _e160380160392_)))
                          (let ((_body160400_ _tl160382160397_))
                            (if (gx#identifier-list? _body160400_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body160400_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body160400_))
                                   (gx#stx-source _stx160376_)))
                                (_E160379160388_)))))
                      (_E160379160388_)))))
          (_E160378160402_))))
    (define gx#core-bind-feature!__%
      (lambda (_id160342_ _private?160343_ _phi160344_ _ctx160345_)
        (gx#core-bind-syntax!__%
         _id160342_
         ((if _private?160343_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id160342_))
         _private?160343_
         _phi160344_
         _ctx160345_)))
    (define gx#core-bind-feature!__0
      (lambda (_id160350_)
        (let* ((_private?160352_ '#f)
               (_phi160354_ (gx#current-expander-phi))
               (_ctx160356_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id160350_
           _private?160352_
           _phi160354_
           _ctx160356_))))
    (define gx#core-bind-feature!__1
      (lambda (_id160358_ _private?160359_)
        (let* ((_phi160361_ (gx#current-expander-phi))
               (_ctx160363_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id160358_
           _private?160359_
           _phi160361_
           _ctx160363_))))
    (define gx#core-bind-feature!__2
      (lambda (_id160365_ _private?160366_ _phi160367_)
        (let ((_ctx160369_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id160365_
           _private?160366_
           _phi160367_
           _ctx160369_))))
    (define gx#core-bind-feature!
      (lambda _g168430_
        (let ((_g168429_ (##length _g168430_)))
          (cond ((##fx= _g168429_ 1)
                 (apply (lambda (_id160350_)
                          (gx#core-bind-feature!__0 _id160350_))
                        _g168430_))
                ((##fx= _g168429_ 2)
                 (apply (lambda (_id160358_ _private?160359_)
                          (gx#core-bind-feature!__1
                           _id160358_
                           _private?160359_))
                        _g168430_))
                ((##fx= _g168429_ 3)
                 (apply (lambda (_id160365_ _private?160366_ _phi160367_)
                          (gx#core-bind-feature!__2
                           _id160365_
                           _private?160366_
                           _phi160367_))
                        _g168430_))
                ((##fx= _g168429_ 4)
                 (apply (lambda (_id160371_
                                 _private?160372_
                                 _phi160373_
                                 _ctx160374_)
                          (gx#core-bind-feature!__%
                           _id160371_
                           _private?160372_
                           _phi160373_
                           _ctx160374_))
                        _g168430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g168430_))))))))
