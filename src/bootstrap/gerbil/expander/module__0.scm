(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708352924)
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
      (lambda _$args92130_
        (apply make-instance gx#module-import::t _$args92130_)))
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
      (lambda _$args92127_
        (apply make-instance gx#module-export::t _$args92127_)))
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
      (lambda _$args92124_
        (apply make-instance gx#import-set::t _$args92124_)))
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
      (lambda _$args92121_
        (apply make-instance gx#export-set::t _$args92121_)))
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
      (lambda _$args92118_
        (apply make-instance gx#import-expander::t _$args92118_)))
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
      (lambda _$args92115_
        (apply make-instance gx#export-expander::t _$args92115_)))
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
      (lambda _$args92112_
        (apply make-instance gx#import-export-expander::t _$args92112_)))
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
      (lambda (_path92109_ _fun92110_)
        (call-with-input-file
         (cons 'path: (cons _path92109_ gx#source-file-settings))
         _fun92110_)))
    (define gx#module-context:::init!
      (lambda (_self92103_ _id92104_ _super92105_ _ns92106_ _path92107_)
        (if (##fx< '11 (##structure-length _self92103_))
            (begin
              (##unchecked-structure-set!
               _self92103_
               _id92104_
               '1
               (##structure-type _self92103_)
               '#f)
              (##unchecked-structure-set!
               _self92103_
               (make-hash-table-eq)
               '2
               (##structure-type _self92103_)
               '#f)
              (##unchecked-structure-set!
               _self92103_
               _super92105_
               '3
               (##structure-type _self92103_)
               '#f)
              (##unchecked-structure-set!
               _self92103_
               '#f
               '4
               (##structure-type _self92103_)
               '#f)
              (##unchecked-structure-set!
               _self92103_
               '#f
               '5
               (##structure-type _self92103_)
               '#f)
              (##unchecked-structure-set!
               _self92103_
               _ns92106_
               '6
               (##structure-type _self92103_)
               '#f)
              (##unchecked-structure-set!
               _self92103_
               _path92107_
               '7
               (##structure-type _self92103_)
               '#f)
              (##unchecked-structure-set!
               _self92103_
               '()
               '8
               (##structure-type _self92103_)
               '#f)
              (##unchecked-structure-set!
               _self92103_
               '()
               '9
               (##structure-type _self92103_)
               '#f)
              (##unchecked-structure-set!
               _self92103_
               '#f
               '10
               (##structure-type _self92103_)
               '#f)
              (##unchecked-structure-set!
               _self92103_
               '#f
               '11
               (##structure-type _self92103_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92103_
                   '11
                   (##vector-length _self92103_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self91947_ _ctx91948_ _root91949_)
        (let ((_super91957_
               (let ((_$e91951_ _root91949_))
                 (if _$e91951_
                     _$e91951_
                     (let ((_$e91954_ (gx#core-context-root__0)))
                       (if _$e91954_
                           _$e91954_
                           (let ((__obj92172
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor92173
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj92172
                                     ':init!)))
                               (if __constructor92173
                                   (__constructor92173 __obj92172)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj92172)))))))
          (if _ctx91948_
              (let ((_id91960_
                     (##structure-ref
                      _ctx91948_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path91961_
                     (##structure-ref _ctx91948_ '7 gx#module-context::t '#f))
                    (_in91962_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx91948_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e91963_
                     (make-promise (lambda () (gx#eval-module _ctx91948_)))))
                (if (##fx< '8 (##structure-length _self91947_))
                    (begin
                      (##unchecked-structure-set!
                       _self91947_
                       _id91960_
                       '1
                       (##structure-type _self91947_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91947_
                       (make-hash-table-eq 'size: (length _in91962_))
                       '2
                       (##structure-type _self91947_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91947_
                       _super91957_
                       '3
                       (##structure-type _self91947_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91947_
                       '#f
                       '4
                       (##structure-type _self91947_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91947_
                       '#f
                       '5
                       (##structure-type _self91947_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91947_
                       _path91961_
                       '6
                       (##structure-type _self91947_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91947_
                       _in91962_
                       '7
                       (##structure-type _self91947_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91947_
                       _e91963_
                       '8
                       (##structure-type _self91947_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self91947_
                           '8
                           (##vector-length _self91947_)))
                (for-each
                 (lambda (_g9196491966_)
                   (gx#core-bind-weak-import!__% _g9196491966_ _self91947_))
                 _in91962_))
              (if (##fx< '8 (##structure-length _self91947_))
                  (begin
                    (##unchecked-structure-set!
                     _self91947_
                     '#f
                     '1
                     (##structure-type _self91947_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91947_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self91947_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91947_
                     _super91957_
                     '3
                     (##structure-type _self91947_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91947_
                     '#f
                     '4
                     (##structure-type _self91947_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91947_
                     '#f
                     '5
                     (##structure-type _self91947_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91947_
                     '#f
                     '6
                     (##structure-type _self91947_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91947_
                     '()
                     '7
                     (##structure-type _self91947_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91947_
                     '#f
                     '8
                     (##structure-type _self91947_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self91947_
                         '8
                         (##vector-length _self91947_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self91972_ _ctx91973_)
        (let ((_root91975_ '#f))
          (gx#prelude-context:::init!__% _self91972_ _ctx91973_ _root91975_))))
    (define gx#prelude-context:::init!
      (lambda _g92179_
        (let ((_g92178_ (##length _g92179_)))
          (cond ((##fx= _g92178_ 2)
                 (apply (lambda (_self91972_ _ctx91973_)
                          (gx#prelude-context:::init!__0
                           _self91972_
                           _ctx91973_))
                        _g92179_))
                ((##fx= _g92178_ 3)
                 (apply (lambda (_self91977_ _ctx91978_ _root91979_)
                          (gx#prelude-context:::init!__%
                           _self91977_
                           _ctx91978_
                           _root91979_))
                        _g92179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g92179_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self91821_ _e91822_)
        (if (##fx< '3 (##structure-length _self91821_))
            (begin
              (##unchecked-structure-set!
               _self91821_
               _e91822_
               '1
               (##structure-type _self91821_)
               '#f)
              (##unchecked-structure-set!
               _self91821_
               (gx#current-expander-context)
               '2
               (##structure-type _self91821_)
               '#f)
              (##unchecked-structure-set!
               _self91821_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self91821_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self91821_
                   '3
                   (##vector-length _self91821_)))))
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
      (lambda (_g9144791450_ _g9144891452_)
        (gx#core-apply-user-expander__%
         _g9144791450_
         _g9144891452_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9131891321_ _g9131991323_)
        (gx#core-apply-user-expander__%
         _g9131891321_
         _g9131991323_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx91189_)
        (let* ((_path91191_
                (##structure-ref _ctx91189_ '7 gx#module-context::t '#f))
               (_path91193_
                (if (pair? _path91191_) (last _path91191_) _path91191_)))
          (if (string? _path91193_) _path91193_ '#f))))
    (define gx#import-module__%
      (lambda (_path91165_ _reload?91166_ _eval?91167_)
        (let ((_ctx91169_
               ((gx#current-expander-module-import)
                _path91165_
                _reload?91166_)))
          (if (and _ctx91169_ _eval?91167_)
              (gx#eval-module _ctx91169_)
              '#!void)
          _ctx91169_)))
    (define gx#import-module__0
      (lambda (_path91174_)
        (let* ((_reload?91176_ '#f) (_eval?91178_ '#f))
          (gx#import-module__% _path91174_ _reload?91176_ _eval?91178_))))
    (define gx#import-module__1
      (lambda (_path91180_ _reload?91181_)
        (let ((_eval?91183_ '#f))
          (gx#import-module__% _path91180_ _reload?91181_ _eval?91183_))))
    (define gx#import-module
      (lambda _g92181_
        (let ((_g92180_ (##length _g92181_)))
          (cond ((##fx= _g92180_ 1)
                 (apply (lambda (_path91174_)
                          (gx#import-module__0 _path91174_))
                        _g92181_))
                ((##fx= _g92180_ 2)
                 (apply (lambda (_path91180_ _reload?91181_)
                          (gx#import-module__1 _path91180_ _reload?91181_))
                        _g92181_))
                ((##fx= _g92180_ 3)
                 (apply (lambda (_path91185_ _reload?91186_ _eval?91187_)
                          (gx#import-module__%
                           _path91185_
                           _reload?91186_
                           _eval?91187_))
                        _g92181_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g92181_))))))
    (define gx#eval-module
      (lambda (_mod91162_) ((gx#current-expander-module-eval) _mod91162_)))
    (define gx#core-eval-module
      (lambda (_obj91147_)
        (letrec ((_force-e91149_
                  (lambda (_getf91158_ _e91159_)
                    (call-with-parameters
                     (lambda () (force (_getf91158_ _e91159_)))
                     gx#current-expander-context
                     _e91159_
                     gx#current-expander-phi
                     '0))))
          (let _recur91151_ ((_e91153_ _obj91147_))
            (if (##structure-instance-of? _e91153_ 'gx#module-context::t)
                (begin
                  (let ((_$e91155_ (gx#core-context-prelude__% _e91153_)))
                    (if _$e91155_ (_recur91151_ _$e91155_) '#!void))
                  (_force-e91149_ gx#module-context-e _e91153_))
                (if (##structure-instance-of? _e91153_ 'gx#prelude-context::t)
                    (_force-e91149_ gx#prelude-context-e _e91153_)
                    (if (gx#stx-string? _e91153_)
                        (_recur91151_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e91153_)))
                        (if (gx#core-library-module-path? _e91153_)
                            (_recur91151_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e91153_)))
                            (error '"Cannot eval module" _obj91147_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx91130_)
        (let _lp91132_ ((_e91134_ _ctx91130_))
          (if (or (##structure-instance-of? _e91134_ 'gx#module-context::t)
                  (##structure-instance-of? _e91134_ 'gx#local-context::t))
              (_lp91132_
               (##unchecked-structure-ref _e91134_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e91134_ 'gx#prelude-context::t)
                  _e91134_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx91143_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx91143_))))
    (define gx#core-context-prelude
      (lambda _g92183_
        (let ((_g92182_ (##length _g92183_)))
          (cond ((##fx= _g92182_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g92183_))
                ((##fx= _g92182_ 1)
                 (apply (lambda (_ctx91145_)
                          (gx#core-context-prelude__% _ctx91145_))
                        _g92183_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g92183_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx91120_)
        (let* ((_ht91122_ (gx#current-expander-module-registry))
               (_$e91124_ (hash-get _ht91122_ _ctx91120_)))
          (if _$e91124_
              (values _$e91124_)
              (let ((_pre91127_
                     (let ((__obj92174
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
                       (gx#prelude-context:::init! __obj92174 _ctx91120_)
                       __obj92174)))
                (hash-put! _ht91122_ _ctx91120_ _pre91127_)
                _pre91127_)))))
    (define gx#core-import-module__%
      (lambda (_rpath91001_ _reload?91002_)
        (letrec ((_import-source91004_
                  (lambda (_path91089_)
                    (if (member _path91089_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path91089_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g92184_ (gx#core-read-module _path91089_)))
                         (begin
                           (let ((_g92185_
                                  (if (##values? _g92184_)
                                      (##vector-length _g92184_)
                                      1)))
                             (if (not (##fx= _g92185_ 4))
                                 (error "Context expects 4 values" _g92185_)))
                           (let ((_pre91092_ (##vector-ref _g92184_ 0))
                                 (_id91093_ (##vector-ref _g92184_ 1))
                                 (_ns91094_ (##vector-ref _g92184_ 2))
                                 (_body91095_ (##vector-ref _g92184_ 3)))
                             (let* ((_prelude91100_
                                     (if (##structure-instance-of?
                                          _pre91092_
                                          'gx#prelude-context::t)
                                         _pre91092_
                                         (if (##structure-instance-of?
                                              _pre91092_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre91092_)
                                             (if (string? _pre91092_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre91092_))
                                                 (if (not _pre91092_)
                                                     (let ((_$e91097_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e91097_
                                                           _$e91097_
                                                           (let ((__obj92175
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
                     (gx#prelude-context:::init! __obj92175 '#f)
                     __obj92175)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath91001_
                                                            _pre91092_))))))
                                    (_ctx91102_
                                     (let ((__obj92176
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
                                        __obj92176
                                        _id91093_
                                        _prelude91100_
                                        _ns91094_
                                        _path91089_)
                                       __obj92176))
                                    (_body91104_
                                     (gx#core-expand-module-begin
                                      _body91095_
                                      _ctx91102_))
                                    (_body91106_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body91104_)
                                      _path91089_
                                      _ctx91102_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx91102_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body91106_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx91102_
                                _body91106_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path91089_
                                _ctx91102_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id91093_
                                _ctx91102_)
                               _ctx91102_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path91089_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule91005_
                  (lambda (_rpath91017_)
                    (let* ((_rpath9101891025_ _rpath91017_)
                           (_E9102091029_
                            (lambda ()
                              (error '"No clause matching" _rpath9101891025_)))
                           (_K9102191077_
                            (lambda (_refs91032_ _origin91033_)
                              (let ((_ctx91035_
                                     (if _origin91033_
                                         (gx#core-import-module__%
                                          _origin91033_
                                          _reload?91002_)
                                         (gx#current-expander-context))))
                                (let _lp91037_ ((_rest91039_ _refs91032_)
                                                (_ctx91040_ _ctx91035_))
                                  (let* ((_rest9104191049_ _rest91039_)
                                         (_else9104391057_
                                          (lambda () _ctx91040_))
                                         (_K9104591065_
                                          (lambda (_rest91060_ _id91061_)
                                            (let ((_bind91063_
                                                   (gx#resolve-identifier__%
                                                    _id91061_
                                                    '0
                                                    _ctx91040_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind91063_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind91063_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp91037_
                                                   _rest91060_
                                                   (##unchecked-structure-ref
                                                    _bind91063_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath91017_
                                                         _id91061_
                                                         _bind91063_))))))
                                    (if (##pair? _rest9104191049_)
                                        (let ((_hd9104691068_
                                               (##car _rest9104191049_))
                                              (_tl9104791070_
                                               (##cdr _rest9104191049_)))
                                          (let* ((_id91073_ _hd9104691068_)
                                                 (_rest91075_ _tl9104791070_))
                                            (_K9104591065_
                                             _rest91075_
                                             _id91073_)))
                                        (_else9104391057_))))))))
                      (if (##pair? _rpath9101891025_)
                          (let ((_hd9102291080_ (##car _rpath9101891025_))
                                (_tl9102391082_ (##cdr _rpath9101891025_)))
                            (let* ((_origin91085_ _hd9102291080_)
                                   (_refs91087_ _tl9102391082_))
                              (_K9102191077_ _refs91087_ _origin91085_)))
                          (_E9102091029_))))))
          (let ((_$e91007_
                 (if (not _reload?91002_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath91001_)
                     '#f)))
            (if _$e91007_
                (values _$e91007_)
                (if (list? _rpath91001_)
                    (_import-submodule91005_ _rpath91001_)
                    (if (gx#core-library-module-path? _rpath91001_)
                        (let ((_ctx91010_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath91001_)
                                _reload?91002_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath91001_
                           _ctx91010_)
                          _ctx91010_)
                        (let* ((_npath91012_ (path-normalize _rpath91001_))
                               (_$e91014_
                                (if (not _reload?91002_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath91012_)
                                    '#f)))
                          (if _$e91014_
                              (values _$e91014_)
                              (_import-source91004_ _npath91012_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath91113_)
        (let ((_reload?91115_ '#f))
          (gx#core-import-module__% _rpath91113_ _reload?91115_))))
    (define gx#core-import-module
      (lambda _g92187_
        (let ((_g92186_ (##length _g92187_)))
          (cond ((##fx= _g92186_ 1)
                 (apply (lambda (_rpath91113_)
                          (gx#core-import-module__0 _rpath91113_))
                        _g92187_))
                ((##fx= _g92186_ 2)
                 (apply (lambda (_rpath91117_ _reload?91118_)
                          (gx#core-import-module__%
                           _rpath91117_
                           _reload?91118_))
                        _g92187_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g92187_))))))
    (define gx#core-read-module
      (lambda (_path90990_)
        (with-catch
         (lambda (_exn90992_)
           (if (and (datum-parsing-exception? _exn90992_)
                    (eq? (datum-parsing-exception-filepos _exn90992_) '0))
               (gx#core-read-module/lang _path90990_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path90990_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9099490996_)
                      (display-exception _exn90992_ _g9099490996_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path90990_)))))
    (define gx#core-read-module/sexp
      (lambda (_path90853_)
        (let _lp90855_ ((_body90857_ (read-syntax-from-file _path90853_))
                        (_pre90858_ '#f)
                        (_ns90859_ '#f)
                        (_pkg90860_ '#f))
          (let* ((_e9086190885_ _body90857_)
                 (_E9087790907_
                  (lambda ()
                    (let ((_g92188_
                           (if _pkg90860_
                               (values _pre90858_ _ns90859_ _pkg90860_)
                               (gx#core-read-module-package
                                _path90853_
                                _pre90858_
                                _ns90859_))))
                      (begin
                        (let ((_g92189_
                               (if (##values? _g92188_)
                                   (##vector-length _g92188_)
                                   1)))
                          (if (not (##fx= _g92189_ 3))
                              (error "Context expects 3 values" _g92189_)))
                        (let ((_pre90889_ (##vector-ref _g92188_ 0))
                              (_ns90890_ (##vector-ref _g92188_ 1))
                              (_pkg90891_ (##vector-ref _g92188_ 2)))
                          (let* ((_prelude90893_
                                  (if (gx#core-bound-module-prelude?
                                       _pre90889_)
                                      (gx#syntax-local-e__0 _pre90889_)
                                      (if (gx#core-library-module-path?
                                           _pre90889_)
                                          (gx#core-resolve-library-module-path
                                           _pre90889_)
                                          (if (gx#stx-string? _pre90889_)
                                              (gx#core-resolve-module-path__%
                                               _pre90889_
                                               _path90853_)
                                              (gx#stx-e _pre90889_)))))
                                 (_path-id90895_
                                  (gx#core-module-path->namespace _path90853_))
                                 (_pkg-id90897_
                                  (if _pkg90891_
                                      (string-append
                                       _pkg90891_
                                       '"/"
                                       _path-id90895_)
                                      _path-id90895_))
                                 (_module-id90899_
                                  (string->symbol _pkg-id90897_))
                                 (_module-ns90904_
                                  (if (eq? _ns90890_ '#!void)
                                      '#f
                                      (let ((_$e90901_ _ns90890_))
                                        (if _$e90901_
                                            _$e90901_
                                            _pkg-id90897_)))))
                            (values _prelude90893_
                                    _module-id90899_
                                    _module-ns90904_
                                    _body90857_)))))))
                 (_E9087090936_
                  (lambda ()
                    (if (gx#stx-pair? _e9086190885_)
                        (let ((_e9087890911_ (gx#syntax-e _e9086190885_)))
                          (let ((_hd9087990914_ (##car _e9087890911_))
                                (_tl9088090916_ (##cdr _e9087890911_)))
                            (if (eq? (gx#stx-e _hd9087990914_) 'package:)
                                (if (gx#stx-pair? _tl9088090916_)
                                    (let ((_e9088190919_
                                           (gx#syntax-e _tl9088090916_)))
                                      (let ((_hd9088290922_
                                             (##car _e9088190919_))
                                            (_tl9088390924_
                                             (##cdr _e9088190919_)))
                                        (let* ((_pkg90927_ _hd9088290922_)
                                               (_rest90929_ _tl9088390924_))
                                          (if '#t
                                              (let ((_pkg90934_
                                                     (if (gx#identifier?
                                                          _pkg90927_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg90927_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg90927_)
                         (gx#stx-false? _pkg90927_))
                     (gx#stx-e _pkg90927_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg90927_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp90855_
                                                 _rest90929_
                                                 _pre90858_
                                                 _ns90859_
                                                 _pkg90934_))
                                              (_E9087790907_)))))
                                    (_E9087790907_))
                                (_E9087790907_))))
                        (_E9087790907_))))
                 (_E9086390962_
                  (lambda ()
                    (if (gx#stx-pair? _e9086190885_)
                        (let ((_e9087190940_ (gx#syntax-e _e9086190885_)))
                          (let ((_hd9087290943_ (##car _e9087190940_))
                                (_tl9087390945_ (##cdr _e9087190940_)))
                            (if (eq? (gx#stx-e _hd9087290943_) 'namespace:)
                                (if (gx#stx-pair? _tl9087390945_)
                                    (let ((_e9087490948_
                                           (gx#syntax-e _tl9087390945_)))
                                      (let ((_hd9087590951_
                                             (##car _e9087490948_))
                                            (_tl9087690953_
                                             (##cdr _e9087490948_)))
                                        (let* ((_ns90956_ _hd9087590951_)
                                               (_rest90958_ _tl9087690953_))
                                          (if '#t
                                              (let ((_ns90960_
                                                     (if (gx#identifier?
                                                          _ns90956_)
                                                         (symbol->string
                                                          (gx#stx-e _ns90956_))
                                                         (if (gx#stx-string?
                                                              _ns90956_)
                                                             (gx#stx-e
                                                              _ns90956_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns90956_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns90956_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp90855_
                                                 _rest90958_
                                                 _pre90858_
                                                 _ns90960_
                                                 _pkg90860_))
                                              (_E9087090936_)))))
                                    (_E9087090936_))
                                (_E9087090936_))))
                        (_E9087090936_))))
                 (_E9086290986_
                  (lambda ()
                    (if (gx#stx-pair? _e9086190885_)
                        (let ((_e9086490966_ (gx#syntax-e _e9086190885_)))
                          (let ((_hd9086590969_ (##car _e9086490966_))
                                (_tl9086690971_ (##cdr _e9086490966_)))
                            (if (eq? (gx#stx-e _hd9086590969_) 'prelude:)
                                (if (gx#stx-pair? _tl9086690971_)
                                    (let ((_e9086790974_
                                           (gx#syntax-e _tl9086690971_)))
                                      (let ((_hd9086890977_
                                             (##car _e9086790974_))
                                            (_tl9086990979_
                                             (##cdr _e9086790974_)))
                                        (let* ((_prelude90982_ _hd9086890977_)
                                               (_rest90984_ _tl9086990979_))
                                          (if '#t
                                              (_lp90855_
                                               _rest90984_
                                               _prelude90982_
                                               _ns90859_
                                               _pkg90860_)
                                              (_E9086390962_)))))
                                    (_E9086390962_))
                                (_E9086390962_))))
                        (_E9086390962_)))))
            (_E9086290986_)))))
    (define gx#core-read-module/lang
      (lambda (_path90680_)
        (letrec ((_default-read-module-body90682_
                  (lambda (_inp90845_)
                    (let _lp90847_ ((_body90849_ '()))
                      (let ((_next90851_ (read-syntax _inp90845_)))
                        (if (eof-object? _next90851_)
                            (reverse _body90849_)
                            (_lp90847_ (cons _next90851_ _body90849_)))))))
                 (_read-body90683_
                  (lambda (_inp90764_
                           _pre90765_
                           _ns90766_
                           _pkg90767_
                           _args90768_)
                    (let ((_g92190_
                           (if _pkg90767_
                               (values _pre90765_ _ns90766_ _pkg90767_)
                               (gx#core-read-module-package
                                _path90680_
                                _pre90765_
                                _ns90766_))))
                      (begin
                        (let ((_g92191_
                               (if (##values? _g92190_)
                                   (##vector-length _g92190_)
                                   1)))
                          (if (not (##fx= _g92191_ 3))
                              (error "Context expects 3 values" _g92191_)))
                        (let ((_pre90770_ (##vector-ref _g92190_ 0))
                              (_ns90771_ (##vector-ref _g92190_ 1))
                              (_pkg90772_ (##vector-ref _g92190_ 2)))
                          (let* ((_prelude90774_
                                  (gx#import-module__0 _pre90770_))
                                 (_read-module-body90828_
                                  (let ((_$e90820_
                                         (find (lambda (_e9077590777_)
                                                 (let* ((_g9077990789_
                                                         _e9077590777_)
                                                        (_else9078190797_
                                                         (lambda () '#f))
                                                        (_K9078390801_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9077990789_
                                                        'gx#module-export::t)
                                                       (let* ((_e9078490804_
                                                               (##unchecked-structure-ref
                                                                _g9077990789_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9078590807_
                                                               (##unchecked-structure-ref
                                                                _g9077990789_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9078690810_
                                                               (##unchecked-structure-ref
                                                                _g9077990789_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9078690810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9078790813_
                            (##unchecked-structure-ref
                             _g9077990789_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9081590817_)
                              (eq? _g9081590817_ 'read-module-body))
                            _e9078790813_)
                           (_K9078390801_)
                           (_else9078190797_)))
                     (_else9078190797_)))
               (_else9078190797_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude90774_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e90820_
                                        ((lambda (_xport90823_)
                                           (let ((_proc90826_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport90823_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc90826_)
                                                 _proc90826_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path90680_
                                                  _pre90770_
                                                  _proc90826_))))
                                         _$e90820_)
                                        _default-read-module-body90682_)))
                                 (_path-id90830_
                                  (gx#core-module-path->namespace _path90680_))
                                 (_pkg-id90832_
                                  (if _pkg90772_
                                      (string-append
                                       _pkg90772_
                                       '"/"
                                       _path-id90830_)
                                      _path-id90830_))
                                 (_module-id90834_
                                  (string->symbol _pkg-id90832_))
                                 (_module-ns90839_
                                  (let ((_$e90836_ _ns90771_))
                                    (if _$e90836_ _$e90836_ _pkg-id90832_)))
                                 (_body90842_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body90828_ _inp90764_))
                                   gx#current-module-reader-path
                                   _path90680_
                                   gx#current-module-reader-args
                                   _args90768_)))
                            (values _prelude90774_
                                    _module-id90834_
                                    _module-ns90839_
                                    _body90842_)))))))
                 (_string-e90684_
                  (lambda (_obj90761_ _what90762_)
                    (if (string? _obj90761_)
                        _obj90761_
                        (if (symbol? _obj90761_)
                            (symbol->string _obj90761_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what90762_)
                             _path90680_
                             _obj90761_)))))
                 (_read-lang-args90685_
                  (lambda (_inp90716_ _args90717_)
                    (let* ((_args9071890726_ _args90717_)
                           (_else9072090734_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path90680_)))
                           (_K9072290749_
                            (lambda (_args90737_ _prelude90738_)
                              (let* ((_pkg90740_
                                      (pgetq__0 'package: _args90737_))
                                     (_pkg90742_
                                      (if _pkg90740_
                                          (_string-e90684_
                                           _pkg90740_
                                           '"package")
                                          '#f))
                                     (_ns90744_
                                      (pgetq__0 'namespace: _args90737_))
                                     (_ns90746_
                                      (if _ns90744_
                                          (_string-e90684_
                                           _ns90744_
                                           '"namespace")
                                          '#f)))
                                (_read-body90683_
                                 _inp90716_
                                 _prelude90738_
                                 _ns90746_
                                 _pkg90742_
                                 _args90737_)))))
                      (if (##pair? _args9071890726_)
                          (let ((_hd9072390752_ (##car _args9071890726_))
                                (_tl9072490754_ (##cdr _args9071890726_)))
                            (let* ((_prelude90757_ _hd9072390752_)
                                   (_args90759_ _tl9072490754_))
                              (_K9072290749_ _args90759_ _prelude90757_)))
                          (_else9072090734_)))))
                 (_read-lang90686_
                  (lambda (_inp90691_)
                    (let* ((_head90693_ (read-line _inp90691_))
                           (_$e90695_ (string-index__0 _head90693_ '#\space)))
                      (if _$e90695_
                          ((lambda (_ix90698_)
                             (let ((_lang90700_
                                    (substring _head90693_ '0 _ix90698_)))
                               (if (equal? _lang90700_ '"#lang")
                                   (let* ((_rest90702_
                                           (substring
                                            _head90693_
                                            (fx+ _ix90698_ '1)
                                            (string-length _head90693_)))
                                          (_args90713_
                                           (with-catch
                                            (lambda (_g9070390705_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path90680_
                                               _g9070390705_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest90702_
                                               (lambda (_g9070890710_)
                                                 (read-all
                                                  _g9070890710_
                                                  read)))))))
                                     (_read-lang-args90685_
                                      _inp90691_
                                      _args90713_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path90680_))))
                           _$e90695_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path90680_)))))
                 (_read-e90687_
                  (lambda (_inp90689_)
                    (if (eq? (peek-char _inp90689_) '#\#)
                        (_read-lang90686_ _inp90689_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path90680_)))))
          (gx#call-with-input-source-file _path90680_ _read-e90687_))))
    (define gx#core-read-module-package
      (lambda (_path90634_ _pre90635_ _ns90636_)
        (letrec ((_string-e90638_
                  (lambda (_e90678_)
                    (if (symbol? _e90678_)
                        (symbol->string _e90678_)
                        (if (string? _e90678_)
                            _e90678_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e90678_))))))
          (let _lp90640_ ((_dir90642_ (path-directory _path90634_))
                          (_pkg-path90643_ '()))
            (let ((_gerbil.pkg90645_ (path-expand '"gerbil.pkg" _dir90642_)))
              (if (file-exists? _gerbil.pkg90645_)
                  (let ((_plist90647_
                         (gx#core-library-package-plist__% _dir90642_ '#t)))
                    (if (null? _plist90647_)
                        (let ((_pkg90649_
                               (if (not (null? _pkg-path90643_))
                                   (string-join _pkg-path90643_ '"/")
                                   '#f)))
                          (values _pre90635_ _ns90636_ _pkg90649_))
                        (if (list? _plist90647_)
                            (let* ((_root90651_
                                    (pgetq__0 'package: _plist90647_))
                                   (_pkg90655_
                                    (let ((_pkg-path90653_
                                           (if _root90651_
                                               (cons (_string-e90638_
                                                      _root90651_)
                                                     _pkg-path90643_)
                                               _pkg-path90643_)))
                                      (if (not (null? _pkg-path90653_))
                                          (string-join _pkg-path90653_ '"/")
                                          '#f)))
                                   (_ns90662_
                                    (let ((_ns90660_
                                           (let ((_$e90657_ _ns90636_))
                                             (if _$e90657_
                                                 _$e90657_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist90647_)))))
                                      (if _ns90660_
                                          (_string-e90638_ _ns90660_)
                                          '#f)))
                                   (_pre90667_
                                    (let ((_$e90664_ _pre90635_))
                                      (if _$e90664_
                                          _$e90664_
                                          (pgetq__0 'prelude: _plist90647_)))))
                              (values _pre90667_ _ns90662_ _pkg90655_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist90647_))))
                  (let ((_dir*90670_
                         (path-strip-trailing-directory-separator _dir90642_)))
                    (if (or (string-empty? _dir*90670_)
                            (equal? _dir90642_ _dir*90670_))
                        (values _pre90635_ _ns90636_ '#f)
                        (let ((_xpath90675_ (path-strip-directory _dir*90670_))
                              (_xdir90676_ (path-directory _dir*90670_)))
                          (_lp90640_
                           _xdir90676_
                           (cons _xpath90675_ _pkg-path90643_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path90632_)
        (path-strip-extension (path-strip-directory _path90632_))))
    (define gx#core-module-path->id
      (lambda (_path90630_)
        (string->symbol (gx#core-module-path->namespace _path90630_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path90609_ _rel90610_)
        (let* ((_path90612_ (gx#stx-e _stx-path90609_))
               (_path90614_
                (if (string-empty? (path-extension _path90612_))
                    (string-append _path90612_ '".ss")
                    _path90612_)))
          (gx#core-resolve-path__%
           _path90614_
           (let ((_$e90617_ (gx#stx-source _stx-path90609_)))
             (if _$e90617_ _$e90617_ _rel90610_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path90623_)
        (let ((_rel90625_ '#f))
          (gx#core-resolve-module-path__% _stx-path90623_ _rel90625_))))
    (define gx#core-resolve-module-path
      (lambda _g92193_
        (let ((_g92192_ (##length _g92193_)))
          (cond ((##fx= _g92192_ 1)
                 (apply (lambda (_stx-path90623_)
                          (gx#core-resolve-module-path__0 _stx-path90623_))
                        _g92193_))
                ((##fx= _g92192_ 2)
                 (apply (lambda (_stx-path90627_ _rel90628_)
                          (gx#core-resolve-module-path__%
                           _stx-path90627_
                           _rel90628_))
                        _g92193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g92193_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath90495_)
        (let* ((_spath90497_ (symbol->string (gx#stx-e _libpath90495_)))
               (_spath90499_
                (substring _spath90497_ '1 (string-length _spath90497_)))
               (_ext90501_ (path-extension _spath90499_))
               (_ssi90503_
                (if (string-empty? _ext90501_)
                    (string-append _spath90499_ '".ssi")
                    (string-append
                     (path-strip-extension _spath90499_)
                     '".ssi")))
               (_srcs90507_
                (if (string-empty? _ext90501_)
                    (map (lambda (_ext90505_)
                           (string-append _spath90499_ _ext90505_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath90499_ '()))))
          (let _lp90510_ ((_rest90512_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest9051390522_ _rest90512_)
                   (_E9051690526_
                    (lambda ()
                      (error '"No clause matching" _rest9051390522_))))
              (let ((_K9051890596_
                     (lambda (_rest90537_ _dir90538_)
                       (letrec ((_resolve90540_
                                 (lambda (_ssi90552_ _srcs90553_)
                                   (let ((_compiled-path90555_
                                          (path-expand _ssi90552_ _dir90538_)))
                                     (if (file-exists? _compiled-path90555_)
                                         (path-normalize _compiled-path90555_)
                                         (let _lpr90557_ ((_rest-src90559_
                                                           _srcs90553_))
                                           (let* ((_rest-src9056090568_
                                                   _rest-src90559_)
                                                  (_else9056290576_
                                                   (lambda ()
                                                     (_lp90510_ _rest90537_)))
                                                  (_K9056490584_
                                                   (lambda (_rest-src90579_
                                                            _src90580_)
                                                     (let ((_src-path90582_
                                                            (path-expand
                                                             _src90580_
                                                             _dir90538_)))
                                                       (if (file-exists?
                                                            _src-path90582_)
                                                           (path-normalize
                                                            _src-path90582_)
                                                           (_lpr90557_
                                                            _rest-src90579_))))))
                                             (if (##pair? _rest-src9056090568_)
                                                 (let ((_hd9056590587_
                                                        (##car _rest-src9056090568_))
                                                       (_tl9056690589_
                                                        (##cdr _rest-src9056090568_)))
                                                   (let* ((_src90592_
                                                           _hd9056590587_)
                                                          (_rest-src90594_
                                                           _tl9056690589_))
                                                     (_K9056490584_
                                                      _rest-src90594_
                                                      _src90592_)))
                                                 (_else9056290576_)))))))))
                         (let ((_$e90542_
                                (gx#core-library-package-path-prefix
                                 _dir90538_)))
                           (if _$e90542_
                               ((lambda (_prefix90545_)
                                  (if (string-prefix?
                                       _prefix90545_
                                       _spath90499_)
                                      (let ((_ssi90549_
                                             (substring
                                              _ssi90503_
                                              (string-length _prefix90545_)
                                              (string-length _ssi90503_)))
                                            (_srcs90550_
                                             (map (lambda (_src90547_)
                                                    (substring
                                                     _src90547_
                                                     (string-length
                                                      _prefix90545_)
                                                     (string-length
                                                      _src90547_)))
                                                  _srcs90507_)))
                                        (_resolve90540_
                                         _ssi90549_
                                         _srcs90550_))
                                      (_lp90510_ _rest90537_)))
                                _$e90542_)
                               (_resolve90540_ _ssi90503_ _srcs90507_))))))
                    (_K9051790531_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath90495_))))
                (let ((_try-match9051590534_
                       (lambda ()
                         (if (##null? _rest9051390522_)
                             (_K9051790531_)
                             (_E9051690526_)))))
                  (if (##pair? _rest9051390522_)
                      (let ((_tl9052090601_ (##cdr _rest9051390522_))
                            (_hd9051990599_ (##car _rest9051390522_)))
                        (let ((_dir90604_ _hd9051990599_)
                              (_rest90606_ _tl9052090601_))
                          (_K9051890596_ _rest90606_ _dir90604_)))
                      (_try-match9051590534_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath90468_)
        (letrec ((_resolve90470_
                  (lambda (_path90487_ _base90488_)
                    (let ((_$e90490_ (string-rindex__0 _base90488_ '#\/)))
                      (if _$e90490_
                          ((lambda (_idx90493_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base90488_ '0 _idx90493_)
                                '"/"
                                _path90487_))))
                           _$e90490_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path90487_))))))))
          (let ((_spath90472_ (symbol->string (gx#stx-e _modpath90468_)))
                (_mod90473_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod90473_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath90468_))
            (let ((_mpath90475_
                   (symbol->string
                    (##structure-ref
                     _mod90473_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp90477_ ((_spath90479_ _spath90472_)
                              (_mpath90480_ _mpath90475_))
                (if (string-prefix? '"../" _spath90479_)
                    (let ((_$e90482_ (string-rindex__0 _mpath90480_ '#\/)))
                      (if _$e90482_
                          ((lambda (_idx90485_)
                             (_lp90477_
                              (substring
                               _spath90479_
                               '3
                               (string-length _spath90479_))
                              (substring _mpath90480_ '0 _idx90485_)))
                           _$e90482_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath90468_)))
                    (if (string-prefix? '"./" _spath90479_)
                        (_lp90477_
                         (substring
                          _spath90479_
                          '2
                          (string-length _spath90479_))
                         _mpath90480_)
                        (_resolve90470_ _spath90479_ _mpath90480_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir90461_)
        (let ((_$e90463_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir90461_))))
          (if _$e90463_
              ((lambda (_pkg90466_)
                 (string-append (symbol->string _pkg90466_) '"/"))
               _$e90463_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir90433_ _exists?90434_)
        (let* ((_cache90436_ (gx#core-library-package-cache))
               (_$e90438_ (hash-get _cache90436_ _dir90433_)))
          (if _$e90438_
              (values _$e90438_)
              (let* ((_gerbil.pkg90441_ (path-expand '"gerbil.pkg" _dir90433_))
                     (_plist90448_
                      (if (or _exists?90434_ (file-exists? _gerbil.pkg90441_))
                          (let ((_e90446_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg90441_
                                  read)))
                            (if (eof-object? _e90446_)
                                '()
                                (if (list? _e90446_)
                                    _e90446_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg90441_
                                     _e90446_))))
                          '())))
                (hash-put! _cache90436_ _dir90433_ _plist90448_)
                _plist90448_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir90454_)
        (let ((_exists?90456_ '#f))
          (gx#core-library-package-plist__% _dir90454_ _exists?90456_))))
    (define gx#core-library-package-plist
      (lambda _g92195_
        (let ((_g92194_ (##length _g92195_)))
          (cond ((##fx= _g92194_ 1)
                 (apply (lambda (_dir90454_)
                          (gx#core-library-package-plist__0 _dir90454_))
                        _g92195_))
                ((##fx= _g92194_ 2)
                 (apply (lambda (_dir90458_ _exists?90459_)
                          (gx#core-library-package-plist__%
                           _dir90458_
                           _exists?90459_))
                        _g92195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g92195_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e90427_ (gx#current-expander-module-library-package-cache)))
          (if _$e90427_
              (values _$e90427_)
              (let ((_cache90430_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache90430_)
                _cache90430_)))))
    (define gx#core-library-module-path?
      (lambda (_stx90424_) (gx#core-special-module-path? _stx90424_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx90422_) (gx#core-special-module-path? _stx90422_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx90417_ _char90418_)
        (if (gx#identifier? _stx90417_)
            (if (interned-symbol? (gx#stx-e _stx90417_))
                (let ((_str90420_ (symbol->string (gx#stx-e _stx90417_))))
                  (if (fx> (string-length _str90420_) '1)
                      (eq? (string-ref _str90420_ '0) _char90418_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx90411_)
        (gx#core-bound-identifier?__%
         _stx90411_
         (lambda (_g9041290414_)
           (gx#expander-binding?__% _g9041290414_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx90405_)
        (gx#core-bound-identifier?__%
         _stx90405_
         (lambda (_g9040690408_)
           (gx#expander-binding?__% _g9040690408_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx90392_)
        (letrec ((_module-prelude?90394_
                  (lambda (_e90400_)
                    (let ((_$e90402_
                           (##structure-instance-of?
                            _e90400_
                            'gx#module-context::t)))
                      (if _$e90402_
                          _$e90402_
                          (##structure-instance-of?
                           _e90400_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx90392_
           (lambda (_g9039590397_)
             (gx#expander-binding?__%
              _g9039590397_
              _module-prelude?90394_))))))
    (define gx#core-bind-import!__%
      (lambda (_in90322_ _ctx90323_ _force-weak?90324_)
        (let* ((_in9032590334_ _in90322_)
               (_E9032790338_
                (lambda () (error '"No clause matching" _in9032590334_)))
               (_K9032890351_
                (lambda (_weak?90341_ _phi90342_ _key90343_ _source90344_)
                  (gx#core-bind!__%
                   _key90343_
                   (let ((_e90346_
                          (gx#core-resolve-module-export _source90344_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e90346_ '1 gx#binding::t '#f)
                      _key90343_
                      _phi90342_
                      _e90346_
                      (##unchecked-structure-ref
                       _source90344_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e90348_ _force-weak?90324_))
                        (if _$e90348_ _$e90348_ _weak?90341_))))
                   gx#core-context-rebind?
                   _phi90342_
                   _ctx90323_))))
          (if (##structure-direct-instance-of?
               _in9032590334_
               'gx#module-import::t)
              (let* ((_e9032990354_
                      (##unchecked-structure-ref
                       _in9032590334_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source90357_ _e9032990354_)
                     (_e9033090359_
                      (##unchecked-structure-ref
                       _in9032590334_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key90362_ _e9033090359_)
                     (_e9033190364_
                      (##unchecked-structure-ref
                       _in9032590334_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi90367_ _e9033190364_)
                     (_e9033290369_
                      (##unchecked-structure-ref
                       _in9032590334_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?90372_ _e9033290369_))
                (_K9032890351_
                 _weak?90372_
                 _phi90367_
                 _key90362_
                 _source90357_))
              (_E9032790338_)))))
    (define gx#core-bind-import!__0
      (lambda (_in90377_)
        (let* ((_ctx90379_ (gx#current-expander-context))
               (_force-weak?90381_ '#f))
          (gx#core-bind-import!__% _in90377_ _ctx90379_ _force-weak?90381_))))
    (define gx#core-bind-import!__1
      (lambda (_in90383_ _ctx90384_)
        (let ((_force-weak?90386_ '#f))
          (gx#core-bind-import!__% _in90383_ _ctx90384_ _force-weak?90386_))))
    (define gx#core-bind-import!
      (lambda _g92197_
        (let ((_g92196_ (##length _g92197_)))
          (cond ((##fx= _g92196_ 1)
                 (apply (lambda (_in90377_)
                          (gx#core-bind-import!__0 _in90377_))
                        _g92197_))
                ((##fx= _g92196_ 2)
                 (apply (lambda (_in90383_ _ctx90384_)
                          (gx#core-bind-import!__1 _in90383_ _ctx90384_))
                        _g92197_))
                ((##fx= _g92196_ 3)
                 (apply (lambda (_in90388_ _ctx90389_ _force-weak?90390_)
                          (gx#core-bind-import!__%
                           _in90388_
                           _ctx90389_
                           _force-weak?90390_))
                        _g92197_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g92197_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in90308_ _ctx90309_)
        (gx#core-bind-import!__% _in90308_ _ctx90309_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in90314_)
        (let ((_ctx90316_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in90314_ _ctx90316_))))
    (define gx#core-bind-weak-import!
      (lambda _g92199_
        (let ((_g92198_ (##length _g92199_)))
          (cond ((##fx= _g92198_ 1)
                 (apply (lambda (_in90314_)
                          (gx#core-bind-weak-import!__0 _in90314_))
                        _g92199_))
                ((##fx= _g92198_ 2)
                 (apply (lambda (_in90318_ _ctx90319_)
                          (gx#core-bind-weak-import!__% _in90318_ _ctx90319_))
                        _g92199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g92199_))))))
    (define gx#core-resolve-module-export
      (lambda (_out90199_)
        (letrec ((_subst90201_
                  (lambda (_key90247_)
                    (let* ((_key9024890256_ _key90247_)
                           (_else9025090264_ (lambda () _key90247_))
                           (_K9025290295_
                            (lambda (_mark90267_ _id90268_)
                              (let* ((_mark9026990275_ _mark90267_)
                                     (_E9027190279_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9026990275_)))
                                     (_K9027290287_
                                      (lambda (_subst90282_)
                                        (let ((_$e90284_
                                               (if _subst90282_
                                                   (hash-get
                                                    _subst90282_
                                                    _id90268_)
                                                   '#f)))
                                          (if _$e90284_
                                              _$e90284_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key90247_))))))
                                (if (##structure-instance-of?
                                     _mark9026990275_
                                     'gx#expander-mark::t)
                                    (let* ((_e9027390290_
                                            (##unchecked-structure-ref
                                             _mark9026990275_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst90293_ _e9027390290_))
                                      (_K9027290287_ _subst90293_))
                                    (_E9027190279_))))))
                      (if (##pair? _key9024890256_)
                          (let ((_hd9025390298_ (##car _key9024890256_))
                                (_tl9025490300_ (##cdr _key9024890256_)))
                            (let* ((_id90303_ _hd9025390298_)
                                   (_mark90305_ _tl9025490300_))
                              (_K9025290295_ _mark90305_ _id90303_)))
                          (_else9025090264_))))))
          (let* ((_out9020290212_ _out90199_)
                 (_E9020490216_
                  (lambda () (error '"No clause matching" _out9020290212_)))
                 (_K9020590223_
                  (lambda (_phi90219_ _key90220_ _ctx90221_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx90221_ _phi90219_)
                     (_subst90201_ _key90220_)))))
            (if (##structure-direct-instance-of?
                 _out9020290212_
                 'gx#module-export::t)
                (let* ((_e9020690226_
                        (##unchecked-structure-ref
                         _out9020290212_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx90229_ _e9020690226_)
                       (_e9020790231_
                        (##unchecked-structure-ref
                         _out9020290212_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key90234_ _e9020790231_)
                       (_e9020890236_
                        (##unchecked-structure-ref
                         _out9020290212_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi90239_ _e9020890236_)
                       (_e9020990241_
                        (##unchecked-structure-ref
                         _out9020290212_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9021090244_
                        (##unchecked-structure-ref
                         _out9020290212_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9020590223_ _phi90239_ _key90234_ _ctx90229_))
                (_E9020490216_))))))
    (define gx#core-module-export->import__%
      (lambda (_out90124_ _rename90125_ _dphi90126_)
        (let* ((_out9012790137_ _out90124_)
               (_E9012990141_
                (lambda () (error '"No clause matching" _out9012790137_)))
               (_K9013090153_
                (lambda (_weak?90144_
                         _name90145_
                         _phi90146_
                         _key90147_
                         _ctx90148_)
                  (##structure
                   gx#module-import::t
                   _out90124_
                   (let ((_$e90150_ _rename90125_))
                     (if _$e90150_ _$e90150_ _name90145_))
                   (fx+ _phi90146_ _dphi90126_)
                   _weak?90144_))))
          (if (##structure-direct-instance-of?
               _out9012790137_
               'gx#module-export::t)
              (let* ((_e9013190156_
                      (##unchecked-structure-ref
                       _out9012790137_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx90159_ _e9013190156_)
                     (_e9013290161_
                      (##unchecked-structure-ref
                       _out9012790137_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key90164_ _e9013290161_)
                     (_e9013390166_
                      (##unchecked-structure-ref
                       _out9012790137_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi90169_ _e9013390166_)
                     (_e9013490171_
                      (##unchecked-structure-ref
                       _out9012790137_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name90174_ _e9013490171_)
                     (_e9013590176_
                      (##unchecked-structure-ref
                       _out9012790137_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?90179_ _e9013590176_))
                (_K9013090153_
                 _weak?90179_
                 _name90174_
                 _phi90169_
                 _key90164_
                 _ctx90159_))
              (_E9012990141_)))))
    (define gx#core-module-export->import__0
      (lambda (_out90184_)
        (let* ((_rename90186_ '#f) (_dphi90188_ '0))
          (gx#core-module-export->import__%
           _out90184_
           _rename90186_
           _dphi90188_))))
    (define gx#core-module-export->import__1
      (lambda (_out90190_ _rename90191_)
        (let ((_dphi90193_ '0))
          (gx#core-module-export->import__%
           _out90190_
           _rename90191_
           _dphi90193_))))
    (define gx#core-module-export->import
      (lambda _g92201_
        (let ((_g92200_ (##length _g92201_)))
          (cond ((##fx= _g92200_ 1)
                 (apply (lambda (_out90184_)
                          (gx#core-module-export->import__0 _out90184_))
                        _g92201_))
                ((##fx= _g92200_ 2)
                 (apply (lambda (_out90190_ _rename90191_)
                          (gx#core-module-export->import__1
                           _out90190_
                           _rename90191_))
                        _g92201_))
                ((##fx= _g92200_ 3)
                 (apply (lambda (_out90195_ _rename90196_ _dphi90197_)
                          (gx#core-module-export->import__%
                           _out90195_
                           _rename90196_
                           _dphi90197_))
                        _g92201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g92201_))))))
    (define gx#core-expand-module%
      (lambda (_stx90052_)
        (letrec ((_make-context90054_
                  (lambda (_id90105_)
                    (let* ((_super90107_ (gx#current-expander-context))
                           (_bind-id90109_ (gx#stx-e _id90105_))
                           (_mod-id90111_
                            (if (##structure-instance-of?
                                 _super90107_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super90107_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id90109_)
                                _bind-id90109_))
                           (_ns90113_ (symbol->string _mod-id90111_))
                           (_path90120_
                            (if (##structure-instance-of?
                                 _super90107_
                                 'gx#module-context::t)
                                (let ((_path90115_
                                       (##unchecked-structure-ref
                                        _super90107_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path90115_)
                                          (null? _path90115_))
                                      (cons _bind-id90109_ _path90115_)
                                      (if (not _path90115_)
                                          _bind-id90109_
                                          (cons _bind-id90109_
                                                (cons _path90115_ '())))))
                                _bind-id90109_)))
                      (let ((__obj92177
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
                         __obj92177
                         _mod-id90111_
                         _super90107_
                         _ns90113_
                         _path90120_)
                        __obj92177)))))
          (let* ((_e9005590065_ _stx90052_)
                 (_E9005790069_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9005590065_)))
                 (_E9005690101_
                  (lambda ()
                    (if (gx#stx-pair? _e9005590065_)
                        (let ((_e9005890073_ (gx#syntax-e _e9005590065_)))
                          (let ((_hd9005990076_ (##car _e9005890073_))
                                (_tl9006090078_ (##cdr _e9005890073_)))
                            (if (gx#stx-pair? _tl9006090078_)
                                (let ((_e9006190081_
                                       (gx#syntax-e _tl9006090078_)))
                                  (let ((_hd9006290084_ (##car _e9006190081_))
                                        (_tl9006390086_ (##cdr _e9006190081_)))
                                    (let* ((_id90089_ _hd9006290084_)
                                           (_body90091_ _tl9006390086_))
                                      (if (and (gx#identifier? _id90089_)
                                               (gx#stx-list? _body90091_))
                                          (let* ((_ctx90093_
                                                  (_make-context90054_
                                                   _id90089_))
                                                 (_body90095_
                                                  (gx#core-expand-module-begin
                                                   _body90091_
                                                   _ctx90093_))
                                                 (_body90097_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90095_)
                                                   (gx#stx-source
                                                    _stx90052_))))
                                            (##unchecked-structure-set!
                                             _ctx90093_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body90097_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx90093_
                                             _body90097_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id90089_
                                             _ctx90093_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id90089_)
                                              _body90097_)
                                             (gx#stx-source _stx90052_)))
                                          (_E9005790069_)))))
                                (_E9005790069_))))
                        (_E9005790069_)))))
            (_E9005690101_)))))
    (define gx#core-expand-module-begin
      (lambda (_body90018_ _ctx90019_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx90022_
                   (gx#core-expand-head (cons '%%begin-module _body90018_)))
                  (_e9002390030_ _stx90022_)
                  (_E9002590034_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx90022_)))
                  (_E9002490048_
                   (lambda ()
                     (if (gx#stx-pair? _e9002390030_)
                         (let ((_e9002690038_ (gx#syntax-e _e9002390030_)))
                           (let ((_hd9002790041_ (##car _e9002690038_))
                                 (_tl9002890043_ (##cdr _e9002690038_)))
                             (if (and (gx#identifier? _hd9002790041_)
                                      (gx#core-identifier=?
                                       _hd9002790041_
                                       '%#begin-module))
                                 (let ((_body90046_ _tl9002890043_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx90022_)
                                           _body90046_
                                           (gx#core-expand-module-body
                                            _body90046_))
                                       (_E9002590034_)))
                                 (_E9002590034_))))
                         (_E9002590034_)))))
             (_E9002490048_)))
         gx#current-expander-context
         _ctx90019_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body89814_)
        (letrec ((_expand-special89816_
                  (lambda (_hd89945_ _K89946_ _rest89947_ _r89948_)
                    (let* ((_e8994989966_ _hd89945_)
                           (_E8996189970_
                            (lambda ()
                              (_K89946_
                               _rest89947_
                               (cons (gx#core-expand-top _hd89945_)
                                     _r89948_))))
                           (_E8995189982_
                            (lambda ()
                              (if (gx#stx-pair? _e8994989966_)
                                  (let ((_e8996289974_
                                         (gx#syntax-e _e8994989966_)))
                                    (let ((_hd8996389977_
                                           (##car _e8996289974_))
                                          (_tl8996489979_
                                           (##cdr _e8996289974_)))
                                      (if (and (gx#identifier? _hd8996389977_)
                                               (gx#core-identifier=?
                                                _hd8996389977_
                                                '%#export))
                                          (if '#t
                                              (_K89946_
                                               _rest89947_
                                               (cons _hd89945_ _r89948_))
                                              (_E8996189970_))
                                          (_E8996189970_))))
                                  (_E8996189970_))))
                           (_E8995090014_
                            (lambda ()
                              (if (gx#stx-pair? _e8994989966_)
                                  (let ((_e8995289986_
                                         (gx#syntax-e _e8994989966_)))
                                    (let ((_hd8995389989_
                                           (##car _e8995289986_))
                                          (_tl8995489991_
                                           (##cdr _e8995289986_)))
                                      (if (and (gx#identifier? _hd8995389989_)
                                               (gx#core-identifier=?
                                                _hd8995389989_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8995489991_)
                                              (let ((_e8995589994_
                                                     (gx#syntax-e
                                                      _tl8995489991_)))
                                                (let ((_hd8995689997_
                                                       (##car _e8995589994_))
                                                      (_tl8995789999_
                                                       (##cdr _e8995589994_)))
                                                  (let ((_hd-bind90002_
                                                         _hd8995689997_))
                                                    (if (gx#stx-pair?
                                                         _tl8995789999_)
                                                        (let ((_e8995890004_
                                                               (gx#syntax-e
                                                                _tl8995789999_)))
                                                          (let ((_hd8995990007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8995890004_))
                        (_tl8996090009_ (##cdr _e8995890004_)))
                    (let ((_expr90012_ _hd8995990007_))
                      (if (gx#stx-null? _tl8996090009_)
                          (if (gx#core-bind-values? _hd-bind90002_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90002_)
                                (_K89946_
                                 _rest89947_
                                 (cons _hd89945_ _r89948_)))
                              (_E8995189982_))
                          (_E8995189982_)))))
                (_E8995189982_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8995189982_))
                                          (_E8995189982_))))
                                  (_E8995189982_)))))
                      (_E8995090014_))))
                 (_expand-body89817_
                  (lambda (_rbody89819_)
                    (let _lp89821_ ((_rest89823_ _rbody89819_)
                                    (_body89824_ '()))
                      (let* ((_rest8982589833_ _rest89823_)
                             (_else8982789841_ (lambda () _body89824_))
                             (_K8982989933_
                              (lambda (_rest89844_ _hd89845_)
                                (let* ((_e8984689867_ _hd89845_)
                                       (_E8986289871_
                                        (lambda ()
                                          (_lp89821_
                                           _rest89844_
                                           (cons (gx#core-expand-expression
                                                  _hd89845_)
                                                 _body89824_))))
                                       (_E8985889885_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8984689867_)
                                              (let ((_e8986389875_
                                                     (gx#syntax-e
                                                      _e8984689867_)))
                                                (let ((_hd8986489878_
                                                       (##car _e8986389875_))
                                                      (_tl8986589880_
                                                       (##cdr _e8986389875_)))
                                                  (let ((_form89883_
                                                         _hd8986489878_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form89883_
                                                         gx#special-form-binding?)
                                                        (_lp89821_
                                                         _rest89844_
                                                         (cons _hd89845_
                                                               _body89824_))
                                                        (_E8986289871_)))))
                                              (_E8986289871_))))
                                       (_E8984889897_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8984689867_)
                                              (let ((_e8985989889_
                                                     (gx#syntax-e
                                                      _e8984689867_)))
                                                (let ((_hd8986089892_
                                                       (##car _e8985989889_))
                                                      (_tl8986189894_
                                                       (##cdr _e8985989889_)))
                                                  (if (and (gx#identifier?
                                                            _hd8986089892_)
                                                           (gx#core-identifier=?
                                                            _hd8986089892_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp89821_
                                                           _rest89844_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd89845_)
                         _body89824_))
                  (_E8985889885_))
              (_E8985889885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8985889885_))))
                                       (_E8984789929_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8984689867_)
                                              (let ((_e8984989901_
                                                     (gx#syntax-e
                                                      _e8984689867_)))
                                                (let ((_hd8985089904_
                                                       (##car _e8984989901_))
                                                      (_tl8985189906_
                                                       (##cdr _e8984989901_)))
                                                  (if (and (gx#identifier?
                                                            _hd8985089904_)
                                                           (gx#core-identifier=?
                                                            _hd8985089904_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8985189906_)
                                                          (let ((_e8985289909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8985189906_)))
                    (let ((_hd8985389912_ (##car _e8985289909_))
                          (_tl8985489914_ (##cdr _e8985289909_)))
                      (let ((_hd-bind89917_ _hd8985389912_))
                        (if (gx#stx-pair? _tl8985489914_)
                            (let ((_e8985589919_ (gx#syntax-e _tl8985489914_)))
                              (let ((_hd8985689922_ (##car _e8985589919_))
                                    (_tl8985789924_ (##cdr _e8985589919_)))
                                (let ((_expr89927_ _hd8985689922_))
                                  (if (gx#stx-null? _tl8985789924_)
                                      (if '#t
                                          (_lp89821_
                                           _rest89844_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind89917_)
                                                   (gx#core-expand-expression
                                                    _expr89927_))
                                                  (gx#stx-source _hd89845_))
                                                 _body89824_))
                                          (_E8984889897_))
                                      (_E8984889897_)))))
                            (_E8984889897_)))))
                  (_E8984889897_))
              (_E8984889897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8984889897_)))))
                                  (_E8984789929_)))))
                        (if (##pair? _rest8982589833_)
                            (let ((_hd8983089936_ (##car _rest8982589833_))
                                  (_tl8983189938_ (##cdr _rest8982589833_)))
                              (let* ((_hd89941_ _hd8983089936_)
                                     (_rest89943_ _tl8983189938_))
                                (_K8982989933_ _rest89943_ _hd89941_)))
                            (_else8982789841_)))))))
          (_expand-body89817_
           (gx#core-expand-block__%
            (cons '%#begin-module _body89814_)
            _expand-special89816_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx89657_
               _expanded?89658_
               _method89659_
               _current-phi89660_
               _expand189661_)
        (letrec ((_K89663_
                  (lambda (_rest89781_ _r89782_)
                    (let* ((_e8978389790_ _rest89781_)
                           (_E8978589794_ (lambda () _r89782_))
                           (_E8978489810_
                            (lambda ()
                              (if (gx#stx-pair? _e8978389790_)
                                  (let ((_e8978689798_
                                         (gx#syntax-e _e8978389790_)))
                                    (let ((_hd8978789801_
                                           (##car _e8978689798_))
                                          (_tl8978889803_
                                           (##cdr _e8978689798_)))
                                      (let* ((_hd89806_ _hd8978789801_)
                                             (_rest89808_ _tl8978889803_))
                                        (if '#t
                                            (_step89664_
                                             _hd89806_
                                             _rest89808_
                                             _r89782_)
                                            (_E8978589794_)))))
                                  (_E8978589794_)))))
                      (_E8978489810_))))
                 (_step89664_
                  (lambda (_hd89695_ _rest89696_ _r89697_)
                    (let* ((_e8969889716_ _hd89695_)
                           (_E8971189720_
                            (lambda ()
                              (if (_expanded?89658_ (gx#stx-e _hd89695_))
                                  (_K89663_
                                   _rest89696_
                                   (cons (gx#stx-e _hd89695_) _r89697_))
                                  (_expand189661_
                                   _hd89695_
                                   _K89663_
                                   _rest89696_
                                   _r89697_))))
                           (_E8970789736_
                            (lambda ()
                              (if (gx#stx-pair? _e8969889716_)
                                  (let ((_e8971289724_
                                         (gx#syntax-e _e8969889716_)))
                                    (let ((_hd8971389727_
                                           (##car _e8971289724_))
                                          (_tl8971489729_
                                           (##cdr _e8971289724_)))
                                      (let* ((_macro89732_ _hd8971389727_)
                                             (_body89734_ _tl8971489729_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro89732_
                                             gx#syntax-binding?)
                                            (_K89663_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro89732_)
                                                    _hd89695_
                                                    _method89659_)
                                                   _rest89696_)
                                             _r89697_)
                                            (_E8971189720_)))))
                                  (_E8971189720_))))
                           (_E8970089750_
                            (lambda ()
                              (if (gx#stx-pair? _e8969889716_)
                                  (let ((_e8970889740_
                                         (gx#syntax-e _e8969889716_)))
                                    (let ((_hd8970989743_
                                           (##car _e8970889740_))
                                          (_tl8971089745_
                                           (##cdr _e8970889740_)))
                                      (if (eq? (gx#stx-e _hd8970989743_)
                                               'begin:)
                                          (let ((_body89748_ _tl8971089745_))
                                            (if '#t
                                                (_K89663_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest89696_
                                                  _body89748_)
                                                 _r89697_)
                                                (_E8970789736_)))
                                          (_E8970789736_))))
                                  (_E8970789736_))))
                           (_E8969989777_
                            (lambda ()
                              (if (gx#stx-pair? _e8969889716_)
                                  (let ((_e8970189754_
                                         (gx#syntax-e _e8969889716_)))
                                    (let ((_hd8970289757_
                                           (##car _e8970189754_))
                                          (_tl8970389759_
                                           (##cdr _e8970189754_)))
                                      (if (eq? (gx#stx-e _hd8970289757_) 'phi:)
                                          (if (gx#stx-pair? _tl8970389759_)
                                              (let ((_e8970489762_
                                                     (gx#syntax-e
                                                      _tl8970389759_)))
                                                (let ((_hd8970589765_
                                                       (##car _e8970489762_))
                                                      (_tl8970689767_
                                                       (##cdr _e8970489762_)))
                                                  (let* ((_dphi89770_
                                                          _hd8970589765_)
                                                         (_body89772_
                                                          _tl8970689767_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi89770_)
                                                        (let ((_rbody89775_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K89663_ _body89772_ '()))
                        _current-phi89660_
                        (fx+ (gx#stx-e _dphi89770_) (_current-phi89660_)))))
                  (_K89663_ _rest89696_ (foldr1 cons _r89697_ _rbody89775_)))
                (_E8970089750_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8970089750_))
                                          (_E8970089750_))))
                                  (_E8970089750_)))))
                      (_E8969989777_)))))
          (let* ((_e8966589672_ _stx89657_)
                 (_E8966789676_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8966589672_)))
                 (_E8966689691_
                  (lambda ()
                    (if (gx#stx-pair? _e8966589672_)
                        (let ((_e8966889680_ (gx#syntax-e _e8966589672_)))
                          (let ((_hd8966989683_ (##car _e8966889680_))
                                (_tl8967089685_ (##cdr _e8966889680_)))
                            (let ((_body89688_ _tl8967089685_))
                              (if '#t
                                  (if (_current-phi89660_)
                                      (_K89663_ _body89688_ '())
                                      (call-with-parameters
                                       (lambda () (_K89663_ _body89688_ '()))
                                       _current-phi89660_
                                       (gx#current-expander-phi)))
                                  (_E8966789676_)))))
                        (_E8966789676_)))))
            (_E8966689691_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx89324_ _internal-expand?89325_)
        (letrec ((_expand189327_
                  (lambda (_hd89637_ _K89638_ _rest89639_ _r89640_)
                    (if (gx#core-bound-module? _hd89637_)
                        (_import189328_
                         (gx#syntax-local-e__0 _hd89637_)
                         _K89638_
                         _rest89639_
                         _r89640_)
                        (if (gx#core-library-module-path? _hd89637_)
                            (_import189328_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd89637_))
                             _K89638_
                             _rest89639_
                             _r89640_)
                            (if (gx#core-library-relative-module-path?
                                 _hd89637_)
                                (_import189328_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd89637_))
                                 _K89638_
                                 _rest89639_
                                 _r89640_)
                                (let ((_e89642_ (gx#stx-e _hd89637_)))
                                  (if (pair? _e89642_)
                                      (let ((_$e89644_
                                             (gx#stx-e (car _e89642_))))
                                        (if (eq? 'spec: _$e89644_)
                                            (_import-spec89331_
                                             _hd89637_
                                             _K89638_
                                             _rest89639_
                                             _r89640_)
                                            (if (eq? 'in: _$e89644_)
                                                (_import-submodule89329_
                                                 _hd89637_
                                                 _K89638_
                                                 _rest89639_
                                                 _r89640_)
                                                (if (eq? 'runtime: _$e89644_)
                                                    (_import-runtime89330_
                                                     _hd89637_
                                                     _K89638_
                                                     _rest89639_
                                                     _r89640_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx89324_
                                                     _hd89637_)))))
                                      (if (string? _e89642_)
                                          (_import189328_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd89637_
                                             (gx#stx-source _stx89324_)))
                                           _K89638_
                                           _rest89639_
                                           _r89640_)
                                          (if (##structure-instance-of?
                                               _e89642_
                                               'gx#module-context::t)
                                              (_K89638_
                                               _rest89639_
                                               (cons _e89642_ _r89640_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx89324_
                                               _hd89637_))))))))))
                 (_import189328_
                  (lambda (_ctx89626_ _K89627_ _rest89628_ _r89629_)
                    (let ((_dphi89631_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K89627_
                       _rest89628_
                       (cons (##structure
                              gx#import-set::t
                              _ctx89626_
                              _dphi89631_
                              (map (lambda (_g8963289634_)
                                     (gx#core-module-export->import__%
                                      _g8963289634_
                                      '#f
                                      _dphi89631_))
                                   (##unchecked-structure-ref
                                    _ctx89626_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r89629_)))))
                 (_import-submodule89329_
                  (lambda (_hd89593_ _K89594_ _rest89595_ _r89596_)
                    (let* ((_e8959789604_ _hd89593_)
                           (_E8959989608_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8959789604_)))
                           (_E8959889622_
                            (lambda ()
                              (if (gx#stx-pair? _e8959789604_)
                                  (let ((_e8960089612_
                                         (gx#syntax-e _e8959789604_)))
                                    (let ((_hd8960189615_
                                           (##car _e8960089612_))
                                          (_tl8960289617_
                                           (##cdr _e8960089612_)))
                                      (let ((_spath89620_ _tl8960289617_))
                                        (if '#t
                                            (_import189328_
                                             (_import-spec-source89332_
                                              _spath89620_)
                                             _K89594_
                                             _rest89595_
                                             _r89596_)
                                            (_E8959989608_)))))
                                  (_E8959989608_)))))
                      (_E8959889622_))))
                 (_import-runtime89330_
                  (lambda (_hd89560_ _K89561_ _rest89562_ _r89563_)
                    (let* ((_e8956489571_ _hd89560_)
                           (_E8956689575_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8956489571_)))
                           (_E8956589589_
                            (lambda ()
                              (if (gx#stx-pair? _e8956489571_)
                                  (let ((_e8956789579_
                                         (gx#syntax-e _e8956489571_)))
                                    (let ((_hd8956889582_
                                           (##car _e8956789579_))
                                          (_tl8956989584_
                                           (##cdr _e8956789579_)))
                                      (let ((_spath89587_ _tl8956989584_))
                                        (if '#t
                                            (_K89561_
                                             _rest89562_
                                             (cons (_import-spec-source89332_
                                                    _spath89587_)
                                                   _r89563_))
                                            (_E8956689575_)))))
                                  (_E8956689575_)))))
                      (_E8956589589_))))
                 (_import-spec89331_
                  (lambda (_hd89399_ _K89400_ _rest89401_ _r89402_)
                    (let* ((_e8940389420_ _hd89399_)
                           (_E8941289424_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8940389420_)))
                           (_E8940589534_
                            (lambda ()
                              (if (gx#stx-pair? _e8940389420_)
                                  (let ((_e8941389428_
                                         (gx#syntax-e _e8940389420_)))
                                    (let ((_hd8941489431_
                                           (##car _e8941389428_))
                                          (_tl8941589433_
                                           (##cdr _e8941389428_)))
                                      (if (gx#stx-pair? _tl8941589433_)
                                          (let ((_e8941689436_
                                                 (gx#syntax-e _tl8941589433_)))
                                            (let ((_hd8941789439_
                                                   (##car _e8941689436_))
                                                  (_tl8941889441_
                                                   (##cdr _e8941689436_)))
                                              (let* ((_path89444_
                                                      _hd8941789439_)
                                                     (_specs89446_
                                                      _tl8941889441_))
                                                (if '#t
                                                    (let ((_src-ctx89448_
                                                           (_import-spec-source89332_
                                                            _path89444_))
                                                          (_exports89449_
                                                           (make-hash-table))
                                                          (_specs89450_
                                                           (gx#syntax->list
                                                            _specs89446_)))
                                                      (for-each
                                                       (lambda (_out89452_)
                                                         (hash-put!
                                                          _exports89449_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out89452_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out89452_
                         '4
                         gx#module-export::t
                         '#f))
                  _out89452_))
               (##unchecked-structure-ref
                _src-ctx89448_
                '9
                gx#module-context::t
                '#f))
              (_K89400_
               _rest89401_
               (foldl1 (lambda (_spec89454_ _r89455_)
                         (let* ((_e8945689472_ _spec89454_)
                                (_E8945889476_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e8945689472_)))
                                (_E8945789530_
                                 (lambda ()
                                   (if (gx#stx-pair? _e8945689472_)
                                       (let ((_e8945989480_
                                              (gx#syntax-e _e8945689472_)))
                                         (let ((_hd8946089483_
                                                (##car _e8945989480_))
                                               (_tl8946189485_
                                                (##cdr _e8945989480_)))
                                           (let ((_phi89488_ _hd8946089483_))
                                             (if (gx#stx-pair? _tl8946189485_)
                                                 (let ((_e8946289490_
                                                        (gx#syntax-e
                                                         _tl8946189485_)))
                                                   (let ((_hd8946389493_
                                                          (##car _e8946289490_))
                                                         (_tl8946489495_
                                                          (##cdr _e8946289490_)))
                                                     (let ((_name89498_
                                                            _hd8946389493_))
                                                       (if (gx#stx-pair?
                                                            _tl8946489495_)
                                                           (let ((_e8946589500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl8946489495_)))
                     (let ((_hd8946689503_ (##car _e8946589500_))
                           (_tl8946789505_ (##cdr _e8946589500_)))
                       (let ((_src-phi89508_ _hd8946689503_))
                         (if (gx#stx-pair? _tl8946789505_)
                             (let ((_e8946889510_
                                    (gx#syntax-e _tl8946789505_)))
                               (let ((_hd8946989513_ (##car _e8946889510_))
                                     (_tl8947089515_ (##cdr _e8946889510_)))
                                 (let ((_src-name89518_ _hd8946989513_))
                                   (if (gx#stx-null? _tl8947089515_)
                                       (if (and (gx#stx-fixnum? _src-phi89508_)
                                                (gx#identifier?
                                                 _src-name89518_)
                                                (gx#stx-fixnum? _phi89488_)
                                                (gx#identifier? _name89498_))
                                           (let ((_src-phi89520_
                                                  (gx#stx-e _src-phi89508_))
                                                 (_src-name89521_
                                                  (gx#core-identifier-key
                                                   _src-name89518_))
                                                 (_phi89522_
                                                  (gx#stx-e _phi89488_))
                                                 (_name89523_
                                                  (gx#core-identifier-key
                                                   _name89498_)))
                                             (let ((_$e89525_
                                                    (hash-get
                                                     _exports89449_
                                                     (cons _src-phi89520_
                                                           _src-name89521_))))
                                               (if _$e89525_
                                                   ((lambda (_out89528_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out89528_
                                                             _name89523_
                                                             (fx- _phi89522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi89520_))
                    _r89455_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e89525_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx89324_
                                                    _hd89399_))))
                                           (_E8945889476_))
                                       (_E8945889476_)))))
                             (_E8945889476_)))))
                   (_E8945889476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E8945889476_)))))
                                       (_E8945889476_)))))
                           (_E8945789530_)))
                       _r89402_
                       _specs89450_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8941289424_)))))
                                          (_E8941289424_))))
                                  (_E8941289424_))))
                           (_E8940489556_
                            (lambda ()
                              (if (gx#stx-pair? _e8940389420_)
                                  (let ((_e8940689538_
                                         (gx#syntax-e _e8940389420_)))
                                    (let ((_hd8940789541_
                                           (##car _e8940689538_))
                                          (_tl8940889543_
                                           (##cdr _e8940689538_)))
                                      (if (gx#stx-pair? _tl8940889543_)
                                          (let ((_e8940989546_
                                                 (gx#syntax-e _tl8940889543_)))
                                            (let ((_hd8941089549_
                                                   (##car _e8940989546_))
                                                  (_tl8941189551_
                                                   (##cdr _e8940989546_)))
                                              (let ((_path89554_
                                                     _hd8941089549_))
                                                (if (gx#stx-null?
                                                     _tl8941189551_)
                                                    (if '#t
                                                        (_K89400_
                                                         _rest89401_
                                                         (cons (_import-spec-source89332_
                                                                _path89554_)
                                                               _r89402_))
                                                        (_E8940589534_))
                                                    (_E8940589534_)))))
                                          (_E8940589534_))))
                                  (_E8940589534_)))))
                      (_E8940489556_))))
                 (_import-spec-source89332_
                  (lambda (_spath89397_)
                    (gx#core-import-nested-module _spath89397_ _stx89324_)))
                 (_import!89333_
                  (lambda (_rbody89346_)
                    (letrec* ((_current-ctx89348_
                               (gx#current-expander-context))
                              (_deps89349_ (make-hash-table-eq))
                              (_bind!89350_
                               (lambda (_hd89395_)
                                 (gx#core-bind-import!__1
                                  _hd89395_
                                  _current-ctx89348_))))
                      (let _lp89352_ ((_rest89354_ _rbody89346_)
                                      (_body89355_ '()))
                        (let* ((_rest8935689364_ _rest89354_)
                               (_else8935889374_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx89348_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx89348_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx89348_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body89355_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx89372_ _g92202_)
                                     (gx#eval-module _ctx89372_))
                                   _deps89349_)
                                  _body89355_))
                               (_K8936089383_
                                (lambda (_rest89377_ _hd89378_)
                                  (if (##structure-direct-instance-of?
                                       _hd89378_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!89350_ _hd89378_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd89378_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd89378_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps89349_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd89378_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd89378_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!89350_
                                             (##unchecked-structure-ref
                                              _hd89378_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd89378_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps89349_
                                                 (##unchecked-structure-ref
                                                  _hd89378_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e89380_
                                                 (##structure-instance-of?
                                                  _hd89378_
                                                  'gx#module-context::t)))
                                            (if _$e89380_
                                                _$e89380_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx89324_
                                                 _hd89378_)))))
                                  (_lp89352_
                                   _rest89377_
                                   (cons _hd89378_ _body89355_)))))
                          (if (##pair? _rest8935689364_)
                              (let ((_hd8936189386_ (##car _rest8935689364_))
                                    (_tl8936289388_ (##cdr _rest8935689364_)))
                                (let* ((_hd89391_ _hd8936189386_)
                                       (_rest89393_ _tl8936289388_))
                                  (_K8936089383_ _rest89393_ _hd89391_)))
                              (_else8935889374_)))))))
                 (_expanded-import?89334_
                  (lambda (_e89338_)
                    (let ((_$e89340_
                           (##structure-direct-instance-of?
                            _e89338_
                            'gx#import-set::t)))
                      (if _$e89340_
                          _$e89340_
                          (let ((_$e89343_
                                 (##structure-direct-instance-of?
                                  _e89338_
                                  'gx#module-import::t)))
                            (if _$e89343_
                                _$e89343_
                                (##structure-instance-of?
                                 _e89338_
                                 'gx#module-context::t))))))))
          (let ((_rbody89336_
                 (gx#core-expand-import/export
                  _stx89324_
                  _expanded-import?89334_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand189327_)))
            (if _internal-expand?89325_
                (reverse _rbody89336_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!89333_ _rbody89336_))
                 (gx#stx-source _stx89324_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx89650_)
        (let ((_internal-expand?89652_ '#f))
          (gx#core-expand-import%__% _stx89650_ _internal-expand?89652_))))
    (define gx#core-expand-import%
      (lambda _g92204_
        (let ((_g92203_ (##length _g92204_)))
          (cond ((##fx= _g92203_ 1)
                 (apply (lambda (_stx89650_)
                          (gx#core-expand-import%__0 _stx89650_))
                        _g92204_))
                ((##fx= _g92203_ 2)
                 (apply (lambda (_stx89654_ _internal-expand?89655_)
                          (gx#core-expand-import%__%
                           _stx89654_
                           _internal-expand?89655_))
                        _g92204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g92204_))))))
    (define gx#core-import-nested-module
      (lambda (_spath89251_ _where89252_)
        (let* ((_e8925389260_ _spath89251_)
               (_E8925589264_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8925389260_)))
               (_E8925489319_
                (lambda ()
                  (if (gx#stx-pair? _e8925389260_)
                      (let ((_e8925689268_ (gx#syntax-e _e8925389260_)))
                        (let ((_hd8925789271_ (##car _e8925689268_))
                              (_tl8925889273_ (##cdr _e8925689268_)))
                          (let* ((_origin89276_ _hd8925789271_)
                                 (_sub89278_ _tl8925889273_))
                            (if '#t
                                (let ((_origin-ctx89280_
                                       (if (gx#stx-false? _origin89276_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin89276_))))
                                  (let _lp89282_ ((_rest89284_ _sub89278_)
                                                  (_ctx89285_
                                                   _origin-ctx89280_))
                                    (let* ((_e8928689293_ _rest89284_)
                                           (_E8928889297_
                                            (lambda () _ctx89285_))
                                           (_E8928789315_
                                            (lambda ()
                                              (if (gx#stx-pair? _e8928689293_)
                                                  (let ((_e8928989301_
                                                         (gx#syntax-e
                                                          _e8928689293_)))
                                                    (let ((_hd8929089304_
                                                           (##car _e8928989301_))
                                                          (_tl8929189306_
                                                           (##cdr _e8928989301_)))
                                                      (let* ((_id89309_
                                                              _hd8929089304_)
                                                             (_rest89311_
                                                              _tl8929189306_))
                                                        (if '#t
                                                            (let ((_bind89313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id89309_ '0 _ctx89285_)))
                      (if (and (##structure-direct-instance-of?
                                _bind89313_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind89313_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where89252_
                           _spath89251_
                           _id89309_))
                      (_lp89282_
                       _rest89311_
                       (##unchecked-structure-ref
                        _bind89313_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E8928889297_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8928889297_)))))
                                      (_E8928789315_))))
                                (_E8925589264_)))))
                      (_E8925589264_)))))
          (_E8925489319_))))
    (define gx#core-expand-import-source
      (lambda (_hd89249_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd89249_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx88757_ _internal-expand?88758_)
        (letrec* ((_make-export__9213392134_
                   (lambda (_bind89197_ _phi89198_ _ctx89199_ _name89200_)
                     (let* ((_key89202_
                             (##unchecked-structure-ref
                              _bind89197_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key89204_
                             (if _name89200_
                                 (gx#core-identifier-key _name89200_)
                                 _key89202_)))
                       (##structure
                        gx#module-export::t
                        _ctx89199_
                        _key89202_
                        _phi89198_
                        _export-key89204_
                        (let ((_$e89207_
                               (##structure-instance-of?
                                _bind89197_
                                'gx#extern-binding::t)))
                          (if _$e89207_
                              _$e89207_
                              (##structure-direct-instance-of?
                               _bind89197_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9213592138_
                   (lambda (_bind89213_)
                     (let* ((_phi89215_ (gx#current-export-expander-phi))
                            (_ctx89217_ (gx#current-expander-context))
                            (_name89219_ '#f))
                       (_make-export__9213392134_
                        _bind89213_
                        _phi89215_
                        _ctx89217_
                        _name89219_))))
                  (_make-export__1__9213692139_
                   (lambda (_bind89221_ _phi89222_)
                     (let* ((_ctx89224_ (gx#current-expander-context))
                            (_name89226_ '#f))
                       (_make-export__9213392134_
                        _bind89221_
                        _phi89222_
                        _ctx89224_
                        _name89226_))))
                  (_make-export__2__9213792140_
                   (lambda (_bind89228_ _phi89229_ _ctx89230_)
                     (let ((_name89232_ '#f))
                       (_make-export__9213392134_
                        _bind89228_
                        _phi89229_
                        _ctx89230_
                        _name89232_))))
                  (_make-export88760_
                   (lambda _g92206_
                     (let ((_g92205_ (##length _g92206_)))
                       (cond ((##fx= _g92205_ 1)
                              (apply (lambda (_bind89213_)
                                       (_make-export__0__9213592138_
                                        _bind89213_))
                                     _g92206_))
                             ((##fx= _g92205_ 2)
                              (apply (lambda (_bind89221_ _phi89222_)
                                       (_make-export__1__9213692139_
                                        _bind89221_
                                        _phi89222_))
                                     _g92206_))
                             ((##fx= _g92205_ 3)
                              (apply (lambda (_bind89228_
                                              _phi89229_
                                              _ctx89230_)
                                       (_make-export__2__9213792140_
                                        _bind89228_
                                        _phi89229_
                                        _ctx89230_))
                                     _g92206_))
                             ((##fx= _g92205_ 4)
                              (apply (lambda (_bind89234_
                                              _phi89235_
                                              _ctx89236_
                                              _name89237_)
                                       (_make-export__9213392134_
                                        _bind89234_
                                        _phi89235_
                                        _ctx89236_
                                        _name89237_))
                                     _g92206_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g92206_))))))
                  (_expand188761_
                   (lambda (_hd88910_ _K88911_ _rest88912_ _r88913_)
                     (let* ((_e8891488946_ _hd88910_)
                            (_E8894188950_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx88757_
                                _hd88910_)))
                            (_E8893189029_
                             (lambda ()
                               (if (gx#stx-pair? _e8891488946_)
                                   (let ((_e8894288954_
                                          (gx#syntax-e _e8891488946_)))
                                     (let ((_hd8894388957_
                                            (##car _e8894288954_))
                                           (_tl8894488959_
                                            (##cdr _e8894288954_)))
                                       (if (eq? (gx#stx-e _hd8894388957_)
                                                'import:)
                                           (let ((_in88962_ _tl8894488959_))
                                             (if (gx#stx-list? _in88962_)
                                                 (let _lp88964_ ((_in-rest88966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in88962_)
                         (_r88967_ _r88913_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e8896888975_
                                                           _in-rest88966_)
                                                          (_E8897088979_
                                                           (lambda ()
                                                             (_K88911_
                                                              _rest88912_
                                                              _r88967_)))
                                                          (_E8896989025_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e8896888975_)
                         (let ((_e8897188983_ (gx#syntax-e _e8896888975_)))
                           (let ((_hd8897288986_ (##car _e8897188983_))
                                 (_tl8897388988_ (##cdr _e8897188983_)))
                             (let* ((_hd88991_ _hd8897288986_)
                                    (_in-rest88993_ _tl8897388988_))
                               (if '#t
                                   (let ((_src89023_
                                          (if (gx#core-bound-module? _hd88991_)
                                              (gx#syntax-local-e__0 _hd88991_)
                                              (if (gx#core-library-module-path?
                                                   _hd88991_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd88991_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd88991_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd88991_))
                                                      (if (gx#stx-string?
                                                           _hd88991_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd88991_
                                                            (gx#stx-source
                                                             _stx88757_)))
                                                          (let* ((_e8899489001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd88991_)
                         (_E8899689005_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx88757_
                             _hd88991_)))
                         (_E8899589019_
                          (lambda ()
                            (if (gx#stx-pair? _e8899489001_)
                                (let ((_e8899789009_
                                       (gx#syntax-e _e8899489001_)))
                                  (let ((_hd8899889012_ (##car _e8899789009_))
                                        (_tl8899989014_ (##cdr _e8899789009_)))
                                    (if (eq? (gx#stx-e _hd8899889012_) 'in:)
                                        (let ((_spath89017_ _tl8899989014_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath89017_
                                               _stx88757_)
                                              (_E8899689005_)))
                                        (_E8899689005_))))
                                (_E8899689005_)))))
                    (_E8899589019_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp88964_
                                      _in-rest88993_
                                      (_export-imports88762_
                                       _src89023_
                                       _r88967_)))
                                   (_E8897088979_)))))
                         (_E8897088979_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8896989025_)))
                                                 (_E8894188950_)))
                                           (_E8894188950_))))
                                   (_E8894188950_))))
                            (_E8891889068_
                             (lambda ()
                               (if (gx#stx-pair? _e8891488946_)
                                   (let ((_e8893289033_
                                          (gx#syntax-e _e8891488946_)))
                                     (let ((_hd8893389036_
                                            (##car _e8893289033_))
                                           (_tl8893489038_
                                            (##cdr _e8893289033_)))
                                       (if (eq? (gx#stx-e _hd8893389036_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl8893489038_)
                                               (let ((_e8893589041_
                                                      (gx#syntax-e
                                                       _tl8893489038_)))
                                                 (let ((_hd8893689044_
                                                        (##car _e8893589041_))
                                                       (_tl8893789046_
                                                        (##cdr _e8893589041_)))
                                                   (let ((_id89049_
                                                          _hd8893689044_))
                                                     (if (gx#stx-pair?
                                                          _tl8893789046_)
                                                         (let ((_e8893889051_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8893789046_)))
                   (let ((_hd8893989054_ (##car _e8893889051_))
                         (_tl8894089056_ (##cdr _e8893889051_)))
                     (let ((_name89059_ _hd8893989054_))
                       (if (gx#stx-null? _tl8894089056_)
                           (if '#t
                               (let* ((_phi89061_
                                       (gx#current-export-expander-phi))
                                      (_$e89063_
                                       (gx#core-resolve-identifier__1
                                        _id89049_
                                        _phi89061_)))
                                 (if _$e89063_
                                     ((lambda (_bind89066_)
                                        (_K88911_
                                         _rest88912_
                                         (cons (_make-export__9213392134_
                                                _bind89066_
                                                _phi89061_
                                                (gx#current-expander-context)
                                                _name89059_)
                                               _r88913_)))
                                      _$e89063_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx88757_
                                      _hd88910_
                                      _id89049_)))
                               (_E8893189029_))
                           (_E8893189029_)))))
                 (_E8893189029_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8893189029_))
                                           (_E8893189029_))))
                                   (_E8893189029_))))
                            (_E8891789117_
                             (lambda ()
                               (if (gx#stx-pair? _e8891488946_)
                                   (let ((_e8891989072_
                                          (gx#syntax-e _e8891488946_)))
                                     (let ((_hd8892089075_
                                            (##car _e8891989072_))
                                           (_tl8892189077_
                                            (##cdr _e8891989072_)))
                                       (if (eq? (gx#stx-e _hd8892089075_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8892189077_)
                                               (let ((_e8892289080_
                                                      (gx#syntax-e
                                                       _tl8892189077_)))
                                                 (let ((_hd8892389083_
                                                        (##car _e8892289080_))
                                                       (_tl8892489085_
                                                        (##cdr _e8892289080_)))
                                                   (let ((_phi89088_
                                                          _hd8892389083_))
                                                     (if (gx#stx-pair?
                                                          _tl8892489085_)
                                                         (let ((_e8892589090_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8892489085_)))
                   (let ((_hd8892689093_ (##car _e8892589090_))
                         (_tl8892789095_ (##cdr _e8892589090_)))
                     (let ((_id89098_ _hd8892689093_))
                       (if (gx#stx-pair? _tl8892789095_)
                           (let ((_e8892889100_ (gx#syntax-e _tl8892789095_)))
                             (let ((_hd8892989103_ (##car _e8892889100_))
                                   (_tl8893089105_ (##cdr _e8892889100_)))
                               (let ((_name89108_ _hd8892989103_))
                                 (if (gx#stx-null? _tl8893089105_)
                                     (if (and (gx#stx-fixnum? _phi89088_)
                                              (gx#identifier? _id89098_)
                                              (gx#identifier? _name89108_))
                                         (let* ((_phi89110_
                                                 (gx#stx-e _phi89088_))
                                                (_$e89112_
                                                 (gx#core-resolve-identifier__1
                                                  _id89098_
                                                  _phi89110_)))
                                           (if _$e89112_
                                               ((lambda (_bind89115_)
                                                  (_K88911_
                                                   _rest88912_
                                                   (cons (_make-export__9213392134_
                                                          _bind89115_
                                                          _phi89110_
                                                          (gx#current-expander-context)
                                                          _name89108_)
                                                         _r88913_)))
                                                _$e89112_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx88757_
                                                _hd88910_
                                                _id89098_)))
                                         (_E8891889068_))
                                     (_E8891889068_)))))
                           (_E8891889068_)))))
                 (_E8891889068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8891889068_))
                                           (_E8891889068_))))
                                   (_E8891889068_))))
                            (_E8891689128_
                             (lambda ()
                               (let ((_id89121_ _e8891488946_))
                                 (if (gx#identifier? _id89121_)
                                     (let ((_$e89123_
                                            (gx#core-resolve-identifier__1
                                             _id89121_
                                             (gx#current-export-expander-phi))))
                                       (if _$e89123_
                                           ((lambda (_bind89126_)
                                              (_K88911_
                                               _rest88912_
                                               (cons (_make-export__0__9213592138_
                                                      _bind89126_)
                                                     _r88913_)))
                                            _$e89123_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx88757_
                                            _hd88910_)))
                                     (_E8891789117_)))))
                            (_E8891589192_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8891488946_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx89132_
                                               (gx#current-expander-context))
                                              (_current-phi89134_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx89136_
                                               (gx#core-context-shift
                                                _current-ctx89132_
                                                _current-phi89134_))
                                              (_phi-bind89138_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx89136_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp89141_ ((_bind-rest89143_
                                                          _phi-bind89138_)
                                                         (_set89144_ '()))
                                           (let* ((_bind-rest8914589155_
                                                   _bind-rest89143_)
                                                  (_else8914789163_
                                                   (lambda ()
                                                     (_K88911_
                                                      _rest88912_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi89134_
                                                             _set89144_)
                                                            _r88913_))))
                                                  (_K8914989173_
                                                   (lambda (_bind-rest89166_
                                                            _bind89167_
                                                            _key89168_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind89167_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind89167_))
                                                         (_lp89141_
                                                          _bind-rest89166_
                                                          _set89144_)
                                                         (_lp89141_
                                                          _bind-rest89166_
                                                          (cons (_make-export__2__9213792140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind89167_
                         _current-phi89134_
                         _current-ctx89132_)
                        _set89144_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest8914589155_)
                                                 (let ((_hd8915089176_
                                                        (##car _bind-rest8914589155_))
                                                       (_tl8915189178_
                                                        (##cdr _bind-rest8914589155_)))
                                                   (if (##pair? _hd8915089176_)
                                                       (let ((_hd8915289181_
                                                              (##car _hd8915089176_))
                                                             (_tl8915389183_
                                                              (##cdr _hd8915089176_)))
                                                         (let* ((_key89186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd8915289181_)
                        (_bind89188_ _tl8915389183_)
                        (_bind-rest89190_ _tl8915189178_))
                   (_K8914989173_ _bind-rest89190_ _bind89188_ _key89186_)))
               (_else8914789163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else8914789163_)))))
                                       (_E8891689128_))
                                   (_E8891689128_)))))
                       (_E8891589192_))))
                  (_export-imports88762_
                   (lambda (_src88786_ _r88787_)
                     (letrec* ((_current-ctx88789_
                                (gx#current-expander-context))
                               (_current-phi88790_
                                (gx#current-export-expander-phi))
                               (_import->export88791_
                                (lambda (_in88872_)
                                  (let* ((_in8887388881_ _in88872_)
                                         (_E8887588885_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8887388881_)))
                                         (_K8887688892_
                                          (lambda (_phi88888_
                                                   _key88889_
                                                   _out88890_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx88789_
                                             _key88889_
                                             _phi88888_
                                             _key88889_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8887388881_
                                         'gx#module-import::t)
                                        (let* ((_e8887788895_
                                                (##unchecked-structure-ref
                                                 _in8887388881_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out88898_ _e8887788895_)
                                               (_e8887888900_
                                                (##unchecked-structure-ref
                                                 _in8887388881_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key88903_ _e8887888900_)
                                               (_e8887988905_
                                                (##unchecked-structure-ref
                                                 _in8887388881_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi88908_ _e8887988905_))
                                          (_K8887688892_
                                           _phi88908_
                                           _key88903_
                                           _out88898_))
                                        (_E8887588885_)))))
                               (_fold-e88792_
                                (lambda (_in88794_ _r88795_)
                                  (let* ((_in8879688810_ _in88794_)
                                         (_else8879988818_
                                          (lambda () _r88795_)))
                                    (let ((_K8880588854_
                                           (lambda (_phi88850_
                                                    _key88851_
                                                    _out88852_)
                                             (if (and (fx= _phi88850_
                                                           _current-phi88790_)
                                                      (eq? _src88786_
                                                           (##unchecked-structure-ref
                                                            _out88852_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export88791_
                                                        _in88794_)
                                                       _r88795_)
                                                 _r88795_)))
                                          (_K8880188829_
                                           (lambda (_imports88822_
                                                    _phi88823_
                                                    _ctx88824_)
                                             (if (and (fx= _phi88823_
                                                           _current-phi88790_)
                                                      (eq? _src88786_
                                                           _ctx88824_))
                                                 (foldl1 (lambda (_in88826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r88827_)
                   (cons (_import->export88791_ _in88826_) _r88827_))
                 _r88795_
                 _imports88822_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r88795_))))
                                      (let ((_try-match8879888847_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8879688810_
                                                    'gx#import-set::t)
                                                   (let* ((_e8880288832_
                                                           (##unchecked-structure-ref
                                                            _in8879688810_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8880388837_
                                                           (##unchecked-structure-ref
                                                            _in8879688810_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8880488842_
                                                           (##unchecked-structure-ref
                                                            _in8879688810_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx88835_
                                                            _e8880288832_)
                                                           (_phi88840_
                                                            _e8880388837_)
                                                           (_imports88845_
                                                            _e8880488842_))
                                                       (_K8880188829_
                                                        _imports88845_
                                                        _phi88840_
                                                        _ctx88835_)))
                                                   (_else8879988818_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8879688810_
                                             'gx#module-import::t)
                                            (let* ((_e8880688857_
                                                    (##unchecked-structure-ref
                                                     _in8879688810_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8880788862_
                                                    (##unchecked-structure-ref
                                                     _in8879688810_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8880888867_
                                                    (##unchecked-structure-ref
                                                     _in8879688810_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out88860_ _e8880688857_)
                                                    (_key88865_ _e8880788862_)
                                                    (_phi88870_ _e8880888867_))
                                                (_K8880588854_
                                                 _phi88870_
                                                 _key88865_
                                                 _out88860_)))
                                            (_try-match8879888847_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src88786_
                              _current-phi88790_
                              (foldl1 _fold-e88792_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx88789_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r88787_))))
                  (_export!88763_
                   (lambda (_rbody88776_)
                     (letrec* ((_current-ctx88778_
                                (gx#current-expander-context))
                               (_fold-e88779_
                                (lambda (_out88783_ _r88784_)
                                  (if (##structure-direct-instance-of?
                                       _out88783_
                                       'gx#module-export::t)
                                      (cons _out88783_ _r88784_)
                                      (if (##structure-direct-instance-of?
                                           _out88783_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r88784_
                                                  (##unchecked-structure-ref
                                                   _out88783_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r88784_)))))
                       (let ((_body88781_ (reverse _rbody88776_)))
                         (##unchecked-structure-set!
                          _current-ctx88778_
                          (foldl1 _fold-e88779_
                                  (##unchecked-structure-ref
                                   _current-ctx88778_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body88781_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body88781_))))
                  (_expanded-export?88764_
                   (lambda (_e88771_)
                     (let ((_$e88773_
                            (##structure-direct-instance-of?
                             _e88771_
                             'gx#module-export::t)))
                       (if _$e88773_
                           _$e88773_
                           (##structure-direct-instance-of?
                            _e88771_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?88758_)
              (let ((_rbody88769_
                     (gx#core-expand-import/export
                      _stx88757_
                      _expanded-export?88764_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand188761_)))
                (if _internal-expand?88758_
                    (reverse _rbody88769_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!88763_ _rbody88769_))
                     (gx#stx-source _stx88757_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx88757_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx88757_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx89242_)
        (let ((_internal-expand?89244_ '#f))
          (gx#core-expand-export%__% _stx89242_ _internal-expand?89244_))))
    (define gx#core-expand-export%
      (lambda _g92208_
        (let ((_g92207_ (##length _g92208_)))
          (cond ((##fx= _g92207_ 1)
                 (apply (lambda (_stx89242_)
                          (gx#core-expand-export%__0 _stx89242_))
                        _g92208_))
                ((##fx= _g92207_ 2)
                 (apply (lambda (_stx89246_ _internal-expand?89247_)
                          (gx#core-expand-export%__%
                           _stx89246_
                           _internal-expand?89247_))
                        _g92208_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g92208_))))))
    (define gx#core-expand-export-source
      (lambda (_hd88754_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd88754_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx88724_)
        (let* ((_e8872588732_ _stx88724_)
               (_E8872788736_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8872588732_)))
               (_E8872688750_
                (lambda ()
                  (if (gx#stx-pair? _e8872588732_)
                      (let ((_e8872888740_ (gx#syntax-e _e8872588732_)))
                        (let ((_hd8872988743_ (##car _e8872888740_))
                              (_tl8873088745_ (##cdr _e8872888740_)))
                          (let ((_body88748_ _tl8873088745_))
                            (if (gx#identifier-list? _body88748_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body88748_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body88748_))
                                   (gx#stx-source _stx88724_)))
                                (_E8872788736_)))))
                      (_E8872788736_)))))
          (_E8872688750_))))
    (define gx#core-bind-feature!__%
      (lambda (_id88690_ _private?88691_ _phi88692_ _ctx88693_)
        (gx#core-bind-syntax!__%
         _id88690_
         ((if _private?88691_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id88690_))
         _private?88691_
         _phi88692_
         _ctx88693_)))
    (define gx#core-bind-feature!__0
      (lambda (_id88698_)
        (let* ((_private?88700_ '#f)
               (_phi88702_ (gx#current-expander-phi))
               (_ctx88704_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88698_
           _private?88700_
           _phi88702_
           _ctx88704_))))
    (define gx#core-bind-feature!__1
      (lambda (_id88706_ _private?88707_)
        (let* ((_phi88709_ (gx#current-expander-phi))
               (_ctx88711_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88706_
           _private?88707_
           _phi88709_
           _ctx88711_))))
    (define gx#core-bind-feature!__2
      (lambda (_id88713_ _private?88714_ _phi88715_)
        (let ((_ctx88717_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88713_
           _private?88714_
           _phi88715_
           _ctx88717_))))
    (define gx#core-bind-feature!
      (lambda _g92210_
        (let ((_g92209_ (##length _g92210_)))
          (cond ((##fx= _g92209_ 1)
                 (apply (lambda (_id88698_)
                          (gx#core-bind-feature!__0 _id88698_))
                        _g92210_))
                ((##fx= _g92209_ 2)
                 (apply (lambda (_id88706_ _private?88707_)
                          (gx#core-bind-feature!__1 _id88706_ _private?88707_))
                        _g92210_))
                ((##fx= _g92209_ 3)
                 (apply (lambda (_id88713_ _private?88714_ _phi88715_)
                          (gx#core-bind-feature!__2
                           _id88713_
                           _private?88714_
                           _phi88715_))
                        _g92210_))
                ((##fx= _g92209_ 4)
                 (apply (lambda (_id88719_
                                 _private?88720_
                                 _phi88721_
                                 _ctx88722_)
                          (gx#core-bind-feature!__%
                           _id88719_
                           _private?88720_
                           _phi88721_
                           _ctx88722_))
                        _g92210_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g92210_))))))))
