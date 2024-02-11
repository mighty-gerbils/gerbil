(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707659879)
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
      (lambda _$args160483_
        (apply make-instance gx#module-import::t _$args160483_)))
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
      (lambda _$args160480_
        (apply make-instance gx#module-export::t _$args160480_)))
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
      (lambda _$args160477_
        (apply make-instance gx#import-set::t _$args160477_)))
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
      (lambda _$args160474_
        (apply make-instance gx#export-set::t _$args160474_)))
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
      (lambda _$args160471_
        (apply make-instance gx#import-expander::t _$args160471_)))
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
      (lambda _$args160468_
        (apply make-instance gx#export-expander::t _$args160468_)))
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
      (lambda _$args160465_
        (apply make-instance gx#import-export-expander::t _$args160465_)))
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
      (lambda (_path160462_ _fun160463_)
        (call-with-input-file
         (cons 'path: (cons _path160462_ gx#source-file-settings))
         _fun160463_)))
    (define gx#module-context:::init!
      (lambda (_self160456_ _id160457_ _super160458_ _ns160459_ _path160460_)
        (if (##fx< '11 (##structure-length _self160456_))
            (begin
              (##unchecked-structure-set!
               _self160456_
               _id160457_
               '1
               (##structure-type _self160456_)
               '#f)
              (##unchecked-structure-set!
               _self160456_
               (make-table 'test: eq?)
               '2
               (##structure-type _self160456_)
               '#f)
              (##unchecked-structure-set!
               _self160456_
               _super160458_
               '3
               (##structure-type _self160456_)
               '#f)
              (##unchecked-structure-set!
               _self160456_
               '#f
               '4
               (##structure-type _self160456_)
               '#f)
              (##unchecked-structure-set!
               _self160456_
               '#f
               '5
               (##structure-type _self160456_)
               '#f)
              (##unchecked-structure-set!
               _self160456_
               _ns160459_
               '6
               (##structure-type _self160456_)
               '#f)
              (##unchecked-structure-set!
               _self160456_
               _path160460_
               '7
               (##structure-type _self160456_)
               '#f)
              (##unchecked-structure-set!
               _self160456_
               '()
               '8
               (##structure-type _self160456_)
               '#f)
              (##unchecked-structure-set!
               _self160456_
               '()
               '9
               (##structure-type _self160456_)
               '#f)
              (##unchecked-structure-set!
               _self160456_
               '#f
               '10
               (##structure-type _self160456_)
               '#f)
              (##unchecked-structure-set!
               _self160456_
               '#f
               '11
               (##structure-type _self160456_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160456_
                   '11
                   (##vector-length _self160456_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self160300_ _ctx160301_ _root160302_)
        (let ((_super160310_
               (let ((_$e160304_ _root160302_))
                 (if _$e160304_
                     _$e160304_
                     (let ((_$e160307_ (gx#core-context-root__0)))
                       (if _$e160307_
                           _$e160307_
                           (let ((__obj164993
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor164994
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor164994
                                   (__constructor164994 __obj164993)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj164993)))))))
          (if _ctx160301_
              (let ((_id160313_
                     (##structure-ref
                      _ctx160301_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path160314_
                     (##structure-ref _ctx160301_ '7 gx#module-context::t '#f))
                    (_in160315_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx160301_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e160316_
                     (make-promise (lambda () (gx#eval-module _ctx160301_)))))
                (if (##fx< '8 (##structure-length _self160300_))
                    (begin
                      (##unchecked-structure-set!
                       _self160300_
                       _id160313_
                       '1
                       (##structure-type _self160300_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160300_
                       (make-table 'test: eq? 'size: (length _in160315_))
                       '2
                       (##structure-type _self160300_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160300_
                       _super160310_
                       '3
                       (##structure-type _self160300_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160300_
                       '#f
                       '4
                       (##structure-type _self160300_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160300_
                       '#f
                       '5
                       (##structure-type _self160300_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160300_
                       _path160314_
                       '6
                       (##structure-type _self160300_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160300_
                       _in160315_
                       '7
                       (##structure-type _self160300_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160300_
                       _e160316_
                       '8
                       (##structure-type _self160300_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self160300_
                           '8
                           (##vector-length _self160300_)))
                (for-each
                 (lambda (_g160317160319_)
                   (gx#core-bind-weak-import!__% _g160317160319_ _self160300_))
                 _in160315_))
              (if (##fx< '8 (##structure-length _self160300_))
                  (begin
                    (##unchecked-structure-set!
                     _self160300_
                     '#f
                     '1
                     (##structure-type _self160300_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160300_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self160300_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160300_
                     _super160310_
                     '3
                     (##structure-type _self160300_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160300_
                     '#f
                     '4
                     (##structure-type _self160300_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160300_
                     '#f
                     '5
                     (##structure-type _self160300_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160300_
                     '#f
                     '6
                     (##structure-type _self160300_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160300_
                     '()
                     '7
                     (##structure-type _self160300_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160300_
                     '#f
                     '8
                     (##structure-type _self160300_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self160300_
                         '8
                         (##vector-length _self160300_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self160325_ _ctx160326_)
        (let ((_root160328_ '#f))
          (gx#prelude-context:::init!__%
           _self160325_
           _ctx160326_
           _root160328_))))
    (define gx#prelude-context:::init!
      (lambda _g165000_
        (let ((_g164999_ (##length _g165000_)))
          (cond ((##fx= _g164999_ 2)
                 (apply (lambda (_self160325_ _ctx160326_)
                          (gx#prelude-context:::init!__0
                           _self160325_
                           _ctx160326_))
                        _g165000_))
                ((##fx= _g164999_ 3)
                 (apply (lambda (_self160330_ _ctx160331_ _root160332_)
                          (gx#prelude-context:::init!__%
                           _self160330_
                           _ctx160331_
                           _root160332_))
                        _g165000_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g165000_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self160174_ _e160175_)
        (if (##fx< '3 (##structure-length _self160174_))
            (begin
              (##unchecked-structure-set!
               _self160174_
               _e160175_
               '1
               (##structure-type _self160174_)
               '#f)
              (##unchecked-structure-set!
               _self160174_
               (gx#current-expander-context)
               '2
               (##structure-type _self160174_)
               '#f)
              (##unchecked-structure-set!
               _self160174_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self160174_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160174_
                   '3
                   (##vector-length _self160174_)))))
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
      (lambda (_g159800159803_ _g159801159805_)
        (gx#core-apply-user-expander__%
         _g159800159803_
         _g159801159805_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g159671159674_ _g159672159676_)
        (gx#core-apply-user-expander__%
         _g159671159674_
         _g159672159676_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx159542_)
        (let* ((_path159544_
                (##structure-ref _ctx159542_ '7 gx#module-context::t '#f))
               (_path159546_
                (if (pair? _path159544_) (last _path159544_) _path159544_)))
          (if (string? _path159546_) _path159546_ '#f))))
    (define gx#import-module__%
      (lambda (_path159518_ _reload?159519_ _eval?159520_)
        (let ((_ctx159522_
               ((gx#current-expander-module-import)
                _path159518_
                _reload?159519_)))
          (if (and _ctx159522_ _eval?159520_)
              (gx#eval-module _ctx159522_)
              '#!void)
          _ctx159522_)))
    (define gx#import-module__0
      (lambda (_path159527_)
        (let* ((_reload?159529_ '#f) (_eval?159531_ '#f))
          (gx#import-module__% _path159527_ _reload?159529_ _eval?159531_))))
    (define gx#import-module__1
      (lambda (_path159533_ _reload?159534_)
        (let ((_eval?159536_ '#f))
          (gx#import-module__% _path159533_ _reload?159534_ _eval?159536_))))
    (define gx#import-module
      (lambda _g165002_
        (let ((_g165001_ (##length _g165002_)))
          (cond ((##fx= _g165001_ 1)
                 (apply (lambda (_path159527_)
                          (gx#import-module__0 _path159527_))
                        _g165002_))
                ((##fx= _g165001_ 2)
                 (apply (lambda (_path159533_ _reload?159534_)
                          (gx#import-module__1 _path159533_ _reload?159534_))
                        _g165002_))
                ((##fx= _g165001_ 3)
                 (apply (lambda (_path159538_ _reload?159539_ _eval?159540_)
                          (gx#import-module__%
                           _path159538_
                           _reload?159539_
                           _eval?159540_))
                        _g165002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g165002_))))))
    (define gx#eval-module
      (lambda (_mod159515_) ((gx#current-expander-module-eval) _mod159515_)))
    (define gx#core-eval-module
      (lambda (_obj159500_)
        (letrec ((_force-e159502_
                  (lambda (_getf159511_ _e159512_)
                    (call-with-parameters
                     (lambda () (force (_getf159511_ _e159512_)))
                     gx#current-expander-context
                     _e159512_
                     gx#current-expander-phi
                     '0))))
          (let _recur159504_ ((_e159506_ _obj159500_))
            (if (##structure-instance-of? _e159506_ 'gx#module-context::t)
                (begin
                  (let ((_$e159508_ (gx#core-context-prelude__% _e159506_)))
                    (if _$e159508_ (_recur159504_ _$e159508_) '#!void))
                  (_force-e159502_ gx#module-context-e _e159506_))
                (if (##structure-instance-of? _e159506_ 'gx#prelude-context::t)
                    (_force-e159502_ gx#prelude-context-e _e159506_)
                    (if (gx#stx-string? _e159506_)
                        (_recur159504_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e159506_)))
                        (if (gx#core-library-module-path? _e159506_)
                            (_recur159504_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e159506_)))
                            (error '"Cannot eval module" _obj159500_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx159483_)
        (let _lp159485_ ((_e159487_ _ctx159483_))
          (if (or (##structure-instance-of? _e159487_ 'gx#module-context::t)
                  (##structure-instance-of? _e159487_ 'gx#local-context::t))
              (_lp159485_
               (##unchecked-structure-ref _e159487_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e159487_ 'gx#prelude-context::t)
                  _e159487_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx159496_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx159496_))))
    (define gx#core-context-prelude
      (lambda _g165004_
        (let ((_g165003_ (##length _g165004_)))
          (cond ((##fx= _g165003_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g165004_))
                ((##fx= _g165003_ 1)
                 (apply (lambda (_ctx159498_)
                          (gx#core-context-prelude__% _ctx159498_))
                        _g165004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g165004_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx159473_)
        (let* ((_ht159475_ (gx#current-expander-module-registry))
               (_$e159477_ (table-ref _ht159475_ _ctx159473_ '#f)))
          (if _$e159477_
              (values _$e159477_)
              (let ((_pre159480_
                     (let ((__obj164995
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
                       (gx#prelude-context:::init! __obj164995 _ctx159473_)
                       __obj164995)))
                (table-set! _ht159475_ _ctx159473_ _pre159480_)
                _pre159480_)))))
    (define gx#core-import-module__%
      (lambda (_rpath159354_ _reload?159355_)
        (letrec ((_import-source159357_
                  (lambda (_path159442_)
                    (if (member _path159442_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path159442_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g165005_ (gx#core-read-module _path159442_)))
                         (begin
                           (let ((_g165006_
                                  (if (##values? _g165005_)
                                      (##vector-length _g165005_)
                                      1)))
                             (if (not (##fx= _g165006_ 4))
                                 (error "Context expects 4 values" _g165006_)))
                           (let ((_pre159445_ (##vector-ref _g165005_ 0))
                                 (_id159446_ (##vector-ref _g165005_ 1))
                                 (_ns159447_ (##vector-ref _g165005_ 2))
                                 (_body159448_ (##vector-ref _g165005_ 3)))
                             (let* ((_prelude159453_
                                     (if (##structure-instance-of?
                                          _pre159445_
                                          'gx#prelude-context::t)
                                         _pre159445_
                                         (if (##structure-instance-of?
                                              _pre159445_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre159445_)
                                             (if (string? _pre159445_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre159445_))
                                                 (if (not _pre159445_)
                                                     (let ((_$e159450_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e159450_
                                                           _$e159450_
                                                           (let ((__obj164996
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
                     (gx#prelude-context:::init! __obj164996 '#f)
                     __obj164996)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath159354_
                                                            _pre159445_))))))
                                    (_ctx159455_
                                     (let ((__obj164997
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
                                        __obj164997
                                        _id159446_
                                        _prelude159453_
                                        _ns159447_
                                        _path159442_)
                                       __obj164997))
                                    (_body159457_
                                     (gx#core-expand-module-begin
                                      _body159448_
                                      _ctx159455_))
                                    (_body159459_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body159457_)
                                      _path159442_
                                      _ctx159455_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx159455_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body159459_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx159455_
                                _body159459_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path159442_
                                _ctx159455_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id159446_
                                _ctx159455_)
                               _ctx159455_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path159442_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule159358_
                  (lambda (_rpath159370_)
                    (let* ((_rpath159371159378_ _rpath159370_)
                           (_E159373159382_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath159371159378_)))
                           (_K159374159430_
                            (lambda (_refs159385_ _origin159386_)
                              (let ((_ctx159388_
                                     (if _origin159386_
                                         (gx#core-import-module__%
                                          _origin159386_
                                          _reload?159355_)
                                         (gx#current-expander-context))))
                                (let _lp159390_ ((_rest159392_ _refs159385_)
                                                 (_ctx159393_ _ctx159388_))
                                  (let* ((_rest159394159402_ _rest159392_)
                                         (_else159396159410_
                                          (lambda () _ctx159393_))
                                         (_K159398159418_
                                          (lambda (_rest159413_ _id159414_)
                                            (let ((_bind159416_
                                                   (gx#resolve-identifier__%
                                                    _id159414_
                                                    '0
                                                    _ctx159393_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind159416_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind159416_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp159390_
                                                   _rest159413_
                                                   (##unchecked-structure-ref
                                                    _bind159416_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath159370_
                                                         _id159414_
                                                         _bind159416_))))))
                                    (if (##pair? _rest159394159402_)
                                        (let ((_hd159399159421_
                                               (##car _rest159394159402_))
                                              (_tl159400159423_
                                               (##cdr _rest159394159402_)))
                                          (let* ((_id159426_ _hd159399159421_)
                                                 (_rest159428_
                                                  _tl159400159423_))
                                            (_K159398159418_
                                             _rest159428_
                                             _id159426_)))
                                        (_else159396159410_))))))))
                      (if (##pair? _rpath159371159378_)
                          (let ((_hd159375159433_ (##car _rpath159371159378_))
                                (_tl159376159435_ (##cdr _rpath159371159378_)))
                            (let* ((_origin159438_ _hd159375159433_)
                                   (_refs159440_ _tl159376159435_))
                              (_K159374159430_ _refs159440_ _origin159438_)))
                          (_E159373159382_))))))
          (let ((_$e159360_
                 (if (not _reload?159355_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath159354_
                      '#f)
                     '#f)))
            (if _$e159360_
                (values _$e159360_)
                (if (list? _rpath159354_)
                    (_import-submodule159358_ _rpath159354_)
                    (if (gx#core-library-module-path? _rpath159354_)
                        (let ((_ctx159363_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath159354_)
                                _reload?159355_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath159354_
                           _ctx159363_)
                          _ctx159363_)
                        (let* ((_npath159365_ (path-normalize _rpath159354_))
                               (_$e159367_
                                (if (not _reload?159355_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath159365_
                                     '#f)
                                    '#f)))
                          (if _$e159367_
                              (values _$e159367_)
                              (_import-source159357_ _npath159365_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath159466_)
        (let ((_reload?159468_ '#f))
          (gx#core-import-module__% _rpath159466_ _reload?159468_))))
    (define gx#core-import-module
      (lambda _g165008_
        (let ((_g165007_ (##length _g165008_)))
          (cond ((##fx= _g165007_ 1)
                 (apply (lambda (_rpath159466_)
                          (gx#core-import-module__0 _rpath159466_))
                        _g165008_))
                ((##fx= _g165007_ 2)
                 (apply (lambda (_rpath159470_ _reload?159471_)
                          (gx#core-import-module__%
                           _rpath159470_
                           _reload?159471_))
                        _g165008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g165008_))))))
    (define gx#core-read-module
      (lambda (_path159343_)
        (with-catch
         (lambda (_exn159345_)
           (if (and (datum-parsing-exception? _exn159345_)
                    (eq? (datum-parsing-exception-filepos _exn159345_) '0))
               (gx#core-read-module/lang _path159343_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path159343_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g159347159349_)
                      (display-exception _exn159345_ _g159347159349_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path159343_)))))
    (define gx#core-read-module/sexp
      (lambda (_path159206_)
        (let _lp159208_ ((_body159210_ (read-syntax-from-file _path159206_))
                         (_pre159211_ '#f)
                         (_ns159212_ '#f)
                         (_pkg159213_ '#f))
          (let* ((_e159214159238_ _body159210_)
                 (_E159230159260_
                  (lambda ()
                    (let ((_g165009_
                           (if _pkg159213_
                               (values _pre159211_ _ns159212_ _pkg159213_)
                               (gx#core-read-module-package
                                _path159206_
                                _pre159211_
                                _ns159212_))))
                      (begin
                        (let ((_g165010_
                               (if (##values? _g165009_)
                                   (##vector-length _g165009_)
                                   1)))
                          (if (not (##fx= _g165010_ 3))
                              (error "Context expects 3 values" _g165010_)))
                        (let ((_pre159242_ (##vector-ref _g165009_ 0))
                              (_ns159243_ (##vector-ref _g165009_ 1))
                              (_pkg159244_ (##vector-ref _g165009_ 2)))
                          (let* ((_prelude159246_
                                  (if (gx#core-bound-module-prelude?
                                       _pre159242_)
                                      (gx#syntax-local-e__0 _pre159242_)
                                      (if (gx#core-library-module-path?
                                           _pre159242_)
                                          (gx#core-resolve-library-module-path
                                           _pre159242_)
                                          (if (gx#stx-string? _pre159242_)
                                              (gx#core-resolve-module-path__%
                                               _pre159242_
                                               _path159206_)
                                              (gx#stx-e _pre159242_)))))
                                 (_path-id159248_
                                  (gx#core-module-path->namespace
                                   _path159206_))
                                 (_pkg-id159250_
                                  (if _pkg159244_
                                      (string-append
                                       _pkg159244_
                                       '"/"
                                       _path-id159248_)
                                      _path-id159248_))
                                 (_module-id159252_
                                  (string->symbol _pkg-id159250_))
                                 (_module-ns159257_
                                  (if (eq? _ns159243_ '#!void)
                                      '#f
                                      (let ((_$e159254_ _ns159243_))
                                        (if _$e159254_
                                            _$e159254_
                                            _pkg-id159250_)))))
                            (values _prelude159246_
                                    _module-id159252_
                                    _module-ns159257_
                                    _body159210_)))))))
                 (_E159223159289_
                  (lambda ()
                    (if (gx#stx-pair? _e159214159238_)
                        (let ((_e159231159264_ (gx#syntax-e _e159214159238_)))
                          (let ((_hd159232159267_ (##car _e159231159264_))
                                (_tl159233159269_ (##cdr _e159231159264_)))
                            (if (eq? (gx#stx-e _hd159232159267_) 'package:)
                                (if (gx#stx-pair? _tl159233159269_)
                                    (let ((_e159234159272_
                                           (gx#syntax-e _tl159233159269_)))
                                      (let ((_hd159235159275_
                                             (##car _e159234159272_))
                                            (_tl159236159277_
                                             (##cdr _e159234159272_)))
                                        (let* ((_pkg159280_ _hd159235159275_)
                                               (_rest159282_ _tl159236159277_))
                                          (if '#t
                                              (let ((_pkg159287_
                                                     (if (gx#identifier?
                                                          _pkg159280_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg159280_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg159280_)
                         (gx#stx-false? _pkg159280_))
                     (gx#stx-e _pkg159280_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg159280_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159208_
                                                 _rest159282_
                                                 _pre159211_
                                                 _ns159212_
                                                 _pkg159287_))
                                              (_E159230159260_)))))
                                    (_E159230159260_))
                                (_E159230159260_))))
                        (_E159230159260_))))
                 (_E159216159315_
                  (lambda ()
                    (if (gx#stx-pair? _e159214159238_)
                        (let ((_e159224159293_ (gx#syntax-e _e159214159238_)))
                          (let ((_hd159225159296_ (##car _e159224159293_))
                                (_tl159226159298_ (##cdr _e159224159293_)))
                            (if (eq? (gx#stx-e _hd159225159296_) 'namespace:)
                                (if (gx#stx-pair? _tl159226159298_)
                                    (let ((_e159227159301_
                                           (gx#syntax-e _tl159226159298_)))
                                      (let ((_hd159228159304_
                                             (##car _e159227159301_))
                                            (_tl159229159306_
                                             (##cdr _e159227159301_)))
                                        (let* ((_ns159309_ _hd159228159304_)
                                               (_rest159311_ _tl159229159306_))
                                          (if '#t
                                              (let ((_ns159313_
                                                     (if (gx#identifier?
                                                          _ns159309_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns159309_))
                                                         (if (gx#stx-string?
                                                              _ns159309_)
                                                             (gx#stx-e
                                                              _ns159309_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns159309_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns159309_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159208_
                                                 _rest159311_
                                                 _pre159211_
                                                 _ns159313_
                                                 _pkg159213_))
                                              (_E159223159289_)))))
                                    (_E159223159289_))
                                (_E159223159289_))))
                        (_E159223159289_))))
                 (_E159215159339_
                  (lambda ()
                    (if (gx#stx-pair? _e159214159238_)
                        (let ((_e159217159319_ (gx#syntax-e _e159214159238_)))
                          (let ((_hd159218159322_ (##car _e159217159319_))
                                (_tl159219159324_ (##cdr _e159217159319_)))
                            (if (eq? (gx#stx-e _hd159218159322_) 'prelude:)
                                (if (gx#stx-pair? _tl159219159324_)
                                    (let ((_e159220159327_
                                           (gx#syntax-e _tl159219159324_)))
                                      (let ((_hd159221159330_
                                             (##car _e159220159327_))
                                            (_tl159222159332_
                                             (##cdr _e159220159327_)))
                                        (let* ((_prelude159335_
                                                _hd159221159330_)
                                               (_rest159337_ _tl159222159332_))
                                          (if '#t
                                              (_lp159208_
                                               _rest159337_
                                               _prelude159335_
                                               _ns159212_
                                               _pkg159213_)
                                              (_E159216159315_)))))
                                    (_E159216159315_))
                                (_E159216159315_))))
                        (_E159216159315_)))))
            (_E159215159339_)))))
    (define gx#core-read-module/lang
      (lambda (_path159033_)
        (letrec ((_default-read-module-body159035_
                  (lambda (_inp159198_)
                    (let _lp159200_ ((_body159202_ '()))
                      (let ((_next159204_ (read-syntax _inp159198_)))
                        (if (eof-object? _next159204_)
                            (reverse _body159202_)
                            (_lp159200_ (cons _next159204_ _body159202_)))))))
                 (_read-body159036_
                  (lambda (_inp159117_
                           _pre159118_
                           _ns159119_
                           _pkg159120_
                           _args159121_)
                    (let ((_g165011_
                           (if _pkg159120_
                               (values _pre159118_ _ns159119_ _pkg159120_)
                               (gx#core-read-module-package
                                _path159033_
                                _pre159118_
                                _ns159119_))))
                      (begin
                        (let ((_g165012_
                               (if (##values? _g165011_)
                                   (##vector-length _g165011_)
                                   1)))
                          (if (not (##fx= _g165012_ 3))
                              (error "Context expects 3 values" _g165012_)))
                        (let ((_pre159123_ (##vector-ref _g165011_ 0))
                              (_ns159124_ (##vector-ref _g165011_ 1))
                              (_pkg159125_ (##vector-ref _g165011_ 2)))
                          (let* ((_prelude159127_
                                  (gx#import-module__0 _pre159123_))
                                 (_read-module-body159181_
                                  (let ((_$e159173_
                                         (find (lambda (_e159128159130_)
                                                 (let* ((_g159132159142_
                                                         _e159128159130_)
                                                        (_else159134159150_
                                                         (lambda () '#f))
                                                        (_K159136159154_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g159132159142_
                                                        'gx#module-export::t)
                                                       (let* ((_e159137159157_
                                                               (##unchecked-structure-ref
                                                                _g159132159142_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159138159160_
                                                               (##unchecked-structure-ref
                                                                _g159132159142_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159139159163_
                                                               (##unchecked-structure-ref
                                                                _g159132159142_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e159139159163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e159140159166_
                            (##unchecked-structure-ref
                             _g159132159142_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g159168159170_)
                              (eq? _g159168159170_ 'read-module-body))
                            _e159140159166_)
                           (_K159136159154_)
                           (_else159134159150_)))
                     (_else159134159150_)))
               (_else159134159150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude159127_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e159173_
                                        ((lambda (_xport159176_)
                                           (let ((_proc159179_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport159176_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc159179_)
                                                 _proc159179_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path159033_
                                                  _pre159123_
                                                  _proc159179_))))
                                         _$e159173_)
                                        _default-read-module-body159035_)))
                                 (_path-id159183_
                                  (gx#core-module-path->namespace
                                   _path159033_))
                                 (_pkg-id159185_
                                  (if _pkg159125_
                                      (string-append
                                       _pkg159125_
                                       '"/"
                                       _path-id159183_)
                                      _path-id159183_))
                                 (_module-id159187_
                                  (string->symbol _pkg-id159185_))
                                 (_module-ns159192_
                                  (let ((_$e159189_ _ns159124_))
                                    (if _$e159189_ _$e159189_ _pkg-id159185_)))
                                 (_body159195_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body159181_ _inp159117_))
                                   gx#current-module-reader-path
                                   _path159033_
                                   gx#current-module-reader-args
                                   _args159121_)))
                            (values _prelude159127_
                                    _module-id159187_
                                    _module-ns159192_
                                    _body159195_)))))))
                 (_string-e159037_
                  (lambda (_obj159114_ _what159115_)
                    (if (string? _obj159114_)
                        _obj159114_
                        (if (symbol? _obj159114_)
                            (symbol->string _obj159114_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what159115_)
                             _path159033_
                             _obj159114_)))))
                 (_read-lang-args159038_
                  (lambda (_inp159069_ _args159070_)
                    (let* ((_args159071159079_ _args159070_)
                           (_else159073159087_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path159033_)))
                           (_K159075159102_
                            (lambda (_args159090_ _prelude159091_)
                              (let* ((_pkg159093_
                                      (pgetq 'package: _args159090_))
                                     (_pkg159095_
                                      (if _pkg159093_
                                          (_string-e159037_
                                           _pkg159093_
                                           '"package")
                                          '#f))
                                     (_ns159097_
                                      (pgetq 'namespace: _args159090_))
                                     (_ns159099_
                                      (if _ns159097_
                                          (_string-e159037_
                                           _ns159097_
                                           '"namespace")
                                          '#f)))
                                (_read-body159036_
                                 _inp159069_
                                 _prelude159091_
                                 _ns159099_
                                 _pkg159095_
                                 _args159090_)))))
                      (if (##pair? _args159071159079_)
                          (let ((_hd159076159105_ (##car _args159071159079_))
                                (_tl159077159107_ (##cdr _args159071159079_)))
                            (let* ((_prelude159110_ _hd159076159105_)
                                   (_args159112_ _tl159077159107_))
                              (_K159075159102_ _args159112_ _prelude159110_)))
                          (_else159073159087_)))))
                 (_read-lang159039_
                  (lambda (_inp159044_)
                    (let* ((_head159046_ (read-line _inp159044_))
                           (_$e159048_ (string-index _head159046_ '#\space)))
                      (if _$e159048_
                          ((lambda (_ix159051_)
                             (let ((_lang159053_
                                    (substring _head159046_ '0 _ix159051_)))
                               (if (equal? _lang159053_ '"#lang")
                                   (let* ((_rest159055_
                                           (substring
                                            _head159046_
                                            (fx+ _ix159051_ '1)
                                            (string-length _head159046_)))
                                          (_args159066_
                                           (with-catch
                                            (lambda (_g159056159058_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path159033_
                                               _g159056159058_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest159055_
                                               (lambda (_g159061159063_)
                                                 (read-all
                                                  _g159061159063_
                                                  read)))))))
                                     (_read-lang-args159038_
                                      _inp159044_
                                      _args159066_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path159033_))))
                           _$e159048_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path159033_)))))
                 (_read-e159040_
                  (lambda (_inp159042_)
                    (if (eq? (peek-char _inp159042_) '#\#)
                        (_read-lang159039_ _inp159042_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path159033_)))))
          (gx#call-with-input-source-file _path159033_ _read-e159040_))))
    (define gx#core-read-module-package
      (lambda (_path158987_ _pre158988_ _ns158989_)
        (letrec ((_string-e158991_
                  (lambda (_e159031_)
                    (if (symbol? _e159031_)
                        (symbol->string _e159031_)
                        (if (string? _e159031_)
                            _e159031_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e159031_))))))
          (let _lp158993_ ((_dir158995_ (path-directory _path158987_))
                           (_pkg-path158996_ '()))
            (let ((_gerbil.pkg158998_ (path-expand '"gerbil.pkg" _dir158995_)))
              (if (file-exists? _gerbil.pkg158998_)
                  (let ((_plist159000_
                         (gx#core-library-package-plist__% _dir158995_ '#t)))
                    (if (null? _plist159000_)
                        (let ((_pkg159002_
                               (if (not (null? _pkg-path158996_))
                                   (string-join _pkg-path158996_ '"/")
                                   '#f)))
                          (values _pre158988_ _ns158989_ _pkg159002_))
                        (if (list? _plist159000_)
                            (let* ((_root159004_
                                    (pgetq 'package: _plist159000_))
                                   (_pkg159008_
                                    (let ((_pkg-path159006_
                                           (if _root159004_
                                               (cons (_string-e158991_
                                                      _root159004_)
                                                     _pkg-path158996_)
                                               _pkg-path158996_)))
                                      (if (not (null? _pkg-path159006_))
                                          (string-join _pkg-path159006_ '"/")
                                          '#f)))
                                   (_ns159015_
                                    (let ((_ns159013_
                                           (let ((_$e159010_ _ns158989_))
                                             (if _$e159010_
                                                 _$e159010_
                                                 (pgetq 'namespace:
                                                        _plist159000_)))))
                                      (if _ns159013_
                                          (_string-e158991_ _ns159013_)
                                          '#f)))
                                   (_pre159020_
                                    (let ((_$e159017_ _pre158988_))
                                      (if _$e159017_
                                          _$e159017_
                                          (pgetq 'prelude: _plist159000_)))))
                              (values _pre159020_ _ns159015_ _pkg159008_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist159000_))))
                  (let ((_dir*159023_
                         (path-strip-trailing-directory-separator
                          _dir158995_)))
                    (if (or (string-empty? _dir*159023_)
                            (equal? _dir158995_ _dir*159023_))
                        (values _pre158988_ _ns158989_ '#f)
                        (let ((_xpath159028_
                               (path-strip-directory _dir*159023_))
                              (_xdir159029_ (path-directory _dir*159023_)))
                          (_lp158993_
                           _xdir159029_
                           (cons _xpath159028_ _pkg-path158996_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path158985_)
        (path-strip-extension (path-strip-directory _path158985_))))
    (define gx#core-module-path->id
      (lambda (_path158983_)
        (string->symbol (gx#core-module-path->namespace _path158983_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path158962_ _rel158963_)
        (let* ((_path158965_ (gx#stx-e _stx-path158962_))
               (_path158967_
                (if (string-empty? (path-extension _path158965_))
                    (string-append _path158965_ '".ss")
                    _path158965_)))
          (gx#core-resolve-path__%
           _path158967_
           (let ((_$e158970_ (gx#stx-source _stx-path158962_)))
             (if _$e158970_ _$e158970_ _rel158963_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path158976_)
        (let ((_rel158978_ '#f))
          (gx#core-resolve-module-path__% _stx-path158976_ _rel158978_))))
    (define gx#core-resolve-module-path
      (lambda _g165014_
        (let ((_g165013_ (##length _g165014_)))
          (cond ((##fx= _g165013_ 1)
                 (apply (lambda (_stx-path158976_)
                          (gx#core-resolve-module-path__0 _stx-path158976_))
                        _g165014_))
                ((##fx= _g165013_ 2)
                 (apply (lambda (_stx-path158980_ _rel158981_)
                          (gx#core-resolve-module-path__%
                           _stx-path158980_
                           _rel158981_))
                        _g165014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g165014_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath158848_)
        (let* ((_spath158850_ (symbol->string (gx#stx-e _libpath158848_)))
               (_spath158852_
                (substring _spath158850_ '1 (string-length _spath158850_)))
               (_ext158854_ (path-extension _spath158852_))
               (_ssi158856_
                (if (string-empty? _ext158854_)
                    (string-append _spath158852_ '".ssi")
                    (string-append
                     (path-strip-extension _spath158852_)
                     '".ssi")))
               (_srcs158860_
                (if (string-empty? _ext158854_)
                    (map (lambda (_ext158858_)
                           (string-append _spath158852_ _ext158858_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath158852_ '()))))
          (let _lp158863_ ((_rest158865_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest158866158875_ _rest158865_)
                   (_E158869158879_
                    (lambda ()
                      (error '"No clause matching" _rest158866158875_))))
              (let ((_K158871158949_
                     (lambda (_rest158890_ _dir158891_)
                       (letrec ((_resolve158893_
                                 (lambda (_ssi158905_ _srcs158906_)
                                   (let ((_compiled-path158908_
                                          (path-expand
                                           _ssi158905_
                                           _dir158891_)))
                                     (if (file-exists? _compiled-path158908_)
                                         (path-normalize _compiled-path158908_)
                                         (let _lpr158910_ ((_rest-src158912_
                                                            _srcs158906_))
                                           (let* ((_rest-src158913158921_
                                                   _rest-src158912_)
                                                  (_else158915158929_
                                                   (lambda ()
                                                     (_lp158863_
                                                      _rest158890_)))
                                                  (_K158917158937_
                                                   (lambda (_rest-src158932_
                                                            _src158933_)
                                                     (let ((_src-path158935_
                                                            (path-expand
                                                             _src158933_
                                                             _dir158891_)))
                                                       (if (file-exists?
                                                            _src-path158935_)
                                                           (path-normalize
                                                            _src-path158935_)
                                                           (_lpr158910_
                                                            _rest-src158932_))))))
                                             (if (##pair? _rest-src158913158921_)
                                                 (let ((_hd158918158940_
                                                        (##car _rest-src158913158921_))
                                                       (_tl158919158942_
                                                        (##cdr _rest-src158913158921_)))
                                                   (let* ((_src158945_
                                                           _hd158918158940_)
                                                          (_rest-src158947_
                                                           _tl158919158942_))
                                                     (_K158917158937_
                                                      _rest-src158947_
                                                      _src158945_)))
                                                 (_else158915158929_)))))))))
                         (let ((_$e158895_
                                (gx#core-library-package-path-prefix
                                 _dir158891_)))
                           (if _$e158895_
                               ((lambda (_prefix158898_)
                                  (if (string-prefix?
                                       _prefix158898_
                                       _spath158852_)
                                      (let ((_ssi158902_
                                             (substring
                                              _ssi158856_
                                              (string-length _prefix158898_)
                                              (string-length _ssi158856_)))
                                            (_srcs158903_
                                             (map (lambda (_src158900_)
                                                    (substring
                                                     _src158900_
                                                     (string-length
                                                      _prefix158898_)
                                                     (string-length
                                                      _src158900_)))
                                                  _srcs158860_)))
                                        (_resolve158893_
                                         _ssi158902_
                                         _srcs158903_))
                                      (_lp158863_ _rest158890_)))
                                _$e158895_)
                               (_resolve158893_ _ssi158856_ _srcs158860_))))))
                    (_K158870158884_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath158848_))))
                (let ((_try-match158868158887_
                       (lambda ()
                         (if (##null? _rest158866158875_)
                             (_K158870158884_)
                             (_E158869158879_)))))
                  (if (##pair? _rest158866158875_)
                      (let ((_tl158873158954_ (##cdr _rest158866158875_))
                            (_hd158872158952_ (##car _rest158866158875_)))
                        (let ((_dir158957_ _hd158872158952_)
                              (_rest158959_ _tl158873158954_))
                          (_K158871158949_ _rest158959_ _dir158957_)))
                      (_try-match158868158887_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath158821_)
        (letrec ((_resolve158823_
                  (lambda (_path158840_ _base158841_)
                    (let ((_$e158843_ (string-rindex _base158841_ '#\/)))
                      (if _$e158843_
                          ((lambda (_idx158846_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base158841_ '0 _idx158846_)
                                '"/"
                                _path158840_))))
                           _$e158843_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path158840_))))))))
          (let ((_spath158825_ (symbol->string (gx#stx-e _modpath158821_)))
                (_mod158826_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod158826_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath158821_))
            (let ((_mpath158828_
                   (symbol->string
                    (##structure-ref
                     _mod158826_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp158830_ ((_spath158832_ _spath158825_)
                               (_mpath158833_ _mpath158828_))
                (if (string-prefix? '"../" _spath158832_)
                    (let ((_$e158835_ (string-rindex _mpath158833_ '#\/)))
                      (if _$e158835_
                          ((lambda (_idx158838_)
                             (_lp158830_
                              (substring
                               _spath158832_
                               '3
                               (string-length _spath158832_))
                              (substring _mpath158833_ '0 _idx158838_)))
                           _$e158835_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath158821_)))
                    (if (string-prefix? '"./" _spath158832_)
                        (_lp158830_
                         (substring
                          _spath158832_
                          '2
                          (string-length _spath158832_))
                         _mpath158833_)
                        (_resolve158823_ _spath158832_ _mpath158833_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir158814_)
        (let ((_$e158816_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir158814_))))
          (if _$e158816_
              ((lambda (_pkg158819_)
                 (string-append (symbol->string _pkg158819_) '"/"))
               _$e158816_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir158786_ _exists?158787_)
        (let* ((_cache158789_ (gx#core-library-package-cache))
               (_$e158791_ (table-ref _cache158789_ _dir158786_ '#f)))
          (if _$e158791_
              (values _$e158791_)
              (let* ((_gerbil.pkg158794_
                      (path-expand '"gerbil.pkg" _dir158786_))
                     (_plist158801_
                      (if (or _exists?158787_
                              (file-exists? _gerbil.pkg158794_))
                          (let ((_e158799_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg158794_
                                  read)))
                            (if (eof-object? _e158799_)
                                '()
                                (if (list? _e158799_)
                                    _e158799_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg158794_
                                     _e158799_))))
                          '())))
                (table-set! _cache158789_ _dir158786_ _plist158801_)
                _plist158801_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir158807_)
        (let ((_exists?158809_ '#f))
          (gx#core-library-package-plist__% _dir158807_ _exists?158809_))))
    (define gx#core-library-package-plist
      (lambda _g165016_
        (let ((_g165015_ (##length _g165016_)))
          (cond ((##fx= _g165015_ 1)
                 (apply (lambda (_dir158807_)
                          (gx#core-library-package-plist__0 _dir158807_))
                        _g165016_))
                ((##fx= _g165015_ 2)
                 (apply (lambda (_dir158811_ _exists?158812_)
                          (gx#core-library-package-plist__%
                           _dir158811_
                           _exists?158812_))
                        _g165016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g165016_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e158780_ (gx#current-expander-module-library-package-cache)))
          (if _$e158780_
              (values _$e158780_)
              (let ((_cache158783_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache158783_)
                _cache158783_)))))
    (define gx#core-library-module-path?
      (lambda (_stx158777_) (gx#core-special-module-path? _stx158777_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx158775_) (gx#core-special-module-path? _stx158775_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx158770_ _char158771_)
        (if (gx#identifier? _stx158770_)
            (if (interned-symbol? (gx#stx-e _stx158770_))
                (let ((_str158773_ (symbol->string (gx#stx-e _stx158770_))))
                  (if (fx> (string-length _str158773_) '1)
                      (eq? (string-ref _str158773_ '0) _char158771_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx158764_)
        (gx#core-bound-identifier?__%
         _stx158764_
         (lambda (_g158765158767_)
           (gx#expander-binding?__% _g158765158767_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx158758_)
        (gx#core-bound-identifier?__%
         _stx158758_
         (lambda (_g158759158761_)
           (gx#expander-binding?__% _g158759158761_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx158745_)
        (letrec ((_module-prelude?158747_
                  (lambda (_e158753_)
                    (let ((_$e158755_
                           (##structure-instance-of?
                            _e158753_
                            'gx#module-context::t)))
                      (if _$e158755_
                          _$e158755_
                          (##structure-instance-of?
                           _e158753_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx158745_
           (lambda (_g158748158750_)
             (gx#expander-binding?__%
              _g158748158750_
              _module-prelude?158747_))))))
    (define gx#core-bind-import!__%
      (lambda (_in158675_ _ctx158676_ _force-weak?158677_)
        (let* ((_in158678158687_ _in158675_)
               (_E158680158691_
                (lambda () (error '"No clause matching" _in158678158687_)))
               (_K158681158704_
                (lambda (_weak?158694_ _phi158695_ _key158696_ _source158697_)
                  (gx#core-bind!__%
                   _key158696_
                   (let ((_e158699_
                          (gx#core-resolve-module-export _source158697_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e158699_
                       '1
                       gx#binding::t
                       '#f)
                      _key158696_
                      _phi158695_
                      _e158699_
                      (##unchecked-structure-ref
                       _source158697_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e158701_ _force-weak?158677_))
                        (if _$e158701_ _$e158701_ _weak?158694_))))
                   gx#core-context-rebind?
                   _phi158695_
                   _ctx158676_))))
          (if (##structure-direct-instance-of?
               _in158678158687_
               'gx#module-import::t)
              (let* ((_e158682158707_
                      (##unchecked-structure-ref
                       _in158678158687_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source158710_ _e158682158707_)
                     (_e158683158712_
                      (##unchecked-structure-ref
                       _in158678158687_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key158715_ _e158683158712_)
                     (_e158684158717_
                      (##unchecked-structure-ref
                       _in158678158687_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi158720_ _e158684158717_)
                     (_e158685158722_
                      (##unchecked-structure-ref
                       _in158678158687_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?158725_ _e158685158722_))
                (_K158681158704_
                 _weak?158725_
                 _phi158720_
                 _key158715_
                 _source158710_))
              (_E158680158691_)))))
    (define gx#core-bind-import!__0
      (lambda (_in158730_)
        (let* ((_ctx158732_ (gx#current-expander-context))
               (_force-weak?158734_ '#f))
          (gx#core-bind-import!__%
           _in158730_
           _ctx158732_
           _force-weak?158734_))))
    (define gx#core-bind-import!__1
      (lambda (_in158736_ _ctx158737_)
        (let ((_force-weak?158739_ '#f))
          (gx#core-bind-import!__%
           _in158736_
           _ctx158737_
           _force-weak?158739_))))
    (define gx#core-bind-import!
      (lambda _g165018_
        (let ((_g165017_ (##length _g165018_)))
          (cond ((##fx= _g165017_ 1)
                 (apply (lambda (_in158730_)
                          (gx#core-bind-import!__0 _in158730_))
                        _g165018_))
                ((##fx= _g165017_ 2)
                 (apply (lambda (_in158736_ _ctx158737_)
                          (gx#core-bind-import!__1 _in158736_ _ctx158737_))
                        _g165018_))
                ((##fx= _g165017_ 3)
                 (apply (lambda (_in158741_ _ctx158742_ _force-weak?158743_)
                          (gx#core-bind-import!__%
                           _in158741_
                           _ctx158742_
                           _force-weak?158743_))
                        _g165018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g165018_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in158661_ _ctx158662_)
        (gx#core-bind-import!__% _in158661_ _ctx158662_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in158667_)
        (let ((_ctx158669_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in158667_ _ctx158669_))))
    (define gx#core-bind-weak-import!
      (lambda _g165020_
        (let ((_g165019_ (##length _g165020_)))
          (cond ((##fx= _g165019_ 1)
                 (apply (lambda (_in158667_)
                          (gx#core-bind-weak-import!__0 _in158667_))
                        _g165020_))
                ((##fx= _g165019_ 2)
                 (apply (lambda (_in158671_ _ctx158672_)
                          (gx#core-bind-weak-import!__%
                           _in158671_
                           _ctx158672_))
                        _g165020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g165020_))))))
    (define gx#core-resolve-module-export
      (lambda (_out158552_)
        (letrec ((_subst158554_
                  (lambda (_key158600_)
                    (let* ((_key158601158609_ _key158600_)
                           (_else158603158617_ (lambda () _key158600_))
                           (_K158605158648_
                            (lambda (_mark158620_ _id158621_)
                              (let* ((_mark158622158628_ _mark158620_)
                                     (_E158624158632_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark158622158628_)))
                                     (_K158625158640_
                                      (lambda (_subst158635_)
                                        (let ((_$e158637_
                                               (if _subst158635_
                                                   (table-ref
                                                    _subst158635_
                                                    _id158621_
                                                    '#f)
                                                   '#f)))
                                          (if _$e158637_
                                              _$e158637_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key158600_))))))
                                (if (##structure-instance-of?
                                     _mark158622158628_
                                     'gx#expander-mark::t)
                                    (let* ((_e158626158643_
                                            (##unchecked-structure-ref
                                             _mark158622158628_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst158646_ _e158626158643_))
                                      (_K158625158640_ _subst158646_))
                                    (_E158624158632_))))))
                      (if (##pair? _key158601158609_)
                          (let ((_hd158606158651_ (##car _key158601158609_))
                                (_tl158607158653_ (##cdr _key158601158609_)))
                            (let* ((_id158656_ _hd158606158651_)
                                   (_mark158658_ _tl158607158653_))
                              (_K158605158648_ _mark158658_ _id158656_)))
                          (_else158603158617_))))))
          (let* ((_out158555158565_ _out158552_)
                 (_E158557158569_
                  (lambda () (error '"No clause matching" _out158555158565_)))
                 (_K158558158576_
                  (lambda (_phi158572_ _key158573_ _ctx158574_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx158574_ _phi158572_)
                     (_subst158554_ _key158573_)))))
            (if (##structure-direct-instance-of?
                 _out158555158565_
                 'gx#module-export::t)
                (let* ((_e158559158579_
                        (##unchecked-structure-ref
                         _out158555158565_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx158582_ _e158559158579_)
                       (_e158560158584_
                        (##unchecked-structure-ref
                         _out158555158565_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key158587_ _e158560158584_)
                       (_e158561158589_
                        (##unchecked-structure-ref
                         _out158555158565_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi158592_ _e158561158589_)
                       (_e158562158594_
                        (##unchecked-structure-ref
                         _out158555158565_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e158563158597_
                        (##unchecked-structure-ref
                         _out158555158565_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K158558158576_ _phi158592_ _key158587_ _ctx158582_))
                (_E158557158569_))))))
    (define gx#core-module-export->import__%
      (lambda (_out158477_ _rename158478_ _dphi158479_)
        (let* ((_out158480158490_ _out158477_)
               (_E158482158494_
                (lambda () (error '"No clause matching" _out158480158490_)))
               (_K158483158506_
                (lambda (_weak?158497_
                         _name158498_
                         _phi158499_
                         _key158500_
                         _ctx158501_)
                  (##structure
                   gx#module-import::t
                   _out158477_
                   (let ((_$e158503_ _rename158478_))
                     (if _$e158503_ _$e158503_ _name158498_))
                   (fx+ _phi158499_ _dphi158479_)
                   _weak?158497_))))
          (if (##structure-direct-instance-of?
               _out158480158490_
               'gx#module-export::t)
              (let* ((_e158484158509_
                      (##unchecked-structure-ref
                       _out158480158490_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx158512_ _e158484158509_)
                     (_e158485158514_
                      (##unchecked-structure-ref
                       _out158480158490_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key158517_ _e158485158514_)
                     (_e158486158519_
                      (##unchecked-structure-ref
                       _out158480158490_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi158522_ _e158486158519_)
                     (_e158487158524_
                      (##unchecked-structure-ref
                       _out158480158490_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name158527_ _e158487158524_)
                     (_e158488158529_
                      (##unchecked-structure-ref
                       _out158480158490_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?158532_ _e158488158529_))
                (_K158483158506_
                 _weak?158532_
                 _name158527_
                 _phi158522_
                 _key158517_
                 _ctx158512_))
              (_E158482158494_)))))
    (define gx#core-module-export->import__0
      (lambda (_out158537_)
        (let* ((_rename158539_ '#f) (_dphi158541_ '0))
          (gx#core-module-export->import__%
           _out158537_
           _rename158539_
           _dphi158541_))))
    (define gx#core-module-export->import__1
      (lambda (_out158543_ _rename158544_)
        (let ((_dphi158546_ '0))
          (gx#core-module-export->import__%
           _out158543_
           _rename158544_
           _dphi158546_))))
    (define gx#core-module-export->import
      (lambda _g165022_
        (let ((_g165021_ (##length _g165022_)))
          (cond ((##fx= _g165021_ 1)
                 (apply (lambda (_out158537_)
                          (gx#core-module-export->import__0 _out158537_))
                        _g165022_))
                ((##fx= _g165021_ 2)
                 (apply (lambda (_out158543_ _rename158544_)
                          (gx#core-module-export->import__1
                           _out158543_
                           _rename158544_))
                        _g165022_))
                ((##fx= _g165021_ 3)
                 (apply (lambda (_out158548_ _rename158549_ _dphi158550_)
                          (gx#core-module-export->import__%
                           _out158548_
                           _rename158549_
                           _dphi158550_))
                        _g165022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g165022_))))))
    (define gx#core-expand-module%
      (lambda (_stx158405_)
        (letrec ((_make-context158407_
                  (lambda (_id158458_)
                    (let* ((_super158460_ (gx#current-expander-context))
                           (_bind-id158462_ (gx#stx-e _id158458_))
                           (_mod-id158464_
                            (if (##structure-instance-of?
                                 _super158460_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super158460_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id158462_)
                                _bind-id158462_))
                           (_ns158466_ (symbol->string _mod-id158464_))
                           (_path158473_
                            (if (##structure-instance-of?
                                 _super158460_
                                 'gx#module-context::t)
                                (let ((_path158468_
                                       (##unchecked-structure-ref
                                        _super158460_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path158468_)
                                          (null? _path158468_))
                                      (cons _bind-id158462_ _path158468_)
                                      (if (not _path158468_)
                                          _bind-id158462_
                                          (cons _bind-id158462_
                                                (cons _path158468_ '())))))
                                _bind-id158462_)))
                      (let ((__obj164998
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
                         __obj164998
                         _mod-id158464_
                         _super158460_
                         _ns158466_
                         _path158473_)
                        __obj164998)))))
          (let* ((_e158408158418_ _stx158405_)
                 (_E158410158422_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158408158418_)))
                 (_E158409158454_
                  (lambda ()
                    (if (gx#stx-pair? _e158408158418_)
                        (let ((_e158411158426_ (gx#syntax-e _e158408158418_)))
                          (let ((_hd158412158429_ (##car _e158411158426_))
                                (_tl158413158431_ (##cdr _e158411158426_)))
                            (if (gx#stx-pair? _tl158413158431_)
                                (let ((_e158414158434_
                                       (gx#syntax-e _tl158413158431_)))
                                  (let ((_hd158415158437_
                                         (##car _e158414158434_))
                                        (_tl158416158439_
                                         (##cdr _e158414158434_)))
                                    (let* ((_id158442_ _hd158415158437_)
                                           (_body158444_ _tl158416158439_))
                                      (if (and (gx#identifier? _id158442_)
                                               (gx#stx-list? _body158444_))
                                          (let* ((_ctx158446_
                                                  (_make-context158407_
                                                   _id158442_))
                                                 (_body158448_
                                                  (gx#core-expand-module-begin
                                                   _body158444_
                                                   _ctx158446_))
                                                 (_body158450_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body158448_)
                                                   (gx#stx-source
                                                    _stx158405_))))
                                            (##unchecked-structure-set!
                                             _ctx158446_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body158450_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx158446_
                                             _body158450_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id158442_
                                             _ctx158446_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id158442_)
                                              _body158450_)
                                             (gx#stx-source _stx158405_)))
                                          (_E158410158422_)))))
                                (_E158410158422_))))
                        (_E158410158422_)))))
            (_E158409158454_)))))
    (define gx#core-expand-module-begin
      (lambda (_body158371_ _ctx158372_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx158375_
                   (gx#core-expand-head (cons '%%begin-module _body158371_)))
                  (_e158376158383_ _stx158375_)
                  (_E158378158387_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx158375_)))
                  (_E158377158401_
                   (lambda ()
                     (if (gx#stx-pair? _e158376158383_)
                         (let ((_e158379158391_ (gx#syntax-e _e158376158383_)))
                           (let ((_hd158380158394_ (##car _e158379158391_))
                                 (_tl158381158396_ (##cdr _e158379158391_)))
                             (if (and (gx#identifier? _hd158380158394_)
                                      (gx#core-identifier=?
                                       _hd158380158394_
                                       '%#begin-module))
                                 (let ((_body158399_ _tl158381158396_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx158375_)
                                           _body158399_
                                           (gx#core-expand-module-body
                                            _body158399_))
                                       (_E158378158387_)))
                                 (_E158378158387_))))
                         (_E158378158387_)))))
             (_E158377158401_)))
         gx#current-expander-context
         _ctx158372_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body158167_)
        (letrec ((_expand-special158169_
                  (lambda (_hd158298_ _K158299_ _rest158300_ _r158301_)
                    (let* ((_e158302158319_ _hd158298_)
                           (_E158314158323_
                            (lambda ()
                              (_K158299_
                               _rest158300_
                               (cons (gx#core-expand-top _hd158298_)
                                     _r158301_))))
                           (_E158304158335_
                            (lambda ()
                              (if (gx#stx-pair? _e158302158319_)
                                  (let ((_e158315158327_
                                         (gx#syntax-e _e158302158319_)))
                                    (let ((_hd158316158330_
                                           (##car _e158315158327_))
                                          (_tl158317158332_
                                           (##cdr _e158315158327_)))
                                      (if (and (gx#identifier?
                                                _hd158316158330_)
                                               (gx#core-identifier=?
                                                _hd158316158330_
                                                '%#export))
                                          (if '#t
                                              (_K158299_
                                               _rest158300_
                                               (cons _hd158298_ _r158301_))
                                              (_E158314158323_))
                                          (_E158314158323_))))
                                  (_E158314158323_))))
                           (_E158303158367_
                            (lambda ()
                              (if (gx#stx-pair? _e158302158319_)
                                  (let ((_e158305158339_
                                         (gx#syntax-e _e158302158319_)))
                                    (let ((_hd158306158342_
                                           (##car _e158305158339_))
                                          (_tl158307158344_
                                           (##cdr _e158305158339_)))
                                      (if (and (gx#identifier?
                                                _hd158306158342_)
                                               (gx#core-identifier=?
                                                _hd158306158342_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl158307158344_)
                                              (let ((_e158308158347_
                                                     (gx#syntax-e
                                                      _tl158307158344_)))
                                                (let ((_hd158309158350_
                                                       (##car _e158308158347_))
                                                      (_tl158310158352_
                                                       (##cdr _e158308158347_)))
                                                  (let ((_hd-bind158355_
                                                         _hd158309158350_))
                                                    (if (gx#stx-pair?
                                                         _tl158310158352_)
                                                        (let ((_e158311158357_
                                                               (gx#syntax-e
                                                                _tl158310158352_)))
                                                          (let ((_hd158312158360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e158311158357_))
                        (_tl158313158362_ (##cdr _e158311158357_)))
                    (let ((_expr158365_ _hd158312158360_))
                      (if (gx#stx-null? _tl158313158362_)
                          (if (gx#core-bind-values? _hd-bind158355_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind158355_)
                                (_K158299_
                                 _rest158300_
                                 (cons _hd158298_ _r158301_)))
                              (_E158304158335_))
                          (_E158304158335_)))))
                (_E158304158335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158304158335_))
                                          (_E158304158335_))))
                                  (_E158304158335_)))))
                      (_E158303158367_))))
                 (_expand-body158170_
                  (lambda (_rbody158172_)
                    (let _lp158174_ ((_rest158176_ _rbody158172_)
                                     (_body158177_ '()))
                      (let* ((_rest158178158186_ _rest158176_)
                             (_else158180158194_ (lambda () _body158177_))
                             (_K158182158286_
                              (lambda (_rest158197_ _hd158198_)
                                (let* ((_e158199158220_ _hd158198_)
                                       (_E158215158224_
                                        (lambda ()
                                          (_lp158174_
                                           _rest158197_
                                           (cons (gx#core-expand-expression
                                                  _hd158198_)
                                                 _body158177_))))
                                       (_E158211158238_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158199158220_)
                                              (let ((_e158216158228_
                                                     (gx#syntax-e
                                                      _e158199158220_)))
                                                (let ((_hd158217158231_
                                                       (##car _e158216158228_))
                                                      (_tl158218158233_
                                                       (##cdr _e158216158228_)))
                                                  (let ((_form158236_
                                                         _hd158217158231_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form158236_
                                                         gx#special-form-binding?)
                                                        (_lp158174_
                                                         _rest158197_
                                                         (cons _hd158198_
                                                               _body158177_))
                                                        (_E158215158224_)))))
                                              (_E158215158224_))))
                                       (_E158201158250_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158199158220_)
                                              (let ((_e158212158242_
                                                     (gx#syntax-e
                                                      _e158199158220_)))
                                                (let ((_hd158213158245_
                                                       (##car _e158212158242_))
                                                      (_tl158214158247_
                                                       (##cdr _e158212158242_)))
                                                  (if (and (gx#identifier?
                                                            _hd158213158245_)
                                                           (gx#core-identifier=?
                                                            _hd158213158245_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp158174_
                                                           _rest158197_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd158198_)
                         _body158177_))
                  (_E158211158238_))
              (_E158211158238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158211158238_))))
                                       (_E158200158282_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158199158220_)
                                              (let ((_e158202158254_
                                                     (gx#syntax-e
                                                      _e158199158220_)))
                                                (let ((_hd158203158257_
                                                       (##car _e158202158254_))
                                                      (_tl158204158259_
                                                       (##cdr _e158202158254_)))
                                                  (if (and (gx#identifier?
                                                            _hd158203158257_)
                                                           (gx#core-identifier=?
                                                            _hd158203158257_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl158204158259_)
                                                          (let ((_e158205158262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl158204158259_)))
                    (let ((_hd158206158265_ (##car _e158205158262_))
                          (_tl158207158267_ (##cdr _e158205158262_)))
                      (let ((_hd-bind158270_ _hd158206158265_))
                        (if (gx#stx-pair? _tl158207158267_)
                            (let ((_e158208158272_
                                   (gx#syntax-e _tl158207158267_)))
                              (let ((_hd158209158275_ (##car _e158208158272_))
                                    (_tl158210158277_ (##cdr _e158208158272_)))
                                (let ((_expr158280_ _hd158209158275_))
                                  (if (gx#stx-null? _tl158210158277_)
                                      (if '#t
                                          (_lp158174_
                                           _rest158197_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind158270_)
                                                   (gx#core-expand-expression
                                                    _expr158280_))
                                                  (gx#stx-source _hd158198_))
                                                 _body158177_))
                                          (_E158201158250_))
                                      (_E158201158250_)))))
                            (_E158201158250_)))))
                  (_E158201158250_))
              (_E158201158250_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158201158250_)))))
                                  (_E158200158282_)))))
                        (if (##pair? _rest158178158186_)
                            (let ((_hd158183158289_ (##car _rest158178158186_))
                                  (_tl158184158291_
                                   (##cdr _rest158178158186_)))
                              (let* ((_hd158294_ _hd158183158289_)
                                     (_rest158296_ _tl158184158291_))
                                (_K158182158286_ _rest158296_ _hd158294_)))
                            (_else158180158194_)))))))
          (_expand-body158170_
           (gx#core-expand-block__%
            (cons '%#begin-module _body158167_)
            _expand-special158169_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx158010_
               _expanded?158011_
               _method158012_
               _current-phi158013_
               _expand1158014_)
        (letrec ((_K158016_
                  (lambda (_rest158134_ _r158135_)
                    (let* ((_e158136158143_ _rest158134_)
                           (_E158138158147_ (lambda () _r158135_))
                           (_E158137158163_
                            (lambda ()
                              (if (gx#stx-pair? _e158136158143_)
                                  (let ((_e158139158151_
                                         (gx#syntax-e _e158136158143_)))
                                    (let ((_hd158140158154_
                                           (##car _e158139158151_))
                                          (_tl158141158156_
                                           (##cdr _e158139158151_)))
                                      (let* ((_hd158159_ _hd158140158154_)
                                             (_rest158161_ _tl158141158156_))
                                        (if '#t
                                            (_step158017_
                                             _hd158159_
                                             _rest158161_
                                             _r158135_)
                                            (_E158138158147_)))))
                                  (_E158138158147_)))))
                      (_E158137158163_))))
                 (_step158017_
                  (lambda (_hd158048_ _rest158049_ _r158050_)
                    (let* ((_e158051158069_ _hd158048_)
                           (_E158064158073_
                            (lambda ()
                              (if (_expanded?158011_ (gx#stx-e _hd158048_))
                                  (_K158016_
                                   _rest158049_
                                   (cons (gx#stx-e _hd158048_) _r158050_))
                                  (_expand1158014_
                                   _hd158048_
                                   _K158016_
                                   _rest158049_
                                   _r158050_))))
                           (_E158060158089_
                            (lambda ()
                              (if (gx#stx-pair? _e158051158069_)
                                  (let ((_e158065158077_
                                         (gx#syntax-e _e158051158069_)))
                                    (let ((_hd158066158080_
                                           (##car _e158065158077_))
                                          (_tl158067158082_
                                           (##cdr _e158065158077_)))
                                      (let* ((_macro158085_ _hd158066158080_)
                                             (_body158087_ _tl158067158082_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro158085_
                                             gx#syntax-binding?)
                                            (_K158016_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro158085_)
                                                    _hd158048_
                                                    _method158012_)
                                                   _rest158049_)
                                             _r158050_)
                                            (_E158064158073_)))))
                                  (_E158064158073_))))
                           (_E158053158103_
                            (lambda ()
                              (if (gx#stx-pair? _e158051158069_)
                                  (let ((_e158061158093_
                                         (gx#syntax-e _e158051158069_)))
                                    (let ((_hd158062158096_
                                           (##car _e158061158093_))
                                          (_tl158063158098_
                                           (##cdr _e158061158093_)))
                                      (if (eq? (gx#stx-e _hd158062158096_)
                                               'begin:)
                                          (let ((_body158101_
                                                 _tl158063158098_))
                                            (if '#t
                                                (_K158016_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest158049_
                                                  _body158101_)
                                                 _r158050_)
                                                (_E158060158089_)))
                                          (_E158060158089_))))
                                  (_E158060158089_))))
                           (_E158052158130_
                            (lambda ()
                              (if (gx#stx-pair? _e158051158069_)
                                  (let ((_e158054158107_
                                         (gx#syntax-e _e158051158069_)))
                                    (let ((_hd158055158110_
                                           (##car _e158054158107_))
                                          (_tl158056158112_
                                           (##cdr _e158054158107_)))
                                      (if (eq? (gx#stx-e _hd158055158110_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl158056158112_)
                                              (let ((_e158057158115_
                                                     (gx#syntax-e
                                                      _tl158056158112_)))
                                                (let ((_hd158058158118_
                                                       (##car _e158057158115_))
                                                      (_tl158059158120_
                                                       (##cdr _e158057158115_)))
                                                  (let* ((_dphi158123_
                                                          _hd158058158118_)
                                                         (_body158125_
                                                          _tl158059158120_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi158123_)
                                                        (let ((_rbody158128_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K158016_ _body158125_ '()))
                        _current-phi158013_
                        (fx+ (gx#stx-e _dphi158123_) (_current-phi158013_)))))
                  (_K158016_
                   _rest158049_
                   (foldr1 cons _r158050_ _rbody158128_)))
                (_E158053158103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158053158103_))
                                          (_E158053158103_))))
                                  (_E158053158103_)))))
                      (_E158052158130_)))))
          (let* ((_e158018158025_ _stx158010_)
                 (_E158020158029_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158018158025_)))
                 (_E158019158044_
                  (lambda ()
                    (if (gx#stx-pair? _e158018158025_)
                        (let ((_e158021158033_ (gx#syntax-e _e158018158025_)))
                          (let ((_hd158022158036_ (##car _e158021158033_))
                                (_tl158023158038_ (##cdr _e158021158033_)))
                            (let ((_body158041_ _tl158023158038_))
                              (if '#t
                                  (if (_current-phi158013_)
                                      (_K158016_ _body158041_ '())
                                      (call-with-parameters
                                       (lambda () (_K158016_ _body158041_ '()))
                                       _current-phi158013_
                                       (gx#current-expander-phi)))
                                  (_E158020158029_)))))
                        (_E158020158029_)))))
            (_E158019158044_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx157677_ _internal-expand?157678_)
        (letrec ((_expand1157680_
                  (lambda (_hd157990_ _K157991_ _rest157992_ _r157993_)
                    (if (gx#core-bound-module? _hd157990_)
                        (_import1157681_
                         (gx#syntax-local-e__0 _hd157990_)
                         _K157991_
                         _rest157992_
                         _r157993_)
                        (if (gx#core-library-module-path? _hd157990_)
                            (_import1157681_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd157990_))
                             _K157991_
                             _rest157992_
                             _r157993_)
                            (if (gx#core-library-relative-module-path?
                                 _hd157990_)
                                (_import1157681_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd157990_))
                                 _K157991_
                                 _rest157992_
                                 _r157993_)
                                (let ((_e157995_ (gx#stx-e _hd157990_)))
                                  (if (pair? _e157995_)
                                      (let ((_$e157997_
                                             (gx#stx-e (car _e157995_))))
                                        (if (eq? 'spec: _$e157997_)
                                            (_import-spec157684_
                                             _hd157990_
                                             _K157991_
                                             _rest157992_
                                             _r157993_)
                                            (if (eq? 'in: _$e157997_)
                                                (_import-submodule157682_
                                                 _hd157990_
                                                 _K157991_
                                                 _rest157992_
                                                 _r157993_)
                                                (if (eq? 'runtime: _$e157997_)
                                                    (_import-runtime157683_
                                                     _hd157990_
                                                     _K157991_
                                                     _rest157992_
                                                     _r157993_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx157677_
                                                     _hd157990_)))))
                                      (if (string? _e157995_)
                                          (_import1157681_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd157990_
                                             (gx#stx-source _stx157677_)))
                                           _K157991_
                                           _rest157992_
                                           _r157993_)
                                          (if (##structure-instance-of?
                                               _e157995_
                                               'gx#module-context::t)
                                              (_K157991_
                                               _rest157992_
                                               (cons _e157995_ _r157993_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx157677_
                                               _hd157990_))))))))))
                 (_import1157681_
                  (lambda (_ctx157979_ _K157980_ _rest157981_ _r157982_)
                    (let ((_dphi157984_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K157980_
                       _rest157981_
                       (cons (##structure
                              gx#import-set::t
                              _ctx157979_
                              _dphi157984_
                              (map (lambda (_g157985157987_)
                                     (gx#core-module-export->import__%
                                      _g157985157987_
                                      '#f
                                      _dphi157984_))
                                   (##unchecked-structure-ref
                                    _ctx157979_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r157982_)))))
                 (_import-submodule157682_
                  (lambda (_hd157946_ _K157947_ _rest157948_ _r157949_)
                    (let* ((_e157950157957_ _hd157946_)
                           (_E157952157961_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157950157957_)))
                           (_E157951157975_
                            (lambda ()
                              (if (gx#stx-pair? _e157950157957_)
                                  (let ((_e157953157965_
                                         (gx#syntax-e _e157950157957_)))
                                    (let ((_hd157954157968_
                                           (##car _e157953157965_))
                                          (_tl157955157970_
                                           (##cdr _e157953157965_)))
                                      (let ((_spath157973_ _tl157955157970_))
                                        (if '#t
                                            (_import1157681_
                                             (_import-spec-source157685_
                                              _spath157973_)
                                             _K157947_
                                             _rest157948_
                                             _r157949_)
                                            (_E157952157961_)))))
                                  (_E157952157961_)))))
                      (_E157951157975_))))
                 (_import-runtime157683_
                  (lambda (_hd157913_ _K157914_ _rest157915_ _r157916_)
                    (let* ((_e157917157924_ _hd157913_)
                           (_E157919157928_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157917157924_)))
                           (_E157918157942_
                            (lambda ()
                              (if (gx#stx-pair? _e157917157924_)
                                  (let ((_e157920157932_
                                         (gx#syntax-e _e157917157924_)))
                                    (let ((_hd157921157935_
                                           (##car _e157920157932_))
                                          (_tl157922157937_
                                           (##cdr _e157920157932_)))
                                      (let ((_spath157940_ _tl157922157937_))
                                        (if '#t
                                            (_K157914_
                                             _rest157915_
                                             (cons (_import-spec-source157685_
                                                    _spath157940_)
                                                   _r157916_))
                                            (_E157919157928_)))))
                                  (_E157919157928_)))))
                      (_E157918157942_))))
                 (_import-spec157684_
                  (lambda (_hd157752_ _K157753_ _rest157754_ _r157755_)
                    (let* ((_e157756157773_ _hd157752_)
                           (_E157765157777_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157756157773_)))
                           (_E157758157887_
                            (lambda ()
                              (if (gx#stx-pair? _e157756157773_)
                                  (let ((_e157766157781_
                                         (gx#syntax-e _e157756157773_)))
                                    (let ((_hd157767157784_
                                           (##car _e157766157781_))
                                          (_tl157768157786_
                                           (##cdr _e157766157781_)))
                                      (if (gx#stx-pair? _tl157768157786_)
                                          (let ((_e157769157789_
                                                 (gx#syntax-e
                                                  _tl157768157786_)))
                                            (let ((_hd157770157792_
                                                   (##car _e157769157789_))
                                                  (_tl157771157794_
                                                   (##cdr _e157769157789_)))
                                              (let* ((_path157797_
                                                      _hd157770157792_)
                                                     (_specs157799_
                                                      _tl157771157794_))
                                                (if '#t
                                                    (let ((_src-ctx157801_
                                                           (_import-spec-source157685_
                                                            _path157797_))
                                                          (_exports157802_
                                                           (make-table))
                                                          (_specs157803_
                                                           (gx#syntax->list
                                                            _specs157799_)))
                                                      (for-each
                                                       (lambda (_out157805_)
                                                         (table-set!
                                                          _exports157802_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out157805_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out157805_
                         '4
                         gx#module-export::t
                         '#f))
                  _out157805_))
               (##unchecked-structure-ref
                _src-ctx157801_
                '9
                gx#module-context::t
                '#f))
              (_K157753_
               _rest157754_
               (foldl1 (lambda (_spec157807_ _r157808_)
                         (let* ((_e157809157825_ _spec157807_)
                                (_E157811157829_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e157809157825_)))
                                (_E157810157883_
                                 (lambda ()
                                   (if (gx#stx-pair? _e157809157825_)
                                       (let ((_e157812157833_
                                              (gx#syntax-e _e157809157825_)))
                                         (let ((_hd157813157836_
                                                (##car _e157812157833_))
                                               (_tl157814157838_
                                                (##cdr _e157812157833_)))
                                           (let ((_phi157841_
                                                  _hd157813157836_))
                                             (if (gx#stx-pair?
                                                  _tl157814157838_)
                                                 (let ((_e157815157843_
                                                        (gx#syntax-e
                                                         _tl157814157838_)))
                                                   (let ((_hd157816157846_
                                                          (##car _e157815157843_))
                                                         (_tl157817157848_
                                                          (##cdr _e157815157843_)))
                                                     (let ((_name157851_
                                                            _hd157816157846_))
                                                       (if (gx#stx-pair?
                                                            _tl157817157848_)
                                                           (let ((_e157818157853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl157817157848_)))
                     (let ((_hd157819157856_ (##car _e157818157853_))
                           (_tl157820157858_ (##cdr _e157818157853_)))
                       (let ((_src-phi157861_ _hd157819157856_))
                         (if (gx#stx-pair? _tl157820157858_)
                             (let ((_e157821157863_
                                    (gx#syntax-e _tl157820157858_)))
                               (let ((_hd157822157866_ (##car _e157821157863_))
                                     (_tl157823157868_
                                      (##cdr _e157821157863_)))
                                 (let ((_src-name157871_ _hd157822157866_))
                                   (if (gx#stx-null? _tl157823157868_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi157861_)
                                                (gx#identifier?
                                                 _src-name157871_)
                                                (gx#stx-fixnum? _phi157841_)
                                                (gx#identifier? _name157851_))
                                           (let ((_src-phi157873_
                                                  (gx#stx-e _src-phi157861_))
                                                 (_src-name157874_
                                                  (gx#core-identifier-key
                                                   _src-name157871_))
                                                 (_phi157875_
                                                  (gx#stx-e _phi157841_))
                                                 (_name157876_
                                                  (gx#core-identifier-key
                                                   _name157851_)))
                                             (let ((_$e157878_
                                                    (table-ref
                                                     _exports157802_
                                                     (cons _src-phi157873_
                                                           _src-name157874_)
                                                     '#f)))
                                               (if _$e157878_
                                                   ((lambda (_out157881_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out157881_
                                                             _name157876_
                                                             (fx- _phi157875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi157873_))
                    _r157808_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e157878_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx157677_
                                                    _hd157752_))))
                                           (_E157811157829_))
                                       (_E157811157829_)))))
                             (_E157811157829_)))))
                   (_E157811157829_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E157811157829_)))))
                                       (_E157811157829_)))))
                           (_E157810157883_)))
                       _r157755_
                       _specs157803_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E157765157777_)))))
                                          (_E157765157777_))))
                                  (_E157765157777_))))
                           (_E157757157909_
                            (lambda ()
                              (if (gx#stx-pair? _e157756157773_)
                                  (let ((_e157759157891_
                                         (gx#syntax-e _e157756157773_)))
                                    (let ((_hd157760157894_
                                           (##car _e157759157891_))
                                          (_tl157761157896_
                                           (##cdr _e157759157891_)))
                                      (if (gx#stx-pair? _tl157761157896_)
                                          (let ((_e157762157899_
                                                 (gx#syntax-e
                                                  _tl157761157896_)))
                                            (let ((_hd157763157902_
                                                   (##car _e157762157899_))
                                                  (_tl157764157904_
                                                   (##cdr _e157762157899_)))
                                              (let ((_path157907_
                                                     _hd157763157902_))
                                                (if (gx#stx-null?
                                                     _tl157764157904_)
                                                    (if '#t
                                                        (_K157753_
                                                         _rest157754_
                                                         (cons (_import-spec-source157685_
                                                                _path157907_)
                                                               _r157755_))
                                                        (_E157758157887_))
                                                    (_E157758157887_)))))
                                          (_E157758157887_))))
                                  (_E157758157887_)))))
                      (_E157757157909_))))
                 (_import-spec-source157685_
                  (lambda (_spath157750_)
                    (gx#core-import-nested-module _spath157750_ _stx157677_)))
                 (_import!157686_
                  (lambda (_rbody157699_)
                    (letrec* ((_current-ctx157701_
                               (gx#current-expander-context))
                              (_deps157702_ (make-table 'test: eq?))
                              (_bind!157703_
                               (lambda (_hd157748_)
                                 (gx#core-bind-import!__1
                                  _hd157748_
                                  _current-ctx157701_))))
                      (let _lp157705_ ((_rest157707_ _rbody157699_)
                                       (_body157708_ '()))
                        (let* ((_rest157709157717_ _rest157707_)
                               (_else157711157727_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx157701_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx157701_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx157701_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body157708_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx157725_ _g165023_)
                                     (gx#eval-module _ctx157725_))
                                   _deps157702_)
                                  _body157708_))
                               (_K157713157736_
                                (lambda (_rest157730_ _hd157731_)
                                  (if (##structure-direct-instance-of?
                                       _hd157731_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!157703_ _hd157731_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd157731_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd157731_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps157702_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd157731_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd157731_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!157703_
                                             (##unchecked-structure-ref
                                              _hd157731_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd157731_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps157702_
                                                 (##unchecked-structure-ref
                                                  _hd157731_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e157733_
                                                 (##structure-instance-of?
                                                  _hd157731_
                                                  'gx#module-context::t)))
                                            (if _$e157733_
                                                _$e157733_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx157677_
                                                 _hd157731_)))))
                                  (_lp157705_
                                   _rest157730_
                                   (cons _hd157731_ _body157708_)))))
                          (if (##pair? _rest157709157717_)
                              (let ((_hd157714157739_
                                     (##car _rest157709157717_))
                                    (_tl157715157741_
                                     (##cdr _rest157709157717_)))
                                (let* ((_hd157744_ _hd157714157739_)
                                       (_rest157746_ _tl157715157741_))
                                  (_K157713157736_ _rest157746_ _hd157744_)))
                              (_else157711157727_)))))))
                 (_expanded-import?157687_
                  (lambda (_e157691_)
                    (let ((_$e157693_
                           (##structure-direct-instance-of?
                            _e157691_
                            'gx#import-set::t)))
                      (if _$e157693_
                          _$e157693_
                          (let ((_$e157696_
                                 (##structure-direct-instance-of?
                                  _e157691_
                                  'gx#module-import::t)))
                            (if _$e157696_
                                _$e157696_
                                (##structure-instance-of?
                                 _e157691_
                                 'gx#module-context::t))))))))
          (let ((_rbody157689_
                 (gx#core-expand-import/export
                  _stx157677_
                  _expanded-import?157687_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1157680_)))
            (if _internal-expand?157678_
                (reverse _rbody157689_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!157686_ _rbody157689_))
                 (gx#stx-source _stx157677_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx158003_)
        (let ((_internal-expand?158005_ '#f))
          (gx#core-expand-import%__% _stx158003_ _internal-expand?158005_))))
    (define gx#core-expand-import%
      (lambda _g165025_
        (let ((_g165024_ (##length _g165025_)))
          (cond ((##fx= _g165024_ 1)
                 (apply (lambda (_stx158003_)
                          (gx#core-expand-import%__0 _stx158003_))
                        _g165025_))
                ((##fx= _g165024_ 2)
                 (apply (lambda (_stx158007_ _internal-expand?158008_)
                          (gx#core-expand-import%__%
                           _stx158007_
                           _internal-expand?158008_))
                        _g165025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g165025_))))))
    (define gx#core-import-nested-module
      (lambda (_spath157604_ _where157605_)
        (let* ((_e157606157613_ _spath157604_)
               (_E157608157617_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157606157613_)))
               (_E157607157672_
                (lambda ()
                  (if (gx#stx-pair? _e157606157613_)
                      (let ((_e157609157621_ (gx#syntax-e _e157606157613_)))
                        (let ((_hd157610157624_ (##car _e157609157621_))
                              (_tl157611157626_ (##cdr _e157609157621_)))
                          (let* ((_origin157629_ _hd157610157624_)
                                 (_sub157631_ _tl157611157626_))
                            (if '#t
                                (let ((_origin-ctx157633_
                                       (if (gx#stx-false? _origin157629_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin157629_))))
                                  (let _lp157635_ ((_rest157637_ _sub157631_)
                                                   (_ctx157638_
                                                    _origin-ctx157633_))
                                    (let* ((_e157639157646_ _rest157637_)
                                           (_E157641157650_
                                            (lambda () _ctx157638_))
                                           (_E157640157668_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e157639157646_)
                                                  (let ((_e157642157654_
                                                         (gx#syntax-e
                                                          _e157639157646_)))
                                                    (let ((_hd157643157657_
                                                           (##car _e157642157654_))
                                                          (_tl157644157659_
                                                           (##cdr _e157642157654_)))
                                                      (let* ((_id157662_
                                                              _hd157643157657_)
                                                             (_rest157664_
                                                              _tl157644157659_))
                                                        (if '#t
                                                            (let ((_bind157666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id157662_
                            '0
                            _ctx157638_)))
                      (if (and (##structure-direct-instance-of?
                                _bind157666_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind157666_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where157605_
                           _spath157604_
                           _id157662_))
                      (_lp157635_
                       _rest157664_
                       (##unchecked-structure-ref
                        _bind157666_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E157641157650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E157641157650_)))))
                                      (_E157640157668_))))
                                (_E157608157617_)))))
                      (_E157608157617_)))))
          (_E157607157672_))))
    (define gx#core-expand-import-source
      (lambda (_hd157602_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd157602_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx157110_ _internal-expand?157111_)
        (letrec* ((_make-export__164954164955_
                   (lambda (_bind157550_ _phi157551_ _ctx157552_ _name157553_)
                     (let* ((_key157555_
                             (##unchecked-structure-ref
                              _bind157550_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key157557_
                             (if _name157553_
                                 (gx#core-identifier-key _name157553_)
                                 _key157555_)))
                       (##structure
                        gx#module-export::t
                        _ctx157552_
                        _key157555_
                        _phi157551_
                        _export-key157557_
                        (let ((_$e157560_
                               (##structure-instance-of?
                                _bind157550_
                                'gx#extern-binding::t)))
                          (if _$e157560_
                              _$e157560_
                              (##structure-direct-instance-of?
                               _bind157550_
                               'gx#import-binding::t)))))))
                  (_make-export__0__164956164959_
                   (lambda (_bind157566_)
                     (let* ((_phi157568_ (gx#current-export-expander-phi))
                            (_ctx157570_ (gx#current-expander-context))
                            (_name157572_ '#f))
                       (_make-export__164954164955_
                        _bind157566_
                        _phi157568_
                        _ctx157570_
                        _name157572_))))
                  (_make-export__1__164957164960_
                   (lambda (_bind157574_ _phi157575_)
                     (let* ((_ctx157577_ (gx#current-expander-context))
                            (_name157579_ '#f))
                       (_make-export__164954164955_
                        _bind157574_
                        _phi157575_
                        _ctx157577_
                        _name157579_))))
                  (_make-export__2__164958164961_
                   (lambda (_bind157581_ _phi157582_ _ctx157583_)
                     (let ((_name157585_ '#f))
                       (_make-export__164954164955_
                        _bind157581_
                        _phi157582_
                        _ctx157583_
                        _name157585_))))
                  (_make-export157113_
                   (lambda _g165027_
                     (let ((_g165026_ (##length _g165027_)))
                       (cond ((##fx= _g165026_ 1)
                              (apply (lambda (_bind157566_)
                                       (_make-export__0__164956164959_
                                        _bind157566_))
                                     _g165027_))
                             ((##fx= _g165026_ 2)
                              (apply (lambda (_bind157574_ _phi157575_)
                                       (_make-export__1__164957164960_
                                        _bind157574_
                                        _phi157575_))
                                     _g165027_))
                             ((##fx= _g165026_ 3)
                              (apply (lambda (_bind157581_
                                              _phi157582_
                                              _ctx157583_)
                                       (_make-export__2__164958164961_
                                        _bind157581_
                                        _phi157582_
                                        _ctx157583_))
                                     _g165027_))
                             ((##fx= _g165026_ 4)
                              (apply (lambda (_bind157587_
                                              _phi157588_
                                              _ctx157589_
                                              _name157590_)
                                       (_make-export__164954164955_
                                        _bind157587_
                                        _phi157588_
                                        _ctx157589_
                                        _name157590_))
                                     _g165027_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g165027_))))))
                  (_expand1157114_
                   (lambda (_hd157263_ _K157264_ _rest157265_ _r157266_)
                     (let* ((_e157267157299_ _hd157263_)
                            (_E157294157303_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx157110_
                                _hd157263_)))
                            (_E157284157382_
                             (lambda ()
                               (if (gx#stx-pair? _e157267157299_)
                                   (let ((_e157295157307_
                                          (gx#syntax-e _e157267157299_)))
                                     (let ((_hd157296157310_
                                            (##car _e157295157307_))
                                           (_tl157297157312_
                                            (##cdr _e157295157307_)))
                                       (if (eq? (gx#stx-e _hd157296157310_)
                                                'import:)
                                           (let ((_in157315_ _tl157297157312_))
                                             (if (gx#stx-list? _in157315_)
                                                 (let _lp157317_ ((_in-rest157319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in157315_)
                          (_r157320_ _r157266_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e157321157328_
                                                           _in-rest157319_)
                                                          (_E157323157332_
                                                           (lambda ()
                                                             (_K157264_
                                                              _rest157265_
                                                              _r157320_)))
                                                          (_E157322157378_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e157321157328_)
                         (let ((_e157324157336_ (gx#syntax-e _e157321157328_)))
                           (let ((_hd157325157339_ (##car _e157324157336_))
                                 (_tl157326157341_ (##cdr _e157324157336_)))
                             (let* ((_hd157344_ _hd157325157339_)
                                    (_in-rest157346_ _tl157326157341_))
                               (if '#t
                                   (let ((_src157376_
                                          (if (gx#core-bound-module?
                                               _hd157344_)
                                              (gx#syntax-local-e__0 _hd157344_)
                                              (if (gx#core-library-module-path?
                                                   _hd157344_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd157344_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd157344_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd157344_))
                                                      (if (gx#stx-string?
                                                           _hd157344_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd157344_
                                                            (gx#stx-source
                                                             _stx157110_)))
                                                          (let* ((_e157347157354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd157344_)
                         (_E157349157358_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx157110_
                             _hd157344_)))
                         (_E157348157372_
                          (lambda ()
                            (if (gx#stx-pair? _e157347157354_)
                                (let ((_e157350157362_
                                       (gx#syntax-e _e157347157354_)))
                                  (let ((_hd157351157365_
                                         (##car _e157350157362_))
                                        (_tl157352157367_
                                         (##cdr _e157350157362_)))
                                    (if (eq? (gx#stx-e _hd157351157365_) 'in:)
                                        (let ((_spath157370_ _tl157352157367_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath157370_
                                               _stx157110_)
                                              (_E157349157358_)))
                                        (_E157349157358_))))
                                (_E157349157358_)))))
                    (_E157348157372_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp157317_
                                      _in-rest157346_
                                      (_export-imports157115_
                                       _src157376_
                                       _r157320_)))
                                   (_E157323157332_)))))
                         (_E157323157332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E157322157378_)))
                                                 (_E157294157303_)))
                                           (_E157294157303_))))
                                   (_E157294157303_))))
                            (_E157271157421_
                             (lambda ()
                               (if (gx#stx-pair? _e157267157299_)
                                   (let ((_e157285157386_
                                          (gx#syntax-e _e157267157299_)))
                                     (let ((_hd157286157389_
                                            (##car _e157285157386_))
                                           (_tl157287157391_
                                            (##cdr _e157285157386_)))
                                       (if (eq? (gx#stx-e _hd157286157389_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl157287157391_)
                                               (let ((_e157288157394_
                                                      (gx#syntax-e
                                                       _tl157287157391_)))
                                                 (let ((_hd157289157397_
                                                        (##car _e157288157394_))
                                                       (_tl157290157399_
                                                        (##cdr _e157288157394_)))
                                                   (let ((_id157402_
                                                          _hd157289157397_))
                                                     (if (gx#stx-pair?
                                                          _tl157290157399_)
                                                         (let ((_e157291157404_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157290157399_)))
                   (let ((_hd157292157407_ (##car _e157291157404_))
                         (_tl157293157409_ (##cdr _e157291157404_)))
                     (let ((_name157412_ _hd157292157407_))
                       (if (gx#stx-null? _tl157293157409_)
                           (if '#t
                               (let* ((_phi157414_
                                       (gx#current-export-expander-phi))
                                      (_$e157416_
                                       (gx#core-resolve-identifier__1
                                        _id157402_
                                        _phi157414_)))
                                 (if _$e157416_
                                     ((lambda (_bind157419_)
                                        (_K157264_
                                         _rest157265_
                                         (cons (_make-export__164954164955_
                                                _bind157419_
                                                _phi157414_
                                                (gx#current-expander-context)
                                                _name157412_)
                                               _r157266_)))
                                      _$e157416_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx157110_
                                      _hd157263_
                                      _id157402_)))
                               (_E157284157382_))
                           (_E157284157382_)))))
                 (_E157284157382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157284157382_))
                                           (_E157284157382_))))
                                   (_E157284157382_))))
                            (_E157270157470_
                             (lambda ()
                               (if (gx#stx-pair? _e157267157299_)
                                   (let ((_e157272157425_
                                          (gx#syntax-e _e157267157299_)))
                                     (let ((_hd157273157428_
                                            (##car _e157272157425_))
                                           (_tl157274157430_
                                            (##cdr _e157272157425_)))
                                       (if (eq? (gx#stx-e _hd157273157428_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl157274157430_)
                                               (let ((_e157275157433_
                                                      (gx#syntax-e
                                                       _tl157274157430_)))
                                                 (let ((_hd157276157436_
                                                        (##car _e157275157433_))
                                                       (_tl157277157438_
                                                        (##cdr _e157275157433_)))
                                                   (let ((_phi157441_
                                                          _hd157276157436_))
                                                     (if (gx#stx-pair?
                                                          _tl157277157438_)
                                                         (let ((_e157278157443_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157277157438_)))
                   (let ((_hd157279157446_ (##car _e157278157443_))
                         (_tl157280157448_ (##cdr _e157278157443_)))
                     (let ((_id157451_ _hd157279157446_))
                       (if (gx#stx-pair? _tl157280157448_)
                           (let ((_e157281157453_
                                  (gx#syntax-e _tl157280157448_)))
                             (let ((_hd157282157456_ (##car _e157281157453_))
                                   (_tl157283157458_ (##cdr _e157281157453_)))
                               (let ((_name157461_ _hd157282157456_))
                                 (if (gx#stx-null? _tl157283157458_)
                                     (if (and (gx#stx-fixnum? _phi157441_)
                                              (gx#identifier? _id157451_)
                                              (gx#identifier? _name157461_))
                                         (let* ((_phi157463_
                                                 (gx#stx-e _phi157441_))
                                                (_$e157465_
                                                 (gx#core-resolve-identifier__1
                                                  _id157451_
                                                  _phi157463_)))
                                           (if _$e157465_
                                               ((lambda (_bind157468_)
                                                  (_K157264_
                                                   _rest157265_
                                                   (cons (_make-export__164954164955_
                                                          _bind157468_
                                                          _phi157463_
                                                          (gx#current-expander-context)
                                                          _name157461_)
                                                         _r157266_)))
                                                _$e157465_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx157110_
                                                _hd157263_
                                                _id157451_)))
                                         (_E157271157421_))
                                     (_E157271157421_)))))
                           (_E157271157421_)))))
                 (_E157271157421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157271157421_))
                                           (_E157271157421_))))
                                   (_E157271157421_))))
                            (_E157269157481_
                             (lambda ()
                               (let ((_id157474_ _e157267157299_))
                                 (if (gx#identifier? _id157474_)
                                     (let ((_$e157476_
                                            (gx#core-resolve-identifier__1
                                             _id157474_
                                             (gx#current-export-expander-phi))))
                                       (if _$e157476_
                                           ((lambda (_bind157479_)
                                              (_K157264_
                                               _rest157265_
                                               (cons (_make-export__0__164956164959_
                                                      _bind157479_)
                                                     _r157266_)))
                                            _$e157476_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx157110_
                                            _hd157263_)))
                                     (_E157270157470_)))))
                            (_E157268157545_
                             (lambda ()
                               (if (eq? (gx#stx-e _e157267157299_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx157485_
                                               (gx#current-expander-context))
                                              (_current-phi157487_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx157489_
                                               (gx#core-context-shift
                                                _current-ctx157485_
                                                _current-phi157487_))
                                              (_phi-bind157491_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx157489_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp157494_ ((_bind-rest157496_
                                                           _phi-bind157491_)
                                                          (_set157497_ '()))
                                           (let* ((_bind-rest157498157508_
                                                   _bind-rest157496_)
                                                  (_else157500157516_
                                                   (lambda ()
                                                     (_K157264_
                                                      _rest157265_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi157487_
                                                             _set157497_)
                                                            _r157266_))))
                                                  (_K157502157526_
                                                   (lambda (_bind-rest157519_
                                                            _bind157520_
                                                            _key157521_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind157520_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind157520_))
                                                         (_lp157494_
                                                          _bind-rest157519_
                                                          _set157497_)
                                                         (_lp157494_
                                                          _bind-rest157519_
                                                          (cons (_make-export__2__164958164961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind157520_
                         _current-phi157487_
                         _current-ctx157485_)
                        _set157497_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest157498157508_)
                                                 (let ((_hd157503157529_
                                                        (##car _bind-rest157498157508_))
                                                       (_tl157504157531_
                                                        (##cdr _bind-rest157498157508_)))
                                                   (if (##pair? _hd157503157529_)
                                                       (let ((_hd157505157534_
                                                              (##car _hd157503157529_))
                                                             (_tl157506157536_
                                                              (##cdr _hd157503157529_)))
                                                         (let* ((_key157539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd157505157534_)
                        (_bind157541_ _tl157506157536_)
                        (_bind-rest157543_ _tl157504157531_))
                   (_K157502157526_
                    _bind-rest157543_
                    _bind157541_
                    _key157539_)))
               (_else157500157516_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else157500157516_)))))
                                       (_E157269157481_))
                                   (_E157269157481_)))))
                       (_E157268157545_))))
                  (_export-imports157115_
                   (lambda (_src157139_ _r157140_)
                     (letrec* ((_current-ctx157142_
                                (gx#current-expander-context))
                               (_current-phi157143_
                                (gx#current-export-expander-phi))
                               (_import->export157144_
                                (lambda (_in157225_)
                                  (let* ((_in157226157234_ _in157225_)
                                         (_E157228157238_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in157226157234_)))
                                         (_K157229157245_
                                          (lambda (_phi157241_
                                                   _key157242_
                                                   _out157243_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx157142_
                                             _key157242_
                                             _phi157241_
                                             _key157242_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in157226157234_
                                         'gx#module-import::t)
                                        (let* ((_e157230157248_
                                                (##unchecked-structure-ref
                                                 _in157226157234_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out157251_ _e157230157248_)
                                               (_e157231157253_
                                                (##unchecked-structure-ref
                                                 _in157226157234_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key157256_ _e157231157253_)
                                               (_e157232157258_
                                                (##unchecked-structure-ref
                                                 _in157226157234_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi157261_ _e157232157258_))
                                          (_K157229157245_
                                           _phi157261_
                                           _key157256_
                                           _out157251_))
                                        (_E157228157238_)))))
                               (_fold-e157145_
                                (lambda (_in157147_ _r157148_)
                                  (let* ((_in157149157163_ _in157147_)
                                         (_else157152157171_
                                          (lambda () _r157148_)))
                                    (let ((_K157158157207_
                                           (lambda (_phi157203_
                                                    _key157204_
                                                    _out157205_)
                                             (if (and (fx= _phi157203_
                                                           _current-phi157143_)
                                                      (eq? _src157139_
                                                           (##unchecked-structure-ref
                                                            _out157205_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export157144_
                                                        _in157147_)
                                                       _r157148_)
                                                 _r157148_)))
                                          (_K157154157182_
                                           (lambda (_imports157175_
                                                    _phi157176_
                                                    _ctx157177_)
                                             (if (and (fx= _phi157176_
                                                           _current-phi157143_)
                                                      (eq? _src157139_
                                                           _ctx157177_))
                                                 (foldl1 (lambda (_in157179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r157180_)
                   (cons (_import->export157144_ _in157179_) _r157180_))
                 _r157148_
                 _imports157175_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r157148_))))
                                      (let ((_try-match157151157200_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in157149157163_
                                                    'gx#import-set::t)
                                                   (let* ((_e157155157185_
                                                           (##unchecked-structure-ref
                                                            _in157149157163_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157156157190_
                                                           (##unchecked-structure-ref
                                                            _in157149157163_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157157157195_
                                                           (##unchecked-structure-ref
                                                            _in157149157163_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx157188_
                                                            _e157155157185_)
                                                           (_phi157193_
                                                            _e157156157190_)
                                                           (_imports157198_
                                                            _e157157157195_))
                                                       (_K157154157182_
                                                        _imports157198_
                                                        _phi157193_
                                                        _ctx157188_)))
                                                   (_else157152157171_)))))
                                        (if (##structure-direct-instance-of?
                                             _in157149157163_
                                             'gx#module-import::t)
                                            (let* ((_e157159157210_
                                                    (##unchecked-structure-ref
                                                     _in157149157163_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157160157215_
                                                    (##unchecked-structure-ref
                                                     _in157149157163_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157161157220_
                                                    (##unchecked-structure-ref
                                                     _in157149157163_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out157213_
                                                     _e157159157210_)
                                                    (_key157218_
                                                     _e157160157215_)
                                                    (_phi157223_
                                                     _e157161157220_))
                                                (_K157158157207_
                                                 _phi157223_
                                                 _key157218_
                                                 _out157213_)))
                                            (_try-match157151157200_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src157139_
                              _current-phi157143_
                              (foldl1 _fold-e157145_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx157142_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r157140_))))
                  (_export!157116_
                   (lambda (_rbody157129_)
                     (letrec* ((_current-ctx157131_
                                (gx#current-expander-context))
                               (_fold-e157132_
                                (lambda (_out157136_ _r157137_)
                                  (if (##structure-direct-instance-of?
                                       _out157136_
                                       'gx#module-export::t)
                                      (cons _out157136_ _r157137_)
                                      (if (##structure-direct-instance-of?
                                           _out157136_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r157137_
                                                  (##unchecked-structure-ref
                                                   _out157136_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r157137_)))))
                       (let ((_body157134_ (reverse _rbody157129_)))
                         (##unchecked-structure-set!
                          _current-ctx157131_
                          (foldl1 _fold-e157132_
                                  (##unchecked-structure-ref
                                   _current-ctx157131_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body157134_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body157134_))))
                  (_expanded-export?157117_
                   (lambda (_e157124_)
                     (let ((_$e157126_
                            (##structure-direct-instance-of?
                             _e157124_
                             'gx#module-export::t)))
                       (if _$e157126_
                           _$e157126_
                           (##structure-direct-instance-of?
                            _e157124_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?157111_)
              (let ((_rbody157122_
                     (gx#core-expand-import/export
                      _stx157110_
                      _expanded-export?157117_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1157114_)))
                (if _internal-expand?157111_
                    (reverse _rbody157122_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!157116_ _rbody157122_))
                     (gx#stx-source _stx157110_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx157110_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx157110_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx157595_)
        (let ((_internal-expand?157597_ '#f))
          (gx#core-expand-export%__% _stx157595_ _internal-expand?157597_))))
    (define gx#core-expand-export%
      (lambda _g165029_
        (let ((_g165028_ (##length _g165029_)))
          (cond ((##fx= _g165028_ 1)
                 (apply (lambda (_stx157595_)
                          (gx#core-expand-export%__0 _stx157595_))
                        _g165029_))
                ((##fx= _g165028_ 2)
                 (apply (lambda (_stx157599_ _internal-expand?157600_)
                          (gx#core-expand-export%__%
                           _stx157599_
                           _internal-expand?157600_))
                        _g165029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g165029_))))))
    (define gx#core-expand-export-source
      (lambda (_hd157107_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd157107_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx157077_)
        (let* ((_e157078157085_ _stx157077_)
               (_E157080157089_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157078157085_)))
               (_E157079157103_
                (lambda ()
                  (if (gx#stx-pair? _e157078157085_)
                      (let ((_e157081157093_ (gx#syntax-e _e157078157085_)))
                        (let ((_hd157082157096_ (##car _e157081157093_))
                              (_tl157083157098_ (##cdr _e157081157093_)))
                          (let ((_body157101_ _tl157083157098_))
                            (if (gx#identifier-list? _body157101_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body157101_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body157101_))
                                   (gx#stx-source _stx157077_)))
                                (_E157080157089_)))))
                      (_E157080157089_)))))
          (_E157079157103_))))
    (define gx#core-bind-feature!__%
      (lambda (_id157043_ _private?157044_ _phi157045_ _ctx157046_)
        (gx#core-bind-syntax!__%
         _id157043_
         ((if _private?157044_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id157043_))
         _private?157044_
         _phi157045_
         _ctx157046_)))
    (define gx#core-bind-feature!__0
      (lambda (_id157051_)
        (let* ((_private?157053_ '#f)
               (_phi157055_ (gx#current-expander-phi))
               (_ctx157057_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157051_
           _private?157053_
           _phi157055_
           _ctx157057_))))
    (define gx#core-bind-feature!__1
      (lambda (_id157059_ _private?157060_)
        (let* ((_phi157062_ (gx#current-expander-phi))
               (_ctx157064_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157059_
           _private?157060_
           _phi157062_
           _ctx157064_))))
    (define gx#core-bind-feature!__2
      (lambda (_id157066_ _private?157067_ _phi157068_)
        (let ((_ctx157070_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157066_
           _private?157067_
           _phi157068_
           _ctx157070_))))
    (define gx#core-bind-feature!
      (lambda _g165031_
        (let ((_g165030_ (##length _g165031_)))
          (cond ((##fx= _g165030_ 1)
                 (apply (lambda (_id157051_)
                          (gx#core-bind-feature!__0 _id157051_))
                        _g165031_))
                ((##fx= _g165030_ 2)
                 (apply (lambda (_id157059_ _private?157060_)
                          (gx#core-bind-feature!__1
                           _id157059_
                           _private?157060_))
                        _g165031_))
                ((##fx= _g165030_ 3)
                 (apply (lambda (_id157066_ _private?157067_ _phi157068_)
                          (gx#core-bind-feature!__2
                           _id157066_
                           _private?157067_
                           _phi157068_))
                        _g165031_))
                ((##fx= _g165030_ 4)
                 (apply (lambda (_id157072_
                                 _private?157073_
                                 _phi157074_
                                 _ctx157075_)
                          (gx#core-bind-feature!__%
                           _id157072_
                           _private?157073_
                           _phi157074_
                           _ctx157075_))
                        _g165031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g165031_))))))))
