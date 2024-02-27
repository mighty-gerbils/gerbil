(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1709038442)
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
      (lambda _$args92538_
        (apply make-instance gx#module-import::t _$args92538_)))
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
      (lambda _$args92535_
        (apply make-instance gx#module-export::t _$args92535_)))
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
      (lambda _$args92532_
        (apply make-instance gx#import-set::t _$args92532_)))
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
      (lambda _$args92529_
        (apply make-instance gx#export-set::t _$args92529_)))
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
      (lambda _$args92526_
        (apply make-instance gx#import-expander::t _$args92526_)))
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
      (lambda _$args92523_
        (apply make-instance gx#export-expander::t _$args92523_)))
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
      (lambda _$args92520_
        (apply make-instance gx#import-export-expander::t _$args92520_)))
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
      (lambda (_path92517_ _fun92518_)
        (call-with-input-file
         (cons 'path: (cons _path92517_ gx#source-file-settings))
         _fun92518_)))
    (define gx#module-context:::init!
      (lambda (_self92511_ _id92512_ _super92513_ _ns92514_ _path92515_)
        (if (##fx< '11 (##structure-length _self92511_))
            (begin
              (##unchecked-structure-set!
               _self92511_
               _id92512_
               '1
               (##structure-type _self92511_)
               '#f)
              (##unchecked-structure-set!
               _self92511_
               (make-hash-table-eq)
               '2
               (##structure-type _self92511_)
               '#f)
              (##unchecked-structure-set!
               _self92511_
               _super92513_
               '3
               (##structure-type _self92511_)
               '#f)
              (##unchecked-structure-set!
               _self92511_
               '#f
               '4
               (##structure-type _self92511_)
               '#f)
              (##unchecked-structure-set!
               _self92511_
               '#f
               '5
               (##structure-type _self92511_)
               '#f)
              (##unchecked-structure-set!
               _self92511_
               _ns92514_
               '6
               (##structure-type _self92511_)
               '#f)
              (##unchecked-structure-set!
               _self92511_
               _path92515_
               '7
               (##structure-type _self92511_)
               '#f)
              (##unchecked-structure-set!
               _self92511_
               '()
               '8
               (##structure-type _self92511_)
               '#f)
              (##unchecked-structure-set!
               _self92511_
               '()
               '9
               (##structure-type _self92511_)
               '#f)
              (##unchecked-structure-set!
               _self92511_
               '#f
               '10
               (##structure-type _self92511_)
               '#f)
              (##unchecked-structure-set!
               _self92511_
               '#f
               '11
               (##structure-type _self92511_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92511_
                   '11
                   (##vector-length _self92511_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self92355_ _ctx92356_ _root92357_)
        (let ((_super92365_
               (let ((_$e92359_ _root92357_))
                 (if _$e92359_
                     _$e92359_
                     (let ((_$e92362_ (gx#core-context-root__0)))
                       (if _$e92362_
                           _$e92362_
                           (let ((__obj92580
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor92581
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj92580
                                     ':init!)))
                               (if __constructor92581
                                   (__constructor92581 __obj92580)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj92580)))))))
          (if _ctx92356_
              (let ((_id92368_
                     (##structure-ref
                      _ctx92356_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path92369_
                     (##structure-ref _ctx92356_ '7 gx#module-context::t '#f))
                    (_in92370_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx92356_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e92371_
                     (make-promise (lambda () (gx#eval-module _ctx92356_)))))
                (if (##fx< '8 (##structure-length _self92355_))
                    (begin
                      (##unchecked-structure-set!
                       _self92355_
                       _id92368_
                       '1
                       (##structure-type _self92355_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92355_
                       (make-hash-table-eq 'size: (length _in92370_))
                       '2
                       (##structure-type _self92355_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92355_
                       _super92365_
                       '3
                       (##structure-type _self92355_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92355_
                       '#f
                       '4
                       (##structure-type _self92355_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92355_
                       '#f
                       '5
                       (##structure-type _self92355_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92355_
                       _path92369_
                       '6
                       (##structure-type _self92355_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92355_
                       _in92370_
                       '7
                       (##structure-type _self92355_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92355_
                       _e92371_
                       '8
                       (##structure-type _self92355_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self92355_
                           '8
                           (##vector-length _self92355_)))
                (for-each
                 (lambda (_g9237292374_)
                   (gx#core-bind-weak-import!__% _g9237292374_ _self92355_))
                 _in92370_))
              (if (##fx< '8 (##structure-length _self92355_))
                  (begin
                    (##unchecked-structure-set!
                     _self92355_
                     '#f
                     '1
                     (##structure-type _self92355_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92355_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self92355_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92355_
                     _super92365_
                     '3
                     (##structure-type _self92355_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92355_
                     '#f
                     '4
                     (##structure-type _self92355_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92355_
                     '#f
                     '5
                     (##structure-type _self92355_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92355_
                     '#f
                     '6
                     (##structure-type _self92355_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92355_
                     '()
                     '7
                     (##structure-type _self92355_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92355_
                     '#f
                     '8
                     (##structure-type _self92355_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self92355_
                         '8
                         (##vector-length _self92355_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self92380_ _ctx92381_)
        (let ((_root92383_ '#f))
          (gx#prelude-context:::init!__% _self92380_ _ctx92381_ _root92383_))))
    (define gx#prelude-context:::init!
      (lambda _g92587_
        (let ((_g92586_ (##length _g92587_)))
          (cond ((##fx= _g92586_ 2)
                 (apply (lambda (_self92380_ _ctx92381_)
                          (gx#prelude-context:::init!__0
                           _self92380_
                           _ctx92381_))
                        _g92587_))
                ((##fx= _g92586_ 3)
                 (apply (lambda (_self92385_ _ctx92386_ _root92387_)
                          (gx#prelude-context:::init!__%
                           _self92385_
                           _ctx92386_
                           _root92387_))
                        _g92587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g92587_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self92229_ _e92230_)
        (if (##fx< '3 (##structure-length _self92229_))
            (begin
              (##unchecked-structure-set!
               _self92229_
               _e92230_
               '1
               (##structure-type _self92229_)
               '#f)
              (##unchecked-structure-set!
               _self92229_
               (gx#current-expander-context)
               '2
               (##structure-type _self92229_)
               '#f)
              (##unchecked-structure-set!
               _self92229_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self92229_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92229_
                   '3
                   (##vector-length _self92229_)))))
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
      (lambda (_g9185591858_ _g9185691860_)
        (gx#core-apply-user-expander__%
         _g9185591858_
         _g9185691860_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9172691729_ _g9172791731_)
        (gx#core-apply-user-expander__%
         _g9172691729_
         _g9172791731_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx91597_)
        (let* ((_path91599_
                (##structure-ref _ctx91597_ '7 gx#module-context::t '#f))
               (_path91601_
                (if (pair? _path91599_) (last _path91599_) _path91599_)))
          (if (string? _path91601_) _path91601_ '#f))))
    (define gx#import-module__%
      (lambda (_path91573_ _reload?91574_ _eval?91575_)
        (let ((_ctx91577_
               ((gx#current-expander-module-import)
                _path91573_
                _reload?91574_)))
          (if (and _ctx91577_ _eval?91575_)
              (gx#eval-module _ctx91577_)
              '#!void)
          _ctx91577_)))
    (define gx#import-module__0
      (lambda (_path91582_)
        (let* ((_reload?91584_ '#f) (_eval?91586_ '#f))
          (gx#import-module__% _path91582_ _reload?91584_ _eval?91586_))))
    (define gx#import-module__1
      (lambda (_path91588_ _reload?91589_)
        (let ((_eval?91591_ '#f))
          (gx#import-module__% _path91588_ _reload?91589_ _eval?91591_))))
    (define gx#import-module
      (lambda _g92589_
        (let ((_g92588_ (##length _g92589_)))
          (cond ((##fx= _g92588_ 1)
                 (apply (lambda (_path91582_)
                          (gx#import-module__0 _path91582_))
                        _g92589_))
                ((##fx= _g92588_ 2)
                 (apply (lambda (_path91588_ _reload?91589_)
                          (gx#import-module__1 _path91588_ _reload?91589_))
                        _g92589_))
                ((##fx= _g92588_ 3)
                 (apply (lambda (_path91593_ _reload?91594_ _eval?91595_)
                          (gx#import-module__%
                           _path91593_
                           _reload?91594_
                           _eval?91595_))
                        _g92589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g92589_))))))
    (define gx#eval-module
      (lambda (_mod91570_) ((gx#current-expander-module-eval) _mod91570_)))
    (define gx#core-eval-module
      (lambda (_obj91555_)
        (letrec ((_force-e91557_
                  (lambda (_getf91566_ _e91567_)
                    (call-with-parameters
                     (lambda () (force (_getf91566_ _e91567_)))
                     gx#current-expander-context
                     _e91567_
                     gx#current-expander-phi
                     '0))))
          (let _recur91559_ ((_e91561_ _obj91555_))
            (if (##structure-instance-of? _e91561_ 'gx#module-context::t)
                (begin
                  (let ((_$e91563_ (gx#core-context-prelude__% _e91561_)))
                    (if _$e91563_ (_recur91559_ _$e91563_) '#!void))
                  (_force-e91557_ gx#module-context-e _e91561_))
                (if (##structure-instance-of? _e91561_ 'gx#prelude-context::t)
                    (_force-e91557_ gx#prelude-context-e _e91561_)
                    (if (gx#stx-string? _e91561_)
                        (_recur91559_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e91561_)))
                        (if (gx#core-library-module-path? _e91561_)
                            (_recur91559_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e91561_)))
                            (error '"Cannot eval module" _obj91555_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx91538_)
        (let _lp91540_ ((_e91542_ _ctx91538_))
          (if (or (##structure-instance-of? _e91542_ 'gx#module-context::t)
                  (##structure-instance-of? _e91542_ 'gx#local-context::t))
              (_lp91540_
               (##unchecked-structure-ref _e91542_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e91542_ 'gx#prelude-context::t)
                  _e91542_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx91551_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx91551_))))
    (define gx#core-context-prelude
      (lambda _g92591_
        (let ((_g92590_ (##length _g92591_)))
          (cond ((##fx= _g92590_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g92591_))
                ((##fx= _g92590_ 1)
                 (apply (lambda (_ctx91553_)
                          (gx#core-context-prelude__% _ctx91553_))
                        _g92591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g92591_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx91528_)
        (let* ((_ht91530_ (gx#current-expander-module-registry))
               (_$e91532_ (hash-get _ht91530_ _ctx91528_)))
          (if _$e91532_
              (values _$e91532_)
              (let ((_pre91535_
                     (let ((__obj92582
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
                       (gx#prelude-context:::init! __obj92582 _ctx91528_)
                       __obj92582)))
                (hash-put! _ht91530_ _ctx91528_ _pre91535_)
                _pre91535_)))))
    (define gx#core-import-module__%
      (lambda (_rpath91409_ _reload?91410_)
        (letrec ((_import-source91412_
                  (lambda (_path91497_)
                    (if (member _path91497_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path91497_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g92592_ (gx#core-read-module _path91497_)))
                         (begin
                           (let ((_g92593_
                                  (if (##values? _g92592_)
                                      (##vector-length _g92592_)
                                      1)))
                             (if (not (##fx= _g92593_ 4))
                                 (error "Context expects 4 values" _g92593_)))
                           (let ((_pre91500_ (##vector-ref _g92592_ 0))
                                 (_id91501_ (##vector-ref _g92592_ 1))
                                 (_ns91502_ (##vector-ref _g92592_ 2))
                                 (_body91503_ (##vector-ref _g92592_ 3)))
                             (let* ((_prelude91508_
                                     (if (##structure-instance-of?
                                          _pre91500_
                                          'gx#prelude-context::t)
                                         _pre91500_
                                         (if (##structure-instance-of?
                                              _pre91500_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre91500_)
                                             (if (string? _pre91500_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre91500_))
                                                 (if (not _pre91500_)
                                                     (let ((_$e91505_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e91505_
                                                           _$e91505_
                                                           (let ((__obj92583
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
                     (gx#prelude-context:::init! __obj92583 '#f)
                     __obj92583)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath91409_
                                                            _pre91500_))))))
                                    (_ctx91510_
                                     (let ((__obj92584
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
                                        __obj92584
                                        _id91501_
                                        _prelude91508_
                                        _ns91502_
                                        _path91497_)
                                       __obj92584))
                                    (_body91512_
                                     (gx#core-expand-module-begin
                                      _body91503_
                                      _ctx91510_))
                                    (_body91514_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body91512_)
                                      _path91497_
                                      _ctx91510_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx91510_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body91514_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx91510_
                                _body91514_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path91497_
                                _ctx91510_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id91501_
                                _ctx91510_)
                               _ctx91510_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path91497_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule91413_
                  (lambda (_rpath91425_)
                    (let* ((_rpath9142691433_ _rpath91425_)
                           (_E9142891437_
                            (lambda ()
                              (error '"No clause matching" _rpath9142691433_)))
                           (_K9142991485_
                            (lambda (_refs91440_ _origin91441_)
                              (let ((_ctx91443_
                                     (if _origin91441_
                                         (gx#core-import-module__%
                                          _origin91441_
                                          _reload?91410_)
                                         (gx#current-expander-context))))
                                (let _lp91445_ ((_rest91447_ _refs91440_)
                                                (_ctx91448_ _ctx91443_))
                                  (let* ((_rest9144991457_ _rest91447_)
                                         (_else9145191465_
                                          (lambda () _ctx91448_))
                                         (_K9145391473_
                                          (lambda (_rest91468_ _id91469_)
                                            (let ((_bind91471_
                                                   (gx#resolve-identifier__%
                                                    _id91469_
                                                    '0
                                                    _ctx91448_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind91471_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind91471_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp91445_
                                                   _rest91468_
                                                   (##unchecked-structure-ref
                                                    _bind91471_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath91425_
                                                         _id91469_
                                                         _bind91471_))))))
                                    (if (##pair? _rest9144991457_)
                                        (let ((_hd9145491476_
                                               (##car _rest9144991457_))
                                              (_tl9145591478_
                                               (##cdr _rest9144991457_)))
                                          (let* ((_id91481_ _hd9145491476_)
                                                 (_rest91483_ _tl9145591478_))
                                            (_K9145391473_
                                             _rest91483_
                                             _id91481_)))
                                        (_else9145191465_))))))))
                      (if (##pair? _rpath9142691433_)
                          (let ((_hd9143091488_ (##car _rpath9142691433_))
                                (_tl9143191490_ (##cdr _rpath9142691433_)))
                            (let* ((_origin91493_ _hd9143091488_)
                                   (_refs91495_ _tl9143191490_))
                              (_K9142991485_ _refs91495_ _origin91493_)))
                          (_E9142891437_))))))
          (let ((_$e91415_
                 (if (not _reload?91410_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath91409_)
                     '#f)))
            (if _$e91415_
                (values _$e91415_)
                (if (list? _rpath91409_)
                    (_import-submodule91413_ _rpath91409_)
                    (if (gx#core-library-module-path? _rpath91409_)
                        (let ((_ctx91418_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath91409_)
                                _reload?91410_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath91409_
                           _ctx91418_)
                          _ctx91418_)
                        (let* ((_npath91420_ (path-normalize _rpath91409_))
                               (_$e91422_
                                (if (not _reload?91410_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath91420_)
                                    '#f)))
                          (if _$e91422_
                              (values _$e91422_)
                              (_import-source91412_ _npath91420_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath91521_)
        (let ((_reload?91523_ '#f))
          (gx#core-import-module__% _rpath91521_ _reload?91523_))))
    (define gx#core-import-module
      (lambda _g92595_
        (let ((_g92594_ (##length _g92595_)))
          (cond ((##fx= _g92594_ 1)
                 (apply (lambda (_rpath91521_)
                          (gx#core-import-module__0 _rpath91521_))
                        _g92595_))
                ((##fx= _g92594_ 2)
                 (apply (lambda (_rpath91525_ _reload?91526_)
                          (gx#core-import-module__%
                           _rpath91525_
                           _reload?91526_))
                        _g92595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g92595_))))))
    (define gx#core-read-module
      (lambda (_path91398_)
        (with-catch
         (lambda (_exn91400_)
           (if (and (datum-parsing-exception? _exn91400_)
                    (eq? (datum-parsing-exception-filepos _exn91400_) '0))
               (gx#core-read-module/lang _path91398_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path91398_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9140291404_)
                      (display-exception _exn91400_ _g9140291404_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path91398_)))))
    (define gx#core-read-module/sexp
      (lambda (_path91261_)
        (let _lp91263_ ((_body91265_ (read-syntax-from-file _path91261_))
                        (_pre91266_ '#f)
                        (_ns91267_ '#f)
                        (_pkg91268_ '#f))
          (let* ((_e9126991293_ _body91265_)
                 (_E9128591315_
                  (lambda ()
                    (let ((_g92596_
                           (if _pkg91268_
                               (values _pre91266_ _ns91267_ _pkg91268_)
                               (gx#core-read-module-package
                                _path91261_
                                _pre91266_
                                _ns91267_))))
                      (begin
                        (let ((_g92597_
                               (if (##values? _g92596_)
                                   (##vector-length _g92596_)
                                   1)))
                          (if (not (##fx= _g92597_ 3))
                              (error "Context expects 3 values" _g92597_)))
                        (let ((_pre91297_ (##vector-ref _g92596_ 0))
                              (_ns91298_ (##vector-ref _g92596_ 1))
                              (_pkg91299_ (##vector-ref _g92596_ 2)))
                          (let* ((_prelude91301_
                                  (if (gx#core-bound-module-prelude?
                                       _pre91297_)
                                      (gx#syntax-local-e__0 _pre91297_)
                                      (if (gx#core-library-module-path?
                                           _pre91297_)
                                          (gx#core-resolve-library-module-path
                                           _pre91297_)
                                          (if (gx#stx-string? _pre91297_)
                                              (gx#core-resolve-module-path__%
                                               _pre91297_
                                               _path91261_)
                                              (gx#stx-e _pre91297_)))))
                                 (_path-id91303_
                                  (gx#core-module-path->namespace _path91261_))
                                 (_pkg-id91305_
                                  (if _pkg91299_
                                      (string-append
                                       _pkg91299_
                                       '"/"
                                       _path-id91303_)
                                      _path-id91303_))
                                 (_module-id91307_
                                  (string->symbol _pkg-id91305_))
                                 (_module-ns91312_
                                  (if (eq? _ns91298_ '#!void)
                                      '#f
                                      (let ((_$e91309_ _ns91298_))
                                        (if _$e91309_
                                            _$e91309_
                                            _pkg-id91305_)))))
                            (values _prelude91301_
                                    _module-id91307_
                                    _module-ns91312_
                                    _body91265_)))))))
                 (_E9127891344_
                  (lambda ()
                    (if (gx#stx-pair? _e9126991293_)
                        (let ((_e9128691319_ (gx#syntax-e _e9126991293_)))
                          (let ((_hd9128791322_ (##car _e9128691319_))
                                (_tl9128891324_ (##cdr _e9128691319_)))
                            (if (eq? (gx#stx-e _hd9128791322_) 'package:)
                                (if (gx#stx-pair? _tl9128891324_)
                                    (let ((_e9128991327_
                                           (gx#syntax-e _tl9128891324_)))
                                      (let ((_hd9129091330_
                                             (##car _e9128991327_))
                                            (_tl9129191332_
                                             (##cdr _e9128991327_)))
                                        (let* ((_pkg91335_ _hd9129091330_)
                                               (_rest91337_ _tl9129191332_))
                                          (if '#t
                                              (let ((_pkg91342_
                                                     (if (gx#identifier?
                                                          _pkg91335_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg91335_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg91335_)
                         (gx#stx-false? _pkg91335_))
                     (gx#stx-e _pkg91335_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg91335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91263_
                                                 _rest91337_
                                                 _pre91266_
                                                 _ns91267_
                                                 _pkg91342_))
                                              (_E9128591315_)))))
                                    (_E9128591315_))
                                (_E9128591315_))))
                        (_E9128591315_))))
                 (_E9127191370_
                  (lambda ()
                    (if (gx#stx-pair? _e9126991293_)
                        (let ((_e9127991348_ (gx#syntax-e _e9126991293_)))
                          (let ((_hd9128091351_ (##car _e9127991348_))
                                (_tl9128191353_ (##cdr _e9127991348_)))
                            (if (eq? (gx#stx-e _hd9128091351_) 'namespace:)
                                (if (gx#stx-pair? _tl9128191353_)
                                    (let ((_e9128291356_
                                           (gx#syntax-e _tl9128191353_)))
                                      (let ((_hd9128391359_
                                             (##car _e9128291356_))
                                            (_tl9128491361_
                                             (##cdr _e9128291356_)))
                                        (let* ((_ns91364_ _hd9128391359_)
                                               (_rest91366_ _tl9128491361_))
                                          (if '#t
                                              (let ((_ns91368_
                                                     (if (gx#identifier?
                                                          _ns91364_)
                                                         (symbol->string
                                                          (gx#stx-e _ns91364_))
                                                         (if (gx#stx-string?
                                                              _ns91364_)
                                                             (gx#stx-e
                                                              _ns91364_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns91364_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns91364_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91263_
                                                 _rest91366_
                                                 _pre91266_
                                                 _ns91368_
                                                 _pkg91268_))
                                              (_E9127891344_)))))
                                    (_E9127891344_))
                                (_E9127891344_))))
                        (_E9127891344_))))
                 (_E9127091394_
                  (lambda ()
                    (if (gx#stx-pair? _e9126991293_)
                        (let ((_e9127291374_ (gx#syntax-e _e9126991293_)))
                          (let ((_hd9127391377_ (##car _e9127291374_))
                                (_tl9127491379_ (##cdr _e9127291374_)))
                            (if (eq? (gx#stx-e _hd9127391377_) 'prelude:)
                                (if (gx#stx-pair? _tl9127491379_)
                                    (let ((_e9127591382_
                                           (gx#syntax-e _tl9127491379_)))
                                      (let ((_hd9127691385_
                                             (##car _e9127591382_))
                                            (_tl9127791387_
                                             (##cdr _e9127591382_)))
                                        (let* ((_prelude91390_ _hd9127691385_)
                                               (_rest91392_ _tl9127791387_))
                                          (if '#t
                                              (_lp91263_
                                               _rest91392_
                                               _prelude91390_
                                               _ns91267_
                                               _pkg91268_)
                                              (_E9127191370_)))))
                                    (_E9127191370_))
                                (_E9127191370_))))
                        (_E9127191370_)))))
            (_E9127091394_)))))
    (define gx#core-read-module/lang
      (lambda (_path91088_)
        (letrec ((_default-read-module-body91090_
                  (lambda (_inp91253_)
                    (let _lp91255_ ((_body91257_ '()))
                      (let ((_next91259_ (read-syntax _inp91253_)))
                        (if (eof-object? _next91259_)
                            (reverse _body91257_)
                            (_lp91255_ (cons _next91259_ _body91257_)))))))
                 (_read-body91091_
                  (lambda (_inp91172_
                           _pre91173_
                           _ns91174_
                           _pkg91175_
                           _args91176_)
                    (let ((_g92598_
                           (if _pkg91175_
                               (values _pre91173_ _ns91174_ _pkg91175_)
                               (gx#core-read-module-package
                                _path91088_
                                _pre91173_
                                _ns91174_))))
                      (begin
                        (let ((_g92599_
                               (if (##values? _g92598_)
                                   (##vector-length _g92598_)
                                   1)))
                          (if (not (##fx= _g92599_ 3))
                              (error "Context expects 3 values" _g92599_)))
                        (let ((_pre91178_ (##vector-ref _g92598_ 0))
                              (_ns91179_ (##vector-ref _g92598_ 1))
                              (_pkg91180_ (##vector-ref _g92598_ 2)))
                          (let* ((_prelude91182_
                                  (gx#import-module__0 _pre91178_))
                                 (_read-module-body91236_
                                  (let ((_$e91228_
                                         (find (lambda (_e9118391185_)
                                                 (let* ((_g9118791197_
                                                         _e9118391185_)
                                                        (_else9118991205_
                                                         (lambda () '#f))
                                                        (_K9119191209_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9118791197_
                                                        'gx#module-export::t)
                                                       (let* ((_e9119291212_
                                                               (##unchecked-structure-ref
                                                                _g9118791197_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9119391215_
                                                               (##unchecked-structure-ref
                                                                _g9118791197_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9119491218_
                                                               (##unchecked-structure-ref
                                                                _g9118791197_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9119491218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9119591221_
                            (##unchecked-structure-ref
                             _g9118791197_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9122391225_)
                              (eq? _g9122391225_ 'read-module-body))
                            _e9119591221_)
                           (_K9119191209_)
                           (_else9118991205_)))
                     (_else9118991205_)))
               (_else9118991205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude91182_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e91228_
                                        ((lambda (_xport91231_)
                                           (let ((_proc91234_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport91231_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc91234_)
                                                 _proc91234_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path91088_
                                                  _pre91178_
                                                  _proc91234_))))
                                         _$e91228_)
                                        _default-read-module-body91090_)))
                                 (_path-id91238_
                                  (gx#core-module-path->namespace _path91088_))
                                 (_pkg-id91240_
                                  (if _pkg91180_
                                      (string-append
                                       _pkg91180_
                                       '"/"
                                       _path-id91238_)
                                      _path-id91238_))
                                 (_module-id91242_
                                  (string->symbol _pkg-id91240_))
                                 (_module-ns91247_
                                  (let ((_$e91244_ _ns91179_))
                                    (if _$e91244_ _$e91244_ _pkg-id91240_)))
                                 (_body91250_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body91236_ _inp91172_))
                                   gx#current-module-reader-path
                                   _path91088_
                                   gx#current-module-reader-args
                                   _args91176_)))
                            (values _prelude91182_
                                    _module-id91242_
                                    _module-ns91247_
                                    _body91250_)))))))
                 (_string-e91092_
                  (lambda (_obj91169_ _what91170_)
                    (if (string? _obj91169_)
                        _obj91169_
                        (if (symbol? _obj91169_)
                            (symbol->string _obj91169_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what91170_)
                             _path91088_
                             _obj91169_)))))
                 (_read-lang-args91093_
                  (lambda (_inp91124_ _args91125_)
                    (let* ((_args9112691134_ _args91125_)
                           (_else9112891142_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path91088_)))
                           (_K9113091157_
                            (lambda (_args91145_ _prelude91146_)
                              (let* ((_pkg91148_
                                      (pgetq__0 'package: _args91145_))
                                     (_pkg91150_
                                      (if _pkg91148_
                                          (_string-e91092_
                                           _pkg91148_
                                           '"package")
                                          '#f))
                                     (_ns91152_
                                      (pgetq__0 'namespace: _args91145_))
                                     (_ns91154_
                                      (if _ns91152_
                                          (_string-e91092_
                                           _ns91152_
                                           '"namespace")
                                          '#f)))
                                (_read-body91091_
                                 _inp91124_
                                 _prelude91146_
                                 _ns91154_
                                 _pkg91150_
                                 _args91145_)))))
                      (if (##pair? _args9112691134_)
                          (let ((_hd9113191160_ (##car _args9112691134_))
                                (_tl9113291162_ (##cdr _args9112691134_)))
                            (let* ((_prelude91165_ _hd9113191160_)
                                   (_args91167_ _tl9113291162_))
                              (_K9113091157_ _args91167_ _prelude91165_)))
                          (_else9112891142_)))))
                 (_read-lang91094_
                  (lambda (_inp91099_)
                    (let* ((_head91101_ (read-line _inp91099_))
                           (_$e91103_ (string-index__0 _head91101_ '#\space)))
                      (if _$e91103_
                          ((lambda (_ix91106_)
                             (let ((_lang91108_
                                    (substring _head91101_ '0 _ix91106_)))
                               (if (equal? _lang91108_ '"#lang")
                                   (let* ((_rest91110_
                                           (substring
                                            _head91101_
                                            (fx+ _ix91106_ '1)
                                            (string-length _head91101_)))
                                          (_args91121_
                                           (with-catch
                                            (lambda (_g9111191113_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path91088_
                                               _g9111191113_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest91110_
                                               (lambda (_g9111691118_)
                                                 (read-all
                                                  _g9111691118_
                                                  read)))))))
                                     (_read-lang-args91093_
                                      _inp91099_
                                      _args91121_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path91088_))))
                           _$e91103_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path91088_)))))
                 (_read-e91095_
                  (lambda (_inp91097_)
                    (if (eq? (peek-char _inp91097_) '#\#)
                        (_read-lang91094_ _inp91097_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path91088_)))))
          (gx#call-with-input-source-file _path91088_ _read-e91095_))))
    (define gx#core-read-module-package
      (lambda (_path91042_ _pre91043_ _ns91044_)
        (letrec ((_string-e91046_
                  (lambda (_e91086_)
                    (if (symbol? _e91086_)
                        (symbol->string _e91086_)
                        (if (string? _e91086_)
                            _e91086_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e91086_))))))
          (let _lp91048_ ((_dir91050_ (path-directory _path91042_))
                          (_pkg-path91051_ '()))
            (let ((_gerbil.pkg91053_ (path-expand '"gerbil.pkg" _dir91050_)))
              (if (file-exists? _gerbil.pkg91053_)
                  (let ((_plist91055_
                         (gx#core-library-package-plist__% _dir91050_ '#t)))
                    (if (null? _plist91055_)
                        (let ((_pkg91057_
                               (if (not (null? _pkg-path91051_))
                                   (string-join _pkg-path91051_ '"/")
                                   '#f)))
                          (values _pre91043_ _ns91044_ _pkg91057_))
                        (if (list? _plist91055_)
                            (let* ((_root91059_
                                    (pgetq__0 'package: _plist91055_))
                                   (_pkg91063_
                                    (let ((_pkg-path91061_
                                           (if _root91059_
                                               (cons (_string-e91046_
                                                      _root91059_)
                                                     _pkg-path91051_)
                                               _pkg-path91051_)))
                                      (if (not (null? _pkg-path91061_))
                                          (string-join _pkg-path91061_ '"/")
                                          '#f)))
                                   (_ns91070_
                                    (let ((_ns91068_
                                           (let ((_$e91065_ _ns91044_))
                                             (if _$e91065_
                                                 _$e91065_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist91055_)))))
                                      (if _ns91068_
                                          (_string-e91046_ _ns91068_)
                                          '#f)))
                                   (_pre91075_
                                    (let ((_$e91072_ _pre91043_))
                                      (if _$e91072_
                                          _$e91072_
                                          (pgetq__0 'prelude: _plist91055_)))))
                              (values _pre91075_ _ns91070_ _pkg91063_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist91055_))))
                  (let ((_dir*91078_
                         (path-strip-trailing-directory-separator _dir91050_)))
                    (if (or (string-empty? _dir*91078_)
                            (equal? _dir91050_ _dir*91078_))
                        (values _pre91043_ _ns91044_ '#f)
                        (let ((_xpath91083_ (path-strip-directory _dir*91078_))
                              (_xdir91084_ (path-directory _dir*91078_)))
                          (_lp91048_
                           _xdir91084_
                           (cons _xpath91083_ _pkg-path91051_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path91040_)
        (path-strip-extension (path-strip-directory _path91040_))))
    (define gx#core-module-path->id
      (lambda (_path91038_)
        (string->symbol (gx#core-module-path->namespace _path91038_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path91017_ _rel91018_)
        (let* ((_path91020_ (gx#stx-e _stx-path91017_))
               (_path91022_
                (if (string-empty? (path-extension _path91020_))
                    (string-append _path91020_ '".ss")
                    _path91020_)))
          (gx#core-resolve-path__%
           _path91022_
           (let ((_$e91025_ (gx#stx-source _stx-path91017_)))
             (if _$e91025_ _$e91025_ _rel91018_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path91031_)
        (let ((_rel91033_ '#f))
          (gx#core-resolve-module-path__% _stx-path91031_ _rel91033_))))
    (define gx#core-resolve-module-path
      (lambda _g92601_
        (let ((_g92600_ (##length _g92601_)))
          (cond ((##fx= _g92600_ 1)
                 (apply (lambda (_stx-path91031_)
                          (gx#core-resolve-module-path__0 _stx-path91031_))
                        _g92601_))
                ((##fx= _g92600_ 2)
                 (apply (lambda (_stx-path91035_ _rel91036_)
                          (gx#core-resolve-module-path__%
                           _stx-path91035_
                           _rel91036_))
                        _g92601_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g92601_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath90903_)
        (let* ((_spath90905_ (symbol->string (gx#stx-e _libpath90903_)))
               (_spath90907_
                (substring _spath90905_ '1 (string-length _spath90905_)))
               (_ext90909_ (path-extension _spath90907_))
               (_ssi90911_
                (if (string-empty? _ext90909_)
                    (string-append _spath90907_ '".ssi")
                    (string-append
                     (path-strip-extension _spath90907_)
                     '".ssi")))
               (_srcs90915_
                (if (string-empty? _ext90909_)
                    (map (lambda (_ext90913_)
                           (string-append _spath90907_ _ext90913_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath90907_ '()))))
          (let _lp90918_ ((_rest90920_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest9092190930_ _rest90920_)
                   (_E9092490934_
                    (lambda ()
                      (error '"No clause matching" _rest9092190930_))))
              (let ((_K9092691004_
                     (lambda (_rest90945_ _dir90946_)
                       (letrec ((_resolve90948_
                                 (lambda (_ssi90960_ _srcs90961_)
                                   (let ((_compiled-path90963_
                                          (path-expand _ssi90960_ _dir90946_)))
                                     (if (file-exists? _compiled-path90963_)
                                         (path-normalize _compiled-path90963_)
                                         (let _lpr90965_ ((_rest-src90967_
                                                           _srcs90961_))
                                           (let* ((_rest-src9096890976_
                                                   _rest-src90967_)
                                                  (_else9097090984_
                                                   (lambda ()
                                                     (_lp90918_ _rest90945_)))
                                                  (_K9097290992_
                                                   (lambda (_rest-src90987_
                                                            _src90988_)
                                                     (let ((_src-path90990_
                                                            (path-expand
                                                             _src90988_
                                                             _dir90946_)))
                                                       (if (file-exists?
                                                            _src-path90990_)
                                                           (path-normalize
                                                            _src-path90990_)
                                                           (_lpr90965_
                                                            _rest-src90987_))))))
                                             (if (##pair? _rest-src9096890976_)
                                                 (let ((_hd9097390995_
                                                        (##car _rest-src9096890976_))
                                                       (_tl9097490997_
                                                        (##cdr _rest-src9096890976_)))
                                                   (let* ((_src91000_
                                                           _hd9097390995_)
                                                          (_rest-src91002_
                                                           _tl9097490997_))
                                                     (_K9097290992_
                                                      _rest-src91002_
                                                      _src91000_)))
                                                 (_else9097090984_)))))))))
                         (let ((_$e90950_
                                (gx#core-library-package-path-prefix
                                 _dir90946_)))
                           (if _$e90950_
                               ((lambda (_prefix90953_)
                                  (if (string-prefix?
                                       _prefix90953_
                                       _spath90907_)
                                      (let ((_ssi90957_
                                             (substring
                                              _ssi90911_
                                              (string-length _prefix90953_)
                                              (string-length _ssi90911_)))
                                            (_srcs90958_
                                             (map (lambda (_src90955_)
                                                    (substring
                                                     _src90955_
                                                     (string-length
                                                      _prefix90953_)
                                                     (string-length
                                                      _src90955_)))
                                                  _srcs90915_)))
                                        (_resolve90948_
                                         _ssi90957_
                                         _srcs90958_))
                                      (_lp90918_ _rest90945_)))
                                _$e90950_)
                               (_resolve90948_ _ssi90911_ _srcs90915_))))))
                    (_K9092590939_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath90903_))))
                (let ((_try-match9092390942_
                       (lambda ()
                         (if (##null? _rest9092190930_)
                             (_K9092590939_)
                             (_E9092490934_)))))
                  (if (##pair? _rest9092190930_)
                      (let ((_tl9092891009_ (##cdr _rest9092190930_))
                            (_hd9092791007_ (##car _rest9092190930_)))
                        (let ((_dir91012_ _hd9092791007_)
                              (_rest91014_ _tl9092891009_))
                          (_K9092691004_ _rest91014_ _dir91012_)))
                      (_try-match9092390942_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath90876_)
        (letrec ((_resolve90878_
                  (lambda (_path90895_ _base90896_)
                    (let ((_$e90898_ (string-rindex__0 _base90896_ '#\/)))
                      (if _$e90898_
                          ((lambda (_idx90901_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base90896_ '0 _idx90901_)
                                '"/"
                                _path90895_))))
                           _$e90898_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path90895_))))))))
          (let ((_spath90880_ (symbol->string (gx#stx-e _modpath90876_)))
                (_mod90881_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod90881_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath90876_))
            (let ((_mpath90883_
                   (symbol->string
                    (##structure-ref
                     _mod90881_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp90885_ ((_spath90887_ _spath90880_)
                              (_mpath90888_ _mpath90883_))
                (if (string-prefix? '"../" _spath90887_)
                    (let ((_$e90890_ (string-rindex__0 _mpath90888_ '#\/)))
                      (if _$e90890_
                          ((lambda (_idx90893_)
                             (_lp90885_
                              (substring
                               _spath90887_
                               '3
                               (string-length _spath90887_))
                              (substring _mpath90888_ '0 _idx90893_)))
                           _$e90890_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath90876_)))
                    (if (string-prefix? '"./" _spath90887_)
                        (_lp90885_
                         (substring
                          _spath90887_
                          '2
                          (string-length _spath90887_))
                         _mpath90888_)
                        (_resolve90878_ _spath90887_ _mpath90888_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir90869_)
        (let ((_$e90871_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir90869_))))
          (if _$e90871_
              ((lambda (_pkg90874_)
                 (string-append (symbol->string _pkg90874_) '"/"))
               _$e90871_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir90841_ _exists?90842_)
        (let* ((_cache90844_ (gx#core-library-package-cache))
               (_$e90846_ (hash-get _cache90844_ _dir90841_)))
          (if _$e90846_
              (values _$e90846_)
              (let* ((_gerbil.pkg90849_ (path-expand '"gerbil.pkg" _dir90841_))
                     (_plist90856_
                      (if (or _exists?90842_ (file-exists? _gerbil.pkg90849_))
                          (let ((_e90854_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg90849_
                                  read)))
                            (if (eof-object? _e90854_)
                                '()
                                (if (list? _e90854_)
                                    _e90854_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg90849_
                                     _e90854_))))
                          '())))
                (hash-put! _cache90844_ _dir90841_ _plist90856_)
                _plist90856_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir90862_)
        (let ((_exists?90864_ '#f))
          (gx#core-library-package-plist__% _dir90862_ _exists?90864_))))
    (define gx#core-library-package-plist
      (lambda _g92603_
        (let ((_g92602_ (##length _g92603_)))
          (cond ((##fx= _g92602_ 1)
                 (apply (lambda (_dir90862_)
                          (gx#core-library-package-plist__0 _dir90862_))
                        _g92603_))
                ((##fx= _g92602_ 2)
                 (apply (lambda (_dir90866_ _exists?90867_)
                          (gx#core-library-package-plist__%
                           _dir90866_
                           _exists?90867_))
                        _g92603_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g92603_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e90835_ (gx#current-expander-module-library-package-cache)))
          (if _$e90835_
              (values _$e90835_)
              (let ((_cache90838_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache90838_)
                _cache90838_)))))
    (define gx#core-library-module-path?
      (lambda (_stx90832_) (gx#core-special-module-path? _stx90832_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx90830_) (gx#core-special-module-path? _stx90830_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx90825_ _char90826_)
        (if (gx#identifier? _stx90825_)
            (if (interned-symbol? (gx#stx-e _stx90825_))
                (let ((_str90828_ (symbol->string (gx#stx-e _stx90825_))))
                  (if (fx> (string-length _str90828_) '1)
                      (eq? (string-ref _str90828_ '0) _char90826_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx90819_)
        (gx#core-bound-identifier?__%
         _stx90819_
         (lambda (_g9082090822_)
           (gx#expander-binding?__% _g9082090822_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx90813_)
        (gx#core-bound-identifier?__%
         _stx90813_
         (lambda (_g9081490816_)
           (gx#expander-binding?__% _g9081490816_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx90800_)
        (letrec ((_module-prelude?90802_
                  (lambda (_e90808_)
                    (let ((_$e90810_
                           (##structure-instance-of?
                            _e90808_
                            'gx#module-context::t)))
                      (if _$e90810_
                          _$e90810_
                          (##structure-instance-of?
                           _e90808_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx90800_
           (lambda (_g9080390805_)
             (gx#expander-binding?__%
              _g9080390805_
              _module-prelude?90802_))))))
    (define gx#core-bind-import!__%
      (lambda (_in90730_ _ctx90731_ _force-weak?90732_)
        (let* ((_in9073390742_ _in90730_)
               (_E9073590746_
                (lambda () (error '"No clause matching" _in9073390742_)))
               (_K9073690759_
                (lambda (_weak?90749_ _phi90750_ _key90751_ _source90752_)
                  (gx#core-bind!__%
                   _key90751_
                   (let ((_e90754_
                          (gx#core-resolve-module-export _source90752_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e90754_ '1 gx#binding::t '#f)
                      _key90751_
                      _phi90750_
                      _e90754_
                      (##unchecked-structure-ref
                       _source90752_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e90756_ _force-weak?90732_))
                        (if _$e90756_ _$e90756_ _weak?90749_))))
                   gx#core-context-rebind?
                   _phi90750_
                   _ctx90731_))))
          (if (##structure-direct-instance-of?
               _in9073390742_
               'gx#module-import::t)
              (let* ((_e9073790762_
                      (##unchecked-structure-ref
                       _in9073390742_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source90765_ _e9073790762_)
                     (_e9073890767_
                      (##unchecked-structure-ref
                       _in9073390742_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key90770_ _e9073890767_)
                     (_e9073990772_
                      (##unchecked-structure-ref
                       _in9073390742_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi90775_ _e9073990772_)
                     (_e9074090777_
                      (##unchecked-structure-ref
                       _in9073390742_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?90780_ _e9074090777_))
                (_K9073690759_
                 _weak?90780_
                 _phi90775_
                 _key90770_
                 _source90765_))
              (_E9073590746_)))))
    (define gx#core-bind-import!__0
      (lambda (_in90785_)
        (let* ((_ctx90787_ (gx#current-expander-context))
               (_force-weak?90789_ '#f))
          (gx#core-bind-import!__% _in90785_ _ctx90787_ _force-weak?90789_))))
    (define gx#core-bind-import!__1
      (lambda (_in90791_ _ctx90792_)
        (let ((_force-weak?90794_ '#f))
          (gx#core-bind-import!__% _in90791_ _ctx90792_ _force-weak?90794_))))
    (define gx#core-bind-import!
      (lambda _g92605_
        (let ((_g92604_ (##length _g92605_)))
          (cond ((##fx= _g92604_ 1)
                 (apply (lambda (_in90785_)
                          (gx#core-bind-import!__0 _in90785_))
                        _g92605_))
                ((##fx= _g92604_ 2)
                 (apply (lambda (_in90791_ _ctx90792_)
                          (gx#core-bind-import!__1 _in90791_ _ctx90792_))
                        _g92605_))
                ((##fx= _g92604_ 3)
                 (apply (lambda (_in90796_ _ctx90797_ _force-weak?90798_)
                          (gx#core-bind-import!__%
                           _in90796_
                           _ctx90797_
                           _force-weak?90798_))
                        _g92605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g92605_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in90716_ _ctx90717_)
        (gx#core-bind-import!__% _in90716_ _ctx90717_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in90722_)
        (let ((_ctx90724_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in90722_ _ctx90724_))))
    (define gx#core-bind-weak-import!
      (lambda _g92607_
        (let ((_g92606_ (##length _g92607_)))
          (cond ((##fx= _g92606_ 1)
                 (apply (lambda (_in90722_)
                          (gx#core-bind-weak-import!__0 _in90722_))
                        _g92607_))
                ((##fx= _g92606_ 2)
                 (apply (lambda (_in90726_ _ctx90727_)
                          (gx#core-bind-weak-import!__% _in90726_ _ctx90727_))
                        _g92607_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g92607_))))))
    (define gx#core-resolve-module-export
      (lambda (_out90607_)
        (letrec ((_subst90609_
                  (lambda (_key90655_)
                    (let* ((_key9065690664_ _key90655_)
                           (_else9065890672_ (lambda () _key90655_))
                           (_K9066090703_
                            (lambda (_mark90675_ _id90676_)
                              (let* ((_mark9067790683_ _mark90675_)
                                     (_E9067990687_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9067790683_)))
                                     (_K9068090695_
                                      (lambda (_subst90690_)
                                        (let ((_$e90692_
                                               (if _subst90690_
                                                   (hash-get
                                                    _subst90690_
                                                    _id90676_)
                                                   '#f)))
                                          (if _$e90692_
                                              _$e90692_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key90655_))))))
                                (if (##structure-instance-of?
                                     _mark9067790683_
                                     'gx#expander-mark::t)
                                    (let* ((_e9068190698_
                                            (##unchecked-structure-ref
                                             _mark9067790683_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst90701_ _e9068190698_))
                                      (_K9068090695_ _subst90701_))
                                    (_E9067990687_))))))
                      (if (##pair? _key9065690664_)
                          (let ((_hd9066190706_ (##car _key9065690664_))
                                (_tl9066290708_ (##cdr _key9065690664_)))
                            (let* ((_id90711_ _hd9066190706_)
                                   (_mark90713_ _tl9066290708_))
                              (_K9066090703_ _mark90713_ _id90711_)))
                          (_else9065890672_))))))
          (let* ((_out9061090620_ _out90607_)
                 (_E9061290624_
                  (lambda () (error '"No clause matching" _out9061090620_)))
                 (_K9061390631_
                  (lambda (_phi90627_ _key90628_ _ctx90629_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx90629_ _phi90627_)
                     (_subst90609_ _key90628_)))))
            (if (##structure-direct-instance-of?
                 _out9061090620_
                 'gx#module-export::t)
                (let* ((_e9061490634_
                        (##unchecked-structure-ref
                         _out9061090620_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx90637_ _e9061490634_)
                       (_e9061590639_
                        (##unchecked-structure-ref
                         _out9061090620_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key90642_ _e9061590639_)
                       (_e9061690644_
                        (##unchecked-structure-ref
                         _out9061090620_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi90647_ _e9061690644_)
                       (_e9061790649_
                        (##unchecked-structure-ref
                         _out9061090620_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9061890652_
                        (##unchecked-structure-ref
                         _out9061090620_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9061390631_ _phi90647_ _key90642_ _ctx90637_))
                (_E9061290624_))))))
    (define gx#core-module-export->import__%
      (lambda (_out90532_ _rename90533_ _dphi90534_)
        (let* ((_out9053590545_ _out90532_)
               (_E9053790549_
                (lambda () (error '"No clause matching" _out9053590545_)))
               (_K9053890561_
                (lambda (_weak?90552_
                         _name90553_
                         _phi90554_
                         _key90555_
                         _ctx90556_)
                  (##structure
                   gx#module-import::t
                   _out90532_
                   (let ((_$e90558_ _rename90533_))
                     (if _$e90558_ _$e90558_ _name90553_))
                   (fx+ _phi90554_ _dphi90534_)
                   _weak?90552_))))
          (if (##structure-direct-instance-of?
               _out9053590545_
               'gx#module-export::t)
              (let* ((_e9053990564_
                      (##unchecked-structure-ref
                       _out9053590545_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx90567_ _e9053990564_)
                     (_e9054090569_
                      (##unchecked-structure-ref
                       _out9053590545_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key90572_ _e9054090569_)
                     (_e9054190574_
                      (##unchecked-structure-ref
                       _out9053590545_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi90577_ _e9054190574_)
                     (_e9054290579_
                      (##unchecked-structure-ref
                       _out9053590545_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name90582_ _e9054290579_)
                     (_e9054390584_
                      (##unchecked-structure-ref
                       _out9053590545_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?90587_ _e9054390584_))
                (_K9053890561_
                 _weak?90587_
                 _name90582_
                 _phi90577_
                 _key90572_
                 _ctx90567_))
              (_E9053790549_)))))
    (define gx#core-module-export->import__0
      (lambda (_out90592_)
        (let* ((_rename90594_ '#f) (_dphi90596_ '0))
          (gx#core-module-export->import__%
           _out90592_
           _rename90594_
           _dphi90596_))))
    (define gx#core-module-export->import__1
      (lambda (_out90598_ _rename90599_)
        (let ((_dphi90601_ '0))
          (gx#core-module-export->import__%
           _out90598_
           _rename90599_
           _dphi90601_))))
    (define gx#core-module-export->import
      (lambda _g92609_
        (let ((_g92608_ (##length _g92609_)))
          (cond ((##fx= _g92608_ 1)
                 (apply (lambda (_out90592_)
                          (gx#core-module-export->import__0 _out90592_))
                        _g92609_))
                ((##fx= _g92608_ 2)
                 (apply (lambda (_out90598_ _rename90599_)
                          (gx#core-module-export->import__1
                           _out90598_
                           _rename90599_))
                        _g92609_))
                ((##fx= _g92608_ 3)
                 (apply (lambda (_out90603_ _rename90604_ _dphi90605_)
                          (gx#core-module-export->import__%
                           _out90603_
                           _rename90604_
                           _dphi90605_))
                        _g92609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g92609_))))))
    (define gx#core-expand-module%
      (lambda (_stx90460_)
        (letrec ((_make-context90462_
                  (lambda (_id90513_)
                    (let* ((_super90515_ (gx#current-expander-context))
                           (_bind-id90517_ (gx#stx-e _id90513_))
                           (_mod-id90519_
                            (if (##structure-instance-of?
                                 _super90515_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super90515_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id90517_)
                                _bind-id90517_))
                           (_ns90521_ (symbol->string _mod-id90519_))
                           (_path90528_
                            (if (##structure-instance-of?
                                 _super90515_
                                 'gx#module-context::t)
                                (let ((_path90523_
                                       (##unchecked-structure-ref
                                        _super90515_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path90523_)
                                          (null? _path90523_))
                                      (cons _bind-id90517_ _path90523_)
                                      (if (not _path90523_)
                                          _bind-id90517_
                                          (cons _bind-id90517_
                                                (cons _path90523_ '())))))
                                _bind-id90517_)))
                      (let ((__obj92585
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
                         __obj92585
                         _mod-id90519_
                         _super90515_
                         _ns90521_
                         _path90528_)
                        __obj92585)))))
          (let* ((_e9046390473_ _stx90460_)
                 (_E9046590477_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9046390473_)))
                 (_E9046490509_
                  (lambda ()
                    (if (gx#stx-pair? _e9046390473_)
                        (let ((_e9046690481_ (gx#syntax-e _e9046390473_)))
                          (let ((_hd9046790484_ (##car _e9046690481_))
                                (_tl9046890486_ (##cdr _e9046690481_)))
                            (if (gx#stx-pair? _tl9046890486_)
                                (let ((_e9046990489_
                                       (gx#syntax-e _tl9046890486_)))
                                  (let ((_hd9047090492_ (##car _e9046990489_))
                                        (_tl9047190494_ (##cdr _e9046990489_)))
                                    (let* ((_id90497_ _hd9047090492_)
                                           (_body90499_ _tl9047190494_))
                                      (if (and (gx#identifier? _id90497_)
                                               (gx#stx-list? _body90499_))
                                          (let* ((_ctx90501_
                                                  (_make-context90462_
                                                   _id90497_))
                                                 (_body90503_
                                                  (gx#core-expand-module-begin
                                                   _body90499_
                                                   _ctx90501_))
                                                 (_body90505_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90503_)
                                                   (gx#stx-source
                                                    _stx90460_))))
                                            (##unchecked-structure-set!
                                             _ctx90501_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body90505_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx90501_
                                             _body90505_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id90497_
                                             _ctx90501_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id90497_)
                                              _body90505_)
                                             (gx#stx-source _stx90460_)))
                                          (_E9046590477_)))))
                                (_E9046590477_))))
                        (_E9046590477_)))))
            (_E9046490509_)))))
    (define gx#core-expand-module-begin
      (lambda (_body90426_ _ctx90427_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx90430_
                   (gx#core-expand-head (cons '%%begin-module _body90426_)))
                  (_e9043190438_ _stx90430_)
                  (_E9043390442_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx90430_)))
                  (_E9043290456_
                   (lambda ()
                     (if (gx#stx-pair? _e9043190438_)
                         (let ((_e9043490446_ (gx#syntax-e _e9043190438_)))
                           (let ((_hd9043590449_ (##car _e9043490446_))
                                 (_tl9043690451_ (##cdr _e9043490446_)))
                             (if (and (gx#identifier? _hd9043590449_)
                                      (gx#core-identifier=?
                                       _hd9043590449_
                                       '%#begin-module))
                                 (let ((_body90454_ _tl9043690451_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx90430_)
                                           _body90454_
                                           (gx#core-expand-module-body
                                            _body90454_))
                                       (_E9043390442_)))
                                 (_E9043390442_))))
                         (_E9043390442_)))))
             (_E9043290456_)))
         gx#current-expander-context
         _ctx90427_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body90222_)
        (letrec ((_expand-special90224_
                  (lambda (_hd90353_ _K90354_ _rest90355_ _r90356_)
                    (let* ((_e9035790374_ _hd90353_)
                           (_E9036990378_
                            (lambda ()
                              (_K90354_
                               _rest90355_
                               (cons (gx#core-expand-top _hd90353_)
                                     _r90356_))))
                           (_E9035990390_
                            (lambda ()
                              (if (gx#stx-pair? _e9035790374_)
                                  (let ((_e9037090382_
                                         (gx#syntax-e _e9035790374_)))
                                    (let ((_hd9037190385_
                                           (##car _e9037090382_))
                                          (_tl9037290387_
                                           (##cdr _e9037090382_)))
                                      (if (and (gx#identifier? _hd9037190385_)
                                               (gx#core-identifier=?
                                                _hd9037190385_
                                                '%#export))
                                          (if '#t
                                              (_K90354_
                                               _rest90355_
                                               (cons _hd90353_ _r90356_))
                                              (_E9036990378_))
                                          (_E9036990378_))))
                                  (_E9036990378_))))
                           (_E9035890422_
                            (lambda ()
                              (if (gx#stx-pair? _e9035790374_)
                                  (let ((_e9036090394_
                                         (gx#syntax-e _e9035790374_)))
                                    (let ((_hd9036190397_
                                           (##car _e9036090394_))
                                          (_tl9036290399_
                                           (##cdr _e9036090394_)))
                                      (if (and (gx#identifier? _hd9036190397_)
                                               (gx#core-identifier=?
                                                _hd9036190397_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9036290399_)
                                              (let ((_e9036390402_
                                                     (gx#syntax-e
                                                      _tl9036290399_)))
                                                (let ((_hd9036490405_
                                                       (##car _e9036390402_))
                                                      (_tl9036590407_
                                                       (##cdr _e9036390402_)))
                                                  (let ((_hd-bind90410_
                                                         _hd9036490405_))
                                                    (if (gx#stx-pair?
                                                         _tl9036590407_)
                                                        (let ((_e9036690412_
                                                               (gx#syntax-e
                                                                _tl9036590407_)))
                                                          (let ((_hd9036790415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9036690412_))
                        (_tl9036890417_ (##cdr _e9036690412_)))
                    (let ((_expr90420_ _hd9036790415_))
                      (if (gx#stx-null? _tl9036890417_)
                          (if (gx#core-bind-values? _hd-bind90410_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90410_)
                                (_K90354_
                                 _rest90355_
                                 (cons _hd90353_ _r90356_)))
                              (_E9035990390_))
                          (_E9035990390_)))))
                (_E9035990390_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9035990390_))
                                          (_E9035990390_))))
                                  (_E9035990390_)))))
                      (_E9035890422_))))
                 (_expand-body90225_
                  (lambda (_rbody90227_)
                    (let _lp90229_ ((_rest90231_ _rbody90227_)
                                    (_body90232_ '()))
                      (let* ((_rest9023390241_ _rest90231_)
                             (_else9023590249_ (lambda () _body90232_))
                             (_K9023790341_
                              (lambda (_rest90252_ _hd90253_)
                                (let* ((_e9025490275_ _hd90253_)
                                       (_E9027090279_
                                        (lambda ()
                                          (_lp90229_
                                           _rest90252_
                                           (cons (gx#core-expand-expression
                                                  _hd90253_)
                                                 _body90232_))))
                                       (_E9026690293_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9025490275_)
                                              (let ((_e9027190283_
                                                     (gx#syntax-e
                                                      _e9025490275_)))
                                                (let ((_hd9027290286_
                                                       (##car _e9027190283_))
                                                      (_tl9027390288_
                                                       (##cdr _e9027190283_)))
                                                  (let ((_form90291_
                                                         _hd9027290286_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form90291_
                                                         gx#special-form-binding?)
                                                        (_lp90229_
                                                         _rest90252_
                                                         (cons _hd90253_
                                                               _body90232_))
                                                        (_E9027090279_)))))
                                              (_E9027090279_))))
                                       (_E9025690305_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9025490275_)
                                              (let ((_e9026790297_
                                                     (gx#syntax-e
                                                      _e9025490275_)))
                                                (let ((_hd9026890300_
                                                       (##car _e9026790297_))
                                                      (_tl9026990302_
                                                       (##cdr _e9026790297_)))
                                                  (if (and (gx#identifier?
                                                            _hd9026890300_)
                                                           (gx#core-identifier=?
                                                            _hd9026890300_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp90229_
                                                           _rest90252_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90253_)
                         _body90232_))
                  (_E9026690293_))
              (_E9026690293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9026690293_))))
                                       (_E9025590337_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9025490275_)
                                              (let ((_e9025790309_
                                                     (gx#syntax-e
                                                      _e9025490275_)))
                                                (let ((_hd9025890312_
                                                       (##car _e9025790309_))
                                                      (_tl9025990314_
                                                       (##cdr _e9025790309_)))
                                                  (if (and (gx#identifier?
                                                            _hd9025890312_)
                                                           (gx#core-identifier=?
                                                            _hd9025890312_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9025990314_)
                                                          (let ((_e9026090317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9025990314_)))
                    (let ((_hd9026190320_ (##car _e9026090317_))
                          (_tl9026290322_ (##cdr _e9026090317_)))
                      (let ((_hd-bind90325_ _hd9026190320_))
                        (if (gx#stx-pair? _tl9026290322_)
                            (let ((_e9026390327_ (gx#syntax-e _tl9026290322_)))
                              (let ((_hd9026490330_ (##car _e9026390327_))
                                    (_tl9026590332_ (##cdr _e9026390327_)))
                                (let ((_expr90335_ _hd9026490330_))
                                  (if (gx#stx-null? _tl9026590332_)
                                      (if '#t
                                          (_lp90229_
                                           _rest90252_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind90325_)
                                                   (gx#core-expand-expression
                                                    _expr90335_))
                                                  (gx#stx-source _hd90253_))
                                                 _body90232_))
                                          (_E9025690305_))
                                      (_E9025690305_)))))
                            (_E9025690305_)))))
                  (_E9025690305_))
              (_E9025690305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9025690305_)))))
                                  (_E9025590337_)))))
                        (if (##pair? _rest9023390241_)
                            (let ((_hd9023890344_ (##car _rest9023390241_))
                                  (_tl9023990346_ (##cdr _rest9023390241_)))
                              (let* ((_hd90349_ _hd9023890344_)
                                     (_rest90351_ _tl9023990346_))
                                (_K9023790341_ _rest90351_ _hd90349_)))
                            (_else9023590249_)))))))
          (_expand-body90225_
           (gx#core-expand-block__%
            (cons '%#begin-module _body90222_)
            _expand-special90224_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx90065_
               _expanded?90066_
               _method90067_
               _current-phi90068_
               _expand190069_)
        (letrec ((_K90071_
                  (lambda (_rest90189_ _r90190_)
                    (let* ((_e9019190198_ _rest90189_)
                           (_E9019390202_ (lambda () _r90190_))
                           (_E9019290218_
                            (lambda ()
                              (if (gx#stx-pair? _e9019190198_)
                                  (let ((_e9019490206_
                                         (gx#syntax-e _e9019190198_)))
                                    (let ((_hd9019590209_
                                           (##car _e9019490206_))
                                          (_tl9019690211_
                                           (##cdr _e9019490206_)))
                                      (let* ((_hd90214_ _hd9019590209_)
                                             (_rest90216_ _tl9019690211_))
                                        (if '#t
                                            (_step90072_
                                             _hd90214_
                                             _rest90216_
                                             _r90190_)
                                            (_E9019390202_)))))
                                  (_E9019390202_)))))
                      (_E9019290218_))))
                 (_step90072_
                  (lambda (_hd90103_ _rest90104_ _r90105_)
                    (let* ((_e9010690124_ _hd90103_)
                           (_E9011990128_
                            (lambda ()
                              (if (_expanded?90066_ (gx#stx-e _hd90103_))
                                  (_K90071_
                                   _rest90104_
                                   (cons (gx#stx-e _hd90103_) _r90105_))
                                  (_expand190069_
                                   _hd90103_
                                   _K90071_
                                   _rest90104_
                                   _r90105_))))
                           (_E9011590144_
                            (lambda ()
                              (if (gx#stx-pair? _e9010690124_)
                                  (let ((_e9012090132_
                                         (gx#syntax-e _e9010690124_)))
                                    (let ((_hd9012190135_
                                           (##car _e9012090132_))
                                          (_tl9012290137_
                                           (##cdr _e9012090132_)))
                                      (let* ((_macro90140_ _hd9012190135_)
                                             (_body90142_ _tl9012290137_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro90140_
                                             gx#syntax-binding?)
                                            (_K90071_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro90140_)
                                                    _hd90103_
                                                    _method90067_)
                                                   _rest90104_)
                                             _r90105_)
                                            (_E9011990128_)))))
                                  (_E9011990128_))))
                           (_E9010890158_
                            (lambda ()
                              (if (gx#stx-pair? _e9010690124_)
                                  (let ((_e9011690148_
                                         (gx#syntax-e _e9010690124_)))
                                    (let ((_hd9011790151_
                                           (##car _e9011690148_))
                                          (_tl9011890153_
                                           (##cdr _e9011690148_)))
                                      (if (eq? (gx#stx-e _hd9011790151_)
                                               'begin:)
                                          (let ((_body90156_ _tl9011890153_))
                                            (if '#t
                                                (_K90071_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest90104_
                                                  _body90156_)
                                                 _r90105_)
                                                (_E9011590144_)))
                                          (_E9011590144_))))
                                  (_E9011590144_))))
                           (_E9010790185_
                            (lambda ()
                              (if (gx#stx-pair? _e9010690124_)
                                  (let ((_e9010990162_
                                         (gx#syntax-e _e9010690124_)))
                                    (let ((_hd9011090165_
                                           (##car _e9010990162_))
                                          (_tl9011190167_
                                           (##cdr _e9010990162_)))
                                      (if (eq? (gx#stx-e _hd9011090165_) 'phi:)
                                          (if (gx#stx-pair? _tl9011190167_)
                                              (let ((_e9011290170_
                                                     (gx#syntax-e
                                                      _tl9011190167_)))
                                                (let ((_hd9011390173_
                                                       (##car _e9011290170_))
                                                      (_tl9011490175_
                                                       (##cdr _e9011290170_)))
                                                  (let* ((_dphi90178_
                                                          _hd9011390173_)
                                                         (_body90180_
                                                          _tl9011490175_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi90178_)
                                                        (let ((_rbody90183_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K90071_ _body90180_ '()))
                        _current-phi90068_
                        (fx+ (gx#stx-e _dphi90178_) (_current-phi90068_)))))
                  (_K90071_ _rest90104_ (foldr1 cons _r90105_ _rbody90183_)))
                (_E9010890158_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9010890158_))
                                          (_E9010890158_))))
                                  (_E9010890158_)))))
                      (_E9010790185_)))))
          (let* ((_e9007390080_ _stx90065_)
                 (_E9007590084_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9007390080_)))
                 (_E9007490099_
                  (lambda ()
                    (if (gx#stx-pair? _e9007390080_)
                        (let ((_e9007690088_ (gx#syntax-e _e9007390080_)))
                          (let ((_hd9007790091_ (##car _e9007690088_))
                                (_tl9007890093_ (##cdr _e9007690088_)))
                            (let ((_body90096_ _tl9007890093_))
                              (if '#t
                                  (if (_current-phi90068_)
                                      (_K90071_ _body90096_ '())
                                      (call-with-parameters
                                       (lambda () (_K90071_ _body90096_ '()))
                                       _current-phi90068_
                                       (gx#current-expander-phi)))
                                  (_E9007590084_)))))
                        (_E9007590084_)))))
            (_E9007490099_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx89732_ _internal-expand?89733_)
        (letrec ((_expand189735_
                  (lambda (_hd90045_ _K90046_ _rest90047_ _r90048_)
                    (if (gx#core-bound-module? _hd90045_)
                        (_import189736_
                         (gx#syntax-local-e__0 _hd90045_)
                         _K90046_
                         _rest90047_
                         _r90048_)
                        (if (gx#core-library-module-path? _hd90045_)
                            (_import189736_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd90045_))
                             _K90046_
                             _rest90047_
                             _r90048_)
                            (if (gx#core-library-relative-module-path?
                                 _hd90045_)
                                (_import189736_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd90045_))
                                 _K90046_
                                 _rest90047_
                                 _r90048_)
                                (let ((_e90050_ (gx#stx-e _hd90045_)))
                                  (if (pair? _e90050_)
                                      (let ((_$e90052_
                                             (gx#stx-e (car _e90050_))))
                                        (if (eq? 'spec: _$e90052_)
                                            (_import-spec89739_
                                             _hd90045_
                                             _K90046_
                                             _rest90047_
                                             _r90048_)
                                            (if (eq? 'in: _$e90052_)
                                                (_import-submodule89737_
                                                 _hd90045_
                                                 _K90046_
                                                 _rest90047_
                                                 _r90048_)
                                                (if (eq? 'runtime: _$e90052_)
                                                    (_import-runtime89738_
                                                     _hd90045_
                                                     _K90046_
                                                     _rest90047_
                                                     _r90048_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx89732_
                                                     _hd90045_)))))
                                      (if (string? _e90050_)
                                          (_import189736_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd90045_
                                             (gx#stx-source _stx89732_)))
                                           _K90046_
                                           _rest90047_
                                           _r90048_)
                                          (if (##structure-instance-of?
                                               _e90050_
                                               'gx#module-context::t)
                                              (_K90046_
                                               _rest90047_
                                               (cons _e90050_ _r90048_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx89732_
                                               _hd90045_))))))))))
                 (_import189736_
                  (lambda (_ctx90034_ _K90035_ _rest90036_ _r90037_)
                    (let ((_dphi90039_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K90035_
                       _rest90036_
                       (cons (##structure
                              gx#import-set::t
                              _ctx90034_
                              _dphi90039_
                              (map (lambda (_g9004090042_)
                                     (gx#core-module-export->import__%
                                      _g9004090042_
                                      '#f
                                      _dphi90039_))
                                   (##unchecked-structure-ref
                                    _ctx90034_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r90037_)))))
                 (_import-submodule89737_
                  (lambda (_hd90001_ _K90002_ _rest90003_ _r90004_)
                    (let* ((_e9000590012_ _hd90001_)
                           (_E9000790016_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9000590012_)))
                           (_E9000690030_
                            (lambda ()
                              (if (gx#stx-pair? _e9000590012_)
                                  (let ((_e9000890020_
                                         (gx#syntax-e _e9000590012_)))
                                    (let ((_hd9000990023_
                                           (##car _e9000890020_))
                                          (_tl9001090025_
                                           (##cdr _e9000890020_)))
                                      (let ((_spath90028_ _tl9001090025_))
                                        (if '#t
                                            (_import189736_
                                             (_import-spec-source89740_
                                              _spath90028_)
                                             _K90002_
                                             _rest90003_
                                             _r90004_)
                                            (_E9000790016_)))))
                                  (_E9000790016_)))))
                      (_E9000690030_))))
                 (_import-runtime89738_
                  (lambda (_hd89968_ _K89969_ _rest89970_ _r89971_)
                    (let* ((_e8997289979_ _hd89968_)
                           (_E8997489983_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8997289979_)))
                           (_E8997389997_
                            (lambda ()
                              (if (gx#stx-pair? _e8997289979_)
                                  (let ((_e8997589987_
                                         (gx#syntax-e _e8997289979_)))
                                    (let ((_hd8997689990_
                                           (##car _e8997589987_))
                                          (_tl8997789992_
                                           (##cdr _e8997589987_)))
                                      (let ((_spath89995_ _tl8997789992_))
                                        (if '#t
                                            (_K89969_
                                             _rest89970_
                                             (cons (_import-spec-source89740_
                                                    _spath89995_)
                                                   _r89971_))
                                            (_E8997489983_)))))
                                  (_E8997489983_)))))
                      (_E8997389997_))))
                 (_import-spec89739_
                  (lambda (_hd89807_ _K89808_ _rest89809_ _r89810_)
                    (let* ((_e8981189828_ _hd89807_)
                           (_E8982089832_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8981189828_)))
                           (_E8981389942_
                            (lambda ()
                              (if (gx#stx-pair? _e8981189828_)
                                  (let ((_e8982189836_
                                         (gx#syntax-e _e8981189828_)))
                                    (let ((_hd8982289839_
                                           (##car _e8982189836_))
                                          (_tl8982389841_
                                           (##cdr _e8982189836_)))
                                      (if (gx#stx-pair? _tl8982389841_)
                                          (let ((_e8982489844_
                                                 (gx#syntax-e _tl8982389841_)))
                                            (let ((_hd8982589847_
                                                   (##car _e8982489844_))
                                                  (_tl8982689849_
                                                   (##cdr _e8982489844_)))
                                              (let* ((_path89852_
                                                      _hd8982589847_)
                                                     (_specs89854_
                                                      _tl8982689849_))
                                                (if '#t
                                                    (let ((_src-ctx89856_
                                                           (_import-spec-source89740_
                                                            _path89852_))
                                                          (_exports89857_
                                                           (make-hash-table))
                                                          (_specs89858_
                                                           (gx#syntax->list
                                                            _specs89854_)))
                                                      (for-each
                                                       (lambda (_out89860_)
                                                         (hash-put!
                                                          _exports89857_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out89860_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out89860_
                         '4
                         gx#module-export::t
                         '#f))
                  _out89860_))
               (##unchecked-structure-ref
                _src-ctx89856_
                '9
                gx#module-context::t
                '#f))
              (_K89808_
               _rest89809_
               (foldl1 (lambda (_spec89862_ _r89863_)
                         (let* ((_e8986489880_ _spec89862_)
                                (_E8986689884_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e8986489880_)))
                                (_E8986589938_
                                 (lambda ()
                                   (if (gx#stx-pair? _e8986489880_)
                                       (let ((_e8986789888_
                                              (gx#syntax-e _e8986489880_)))
                                         (let ((_hd8986889891_
                                                (##car _e8986789888_))
                                               (_tl8986989893_
                                                (##cdr _e8986789888_)))
                                           (let ((_phi89896_ _hd8986889891_))
                                             (if (gx#stx-pair? _tl8986989893_)
                                                 (let ((_e8987089898_
                                                        (gx#syntax-e
                                                         _tl8986989893_)))
                                                   (let ((_hd8987189901_
                                                          (##car _e8987089898_))
                                                         (_tl8987289903_
                                                          (##cdr _e8987089898_)))
                                                     (let ((_name89906_
                                                            _hd8987189901_))
                                                       (if (gx#stx-pair?
                                                            _tl8987289903_)
                                                           (let ((_e8987389908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl8987289903_)))
                     (let ((_hd8987489911_ (##car _e8987389908_))
                           (_tl8987589913_ (##cdr _e8987389908_)))
                       (let ((_src-phi89916_ _hd8987489911_))
                         (if (gx#stx-pair? _tl8987589913_)
                             (let ((_e8987689918_
                                    (gx#syntax-e _tl8987589913_)))
                               (let ((_hd8987789921_ (##car _e8987689918_))
                                     (_tl8987889923_ (##cdr _e8987689918_)))
                                 (let ((_src-name89926_ _hd8987789921_))
                                   (if (gx#stx-null? _tl8987889923_)
                                       (if (and (gx#stx-fixnum? _src-phi89916_)
                                                (gx#identifier?
                                                 _src-name89926_)
                                                (gx#stx-fixnum? _phi89896_)
                                                (gx#identifier? _name89906_))
                                           (let ((_src-phi89928_
                                                  (gx#stx-e _src-phi89916_))
                                                 (_src-name89929_
                                                  (gx#core-identifier-key
                                                   _src-name89926_))
                                                 (_phi89930_
                                                  (gx#stx-e _phi89896_))
                                                 (_name89931_
                                                  (gx#core-identifier-key
                                                   _name89906_)))
                                             (let ((_$e89933_
                                                    (hash-get
                                                     _exports89857_
                                                     (cons _src-phi89928_
                                                           _src-name89929_))))
                                               (if _$e89933_
                                                   ((lambda (_out89936_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out89936_
                                                             _name89931_
                                                             (fx- _phi89930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi89928_))
                    _r89863_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e89933_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx89732_
                                                    _hd89807_))))
                                           (_E8986689884_))
                                       (_E8986689884_)))))
                             (_E8986689884_)))))
                   (_E8986689884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E8986689884_)))))
                                       (_E8986689884_)))))
                           (_E8986589938_)))
                       _r89810_
                       _specs89858_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8982089832_)))))
                                          (_E8982089832_))))
                                  (_E8982089832_))))
                           (_E8981289964_
                            (lambda ()
                              (if (gx#stx-pair? _e8981189828_)
                                  (let ((_e8981489946_
                                         (gx#syntax-e _e8981189828_)))
                                    (let ((_hd8981589949_
                                           (##car _e8981489946_))
                                          (_tl8981689951_
                                           (##cdr _e8981489946_)))
                                      (if (gx#stx-pair? _tl8981689951_)
                                          (let ((_e8981789954_
                                                 (gx#syntax-e _tl8981689951_)))
                                            (let ((_hd8981889957_
                                                   (##car _e8981789954_))
                                                  (_tl8981989959_
                                                   (##cdr _e8981789954_)))
                                              (let ((_path89962_
                                                     _hd8981889957_))
                                                (if (gx#stx-null?
                                                     _tl8981989959_)
                                                    (if '#t
                                                        (_K89808_
                                                         _rest89809_
                                                         (cons (_import-spec-source89740_
                                                                _path89962_)
                                                               _r89810_))
                                                        (_E8981389942_))
                                                    (_E8981389942_)))))
                                          (_E8981389942_))))
                                  (_E8981389942_)))))
                      (_E8981289964_))))
                 (_import-spec-source89740_
                  (lambda (_spath89805_)
                    (gx#core-import-nested-module _spath89805_ _stx89732_)))
                 (_import!89741_
                  (lambda (_rbody89754_)
                    (letrec* ((_current-ctx89756_
                               (gx#current-expander-context))
                              (_deps89757_ (make-hash-table-eq))
                              (_bind!89758_
                               (lambda (_hd89803_)
                                 (gx#core-bind-import!__1
                                  _hd89803_
                                  _current-ctx89756_))))
                      (let _lp89760_ ((_rest89762_ _rbody89754_)
                                      (_body89763_ '()))
                        (let* ((_rest8976489772_ _rest89762_)
                               (_else8976689782_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx89756_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx89756_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx89756_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body89763_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx89780_ _g92610_)
                                     (gx#eval-module _ctx89780_))
                                   _deps89757_)
                                  _body89763_))
                               (_K8976889791_
                                (lambda (_rest89785_ _hd89786_)
                                  (if (##structure-direct-instance-of?
                                       _hd89786_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!89758_ _hd89786_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd89786_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd89786_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps89757_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd89786_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd89786_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!89758_
                                             (##unchecked-structure-ref
                                              _hd89786_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd89786_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps89757_
                                                 (##unchecked-structure-ref
                                                  _hd89786_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e89788_
                                                 (##structure-instance-of?
                                                  _hd89786_
                                                  'gx#module-context::t)))
                                            (if _$e89788_
                                                _$e89788_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx89732_
                                                 _hd89786_)))))
                                  (_lp89760_
                                   _rest89785_
                                   (cons _hd89786_ _body89763_)))))
                          (if (##pair? _rest8976489772_)
                              (let ((_hd8976989794_ (##car _rest8976489772_))
                                    (_tl8977089796_ (##cdr _rest8976489772_)))
                                (let* ((_hd89799_ _hd8976989794_)
                                       (_rest89801_ _tl8977089796_))
                                  (_K8976889791_ _rest89801_ _hd89799_)))
                              (_else8976689782_)))))))
                 (_expanded-import?89742_
                  (lambda (_e89746_)
                    (let ((_$e89748_
                           (##structure-direct-instance-of?
                            _e89746_
                            'gx#import-set::t)))
                      (if _$e89748_
                          _$e89748_
                          (let ((_$e89751_
                                 (##structure-direct-instance-of?
                                  _e89746_
                                  'gx#module-import::t)))
                            (if _$e89751_
                                _$e89751_
                                (##structure-instance-of?
                                 _e89746_
                                 'gx#module-context::t))))))))
          (let ((_rbody89744_
                 (gx#core-expand-import/export
                  _stx89732_
                  _expanded-import?89742_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand189735_)))
            (if _internal-expand?89733_
                (reverse _rbody89744_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!89741_ _rbody89744_))
                 (gx#stx-source _stx89732_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx90058_)
        (let ((_internal-expand?90060_ '#f))
          (gx#core-expand-import%__% _stx90058_ _internal-expand?90060_))))
    (define gx#core-expand-import%
      (lambda _g92612_
        (let ((_g92611_ (##length _g92612_)))
          (cond ((##fx= _g92611_ 1)
                 (apply (lambda (_stx90058_)
                          (gx#core-expand-import%__0 _stx90058_))
                        _g92612_))
                ((##fx= _g92611_ 2)
                 (apply (lambda (_stx90062_ _internal-expand?90063_)
                          (gx#core-expand-import%__%
                           _stx90062_
                           _internal-expand?90063_))
                        _g92612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g92612_))))))
    (define gx#core-import-nested-module
      (lambda (_spath89659_ _where89660_)
        (let* ((_e8966189668_ _spath89659_)
               (_E8966389672_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8966189668_)))
               (_E8966289727_
                (lambda ()
                  (if (gx#stx-pair? _e8966189668_)
                      (let ((_e8966489676_ (gx#syntax-e _e8966189668_)))
                        (let ((_hd8966589679_ (##car _e8966489676_))
                              (_tl8966689681_ (##cdr _e8966489676_)))
                          (let* ((_origin89684_ _hd8966589679_)
                                 (_sub89686_ _tl8966689681_))
                            (if '#t
                                (let ((_origin-ctx89688_
                                       (if (gx#stx-false? _origin89684_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin89684_))))
                                  (let _lp89690_ ((_rest89692_ _sub89686_)
                                                  (_ctx89693_
                                                   _origin-ctx89688_))
                                    (let* ((_e8969489701_ _rest89692_)
                                           (_E8969689705_
                                            (lambda () _ctx89693_))
                                           (_E8969589723_
                                            (lambda ()
                                              (if (gx#stx-pair? _e8969489701_)
                                                  (let ((_e8969789709_
                                                         (gx#syntax-e
                                                          _e8969489701_)))
                                                    (let ((_hd8969889712_
                                                           (##car _e8969789709_))
                                                          (_tl8969989714_
                                                           (##cdr _e8969789709_)))
                                                      (let* ((_id89717_
                                                              _hd8969889712_)
                                                             (_rest89719_
                                                              _tl8969989714_))
                                                        (if '#t
                                                            (let ((_bind89721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id89717_ '0 _ctx89693_)))
                      (if (and (##structure-direct-instance-of?
                                _bind89721_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind89721_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where89660_
                           _spath89659_
                           _id89717_))
                      (_lp89690_
                       _rest89719_
                       (##unchecked-structure-ref
                        _bind89721_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E8969689705_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8969689705_)))))
                                      (_E8969589723_))))
                                (_E8966389672_)))))
                      (_E8966389672_)))))
          (_E8966289727_))))
    (define gx#core-expand-import-source
      (lambda (_hd89657_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd89657_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx89165_ _internal-expand?89166_)
        (letrec* ((_make-export__9254192542_
                   (lambda (_bind89605_ _phi89606_ _ctx89607_ _name89608_)
                     (let* ((_key89610_
                             (##unchecked-structure-ref
                              _bind89605_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key89612_
                             (if _name89608_
                                 (gx#core-identifier-key _name89608_)
                                 _key89610_)))
                       (##structure
                        gx#module-export::t
                        _ctx89607_
                        _key89610_
                        _phi89606_
                        _export-key89612_
                        (let ((_$e89615_
                               (##structure-instance-of?
                                _bind89605_
                                'gx#extern-binding::t)))
                          (if _$e89615_
                              _$e89615_
                              (##structure-direct-instance-of?
                               _bind89605_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9254392546_
                   (lambda (_bind89621_)
                     (let* ((_phi89623_ (gx#current-export-expander-phi))
                            (_ctx89625_ (gx#current-expander-context))
                            (_name89627_ '#f))
                       (_make-export__9254192542_
                        _bind89621_
                        _phi89623_
                        _ctx89625_
                        _name89627_))))
                  (_make-export__1__9254492547_
                   (lambda (_bind89629_ _phi89630_)
                     (let* ((_ctx89632_ (gx#current-expander-context))
                            (_name89634_ '#f))
                       (_make-export__9254192542_
                        _bind89629_
                        _phi89630_
                        _ctx89632_
                        _name89634_))))
                  (_make-export__2__9254592548_
                   (lambda (_bind89636_ _phi89637_ _ctx89638_)
                     (let ((_name89640_ '#f))
                       (_make-export__9254192542_
                        _bind89636_
                        _phi89637_
                        _ctx89638_
                        _name89640_))))
                  (_make-export89168_
                   (lambda _g92614_
                     (let ((_g92613_ (##length _g92614_)))
                       (cond ((##fx= _g92613_ 1)
                              (apply (lambda (_bind89621_)
                                       (_make-export__0__9254392546_
                                        _bind89621_))
                                     _g92614_))
                             ((##fx= _g92613_ 2)
                              (apply (lambda (_bind89629_ _phi89630_)
                                       (_make-export__1__9254492547_
                                        _bind89629_
                                        _phi89630_))
                                     _g92614_))
                             ((##fx= _g92613_ 3)
                              (apply (lambda (_bind89636_
                                              _phi89637_
                                              _ctx89638_)
                                       (_make-export__2__9254592548_
                                        _bind89636_
                                        _phi89637_
                                        _ctx89638_))
                                     _g92614_))
                             ((##fx= _g92613_ 4)
                              (apply (lambda (_bind89642_
                                              _phi89643_
                                              _ctx89644_
                                              _name89645_)
                                       (_make-export__9254192542_
                                        _bind89642_
                                        _phi89643_
                                        _ctx89644_
                                        _name89645_))
                                     _g92614_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g92614_))))))
                  (_expand189169_
                   (lambda (_hd89318_ _K89319_ _rest89320_ _r89321_)
                     (let* ((_e8932289354_ _hd89318_)
                            (_E8934989358_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx89165_
                                _hd89318_)))
                            (_E8933989437_
                             (lambda ()
                               (if (gx#stx-pair? _e8932289354_)
                                   (let ((_e8935089362_
                                          (gx#syntax-e _e8932289354_)))
                                     (let ((_hd8935189365_
                                            (##car _e8935089362_))
                                           (_tl8935289367_
                                            (##cdr _e8935089362_)))
                                       (if (eq? (gx#stx-e _hd8935189365_)
                                                'import:)
                                           (let ((_in89370_ _tl8935289367_))
                                             (if (gx#stx-list? _in89370_)
                                                 (let _lp89372_ ((_in-rest89374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in89370_)
                         (_r89375_ _r89321_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e8937689383_
                                                           _in-rest89374_)
                                                          (_E8937889387_
                                                           (lambda ()
                                                             (_K89319_
                                                              _rest89320_
                                                              _r89375_)))
                                                          (_E8937789433_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e8937689383_)
                         (let ((_e8937989391_ (gx#syntax-e _e8937689383_)))
                           (let ((_hd8938089394_ (##car _e8937989391_))
                                 (_tl8938189396_ (##cdr _e8937989391_)))
                             (let* ((_hd89399_ _hd8938089394_)
                                    (_in-rest89401_ _tl8938189396_))
                               (if '#t
                                   (let ((_src89431_
                                          (if (gx#core-bound-module? _hd89399_)
                                              (gx#syntax-local-e__0 _hd89399_)
                                              (if (gx#core-library-module-path?
                                                   _hd89399_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd89399_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd89399_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd89399_))
                                                      (if (gx#stx-string?
                                                           _hd89399_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd89399_
                                                            (gx#stx-source
                                                             _stx89165_)))
                                                          (let* ((_e8940289409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd89399_)
                         (_E8940489413_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx89165_
                             _hd89399_)))
                         (_E8940389427_
                          (lambda ()
                            (if (gx#stx-pair? _e8940289409_)
                                (let ((_e8940589417_
                                       (gx#syntax-e _e8940289409_)))
                                  (let ((_hd8940689420_ (##car _e8940589417_))
                                        (_tl8940789422_ (##cdr _e8940589417_)))
                                    (if (eq? (gx#stx-e _hd8940689420_) 'in:)
                                        (let ((_spath89425_ _tl8940789422_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath89425_
                                               _stx89165_)
                                              (_E8940489413_)))
                                        (_E8940489413_))))
                                (_E8940489413_)))))
                    (_E8940389427_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp89372_
                                      _in-rest89401_
                                      (_export-imports89170_
                                       _src89431_
                                       _r89375_)))
                                   (_E8937889387_)))))
                         (_E8937889387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8937789433_)))
                                                 (_E8934989358_)))
                                           (_E8934989358_))))
                                   (_E8934989358_))))
                            (_E8932689476_
                             (lambda ()
                               (if (gx#stx-pair? _e8932289354_)
                                   (let ((_e8934089441_
                                          (gx#syntax-e _e8932289354_)))
                                     (let ((_hd8934189444_
                                            (##car _e8934089441_))
                                           (_tl8934289446_
                                            (##cdr _e8934089441_)))
                                       (if (eq? (gx#stx-e _hd8934189444_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl8934289446_)
                                               (let ((_e8934389449_
                                                      (gx#syntax-e
                                                       _tl8934289446_)))
                                                 (let ((_hd8934489452_
                                                        (##car _e8934389449_))
                                                       (_tl8934589454_
                                                        (##cdr _e8934389449_)))
                                                   (let ((_id89457_
                                                          _hd8934489452_))
                                                     (if (gx#stx-pair?
                                                          _tl8934589454_)
                                                         (let ((_e8934689459_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8934589454_)))
                   (let ((_hd8934789462_ (##car _e8934689459_))
                         (_tl8934889464_ (##cdr _e8934689459_)))
                     (let ((_name89467_ _hd8934789462_))
                       (if (gx#stx-null? _tl8934889464_)
                           (if '#t
                               (let* ((_phi89469_
                                       (gx#current-export-expander-phi))
                                      (_$e89471_
                                       (gx#core-resolve-identifier__1
                                        _id89457_
                                        _phi89469_)))
                                 (if _$e89471_
                                     ((lambda (_bind89474_)
                                        (_K89319_
                                         _rest89320_
                                         (cons (_make-export__9254192542_
                                                _bind89474_
                                                _phi89469_
                                                (gx#current-expander-context)
                                                _name89467_)
                                               _r89321_)))
                                      _$e89471_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx89165_
                                      _hd89318_
                                      _id89457_)))
                               (_E8933989437_))
                           (_E8933989437_)))))
                 (_E8933989437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8933989437_))
                                           (_E8933989437_))))
                                   (_E8933989437_))))
                            (_E8932589525_
                             (lambda ()
                               (if (gx#stx-pair? _e8932289354_)
                                   (let ((_e8932789480_
                                          (gx#syntax-e _e8932289354_)))
                                     (let ((_hd8932889483_
                                            (##car _e8932789480_))
                                           (_tl8932989485_
                                            (##cdr _e8932789480_)))
                                       (if (eq? (gx#stx-e _hd8932889483_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8932989485_)
                                               (let ((_e8933089488_
                                                      (gx#syntax-e
                                                       _tl8932989485_)))
                                                 (let ((_hd8933189491_
                                                        (##car _e8933089488_))
                                                       (_tl8933289493_
                                                        (##cdr _e8933089488_)))
                                                   (let ((_phi89496_
                                                          _hd8933189491_))
                                                     (if (gx#stx-pair?
                                                          _tl8933289493_)
                                                         (let ((_e8933389498_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8933289493_)))
                   (let ((_hd8933489501_ (##car _e8933389498_))
                         (_tl8933589503_ (##cdr _e8933389498_)))
                     (let ((_id89506_ _hd8933489501_))
                       (if (gx#stx-pair? _tl8933589503_)
                           (let ((_e8933689508_ (gx#syntax-e _tl8933589503_)))
                             (let ((_hd8933789511_ (##car _e8933689508_))
                                   (_tl8933889513_ (##cdr _e8933689508_)))
                               (let ((_name89516_ _hd8933789511_))
                                 (if (gx#stx-null? _tl8933889513_)
                                     (if (and (gx#stx-fixnum? _phi89496_)
                                              (gx#identifier? _id89506_)
                                              (gx#identifier? _name89516_))
                                         (let* ((_phi89518_
                                                 (gx#stx-e _phi89496_))
                                                (_$e89520_
                                                 (gx#core-resolve-identifier__1
                                                  _id89506_
                                                  _phi89518_)))
                                           (if _$e89520_
                                               ((lambda (_bind89523_)
                                                  (_K89319_
                                                   _rest89320_
                                                   (cons (_make-export__9254192542_
                                                          _bind89523_
                                                          _phi89518_
                                                          (gx#current-expander-context)
                                                          _name89516_)
                                                         _r89321_)))
                                                _$e89520_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx89165_
                                                _hd89318_
                                                _id89506_)))
                                         (_E8932689476_))
                                     (_E8932689476_)))))
                           (_E8932689476_)))))
                 (_E8932689476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8932689476_))
                                           (_E8932689476_))))
                                   (_E8932689476_))))
                            (_E8932489536_
                             (lambda ()
                               (let ((_id89529_ _e8932289354_))
                                 (if (gx#identifier? _id89529_)
                                     (let ((_$e89531_
                                            (gx#core-resolve-identifier__1
                                             _id89529_
                                             (gx#current-export-expander-phi))))
                                       (if _$e89531_
                                           ((lambda (_bind89534_)
                                              (_K89319_
                                               _rest89320_
                                               (cons (_make-export__0__9254392546_
                                                      _bind89534_)
                                                     _r89321_)))
                                            _$e89531_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx89165_
                                            _hd89318_)))
                                     (_E8932589525_)))))
                            (_E8932389600_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8932289354_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx89540_
                                               (gx#current-expander-context))
                                              (_current-phi89542_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx89544_
                                               (gx#core-context-shift
                                                _current-ctx89540_
                                                _current-phi89542_))
                                              (_phi-bind89546_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx89544_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp89549_ ((_bind-rest89551_
                                                          _phi-bind89546_)
                                                         (_set89552_ '()))
                                           (let* ((_bind-rest8955389563_
                                                   _bind-rest89551_)
                                                  (_else8955589571_
                                                   (lambda ()
                                                     (_K89319_
                                                      _rest89320_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi89542_
                                                             _set89552_)
                                                            _r89321_))))
                                                  (_K8955789581_
                                                   (lambda (_bind-rest89574_
                                                            _bind89575_
                                                            _key89576_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind89575_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind89575_))
                                                         (_lp89549_
                                                          _bind-rest89574_
                                                          _set89552_)
                                                         (_lp89549_
                                                          _bind-rest89574_
                                                          (cons (_make-export__2__9254592548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind89575_
                         _current-phi89542_
                         _current-ctx89540_)
                        _set89552_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest8955389563_)
                                                 (let ((_hd8955889584_
                                                        (##car _bind-rest8955389563_))
                                                       (_tl8955989586_
                                                        (##cdr _bind-rest8955389563_)))
                                                   (if (##pair? _hd8955889584_)
                                                       (let ((_hd8956089589_
                                                              (##car _hd8955889584_))
                                                             (_tl8956189591_
                                                              (##cdr _hd8955889584_)))
                                                         (let* ((_key89594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd8956089589_)
                        (_bind89596_ _tl8956189591_)
                        (_bind-rest89598_ _tl8955989586_))
                   (_K8955789581_ _bind-rest89598_ _bind89596_ _key89594_)))
               (_else8955589571_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else8955589571_)))))
                                       (_E8932489536_))
                                   (_E8932489536_)))))
                       (_E8932389600_))))
                  (_export-imports89170_
                   (lambda (_src89194_ _r89195_)
                     (letrec* ((_current-ctx89197_
                                (gx#current-expander-context))
                               (_current-phi89198_
                                (gx#current-export-expander-phi))
                               (_import->export89199_
                                (lambda (_in89280_)
                                  (let* ((_in8928189289_ _in89280_)
                                         (_E8928389293_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8928189289_)))
                                         (_K8928489300_
                                          (lambda (_phi89296_
                                                   _key89297_
                                                   _out89298_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx89197_
                                             _key89297_
                                             _phi89296_
                                             _key89297_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8928189289_
                                         'gx#module-import::t)
                                        (let* ((_e8928589303_
                                                (##unchecked-structure-ref
                                                 _in8928189289_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out89306_ _e8928589303_)
                                               (_e8928689308_
                                                (##unchecked-structure-ref
                                                 _in8928189289_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key89311_ _e8928689308_)
                                               (_e8928789313_
                                                (##unchecked-structure-ref
                                                 _in8928189289_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi89316_ _e8928789313_))
                                          (_K8928489300_
                                           _phi89316_
                                           _key89311_
                                           _out89306_))
                                        (_E8928389293_)))))
                               (_fold-e89200_
                                (lambda (_in89202_ _r89203_)
                                  (let* ((_in8920489218_ _in89202_)
                                         (_else8920789226_
                                          (lambda () _r89203_)))
                                    (let ((_K8921389262_
                                           (lambda (_phi89258_
                                                    _key89259_
                                                    _out89260_)
                                             (if (and (fx= _phi89258_
                                                           _current-phi89198_)
                                                      (eq? _src89194_
                                                           (##unchecked-structure-ref
                                                            _out89260_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export89199_
                                                        _in89202_)
                                                       _r89203_)
                                                 _r89203_)))
                                          (_K8920989237_
                                           (lambda (_imports89230_
                                                    _phi89231_
                                                    _ctx89232_)
                                             (if (and (fx= _phi89231_
                                                           _current-phi89198_)
                                                      (eq? _src89194_
                                                           _ctx89232_))
                                                 (foldl1 (lambda (_in89234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r89235_)
                   (cons (_import->export89199_ _in89234_) _r89235_))
                 _r89203_
                 _imports89230_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r89203_))))
                                      (let ((_try-match8920689255_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8920489218_
                                                    'gx#import-set::t)
                                                   (let* ((_e8921089240_
                                                           (##unchecked-structure-ref
                                                            _in8920489218_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8921189245_
                                                           (##unchecked-structure-ref
                                                            _in8920489218_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8921289250_
                                                           (##unchecked-structure-ref
                                                            _in8920489218_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx89243_
                                                            _e8921089240_)
                                                           (_phi89248_
                                                            _e8921189245_)
                                                           (_imports89253_
                                                            _e8921289250_))
                                                       (_K8920989237_
                                                        _imports89253_
                                                        _phi89248_
                                                        _ctx89243_)))
                                                   (_else8920789226_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8920489218_
                                             'gx#module-import::t)
                                            (let* ((_e8921489265_
                                                    (##unchecked-structure-ref
                                                     _in8920489218_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8921589270_
                                                    (##unchecked-structure-ref
                                                     _in8920489218_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8921689275_
                                                    (##unchecked-structure-ref
                                                     _in8920489218_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out89268_ _e8921489265_)
                                                    (_key89273_ _e8921589270_)
                                                    (_phi89278_ _e8921689275_))
                                                (_K8921389262_
                                                 _phi89278_
                                                 _key89273_
                                                 _out89268_)))
                                            (_try-match8920689255_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src89194_
                              _current-phi89198_
                              (foldl1 _fold-e89200_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx89197_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r89195_))))
                  (_export!89171_
                   (lambda (_rbody89184_)
                     (letrec* ((_current-ctx89186_
                                (gx#current-expander-context))
                               (_fold-e89187_
                                (lambda (_out89191_ _r89192_)
                                  (if (##structure-direct-instance-of?
                                       _out89191_
                                       'gx#module-export::t)
                                      (cons _out89191_ _r89192_)
                                      (if (##structure-direct-instance-of?
                                           _out89191_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r89192_
                                                  (##unchecked-structure-ref
                                                   _out89191_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r89192_)))))
                       (let ((_body89189_ (reverse _rbody89184_)))
                         (##unchecked-structure-set!
                          _current-ctx89186_
                          (foldl1 _fold-e89187_
                                  (##unchecked-structure-ref
                                   _current-ctx89186_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body89189_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body89189_))))
                  (_expanded-export?89172_
                   (lambda (_e89179_)
                     (let ((_$e89181_
                            (##structure-direct-instance-of?
                             _e89179_
                             'gx#module-export::t)))
                       (if _$e89181_
                           _$e89181_
                           (##structure-direct-instance-of?
                            _e89179_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?89166_)
              (let ((_rbody89177_
                     (gx#core-expand-import/export
                      _stx89165_
                      _expanded-export?89172_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand189169_)))
                (if _internal-expand?89166_
                    (reverse _rbody89177_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!89171_ _rbody89177_))
                     (gx#stx-source _stx89165_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx89165_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx89165_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx89650_)
        (let ((_internal-expand?89652_ '#f))
          (gx#core-expand-export%__% _stx89650_ _internal-expand?89652_))))
    (define gx#core-expand-export%
      (lambda _g92616_
        (let ((_g92615_ (##length _g92616_)))
          (cond ((##fx= _g92615_ 1)
                 (apply (lambda (_stx89650_)
                          (gx#core-expand-export%__0 _stx89650_))
                        _g92616_))
                ((##fx= _g92615_ 2)
                 (apply (lambda (_stx89654_ _internal-expand?89655_)
                          (gx#core-expand-export%__%
                           _stx89654_
                           _internal-expand?89655_))
                        _g92616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g92616_))))))
    (define gx#core-expand-export-source
      (lambda (_hd89162_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd89162_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx89132_)
        (let* ((_e8913389140_ _stx89132_)
               (_E8913589144_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8913389140_)))
               (_E8913489158_
                (lambda ()
                  (if (gx#stx-pair? _e8913389140_)
                      (let ((_e8913689148_ (gx#syntax-e _e8913389140_)))
                        (let ((_hd8913789151_ (##car _e8913689148_))
                              (_tl8913889153_ (##cdr _e8913689148_)))
                          (let ((_body89156_ _tl8913889153_))
                            (if (gx#identifier-list? _body89156_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body89156_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body89156_))
                                   (gx#stx-source _stx89132_)))
                                (_E8913589144_)))))
                      (_E8913589144_)))))
          (_E8913489158_))))
    (define gx#core-bind-feature!__%
      (lambda (_id89098_ _private?89099_ _phi89100_ _ctx89101_)
        (gx#core-bind-syntax!__%
         _id89098_
         ((if _private?89099_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id89098_))
         _private?89099_
         _phi89100_
         _ctx89101_)))
    (define gx#core-bind-feature!__0
      (lambda (_id89106_)
        (let* ((_private?89108_ '#f)
               (_phi89110_ (gx#current-expander-phi))
               (_ctx89112_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89106_
           _private?89108_
           _phi89110_
           _ctx89112_))))
    (define gx#core-bind-feature!__1
      (lambda (_id89114_ _private?89115_)
        (let* ((_phi89117_ (gx#current-expander-phi))
               (_ctx89119_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89114_
           _private?89115_
           _phi89117_
           _ctx89119_))))
    (define gx#core-bind-feature!__2
      (lambda (_id89121_ _private?89122_ _phi89123_)
        (let ((_ctx89125_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89121_
           _private?89122_
           _phi89123_
           _ctx89125_))))
    (define gx#core-bind-feature!
      (lambda _g92618_
        (let ((_g92617_ (##length _g92618_)))
          (cond ((##fx= _g92617_ 1)
                 (apply (lambda (_id89106_)
                          (gx#core-bind-feature!__0 _id89106_))
                        _g92618_))
                ((##fx= _g92617_ 2)
                 (apply (lambda (_id89114_ _private?89115_)
                          (gx#core-bind-feature!__1 _id89114_ _private?89115_))
                        _g92618_))
                ((##fx= _g92617_ 3)
                 (apply (lambda (_id89121_ _private?89122_ _phi89123_)
                          (gx#core-bind-feature!__2
                           _id89121_
                           _private?89122_
                           _phi89123_))
                        _g92618_))
                ((##fx= _g92617_ 4)
                 (apply (lambda (_id89127_
                                 _private?89128_
                                 _phi89129_
                                 _ctx89130_)
                          (gx#core-bind-feature!__%
                           _id89127_
                           _private?89128_
                           _phi89129_
                           _ctx89130_))
                        _g92618_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g92618_))))))))
