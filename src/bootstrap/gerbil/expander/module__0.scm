(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708337965)
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
      (lambda _$args173127_
        (apply make-instance gx#module-import::t _$args173127_)))
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
      (lambda _$args173124_
        (apply make-instance gx#module-export::t _$args173124_)))
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
      (lambda _$args173121_
        (apply make-instance gx#import-set::t _$args173121_)))
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
      (lambda _$args173118_
        (apply make-instance gx#export-set::t _$args173118_)))
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
      (lambda _$args173115_
        (apply make-instance gx#import-expander::t _$args173115_)))
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
      (lambda _$args173112_
        (apply make-instance gx#export-expander::t _$args173112_)))
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
      (lambda _$args173109_
        (apply make-instance gx#import-export-expander::t _$args173109_)))
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
      (lambda (_path173106_ _fun173107_)
        (call-with-input-file
         (cons 'path: (cons _path173106_ gx#source-file-settings))
         _fun173107_)))
    (define gx#module-context:::init!
      (lambda (_self173100_ _id173101_ _super173102_ _ns173103_ _path173104_)
        (if (##fx< '11 (##structure-length _self173100_))
            (begin
              (##unchecked-structure-set!
               _self173100_
               _id173101_
               '1
               (##structure-type _self173100_)
               '#f)
              (##unchecked-structure-set!
               _self173100_
               (make-hash-table-eq)
               '2
               (##structure-type _self173100_)
               '#f)
              (##unchecked-structure-set!
               _self173100_
               _super173102_
               '3
               (##structure-type _self173100_)
               '#f)
              (##unchecked-structure-set!
               _self173100_
               '#f
               '4
               (##structure-type _self173100_)
               '#f)
              (##unchecked-structure-set!
               _self173100_
               '#f
               '5
               (##structure-type _self173100_)
               '#f)
              (##unchecked-structure-set!
               _self173100_
               _ns173103_
               '6
               (##structure-type _self173100_)
               '#f)
              (##unchecked-structure-set!
               _self173100_
               _path173104_
               '7
               (##structure-type _self173100_)
               '#f)
              (##unchecked-structure-set!
               _self173100_
               '()
               '8
               (##structure-type _self173100_)
               '#f)
              (##unchecked-structure-set!
               _self173100_
               '()
               '9
               (##structure-type _self173100_)
               '#f)
              (##unchecked-structure-set!
               _self173100_
               '#f
               '10
               (##structure-type _self173100_)
               '#f)
              (##unchecked-structure-set!
               _self173100_
               '#f
               '11
               (##structure-type _self173100_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self173100_
                   '11
                   (##vector-length _self173100_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self172944_ _ctx172945_ _root172946_)
        (let ((_super172954_
               (let ((_$e172948_ _root172946_))
                 (if _$e172948_
                     _$e172948_
                     (let ((_$e172951_ (gx#core-context-root__0)))
                       (if _$e172951_
                           _$e172951_
                           (let ((__obj177155
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor177156
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj177155
                                     ':init!)))
                               (if __constructor177156
                                   (__constructor177156 __obj177155)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj177155)))))))
          (if _ctx172945_
              (let ((_id172957_
                     (##structure-ref
                      _ctx172945_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path172958_
                     (##structure-ref _ctx172945_ '7 gx#module-context::t '#f))
                    (_in172959_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx172945_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e172960_
                     (make-promise (lambda () (gx#eval-module _ctx172945_)))))
                (if (##fx< '8 (##structure-length _self172944_))
                    (begin
                      (##unchecked-structure-set!
                       _self172944_
                       _id172957_
                       '1
                       (##structure-type _self172944_)
                       '#f)
                      (##unchecked-structure-set!
                       _self172944_
                       (make-hash-table-eq 'size: (length _in172959_))
                       '2
                       (##structure-type _self172944_)
                       '#f)
                      (##unchecked-structure-set!
                       _self172944_
                       _super172954_
                       '3
                       (##structure-type _self172944_)
                       '#f)
                      (##unchecked-structure-set!
                       _self172944_
                       '#f
                       '4
                       (##structure-type _self172944_)
                       '#f)
                      (##unchecked-structure-set!
                       _self172944_
                       '#f
                       '5
                       (##structure-type _self172944_)
                       '#f)
                      (##unchecked-structure-set!
                       _self172944_
                       _path172958_
                       '6
                       (##structure-type _self172944_)
                       '#f)
                      (##unchecked-structure-set!
                       _self172944_
                       _in172959_
                       '7
                       (##structure-type _self172944_)
                       '#f)
                      (##unchecked-structure-set!
                       _self172944_
                       _e172960_
                       '8
                       (##structure-type _self172944_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self172944_
                           '8
                           (##vector-length _self172944_)))
                (for-each
                 (lambda (_g172961172963_)
                   (gx#core-bind-weak-import!__% _g172961172963_ _self172944_))
                 _in172959_))
              (if (##fx< '8 (##structure-length _self172944_))
                  (begin
                    (##unchecked-structure-set!
                     _self172944_
                     '#f
                     '1
                     (##structure-type _self172944_)
                     '#f)
                    (##unchecked-structure-set!
                     _self172944_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self172944_)
                     '#f)
                    (##unchecked-structure-set!
                     _self172944_
                     _super172954_
                     '3
                     (##structure-type _self172944_)
                     '#f)
                    (##unchecked-structure-set!
                     _self172944_
                     '#f
                     '4
                     (##structure-type _self172944_)
                     '#f)
                    (##unchecked-structure-set!
                     _self172944_
                     '#f
                     '5
                     (##structure-type _self172944_)
                     '#f)
                    (##unchecked-structure-set!
                     _self172944_
                     '#f
                     '6
                     (##structure-type _self172944_)
                     '#f)
                    (##unchecked-structure-set!
                     _self172944_
                     '()
                     '7
                     (##structure-type _self172944_)
                     '#f)
                    (##unchecked-structure-set!
                     _self172944_
                     '#f
                     '8
                     (##structure-type _self172944_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self172944_
                         '8
                         (##vector-length _self172944_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self172969_ _ctx172970_)
        (let ((_root172972_ '#f))
          (gx#prelude-context:::init!__%
           _self172969_
           _ctx172970_
           _root172972_))))
    (define gx#prelude-context:::init!
      (lambda _g177162_
        (let ((_g177161_ (##length _g177162_)))
          (cond ((##fx= _g177161_ 2)
                 (apply (lambda (_self172969_ _ctx172970_)
                          (gx#prelude-context:::init!__0
                           _self172969_
                           _ctx172970_))
                        _g177162_))
                ((##fx= _g177161_ 3)
                 (apply (lambda (_self172974_ _ctx172975_ _root172976_)
                          (gx#prelude-context:::init!__%
                           _self172974_
                           _ctx172975_
                           _root172976_))
                        _g177162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g177162_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self172818_ _e172819_)
        (if (##fx< '3 (##structure-length _self172818_))
            (begin
              (##unchecked-structure-set!
               _self172818_
               _e172819_
               '1
               (##structure-type _self172818_)
               '#f)
              (##unchecked-structure-set!
               _self172818_
               (gx#current-expander-context)
               '2
               (##structure-type _self172818_)
               '#f)
              (##unchecked-structure-set!
               _self172818_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self172818_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self172818_
                   '3
                   (##vector-length _self172818_)))))
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
      (lambda (_g172444172447_ _g172445172449_)
        (gx#core-apply-user-expander__%
         _g172444172447_
         _g172445172449_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g172315172318_ _g172316172320_)
        (gx#core-apply-user-expander__%
         _g172315172318_
         _g172316172320_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx172186_)
        (let* ((_path172188_
                (##structure-ref _ctx172186_ '7 gx#module-context::t '#f))
               (_path172190_
                (if (pair? _path172188_) (last _path172188_) _path172188_)))
          (if (string? _path172190_) _path172190_ '#f))))
    (define gx#import-module__%
      (lambda (_path172162_ _reload?172163_ _eval?172164_)
        (let ((_ctx172166_
               ((gx#current-expander-module-import)
                _path172162_
                _reload?172163_)))
          (if (and _ctx172166_ _eval?172164_)
              (gx#eval-module _ctx172166_)
              '#!void)
          _ctx172166_)))
    (define gx#import-module__0
      (lambda (_path172171_)
        (let* ((_reload?172173_ '#f) (_eval?172175_ '#f))
          (gx#import-module__% _path172171_ _reload?172173_ _eval?172175_))))
    (define gx#import-module__1
      (lambda (_path172177_ _reload?172178_)
        (let ((_eval?172180_ '#f))
          (gx#import-module__% _path172177_ _reload?172178_ _eval?172180_))))
    (define gx#import-module
      (lambda _g177164_
        (let ((_g177163_ (##length _g177164_)))
          (cond ((##fx= _g177163_ 1)
                 (apply (lambda (_path172171_)
                          (gx#import-module__0 _path172171_))
                        _g177164_))
                ((##fx= _g177163_ 2)
                 (apply (lambda (_path172177_ _reload?172178_)
                          (gx#import-module__1 _path172177_ _reload?172178_))
                        _g177164_))
                ((##fx= _g177163_ 3)
                 (apply (lambda (_path172182_ _reload?172183_ _eval?172184_)
                          (gx#import-module__%
                           _path172182_
                           _reload?172183_
                           _eval?172184_))
                        _g177164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g177164_))))))
    (define gx#eval-module
      (lambda (_mod172159_) ((gx#current-expander-module-eval) _mod172159_)))
    (define gx#core-eval-module
      (lambda (_obj172144_)
        (letrec ((_force-e172146_
                  (lambda (_getf172155_ _e172156_)
                    (call-with-parameters
                     (lambda () (force (_getf172155_ _e172156_)))
                     gx#current-expander-context
                     _e172156_
                     gx#current-expander-phi
                     '0))))
          (let _recur172148_ ((_e172150_ _obj172144_))
            (if (##structure-instance-of? _e172150_ 'gx#module-context::t)
                (begin
                  (let ((_$e172152_ (gx#core-context-prelude__% _e172150_)))
                    (if _$e172152_ (_recur172148_ _$e172152_) '#!void))
                  (_force-e172146_ gx#module-context-e _e172150_))
                (if (##structure-instance-of? _e172150_ 'gx#prelude-context::t)
                    (_force-e172146_ gx#prelude-context-e _e172150_)
                    (if (gx#stx-string? _e172150_)
                        (_recur172148_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e172150_)))
                        (if (gx#core-library-module-path? _e172150_)
                            (_recur172148_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e172150_)))
                            (error '"Cannot eval module" _obj172144_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx172127_)
        (let _lp172129_ ((_e172131_ _ctx172127_))
          (if (or (##structure-instance-of? _e172131_ 'gx#module-context::t)
                  (##structure-instance-of? _e172131_ 'gx#local-context::t))
              (_lp172129_
               (##unchecked-structure-ref _e172131_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e172131_ 'gx#prelude-context::t)
                  _e172131_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx172140_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx172140_))))
    (define gx#core-context-prelude
      (lambda _g177166_
        (let ((_g177165_ (##length _g177166_)))
          (cond ((##fx= _g177165_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g177166_))
                ((##fx= _g177165_ 1)
                 (apply (lambda (_ctx172142_)
                          (gx#core-context-prelude__% _ctx172142_))
                        _g177166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g177166_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx172117_)
        (let* ((_ht172119_ (gx#current-expander-module-registry))
               (_$e172121_ (hash-get _ht172119_ _ctx172117_)))
          (if _$e172121_
              (values _$e172121_)
              (let ((_pre172124_
                     (let ((__obj177157
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
                       (gx#prelude-context:::init! __obj177157 _ctx172117_)
                       __obj177157)))
                (hash-put! _ht172119_ _ctx172117_ _pre172124_)
                _pre172124_)))))
    (define gx#core-import-module__%
      (lambda (_rpath171998_ _reload?171999_)
        (letrec ((_import-source172001_
                  (lambda (_path172086_)
                    (if (member _path172086_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path172086_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g177167_ (gx#core-read-module _path172086_)))
                         (begin
                           (let ((_g177168_
                                  (if (##values? _g177167_)
                                      (##vector-length _g177167_)
                                      1)))
                             (if (not (##fx= _g177168_ 4))
                                 (error "Context expects 4 values" _g177168_)))
                           (let ((_pre172089_ (##vector-ref _g177167_ 0))
                                 (_id172090_ (##vector-ref _g177167_ 1))
                                 (_ns172091_ (##vector-ref _g177167_ 2))
                                 (_body172092_ (##vector-ref _g177167_ 3)))
                             (let* ((_prelude172097_
                                     (if (##structure-instance-of?
                                          _pre172089_
                                          'gx#prelude-context::t)
                                         _pre172089_
                                         (if (##structure-instance-of?
                                              _pre172089_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre172089_)
                                             (if (string? _pre172089_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre172089_))
                                                 (if (not _pre172089_)
                                                     (let ((_$e172094_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e172094_
                                                           _$e172094_
                                                           (let ((__obj177158
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
                     (gx#prelude-context:::init! __obj177158 '#f)
                     __obj177158)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath171998_
                                                            _pre172089_))))))
                                    (_ctx172099_
                                     (let ((__obj177159
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
                                        __obj177159
                                        _id172090_
                                        _prelude172097_
                                        _ns172091_
                                        _path172086_)
                                       __obj177159))
                                    (_body172101_
                                     (gx#core-expand-module-begin
                                      _body172092_
                                      _ctx172099_))
                                    (_body172103_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body172101_)
                                      _path172086_
                                      _ctx172099_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx172099_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body172103_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx172099_
                                _body172103_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path172086_
                                _ctx172099_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id172090_
                                _ctx172099_)
                               _ctx172099_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path172086_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule172002_
                  (lambda (_rpath172014_)
                    (let* ((_rpath172015172022_ _rpath172014_)
                           (_E172017172026_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath172015172022_)))
                           (_K172018172074_
                            (lambda (_refs172029_ _origin172030_)
                              (let ((_ctx172032_
                                     (if _origin172030_
                                         (gx#core-import-module__%
                                          _origin172030_
                                          _reload?171999_)
                                         (gx#current-expander-context))))
                                (let _lp172034_ ((_rest172036_ _refs172029_)
                                                 (_ctx172037_ _ctx172032_))
                                  (let* ((_rest172038172046_ _rest172036_)
                                         (_else172040172054_
                                          (lambda () _ctx172037_))
                                         (_K172042172062_
                                          (lambda (_rest172057_ _id172058_)
                                            (let ((_bind172060_
                                                   (gx#resolve-identifier__%
                                                    _id172058_
                                                    '0
                                                    _ctx172037_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind172060_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind172060_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp172034_
                                                   _rest172057_
                                                   (##unchecked-structure-ref
                                                    _bind172060_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath172014_
                                                         _id172058_
                                                         _bind172060_))))))
                                    (if (##pair? _rest172038172046_)
                                        (let ((_hd172043172065_
                                               (##car _rest172038172046_))
                                              (_tl172044172067_
                                               (##cdr _rest172038172046_)))
                                          (let* ((_id172070_ _hd172043172065_)
                                                 (_rest172072_
                                                  _tl172044172067_))
                                            (_K172042172062_
                                             _rest172072_
                                             _id172070_)))
                                        (_else172040172054_))))))))
                      (if (##pair? _rpath172015172022_)
                          (let ((_hd172019172077_ (##car _rpath172015172022_))
                                (_tl172020172079_ (##cdr _rpath172015172022_)))
                            (let* ((_origin172082_ _hd172019172077_)
                                   (_refs172084_ _tl172020172079_))
                              (_K172018172074_ _refs172084_ _origin172082_)))
                          (_E172017172026_))))))
          (let ((_$e172004_
                 (if (not _reload?171999_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath171998_)
                     '#f)))
            (if _$e172004_
                (values _$e172004_)
                (if (list? _rpath171998_)
                    (_import-submodule172002_ _rpath171998_)
                    (if (gx#core-library-module-path? _rpath171998_)
                        (let ((_ctx172007_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath171998_)
                                _reload?171999_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath171998_
                           _ctx172007_)
                          _ctx172007_)
                        (let* ((_npath172009_ (path-normalize _rpath171998_))
                               (_$e172011_
                                (if (not _reload?171999_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath172009_)
                                    '#f)))
                          (if _$e172011_
                              (values _$e172011_)
                              (_import-source172001_ _npath172009_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath172110_)
        (let ((_reload?172112_ '#f))
          (gx#core-import-module__% _rpath172110_ _reload?172112_))))
    (define gx#core-import-module
      (lambda _g177170_
        (let ((_g177169_ (##length _g177170_)))
          (cond ((##fx= _g177169_ 1)
                 (apply (lambda (_rpath172110_)
                          (gx#core-import-module__0 _rpath172110_))
                        _g177170_))
                ((##fx= _g177169_ 2)
                 (apply (lambda (_rpath172114_ _reload?172115_)
                          (gx#core-import-module__%
                           _rpath172114_
                           _reload?172115_))
                        _g177170_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g177170_))))))
    (define gx#core-read-module
      (lambda (_path171987_)
        (with-catch
         (lambda (_exn171989_)
           (if (and (datum-parsing-exception? _exn171989_)
                    (eq? (datum-parsing-exception-filepos _exn171989_) '0))
               (gx#core-read-module/lang _path171987_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path171987_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g171991171993_)
                      (display-exception _exn171989_ _g171991171993_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path171987_)))))
    (define gx#core-read-module/sexp
      (lambda (_path171850_)
        (let _lp171852_ ((_body171854_ (read-syntax-from-file _path171850_))
                         (_pre171855_ '#f)
                         (_ns171856_ '#f)
                         (_pkg171857_ '#f))
          (let* ((_e171858171882_ _body171854_)
                 (_E171874171904_
                  (lambda ()
                    (let ((_g177171_
                           (if _pkg171857_
                               (values _pre171855_ _ns171856_ _pkg171857_)
                               (gx#core-read-module-package
                                _path171850_
                                _pre171855_
                                _ns171856_))))
                      (begin
                        (let ((_g177172_
                               (if (##values? _g177171_)
                                   (##vector-length _g177171_)
                                   1)))
                          (if (not (##fx= _g177172_ 3))
                              (error "Context expects 3 values" _g177172_)))
                        (let ((_pre171886_ (##vector-ref _g177171_ 0))
                              (_ns171887_ (##vector-ref _g177171_ 1))
                              (_pkg171888_ (##vector-ref _g177171_ 2)))
                          (let* ((_prelude171890_
                                  (if (gx#core-bound-module-prelude?
                                       _pre171886_)
                                      (gx#syntax-local-e__0 _pre171886_)
                                      (if (gx#core-library-module-path?
                                           _pre171886_)
                                          (gx#core-resolve-library-module-path
                                           _pre171886_)
                                          (if (gx#stx-string? _pre171886_)
                                              (gx#core-resolve-module-path__%
                                               _pre171886_
                                               _path171850_)
                                              (gx#stx-e _pre171886_)))))
                                 (_path-id171892_
                                  (gx#core-module-path->namespace
                                   _path171850_))
                                 (_pkg-id171894_
                                  (if _pkg171888_
                                      (string-append
                                       _pkg171888_
                                       '"/"
                                       _path-id171892_)
                                      _path-id171892_))
                                 (_module-id171896_
                                  (string->symbol _pkg-id171894_))
                                 (_module-ns171901_
                                  (if (eq? _ns171887_ '#!void)
                                      '#f
                                      (let ((_$e171898_ _ns171887_))
                                        (if _$e171898_
                                            _$e171898_
                                            _pkg-id171894_)))))
                            (values _prelude171890_
                                    _module-id171896_
                                    _module-ns171901_
                                    _body171854_)))))))
                 (_E171867171933_
                  (lambda ()
                    (if (gx#stx-pair? _e171858171882_)
                        (let ((_e171875171908_ (gx#syntax-e _e171858171882_)))
                          (let ((_hd171876171911_ (##car _e171875171908_))
                                (_tl171877171913_ (##cdr _e171875171908_)))
                            (if (eq? (gx#stx-e _hd171876171911_) 'package:)
                                (if (gx#stx-pair? _tl171877171913_)
                                    (let ((_e171878171916_
                                           (gx#syntax-e _tl171877171913_)))
                                      (let ((_hd171879171919_
                                             (##car _e171878171916_))
                                            (_tl171880171921_
                                             (##cdr _e171878171916_)))
                                        (let* ((_pkg171924_ _hd171879171919_)
                                               (_rest171926_ _tl171880171921_))
                                          (if '#t
                                              (let ((_pkg171931_
                                                     (if (gx#identifier?
                                                          _pkg171924_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg171924_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg171924_)
                         (gx#stx-false? _pkg171924_))
                     (gx#stx-e _pkg171924_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg171924_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp171852_
                                                 _rest171926_
                                                 _pre171855_
                                                 _ns171856_
                                                 _pkg171931_))
                                              (_E171874171904_)))))
                                    (_E171874171904_))
                                (_E171874171904_))))
                        (_E171874171904_))))
                 (_E171860171959_
                  (lambda ()
                    (if (gx#stx-pair? _e171858171882_)
                        (let ((_e171868171937_ (gx#syntax-e _e171858171882_)))
                          (let ((_hd171869171940_ (##car _e171868171937_))
                                (_tl171870171942_ (##cdr _e171868171937_)))
                            (if (eq? (gx#stx-e _hd171869171940_) 'namespace:)
                                (if (gx#stx-pair? _tl171870171942_)
                                    (let ((_e171871171945_
                                           (gx#syntax-e _tl171870171942_)))
                                      (let ((_hd171872171948_
                                             (##car _e171871171945_))
                                            (_tl171873171950_
                                             (##cdr _e171871171945_)))
                                        (let* ((_ns171953_ _hd171872171948_)
                                               (_rest171955_ _tl171873171950_))
                                          (if '#t
                                              (let ((_ns171957_
                                                     (if (gx#identifier?
                                                          _ns171953_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns171953_))
                                                         (if (gx#stx-string?
                                                              _ns171953_)
                                                             (gx#stx-e
                                                              _ns171953_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns171953_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns171953_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp171852_
                                                 _rest171955_
                                                 _pre171855_
                                                 _ns171957_
                                                 _pkg171857_))
                                              (_E171867171933_)))))
                                    (_E171867171933_))
                                (_E171867171933_))))
                        (_E171867171933_))))
                 (_E171859171983_
                  (lambda ()
                    (if (gx#stx-pair? _e171858171882_)
                        (let ((_e171861171963_ (gx#syntax-e _e171858171882_)))
                          (let ((_hd171862171966_ (##car _e171861171963_))
                                (_tl171863171968_ (##cdr _e171861171963_)))
                            (if (eq? (gx#stx-e _hd171862171966_) 'prelude:)
                                (if (gx#stx-pair? _tl171863171968_)
                                    (let ((_e171864171971_
                                           (gx#syntax-e _tl171863171968_)))
                                      (let ((_hd171865171974_
                                             (##car _e171864171971_))
                                            (_tl171866171976_
                                             (##cdr _e171864171971_)))
                                        (let* ((_prelude171979_
                                                _hd171865171974_)
                                               (_rest171981_ _tl171866171976_))
                                          (if '#t
                                              (_lp171852_
                                               _rest171981_
                                               _prelude171979_
                                               _ns171856_
                                               _pkg171857_)
                                              (_E171860171959_)))))
                                    (_E171860171959_))
                                (_E171860171959_))))
                        (_E171860171959_)))))
            (_E171859171983_)))))
    (define gx#core-read-module/lang
      (lambda (_path171677_)
        (letrec ((_default-read-module-body171679_
                  (lambda (_inp171842_)
                    (let _lp171844_ ((_body171846_ '()))
                      (let ((_next171848_ (read-syntax _inp171842_)))
                        (if (eof-object? _next171848_)
                            (reverse _body171846_)
                            (_lp171844_ (cons _next171848_ _body171846_)))))))
                 (_read-body171680_
                  (lambda (_inp171761_
                           _pre171762_
                           _ns171763_
                           _pkg171764_
                           _args171765_)
                    (let ((_g177173_
                           (if _pkg171764_
                               (values _pre171762_ _ns171763_ _pkg171764_)
                               (gx#core-read-module-package
                                _path171677_
                                _pre171762_
                                _ns171763_))))
                      (begin
                        (let ((_g177174_
                               (if (##values? _g177173_)
                                   (##vector-length _g177173_)
                                   1)))
                          (if (not (##fx= _g177174_ 3))
                              (error "Context expects 3 values" _g177174_)))
                        (let ((_pre171767_ (##vector-ref _g177173_ 0))
                              (_ns171768_ (##vector-ref _g177173_ 1))
                              (_pkg171769_ (##vector-ref _g177173_ 2)))
                          (let* ((_prelude171771_
                                  (gx#import-module__0 _pre171767_))
                                 (_read-module-body171825_
                                  (let ((_$e171817_
                                         (find (lambda (_e171772171774_)
                                                 (let* ((_g171776171786_
                                                         _e171772171774_)
                                                        (_else171778171794_
                                                         (lambda () '#f))
                                                        (_K171780171798_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g171776171786_
                                                        'gx#module-export::t)
                                                       (let* ((_e171781171801_
                                                               (##unchecked-structure-ref
                                                                _g171776171786_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e171782171804_
                                                               (##unchecked-structure-ref
                                                                _g171776171786_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e171783171807_
                                                               (##unchecked-structure-ref
                                                                _g171776171786_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e171783171807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e171784171810_
                            (##unchecked-structure-ref
                             _g171776171786_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g171812171814_)
                              (eq? _g171812171814_ 'read-module-body))
                            _e171784171810_)
                           (_K171780171798_)
                           (_else171778171794_)))
                     (_else171778171794_)))
               (_else171778171794_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude171771_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e171817_
                                        ((lambda (_xport171820_)
                                           (let ((_proc171823_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport171820_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc171823_)
                                                 _proc171823_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path171677_
                                                  _pre171767_
                                                  _proc171823_))))
                                         _$e171817_)
                                        _default-read-module-body171679_)))
                                 (_path-id171827_
                                  (gx#core-module-path->namespace
                                   _path171677_))
                                 (_pkg-id171829_
                                  (if _pkg171769_
                                      (string-append
                                       _pkg171769_
                                       '"/"
                                       _path-id171827_)
                                      _path-id171827_))
                                 (_module-id171831_
                                  (string->symbol _pkg-id171829_))
                                 (_module-ns171836_
                                  (let ((_$e171833_ _ns171768_))
                                    (if _$e171833_ _$e171833_ _pkg-id171829_)))
                                 (_body171839_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body171825_ _inp171761_))
                                   gx#current-module-reader-path
                                   _path171677_
                                   gx#current-module-reader-args
                                   _args171765_)))
                            (values _prelude171771_
                                    _module-id171831_
                                    _module-ns171836_
                                    _body171839_)))))))
                 (_string-e171681_
                  (lambda (_obj171758_ _what171759_)
                    (if (string? _obj171758_)
                        _obj171758_
                        (if (symbol? _obj171758_)
                            (symbol->string _obj171758_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what171759_)
                             _path171677_
                             _obj171758_)))))
                 (_read-lang-args171682_
                  (lambda (_inp171713_ _args171714_)
                    (let* ((_args171715171723_ _args171714_)
                           (_else171717171731_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path171677_)))
                           (_K171719171746_
                            (lambda (_args171734_ _prelude171735_)
                              (let* ((_pkg171737_
                                      (pgetq__0 'package: _args171734_))
                                     (_pkg171739_
                                      (if _pkg171737_
                                          (_string-e171681_
                                           _pkg171737_
                                           '"package")
                                          '#f))
                                     (_ns171741_
                                      (pgetq__0 'namespace: _args171734_))
                                     (_ns171743_
                                      (if _ns171741_
                                          (_string-e171681_
                                           _ns171741_
                                           '"namespace")
                                          '#f)))
                                (_read-body171680_
                                 _inp171713_
                                 _prelude171735_
                                 _ns171743_
                                 _pkg171739_
                                 _args171734_)))))
                      (if (##pair? _args171715171723_)
                          (let ((_hd171720171749_ (##car _args171715171723_))
                                (_tl171721171751_ (##cdr _args171715171723_)))
                            (let* ((_prelude171754_ _hd171720171749_)
                                   (_args171756_ _tl171721171751_))
                              (_K171719171746_ _args171756_ _prelude171754_)))
                          (_else171717171731_)))))
                 (_read-lang171683_
                  (lambda (_inp171688_)
                    (let* ((_head171690_ (read-line _inp171688_))
                           (_$e171692_
                            (string-index__0 _head171690_ '#\space)))
                      (if _$e171692_
                          ((lambda (_ix171695_)
                             (let ((_lang171697_
                                    (substring _head171690_ '0 _ix171695_)))
                               (if (equal? _lang171697_ '"#lang")
                                   (let* ((_rest171699_
                                           (substring
                                            _head171690_
                                            (fx+ _ix171695_ '1)
                                            (string-length _head171690_)))
                                          (_args171710_
                                           (with-catch
                                            (lambda (_g171700171702_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path171677_
                                               _g171700171702_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest171699_
                                               (lambda (_g171705171707_)
                                                 (read-all
                                                  _g171705171707_
                                                  read)))))))
                                     (_read-lang-args171682_
                                      _inp171688_
                                      _args171710_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path171677_))))
                           _$e171692_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path171677_)))))
                 (_read-e171684_
                  (lambda (_inp171686_)
                    (if (eq? (peek-char _inp171686_) '#\#)
                        (_read-lang171683_ _inp171686_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path171677_)))))
          (gx#call-with-input-source-file _path171677_ _read-e171684_))))
    (define gx#core-read-module-package
      (lambda (_path171631_ _pre171632_ _ns171633_)
        (letrec ((_string-e171635_
                  (lambda (_e171675_)
                    (if (symbol? _e171675_)
                        (symbol->string _e171675_)
                        (if (string? _e171675_)
                            _e171675_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e171675_))))))
          (let _lp171637_ ((_dir171639_ (path-directory _path171631_))
                           (_pkg-path171640_ '()))
            (let ((_gerbil.pkg171642_ (path-expand '"gerbil.pkg" _dir171639_)))
              (if (file-exists? _gerbil.pkg171642_)
                  (let ((_plist171644_
                         (gx#core-library-package-plist__% _dir171639_ '#t)))
                    (if (null? _plist171644_)
                        (let ((_pkg171646_
                               (if (not (null? _pkg-path171640_))
                                   (string-join _pkg-path171640_ '"/")
                                   '#f)))
                          (values _pre171632_ _ns171633_ _pkg171646_))
                        (if (list? _plist171644_)
                            (let* ((_root171648_
                                    (pgetq__0 'package: _plist171644_))
                                   (_pkg171652_
                                    (let ((_pkg-path171650_
                                           (if _root171648_
                                               (cons (_string-e171635_
                                                      _root171648_)
                                                     _pkg-path171640_)
                                               _pkg-path171640_)))
                                      (if (not (null? _pkg-path171650_))
                                          (string-join _pkg-path171650_ '"/")
                                          '#f)))
                                   (_ns171659_
                                    (let ((_ns171657_
                                           (let ((_$e171654_ _ns171633_))
                                             (if _$e171654_
                                                 _$e171654_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist171644_)))))
                                      (if _ns171657_
                                          (_string-e171635_ _ns171657_)
                                          '#f)))
                                   (_pre171664_
                                    (let ((_$e171661_ _pre171632_))
                                      (if _$e171661_
                                          _$e171661_
                                          (pgetq__0
                                           'prelude:
                                           _plist171644_)))))
                              (values _pre171664_ _ns171659_ _pkg171652_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist171644_))))
                  (let ((_dir*171667_
                         (path-strip-trailing-directory-separator
                          _dir171639_)))
                    (if (or (string-empty? _dir*171667_)
                            (equal? _dir171639_ _dir*171667_))
                        (values _pre171632_ _ns171633_ '#f)
                        (let ((_xpath171672_
                               (path-strip-directory _dir*171667_))
                              (_xdir171673_ (path-directory _dir*171667_)))
                          (_lp171637_
                           _xdir171673_
                           (cons _xpath171672_ _pkg-path171640_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path171629_)
        (path-strip-extension (path-strip-directory _path171629_))))
    (define gx#core-module-path->id
      (lambda (_path171627_)
        (string->symbol (gx#core-module-path->namespace _path171627_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path171606_ _rel171607_)
        (let* ((_path171609_ (gx#stx-e _stx-path171606_))
               (_path171611_
                (if (string-empty? (path-extension _path171609_))
                    (string-append _path171609_ '".ss")
                    _path171609_)))
          (gx#core-resolve-path__%
           _path171611_
           (let ((_$e171614_ (gx#stx-source _stx-path171606_)))
             (if _$e171614_ _$e171614_ _rel171607_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path171620_)
        (let ((_rel171622_ '#f))
          (gx#core-resolve-module-path__% _stx-path171620_ _rel171622_))))
    (define gx#core-resolve-module-path
      (lambda _g177176_
        (let ((_g177175_ (##length _g177176_)))
          (cond ((##fx= _g177175_ 1)
                 (apply (lambda (_stx-path171620_)
                          (gx#core-resolve-module-path__0 _stx-path171620_))
                        _g177176_))
                ((##fx= _g177175_ 2)
                 (apply (lambda (_stx-path171624_ _rel171625_)
                          (gx#core-resolve-module-path__%
                           _stx-path171624_
                           _rel171625_))
                        _g177176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g177176_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath171492_)
        (let* ((_spath171494_ (symbol->string (gx#stx-e _libpath171492_)))
               (_spath171496_
                (substring _spath171494_ '1 (string-length _spath171494_)))
               (_ext171498_ (path-extension _spath171496_))
               (_ssi171500_
                (if (string-empty? _ext171498_)
                    (string-append _spath171496_ '".ssi")
                    (string-append
                     (path-strip-extension _spath171496_)
                     '".ssi")))
               (_srcs171504_
                (if (string-empty? _ext171498_)
                    (map (lambda (_ext171502_)
                           (string-append _spath171496_ _ext171502_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath171496_ '()))))
          (let _lp171507_ ((_rest171509_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest171510171519_ _rest171509_)
                   (_E171513171523_
                    (lambda ()
                      (error '"No clause matching" _rest171510171519_))))
              (let ((_K171515171593_
                     (lambda (_rest171534_ _dir171535_)
                       (letrec ((_resolve171537_
                                 (lambda (_ssi171549_ _srcs171550_)
                                   (let ((_compiled-path171552_
                                          (path-expand
                                           _ssi171549_
                                           _dir171535_)))
                                     (if (file-exists? _compiled-path171552_)
                                         (path-normalize _compiled-path171552_)
                                         (let _lpr171554_ ((_rest-src171556_
                                                            _srcs171550_))
                                           (let* ((_rest-src171557171565_
                                                   _rest-src171556_)
                                                  (_else171559171573_
                                                   (lambda ()
                                                     (_lp171507_
                                                      _rest171534_)))
                                                  (_K171561171581_
                                                   (lambda (_rest-src171576_
                                                            _src171577_)
                                                     (let ((_src-path171579_
                                                            (path-expand
                                                             _src171577_
                                                             _dir171535_)))
                                                       (if (file-exists?
                                                            _src-path171579_)
                                                           (path-normalize
                                                            _src-path171579_)
                                                           (_lpr171554_
                                                            _rest-src171576_))))))
                                             (if (##pair? _rest-src171557171565_)
                                                 (let ((_hd171562171584_
                                                        (##car _rest-src171557171565_))
                                                       (_tl171563171586_
                                                        (##cdr _rest-src171557171565_)))
                                                   (let* ((_src171589_
                                                           _hd171562171584_)
                                                          (_rest-src171591_
                                                           _tl171563171586_))
                                                     (_K171561171581_
                                                      _rest-src171591_
                                                      _src171589_)))
                                                 (_else171559171573_)))))))))
                         (let ((_$e171539_
                                (gx#core-library-package-path-prefix
                                 _dir171535_)))
                           (if _$e171539_
                               ((lambda (_prefix171542_)
                                  (if (string-prefix?
                                       _prefix171542_
                                       _spath171496_)
                                      (let ((_ssi171546_
                                             (substring
                                              _ssi171500_
                                              (string-length _prefix171542_)
                                              (string-length _ssi171500_)))
                                            (_srcs171547_
                                             (map (lambda (_src171544_)
                                                    (substring
                                                     _src171544_
                                                     (string-length
                                                      _prefix171542_)
                                                     (string-length
                                                      _src171544_)))
                                                  _srcs171504_)))
                                        (_resolve171537_
                                         _ssi171546_
                                         _srcs171547_))
                                      (_lp171507_ _rest171534_)))
                                _$e171539_)
                               (_resolve171537_ _ssi171500_ _srcs171504_))))))
                    (_K171514171528_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath171492_))))
                (let ((_try-match171512171531_
                       (lambda ()
                         (if (##null? _rest171510171519_)
                             (_K171514171528_)
                             (_E171513171523_)))))
                  (if (##pair? _rest171510171519_)
                      (let ((_tl171517171598_ (##cdr _rest171510171519_))
                            (_hd171516171596_ (##car _rest171510171519_)))
                        (let ((_dir171601_ _hd171516171596_)
                              (_rest171603_ _tl171517171598_))
                          (_K171515171593_ _rest171603_ _dir171601_)))
                      (_try-match171512171531_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath171465_)
        (letrec ((_resolve171467_
                  (lambda (_path171484_ _base171485_)
                    (let ((_$e171487_ (string-rindex__0 _base171485_ '#\/)))
                      (if _$e171487_
                          ((lambda (_idx171490_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base171485_ '0 _idx171490_)
                                '"/"
                                _path171484_))))
                           _$e171487_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path171484_))))))))
          (let ((_spath171469_ (symbol->string (gx#stx-e _modpath171465_)))
                (_mod171470_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod171470_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath171465_))
            (let ((_mpath171472_
                   (symbol->string
                    (##structure-ref
                     _mod171470_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp171474_ ((_spath171476_ _spath171469_)
                               (_mpath171477_ _mpath171472_))
                (if (string-prefix? '"../" _spath171476_)
                    (let ((_$e171479_ (string-rindex__0 _mpath171477_ '#\/)))
                      (if _$e171479_
                          ((lambda (_idx171482_)
                             (_lp171474_
                              (substring
                               _spath171476_
                               '3
                               (string-length _spath171476_))
                              (substring _mpath171477_ '0 _idx171482_)))
                           _$e171479_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath171465_)))
                    (if (string-prefix? '"./" _spath171476_)
                        (_lp171474_
                         (substring
                          _spath171476_
                          '2
                          (string-length _spath171476_))
                         _mpath171477_)
                        (_resolve171467_ _spath171476_ _mpath171477_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir171458_)
        (let ((_$e171460_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir171458_))))
          (if _$e171460_
              ((lambda (_pkg171463_)
                 (string-append (symbol->string _pkg171463_) '"/"))
               _$e171460_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir171430_ _exists?171431_)
        (let* ((_cache171433_ (gx#core-library-package-cache))
               (_$e171435_ (hash-get _cache171433_ _dir171430_)))
          (if _$e171435_
              (values _$e171435_)
              (let* ((_gerbil.pkg171438_
                      (path-expand '"gerbil.pkg" _dir171430_))
                     (_plist171445_
                      (if (or _exists?171431_
                              (file-exists? _gerbil.pkg171438_))
                          (let ((_e171443_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg171438_
                                  read)))
                            (if (eof-object? _e171443_)
                                '()
                                (if (list? _e171443_)
                                    _e171443_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg171438_
                                     _e171443_))))
                          '())))
                (hash-put! _cache171433_ _dir171430_ _plist171445_)
                _plist171445_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir171451_)
        (let ((_exists?171453_ '#f))
          (gx#core-library-package-plist__% _dir171451_ _exists?171453_))))
    (define gx#core-library-package-plist
      (lambda _g177178_
        (let ((_g177177_ (##length _g177178_)))
          (cond ((##fx= _g177177_ 1)
                 (apply (lambda (_dir171451_)
                          (gx#core-library-package-plist__0 _dir171451_))
                        _g177178_))
                ((##fx= _g177177_ 2)
                 (apply (lambda (_dir171455_ _exists?171456_)
                          (gx#core-library-package-plist__%
                           _dir171455_
                           _exists?171456_))
                        _g177178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g177178_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e171424_ (gx#current-expander-module-library-package-cache)))
          (if _$e171424_
              (values _$e171424_)
              (let ((_cache171427_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache
                 _cache171427_)
                _cache171427_)))))
    (define gx#core-library-module-path?
      (lambda (_stx171421_) (gx#core-special-module-path? _stx171421_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx171419_) (gx#core-special-module-path? _stx171419_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx171414_ _char171415_)
        (if (gx#identifier? _stx171414_)
            (if (interned-symbol? (gx#stx-e _stx171414_))
                (let ((_str171417_ (symbol->string (gx#stx-e _stx171414_))))
                  (if (fx> (string-length _str171417_) '1)
                      (eq? (string-ref _str171417_ '0) _char171415_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx171408_)
        (gx#core-bound-identifier?__%
         _stx171408_
         (lambda (_g171409171411_)
           (gx#expander-binding?__% _g171409171411_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx171402_)
        (gx#core-bound-identifier?__%
         _stx171402_
         (lambda (_g171403171405_)
           (gx#expander-binding?__% _g171403171405_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx171389_)
        (letrec ((_module-prelude?171391_
                  (lambda (_e171397_)
                    (let ((_$e171399_
                           (##structure-instance-of?
                            _e171397_
                            'gx#module-context::t)))
                      (if _$e171399_
                          _$e171399_
                          (##structure-instance-of?
                           _e171397_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx171389_
           (lambda (_g171392171394_)
             (gx#expander-binding?__%
              _g171392171394_
              _module-prelude?171391_))))))
    (define gx#core-bind-import!__%
      (lambda (_in171319_ _ctx171320_ _force-weak?171321_)
        (let* ((_in171322171331_ _in171319_)
               (_E171324171335_
                (lambda () (error '"No clause matching" _in171322171331_)))
               (_K171325171348_
                (lambda (_weak?171338_ _phi171339_ _key171340_ _source171341_)
                  (gx#core-bind!__%
                   _key171340_
                   (let ((_e171343_
                          (gx#core-resolve-module-export _source171341_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e171343_
                       '1
                       gx#binding::t
                       '#f)
                      _key171340_
                      _phi171339_
                      _e171343_
                      (##unchecked-structure-ref
                       _source171341_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e171345_ _force-weak?171321_))
                        (if _$e171345_ _$e171345_ _weak?171338_))))
                   gx#core-context-rebind?
                   _phi171339_
                   _ctx171320_))))
          (if (##structure-direct-instance-of?
               _in171322171331_
               'gx#module-import::t)
              (let* ((_e171326171351_
                      (##unchecked-structure-ref
                       _in171322171331_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source171354_ _e171326171351_)
                     (_e171327171356_
                      (##unchecked-structure-ref
                       _in171322171331_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key171359_ _e171327171356_)
                     (_e171328171361_
                      (##unchecked-structure-ref
                       _in171322171331_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi171364_ _e171328171361_)
                     (_e171329171366_
                      (##unchecked-structure-ref
                       _in171322171331_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?171369_ _e171329171366_))
                (_K171325171348_
                 _weak?171369_
                 _phi171364_
                 _key171359_
                 _source171354_))
              (_E171324171335_)))))
    (define gx#core-bind-import!__0
      (lambda (_in171374_)
        (let* ((_ctx171376_ (gx#current-expander-context))
               (_force-weak?171378_ '#f))
          (gx#core-bind-import!__%
           _in171374_
           _ctx171376_
           _force-weak?171378_))))
    (define gx#core-bind-import!__1
      (lambda (_in171380_ _ctx171381_)
        (let ((_force-weak?171383_ '#f))
          (gx#core-bind-import!__%
           _in171380_
           _ctx171381_
           _force-weak?171383_))))
    (define gx#core-bind-import!
      (lambda _g177180_
        (let ((_g177179_ (##length _g177180_)))
          (cond ((##fx= _g177179_ 1)
                 (apply (lambda (_in171374_)
                          (gx#core-bind-import!__0 _in171374_))
                        _g177180_))
                ((##fx= _g177179_ 2)
                 (apply (lambda (_in171380_ _ctx171381_)
                          (gx#core-bind-import!__1 _in171380_ _ctx171381_))
                        _g177180_))
                ((##fx= _g177179_ 3)
                 (apply (lambda (_in171385_ _ctx171386_ _force-weak?171387_)
                          (gx#core-bind-import!__%
                           _in171385_
                           _ctx171386_
                           _force-weak?171387_))
                        _g177180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g177180_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in171305_ _ctx171306_)
        (gx#core-bind-import!__% _in171305_ _ctx171306_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in171311_)
        (let ((_ctx171313_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in171311_ _ctx171313_))))
    (define gx#core-bind-weak-import!
      (lambda _g177182_
        (let ((_g177181_ (##length _g177182_)))
          (cond ((##fx= _g177181_ 1)
                 (apply (lambda (_in171311_)
                          (gx#core-bind-weak-import!__0 _in171311_))
                        _g177182_))
                ((##fx= _g177181_ 2)
                 (apply (lambda (_in171315_ _ctx171316_)
                          (gx#core-bind-weak-import!__%
                           _in171315_
                           _ctx171316_))
                        _g177182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g177182_))))))
    (define gx#core-resolve-module-export
      (lambda (_out171196_)
        (letrec ((_subst171198_
                  (lambda (_key171244_)
                    (let* ((_key171245171253_ _key171244_)
                           (_else171247171261_ (lambda () _key171244_))
                           (_K171249171292_
                            (lambda (_mark171264_ _id171265_)
                              (let* ((_mark171266171272_ _mark171264_)
                                     (_E171268171276_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark171266171272_)))
                                     (_K171269171284_
                                      (lambda (_subst171279_)
                                        (let ((_$e171281_
                                               (if _subst171279_
                                                   (hash-get
                                                    _subst171279_
                                                    _id171265_)
                                                   '#f)))
                                          (if _$e171281_
                                              _$e171281_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key171244_))))))
                                (if (##structure-instance-of?
                                     _mark171266171272_
                                     'gx#expander-mark::t)
                                    (let* ((_e171270171287_
                                            (##unchecked-structure-ref
                                             _mark171266171272_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst171290_ _e171270171287_))
                                      (_K171269171284_ _subst171290_))
                                    (_E171268171276_))))))
                      (if (##pair? _key171245171253_)
                          (let ((_hd171250171295_ (##car _key171245171253_))
                                (_tl171251171297_ (##cdr _key171245171253_)))
                            (let* ((_id171300_ _hd171250171295_)
                                   (_mark171302_ _tl171251171297_))
                              (_K171249171292_ _mark171302_ _id171300_)))
                          (_else171247171261_))))))
          (let* ((_out171199171209_ _out171196_)
                 (_E171201171213_
                  (lambda () (error '"No clause matching" _out171199171209_)))
                 (_K171202171220_
                  (lambda (_phi171216_ _key171217_ _ctx171218_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx171218_ _phi171216_)
                     (_subst171198_ _key171217_)))))
            (if (##structure-direct-instance-of?
                 _out171199171209_
                 'gx#module-export::t)
                (let* ((_e171203171223_
                        (##unchecked-structure-ref
                         _out171199171209_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx171226_ _e171203171223_)
                       (_e171204171228_
                        (##unchecked-structure-ref
                         _out171199171209_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key171231_ _e171204171228_)
                       (_e171205171233_
                        (##unchecked-structure-ref
                         _out171199171209_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi171236_ _e171205171233_)
                       (_e171206171238_
                        (##unchecked-structure-ref
                         _out171199171209_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e171207171241_
                        (##unchecked-structure-ref
                         _out171199171209_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K171202171220_ _phi171236_ _key171231_ _ctx171226_))
                (_E171201171213_))))))
    (define gx#core-module-export->import__%
      (lambda (_out171121_ _rename171122_ _dphi171123_)
        (let* ((_out171124171134_ _out171121_)
               (_E171126171138_
                (lambda () (error '"No clause matching" _out171124171134_)))
               (_K171127171150_
                (lambda (_weak?171141_
                         _name171142_
                         _phi171143_
                         _key171144_
                         _ctx171145_)
                  (##structure
                   gx#module-import::t
                   _out171121_
                   (let ((_$e171147_ _rename171122_))
                     (if _$e171147_ _$e171147_ _name171142_))
                   (fx+ _phi171143_ _dphi171123_)
                   _weak?171141_))))
          (if (##structure-direct-instance-of?
               _out171124171134_
               'gx#module-export::t)
              (let* ((_e171128171153_
                      (##unchecked-structure-ref
                       _out171124171134_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx171156_ _e171128171153_)
                     (_e171129171158_
                      (##unchecked-structure-ref
                       _out171124171134_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key171161_ _e171129171158_)
                     (_e171130171163_
                      (##unchecked-structure-ref
                       _out171124171134_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi171166_ _e171130171163_)
                     (_e171131171168_
                      (##unchecked-structure-ref
                       _out171124171134_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name171171_ _e171131171168_)
                     (_e171132171173_
                      (##unchecked-structure-ref
                       _out171124171134_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?171176_ _e171132171173_))
                (_K171127171150_
                 _weak?171176_
                 _name171171_
                 _phi171166_
                 _key171161_
                 _ctx171156_))
              (_E171126171138_)))))
    (define gx#core-module-export->import__0
      (lambda (_out171181_)
        (let* ((_rename171183_ '#f) (_dphi171185_ '0))
          (gx#core-module-export->import__%
           _out171181_
           _rename171183_
           _dphi171185_))))
    (define gx#core-module-export->import__1
      (lambda (_out171187_ _rename171188_)
        (let ((_dphi171190_ '0))
          (gx#core-module-export->import__%
           _out171187_
           _rename171188_
           _dphi171190_))))
    (define gx#core-module-export->import
      (lambda _g177184_
        (let ((_g177183_ (##length _g177184_)))
          (cond ((##fx= _g177183_ 1)
                 (apply (lambda (_out171181_)
                          (gx#core-module-export->import__0 _out171181_))
                        _g177184_))
                ((##fx= _g177183_ 2)
                 (apply (lambda (_out171187_ _rename171188_)
                          (gx#core-module-export->import__1
                           _out171187_
                           _rename171188_))
                        _g177184_))
                ((##fx= _g177183_ 3)
                 (apply (lambda (_out171192_ _rename171193_ _dphi171194_)
                          (gx#core-module-export->import__%
                           _out171192_
                           _rename171193_
                           _dphi171194_))
                        _g177184_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g177184_))))))
    (define gx#core-expand-module%
      (lambda (_stx171049_)
        (letrec ((_make-context171051_
                  (lambda (_id171102_)
                    (let* ((_super171104_ (gx#current-expander-context))
                           (_bind-id171106_ (gx#stx-e _id171102_))
                           (_mod-id171108_
                            (if (##structure-instance-of?
                                 _super171104_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super171104_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id171106_)
                                _bind-id171106_))
                           (_ns171110_ (symbol->string _mod-id171108_))
                           (_path171117_
                            (if (##structure-instance-of?
                                 _super171104_
                                 'gx#module-context::t)
                                (let ((_path171112_
                                       (##unchecked-structure-ref
                                        _super171104_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path171112_)
                                          (null? _path171112_))
                                      (cons _bind-id171106_ _path171112_)
                                      (if (not _path171112_)
                                          _bind-id171106_
                                          (cons _bind-id171106_
                                                (cons _path171112_ '())))))
                                _bind-id171106_)))
                      (let ((__obj177160
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
                         __obj177160
                         _mod-id171108_
                         _super171104_
                         _ns171110_
                         _path171117_)
                        __obj177160)))))
          (let* ((_e171052171062_ _stx171049_)
                 (_E171054171066_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e171052171062_)))
                 (_E171053171098_
                  (lambda ()
                    (if (gx#stx-pair? _e171052171062_)
                        (let ((_e171055171070_ (gx#syntax-e _e171052171062_)))
                          (let ((_hd171056171073_ (##car _e171055171070_))
                                (_tl171057171075_ (##cdr _e171055171070_)))
                            (if (gx#stx-pair? _tl171057171075_)
                                (let ((_e171058171078_
                                       (gx#syntax-e _tl171057171075_)))
                                  (let ((_hd171059171081_
                                         (##car _e171058171078_))
                                        (_tl171060171083_
                                         (##cdr _e171058171078_)))
                                    (let* ((_id171086_ _hd171059171081_)
                                           (_body171088_ _tl171060171083_))
                                      (if (and (gx#identifier? _id171086_)
                                               (gx#stx-list? _body171088_))
                                          (let* ((_ctx171090_
                                                  (_make-context171051_
                                                   _id171086_))
                                                 (_body171092_
                                                  (gx#core-expand-module-begin
                                                   _body171088_
                                                   _ctx171090_))
                                                 (_body171094_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body171092_)
                                                   (gx#stx-source
                                                    _stx171049_))))
                                            (##unchecked-structure-set!
                                             _ctx171090_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body171094_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx171090_
                                             _body171094_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id171086_
                                             _ctx171090_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id171086_)
                                              _body171094_)
                                             (gx#stx-source _stx171049_)))
                                          (_E171054171066_)))))
                                (_E171054171066_))))
                        (_E171054171066_)))))
            (_E171053171098_)))))
    (define gx#core-expand-module-begin
      (lambda (_body171015_ _ctx171016_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx171019_
                   (gx#core-expand-head (cons '%%begin-module _body171015_)))
                  (_e171020171027_ _stx171019_)
                  (_E171022171031_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx171019_)))
                  (_E171021171045_
                   (lambda ()
                     (if (gx#stx-pair? _e171020171027_)
                         (let ((_e171023171035_ (gx#syntax-e _e171020171027_)))
                           (let ((_hd171024171038_ (##car _e171023171035_))
                                 (_tl171025171040_ (##cdr _e171023171035_)))
                             (if (and (gx#identifier? _hd171024171038_)
                                      (gx#core-identifier=?
                                       _hd171024171038_
                                       '%#begin-module))
                                 (let ((_body171043_ _tl171025171040_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx171019_)
                                           _body171043_
                                           (gx#core-expand-module-body
                                            _body171043_))
                                       (_E171022171031_)))
                                 (_E171022171031_))))
                         (_E171022171031_)))))
             (_E171021171045_)))
         gx#current-expander-context
         _ctx171016_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body170811_)
        (letrec ((_expand-special170813_
                  (lambda (_hd170942_ _K170943_ _rest170944_ _r170945_)
                    (let* ((_e170946170963_ _hd170942_)
                           (_E170958170967_
                            (lambda ()
                              (_K170943_
                               _rest170944_
                               (cons (gx#core-expand-top _hd170942_)
                                     _r170945_))))
                           (_E170948170979_
                            (lambda ()
                              (if (gx#stx-pair? _e170946170963_)
                                  (let ((_e170959170971_
                                         (gx#syntax-e _e170946170963_)))
                                    (let ((_hd170960170974_
                                           (##car _e170959170971_))
                                          (_tl170961170976_
                                           (##cdr _e170959170971_)))
                                      (if (and (gx#identifier?
                                                _hd170960170974_)
                                               (gx#core-identifier=?
                                                _hd170960170974_
                                                '%#export))
                                          (if '#t
                                              (_K170943_
                                               _rest170944_
                                               (cons _hd170942_ _r170945_))
                                              (_E170958170967_))
                                          (_E170958170967_))))
                                  (_E170958170967_))))
                           (_E170947171011_
                            (lambda ()
                              (if (gx#stx-pair? _e170946170963_)
                                  (let ((_e170949170983_
                                         (gx#syntax-e _e170946170963_)))
                                    (let ((_hd170950170986_
                                           (##car _e170949170983_))
                                          (_tl170951170988_
                                           (##cdr _e170949170983_)))
                                      (if (and (gx#identifier?
                                                _hd170950170986_)
                                               (gx#core-identifier=?
                                                _hd170950170986_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl170951170988_)
                                              (let ((_e170952170991_
                                                     (gx#syntax-e
                                                      _tl170951170988_)))
                                                (let ((_hd170953170994_
                                                       (##car _e170952170991_))
                                                      (_tl170954170996_
                                                       (##cdr _e170952170991_)))
                                                  (let ((_hd-bind170999_
                                                         _hd170953170994_))
                                                    (if (gx#stx-pair?
                                                         _tl170954170996_)
                                                        (let ((_e170955171001_
                                                               (gx#syntax-e
                                                                _tl170954170996_)))
                                                          (let ((_hd170956171004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e170955171001_))
                        (_tl170957171006_ (##cdr _e170955171001_)))
                    (let ((_expr171009_ _hd170956171004_))
                      (if (gx#stx-null? _tl170957171006_)
                          (if (gx#core-bind-values? _hd-bind170999_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind170999_)
                                (_K170943_
                                 _rest170944_
                                 (cons _hd170942_ _r170945_)))
                              (_E170948170979_))
                          (_E170948170979_)))))
                (_E170948170979_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E170948170979_))
                                          (_E170948170979_))))
                                  (_E170948170979_)))))
                      (_E170947171011_))))
                 (_expand-body170814_
                  (lambda (_rbody170816_)
                    (let _lp170818_ ((_rest170820_ _rbody170816_)
                                     (_body170821_ '()))
                      (let* ((_rest170822170830_ _rest170820_)
                             (_else170824170838_ (lambda () _body170821_))
                             (_K170826170930_
                              (lambda (_rest170841_ _hd170842_)
                                (let* ((_e170843170864_ _hd170842_)
                                       (_E170859170868_
                                        (lambda ()
                                          (_lp170818_
                                           _rest170841_
                                           (cons (gx#core-expand-expression
                                                  _hd170842_)
                                                 _body170821_))))
                                       (_E170855170882_
                                        (lambda ()
                                          (if (gx#stx-pair? _e170843170864_)
                                              (let ((_e170860170872_
                                                     (gx#syntax-e
                                                      _e170843170864_)))
                                                (let ((_hd170861170875_
                                                       (##car _e170860170872_))
                                                      (_tl170862170877_
                                                       (##cdr _e170860170872_)))
                                                  (let ((_form170880_
                                                         _hd170861170875_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form170880_
                                                         gx#special-form-binding?)
                                                        (_lp170818_
                                                         _rest170841_
                                                         (cons _hd170842_
                                                               _body170821_))
                                                        (_E170859170868_)))))
                                              (_E170859170868_))))
                                       (_E170845170894_
                                        (lambda ()
                                          (if (gx#stx-pair? _e170843170864_)
                                              (let ((_e170856170886_
                                                     (gx#syntax-e
                                                      _e170843170864_)))
                                                (let ((_hd170857170889_
                                                       (##car _e170856170886_))
                                                      (_tl170858170891_
                                                       (##cdr _e170856170886_)))
                                                  (if (and (gx#identifier?
                                                            _hd170857170889_)
                                                           (gx#core-identifier=?
                                                            _hd170857170889_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp170818_
                                                           _rest170841_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd170842_)
                         _body170821_))
                  (_E170855170882_))
              (_E170855170882_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E170855170882_))))
                                       (_E170844170926_
                                        (lambda ()
                                          (if (gx#stx-pair? _e170843170864_)
                                              (let ((_e170846170898_
                                                     (gx#syntax-e
                                                      _e170843170864_)))
                                                (let ((_hd170847170901_
                                                       (##car _e170846170898_))
                                                      (_tl170848170903_
                                                       (##cdr _e170846170898_)))
                                                  (if (and (gx#identifier?
                                                            _hd170847170901_)
                                                           (gx#core-identifier=?
                                                            _hd170847170901_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl170848170903_)
                                                          (let ((_e170849170906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl170848170903_)))
                    (let ((_hd170850170909_ (##car _e170849170906_))
                          (_tl170851170911_ (##cdr _e170849170906_)))
                      (let ((_hd-bind170914_ _hd170850170909_))
                        (if (gx#stx-pair? _tl170851170911_)
                            (let ((_e170852170916_
                                   (gx#syntax-e _tl170851170911_)))
                              (let ((_hd170853170919_ (##car _e170852170916_))
                                    (_tl170854170921_ (##cdr _e170852170916_)))
                                (let ((_expr170924_ _hd170853170919_))
                                  (if (gx#stx-null? _tl170854170921_)
                                      (if '#t
                                          (_lp170818_
                                           _rest170841_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind170914_)
                                                   (gx#core-expand-expression
                                                    _expr170924_))
                                                  (gx#stx-source _hd170842_))
                                                 _body170821_))
                                          (_E170845170894_))
                                      (_E170845170894_)))))
                            (_E170845170894_)))))
                  (_E170845170894_))
              (_E170845170894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E170845170894_)))))
                                  (_E170844170926_)))))
                        (if (##pair? _rest170822170830_)
                            (let ((_hd170827170933_ (##car _rest170822170830_))
                                  (_tl170828170935_
                                   (##cdr _rest170822170830_)))
                              (let* ((_hd170938_ _hd170827170933_)
                                     (_rest170940_ _tl170828170935_))
                                (_K170826170930_ _rest170940_ _hd170938_)))
                            (_else170824170838_)))))))
          (_expand-body170814_
           (gx#core-expand-block__%
            (cons '%#begin-module _body170811_)
            _expand-special170813_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx170654_
               _expanded?170655_
               _method170656_
               _current-phi170657_
               _expand1170658_)
        (letrec ((_K170660_
                  (lambda (_rest170778_ _r170779_)
                    (let* ((_e170780170787_ _rest170778_)
                           (_E170782170791_ (lambda () _r170779_))
                           (_E170781170807_
                            (lambda ()
                              (if (gx#stx-pair? _e170780170787_)
                                  (let ((_e170783170795_
                                         (gx#syntax-e _e170780170787_)))
                                    (let ((_hd170784170798_
                                           (##car _e170783170795_))
                                          (_tl170785170800_
                                           (##cdr _e170783170795_)))
                                      (let* ((_hd170803_ _hd170784170798_)
                                             (_rest170805_ _tl170785170800_))
                                        (if '#t
                                            (_step170661_
                                             _hd170803_
                                             _rest170805_
                                             _r170779_)
                                            (_E170782170791_)))))
                                  (_E170782170791_)))))
                      (_E170781170807_))))
                 (_step170661_
                  (lambda (_hd170692_ _rest170693_ _r170694_)
                    (let* ((_e170695170713_ _hd170692_)
                           (_E170708170717_
                            (lambda ()
                              (if (_expanded?170655_ (gx#stx-e _hd170692_))
                                  (_K170660_
                                   _rest170693_
                                   (cons (gx#stx-e _hd170692_) _r170694_))
                                  (_expand1170658_
                                   _hd170692_
                                   _K170660_
                                   _rest170693_
                                   _r170694_))))
                           (_E170704170733_
                            (lambda ()
                              (if (gx#stx-pair? _e170695170713_)
                                  (let ((_e170709170721_
                                         (gx#syntax-e _e170695170713_)))
                                    (let ((_hd170710170724_
                                           (##car _e170709170721_))
                                          (_tl170711170726_
                                           (##cdr _e170709170721_)))
                                      (let* ((_macro170729_ _hd170710170724_)
                                             (_body170731_ _tl170711170726_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro170729_
                                             gx#syntax-binding?)
                                            (_K170660_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro170729_)
                                                    _hd170692_
                                                    _method170656_)
                                                   _rest170693_)
                                             _r170694_)
                                            (_E170708170717_)))))
                                  (_E170708170717_))))
                           (_E170697170747_
                            (lambda ()
                              (if (gx#stx-pair? _e170695170713_)
                                  (let ((_e170705170737_
                                         (gx#syntax-e _e170695170713_)))
                                    (let ((_hd170706170740_
                                           (##car _e170705170737_))
                                          (_tl170707170742_
                                           (##cdr _e170705170737_)))
                                      (if (eq? (gx#stx-e _hd170706170740_)
                                               'begin:)
                                          (let ((_body170745_
                                                 _tl170707170742_))
                                            (if '#t
                                                (_K170660_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest170693_
                                                  _body170745_)
                                                 _r170694_)
                                                (_E170704170733_)))
                                          (_E170704170733_))))
                                  (_E170704170733_))))
                           (_E170696170774_
                            (lambda ()
                              (if (gx#stx-pair? _e170695170713_)
                                  (let ((_e170698170751_
                                         (gx#syntax-e _e170695170713_)))
                                    (let ((_hd170699170754_
                                           (##car _e170698170751_))
                                          (_tl170700170756_
                                           (##cdr _e170698170751_)))
                                      (if (eq? (gx#stx-e _hd170699170754_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl170700170756_)
                                              (let ((_e170701170759_
                                                     (gx#syntax-e
                                                      _tl170700170756_)))
                                                (let ((_hd170702170762_
                                                       (##car _e170701170759_))
                                                      (_tl170703170764_
                                                       (##cdr _e170701170759_)))
                                                  (let* ((_dphi170767_
                                                          _hd170702170762_)
                                                         (_body170769_
                                                          _tl170703170764_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi170767_)
                                                        (let ((_rbody170772_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K170660_ _body170769_ '()))
                        _current-phi170657_
                        (fx+ (gx#stx-e _dphi170767_) (_current-phi170657_)))))
                  (_K170660_
                   _rest170693_
                   (foldr1 cons _r170694_ _rbody170772_)))
                (_E170697170747_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E170697170747_))
                                          (_E170697170747_))))
                                  (_E170697170747_)))))
                      (_E170696170774_)))))
          (let* ((_e170662170669_ _stx170654_)
                 (_E170664170673_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e170662170669_)))
                 (_E170663170688_
                  (lambda ()
                    (if (gx#stx-pair? _e170662170669_)
                        (let ((_e170665170677_ (gx#syntax-e _e170662170669_)))
                          (let ((_hd170666170680_ (##car _e170665170677_))
                                (_tl170667170682_ (##cdr _e170665170677_)))
                            (let ((_body170685_ _tl170667170682_))
                              (if '#t
                                  (if (_current-phi170657_)
                                      (_K170660_ _body170685_ '())
                                      (call-with-parameters
                                       (lambda () (_K170660_ _body170685_ '()))
                                       _current-phi170657_
                                       (gx#current-expander-phi)))
                                  (_E170664170673_)))))
                        (_E170664170673_)))))
            (_E170663170688_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx170321_ _internal-expand?170322_)
        (letrec ((_expand1170324_
                  (lambda (_hd170634_ _K170635_ _rest170636_ _r170637_)
                    (if (gx#core-bound-module? _hd170634_)
                        (_import1170325_
                         (gx#syntax-local-e__0 _hd170634_)
                         _K170635_
                         _rest170636_
                         _r170637_)
                        (if (gx#core-library-module-path? _hd170634_)
                            (_import1170325_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd170634_))
                             _K170635_
                             _rest170636_
                             _r170637_)
                            (if (gx#core-library-relative-module-path?
                                 _hd170634_)
                                (_import1170325_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd170634_))
                                 _K170635_
                                 _rest170636_
                                 _r170637_)
                                (let ((_e170639_ (gx#stx-e _hd170634_)))
                                  (if (pair? _e170639_)
                                      (let ((_$e170641_
                                             (gx#stx-e (car _e170639_))))
                                        (if (eq? 'spec: _$e170641_)
                                            (_import-spec170328_
                                             _hd170634_
                                             _K170635_
                                             _rest170636_
                                             _r170637_)
                                            (if (eq? 'in: _$e170641_)
                                                (_import-submodule170326_
                                                 _hd170634_
                                                 _K170635_
                                                 _rest170636_
                                                 _r170637_)
                                                (if (eq? 'runtime: _$e170641_)
                                                    (_import-runtime170327_
                                                     _hd170634_
                                                     _K170635_
                                                     _rest170636_
                                                     _r170637_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx170321_
                                                     _hd170634_)))))
                                      (if (string? _e170639_)
                                          (_import1170325_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd170634_
                                             (gx#stx-source _stx170321_)))
                                           _K170635_
                                           _rest170636_
                                           _r170637_)
                                          (if (##structure-instance-of?
                                               _e170639_
                                               'gx#module-context::t)
                                              (_K170635_
                                               _rest170636_
                                               (cons _e170639_ _r170637_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx170321_
                                               _hd170634_))))))))))
                 (_import1170325_
                  (lambda (_ctx170623_ _K170624_ _rest170625_ _r170626_)
                    (let ((_dphi170628_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K170624_
                       _rest170625_
                       (cons (##structure
                              gx#import-set::t
                              _ctx170623_
                              _dphi170628_
                              (map (lambda (_g170629170631_)
                                     (gx#core-module-export->import__%
                                      _g170629170631_
                                      '#f
                                      _dphi170628_))
                                   (##unchecked-structure-ref
                                    _ctx170623_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r170626_)))))
                 (_import-submodule170326_
                  (lambda (_hd170590_ _K170591_ _rest170592_ _r170593_)
                    (let* ((_e170594170601_ _hd170590_)
                           (_E170596170605_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e170594170601_)))
                           (_E170595170619_
                            (lambda ()
                              (if (gx#stx-pair? _e170594170601_)
                                  (let ((_e170597170609_
                                         (gx#syntax-e _e170594170601_)))
                                    (let ((_hd170598170612_
                                           (##car _e170597170609_))
                                          (_tl170599170614_
                                           (##cdr _e170597170609_)))
                                      (let ((_spath170617_ _tl170599170614_))
                                        (if '#t
                                            (_import1170325_
                                             (_import-spec-source170329_
                                              _spath170617_)
                                             _K170591_
                                             _rest170592_
                                             _r170593_)
                                            (_E170596170605_)))))
                                  (_E170596170605_)))))
                      (_E170595170619_))))
                 (_import-runtime170327_
                  (lambda (_hd170557_ _K170558_ _rest170559_ _r170560_)
                    (let* ((_e170561170568_ _hd170557_)
                           (_E170563170572_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e170561170568_)))
                           (_E170562170586_
                            (lambda ()
                              (if (gx#stx-pair? _e170561170568_)
                                  (let ((_e170564170576_
                                         (gx#syntax-e _e170561170568_)))
                                    (let ((_hd170565170579_
                                           (##car _e170564170576_))
                                          (_tl170566170581_
                                           (##cdr _e170564170576_)))
                                      (let ((_spath170584_ _tl170566170581_))
                                        (if '#t
                                            (_K170558_
                                             _rest170559_
                                             (cons (_import-spec-source170329_
                                                    _spath170584_)
                                                   _r170560_))
                                            (_E170563170572_)))))
                                  (_E170563170572_)))))
                      (_E170562170586_))))
                 (_import-spec170328_
                  (lambda (_hd170396_ _K170397_ _rest170398_ _r170399_)
                    (let* ((_e170400170417_ _hd170396_)
                           (_E170409170421_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e170400170417_)))
                           (_E170402170531_
                            (lambda ()
                              (if (gx#stx-pair? _e170400170417_)
                                  (let ((_e170410170425_
                                         (gx#syntax-e _e170400170417_)))
                                    (let ((_hd170411170428_
                                           (##car _e170410170425_))
                                          (_tl170412170430_
                                           (##cdr _e170410170425_)))
                                      (if (gx#stx-pair? _tl170412170430_)
                                          (let ((_e170413170433_
                                                 (gx#syntax-e
                                                  _tl170412170430_)))
                                            (let ((_hd170414170436_
                                                   (##car _e170413170433_))
                                                  (_tl170415170438_
                                                   (##cdr _e170413170433_)))
                                              (let* ((_path170441_
                                                      _hd170414170436_)
                                                     (_specs170443_
                                                      _tl170415170438_))
                                                (if '#t
                                                    (let ((_src-ctx170445_
                                                           (_import-spec-source170329_
                                                            _path170441_))
                                                          (_exports170446_
                                                           (make-hash-table))
                                                          (_specs170447_
                                                           (gx#syntax->list
                                                            _specs170443_)))
                                                      (for-each
                                                       (lambda (_out170449_)
                                                         (hash-put!
                                                          _exports170446_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out170449_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out170449_
                         '4
                         gx#module-export::t
                         '#f))
                  _out170449_))
               (##unchecked-structure-ref
                _src-ctx170445_
                '9
                gx#module-context::t
                '#f))
              (_K170397_
               _rest170398_
               (foldl1 (lambda (_spec170451_ _r170452_)
                         (let* ((_e170453170469_ _spec170451_)
                                (_E170455170473_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e170453170469_)))
                                (_E170454170527_
                                 (lambda ()
                                   (if (gx#stx-pair? _e170453170469_)
                                       (let ((_e170456170477_
                                              (gx#syntax-e _e170453170469_)))
                                         (let ((_hd170457170480_
                                                (##car _e170456170477_))
                                               (_tl170458170482_
                                                (##cdr _e170456170477_)))
                                           (let ((_phi170485_
                                                  _hd170457170480_))
                                             (if (gx#stx-pair?
                                                  _tl170458170482_)
                                                 (let ((_e170459170487_
                                                        (gx#syntax-e
                                                         _tl170458170482_)))
                                                   (let ((_hd170460170490_
                                                          (##car _e170459170487_))
                                                         (_tl170461170492_
                                                          (##cdr _e170459170487_)))
                                                     (let ((_name170495_
                                                            _hd170460170490_))
                                                       (if (gx#stx-pair?
                                                            _tl170461170492_)
                                                           (let ((_e170462170497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl170461170492_)))
                     (let ((_hd170463170500_ (##car _e170462170497_))
                           (_tl170464170502_ (##cdr _e170462170497_)))
                       (let ((_src-phi170505_ _hd170463170500_))
                         (if (gx#stx-pair? _tl170464170502_)
                             (let ((_e170465170507_
                                    (gx#syntax-e _tl170464170502_)))
                               (let ((_hd170466170510_ (##car _e170465170507_))
                                     (_tl170467170512_
                                      (##cdr _e170465170507_)))
                                 (let ((_src-name170515_ _hd170466170510_))
                                   (if (gx#stx-null? _tl170467170512_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi170505_)
                                                (gx#identifier?
                                                 _src-name170515_)
                                                (gx#stx-fixnum? _phi170485_)
                                                (gx#identifier? _name170495_))
                                           (let ((_src-phi170517_
                                                  (gx#stx-e _src-phi170505_))
                                                 (_src-name170518_
                                                  (gx#core-identifier-key
                                                   _src-name170515_))
                                                 (_phi170519_
                                                  (gx#stx-e _phi170485_))
                                                 (_name170520_
                                                  (gx#core-identifier-key
                                                   _name170495_)))
                                             (let ((_$e170522_
                                                    (hash-get
                                                     _exports170446_
                                                     (cons _src-phi170517_
                                                           _src-name170518_))))
                                               (if _$e170522_
                                                   ((lambda (_out170525_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out170525_
                                                             _name170520_
                                                             (fx- _phi170519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi170517_))
                    _r170452_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e170522_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx170321_
                                                    _hd170396_))))
                                           (_E170455170473_))
                                       (_E170455170473_)))))
                             (_E170455170473_)))))
                   (_E170455170473_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E170455170473_)))))
                                       (_E170455170473_)))))
                           (_E170454170527_)))
                       _r170399_
                       _specs170447_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E170409170421_)))))
                                          (_E170409170421_))))
                                  (_E170409170421_))))
                           (_E170401170553_
                            (lambda ()
                              (if (gx#stx-pair? _e170400170417_)
                                  (let ((_e170403170535_
                                         (gx#syntax-e _e170400170417_)))
                                    (let ((_hd170404170538_
                                           (##car _e170403170535_))
                                          (_tl170405170540_
                                           (##cdr _e170403170535_)))
                                      (if (gx#stx-pair? _tl170405170540_)
                                          (let ((_e170406170543_
                                                 (gx#syntax-e
                                                  _tl170405170540_)))
                                            (let ((_hd170407170546_
                                                   (##car _e170406170543_))
                                                  (_tl170408170548_
                                                   (##cdr _e170406170543_)))
                                              (let ((_path170551_
                                                     _hd170407170546_))
                                                (if (gx#stx-null?
                                                     _tl170408170548_)
                                                    (if '#t
                                                        (_K170397_
                                                         _rest170398_
                                                         (cons (_import-spec-source170329_
                                                                _path170551_)
                                                               _r170399_))
                                                        (_E170402170531_))
                                                    (_E170402170531_)))))
                                          (_E170402170531_))))
                                  (_E170402170531_)))))
                      (_E170401170553_))))
                 (_import-spec-source170329_
                  (lambda (_spath170394_)
                    (gx#core-import-nested-module _spath170394_ _stx170321_)))
                 (_import!170330_
                  (lambda (_rbody170343_)
                    (letrec* ((_current-ctx170345_
                               (gx#current-expander-context))
                              (_deps170346_ (make-hash-table-eq))
                              (_bind!170347_
                               (lambda (_hd170392_)
                                 (gx#core-bind-import!__1
                                  _hd170392_
                                  _current-ctx170345_))))
                      (let _lp170349_ ((_rest170351_ _rbody170343_)
                                       (_body170352_ '()))
                        (let* ((_rest170353170361_ _rest170351_)
                               (_else170355170371_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx170345_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx170345_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx170345_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body170352_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx170369_ _g177185_)
                                     (gx#eval-module _ctx170369_))
                                   _deps170346_)
                                  _body170352_))
                               (_K170357170380_
                                (lambda (_rest170374_ _hd170375_)
                                  (if (##structure-direct-instance-of?
                                       _hd170375_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!170347_ _hd170375_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd170375_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd170375_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps170346_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd170375_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd170375_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!170347_
                                             (##unchecked-structure-ref
                                              _hd170375_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd170375_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps170346_
                                                 (##unchecked-structure-ref
                                                  _hd170375_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e170377_
                                                 (##structure-instance-of?
                                                  _hd170375_
                                                  'gx#module-context::t)))
                                            (if _$e170377_
                                                _$e170377_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx170321_
                                                 _hd170375_)))))
                                  (_lp170349_
                                   _rest170374_
                                   (cons _hd170375_ _body170352_)))))
                          (if (##pair? _rest170353170361_)
                              (let ((_hd170358170383_
                                     (##car _rest170353170361_))
                                    (_tl170359170385_
                                     (##cdr _rest170353170361_)))
                                (let* ((_hd170388_ _hd170358170383_)
                                       (_rest170390_ _tl170359170385_))
                                  (_K170357170380_ _rest170390_ _hd170388_)))
                              (_else170355170371_)))))))
                 (_expanded-import?170331_
                  (lambda (_e170335_)
                    (let ((_$e170337_
                           (##structure-direct-instance-of?
                            _e170335_
                            'gx#import-set::t)))
                      (if _$e170337_
                          _$e170337_
                          (let ((_$e170340_
                                 (##structure-direct-instance-of?
                                  _e170335_
                                  'gx#module-import::t)))
                            (if _$e170340_
                                _$e170340_
                                (##structure-instance-of?
                                 _e170335_
                                 'gx#module-context::t))))))))
          (let ((_rbody170333_
                 (gx#core-expand-import/export
                  _stx170321_
                  _expanded-import?170331_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1170324_)))
            (if _internal-expand?170322_
                (reverse _rbody170333_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!170330_ _rbody170333_))
                 (gx#stx-source _stx170321_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx170647_)
        (let ((_internal-expand?170649_ '#f))
          (gx#core-expand-import%__% _stx170647_ _internal-expand?170649_))))
    (define gx#core-expand-import%
      (lambda _g177187_
        (let ((_g177186_ (##length _g177187_)))
          (cond ((##fx= _g177186_ 1)
                 (apply (lambda (_stx170647_)
                          (gx#core-expand-import%__0 _stx170647_))
                        _g177187_))
                ((##fx= _g177186_ 2)
                 (apply (lambda (_stx170651_ _internal-expand?170652_)
                          (gx#core-expand-import%__%
                           _stx170651_
                           _internal-expand?170652_))
                        _g177187_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g177187_))))))
    (define gx#core-import-nested-module
      (lambda (_spath170248_ _where170249_)
        (let* ((_e170250170257_ _spath170248_)
               (_E170252170261_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e170250170257_)))
               (_E170251170316_
                (lambda ()
                  (if (gx#stx-pair? _e170250170257_)
                      (let ((_e170253170265_ (gx#syntax-e _e170250170257_)))
                        (let ((_hd170254170268_ (##car _e170253170265_))
                              (_tl170255170270_ (##cdr _e170253170265_)))
                          (let* ((_origin170273_ _hd170254170268_)
                                 (_sub170275_ _tl170255170270_))
                            (if '#t
                                (let ((_origin-ctx170277_
                                       (if (gx#stx-false? _origin170273_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin170273_))))
                                  (let _lp170279_ ((_rest170281_ _sub170275_)
                                                   (_ctx170282_
                                                    _origin-ctx170277_))
                                    (let* ((_e170283170290_ _rest170281_)
                                           (_E170285170294_
                                            (lambda () _ctx170282_))
                                           (_E170284170312_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e170283170290_)
                                                  (let ((_e170286170298_
                                                         (gx#syntax-e
                                                          _e170283170290_)))
                                                    (let ((_hd170287170301_
                                                           (##car _e170286170298_))
                                                          (_tl170288170303_
                                                           (##cdr _e170286170298_)))
                                                      (let* ((_id170306_
                                                              _hd170287170301_)
                                                             (_rest170308_
                                                              _tl170288170303_))
                                                        (if '#t
                                                            (let ((_bind170310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id170306_
                            '0
                            _ctx170282_)))
                      (if (and (##structure-direct-instance-of?
                                _bind170310_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind170310_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where170249_
                           _spath170248_
                           _id170306_))
                      (_lp170279_
                       _rest170308_
                       (##unchecked-structure-ref
                        _bind170310_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E170285170294_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E170285170294_)))))
                                      (_E170284170312_))))
                                (_E170252170261_)))))
                      (_E170252170261_)))))
          (_E170251170316_))))
    (define gx#core-expand-import-source
      (lambda (_hd170246_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd170246_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx169754_ _internal-expand?169755_)
        (letrec* ((_make-export__177116177117_
                   (lambda (_bind170194_ _phi170195_ _ctx170196_ _name170197_)
                     (let* ((_key170199_
                             (##unchecked-structure-ref
                              _bind170194_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key170201_
                             (if _name170197_
                                 (gx#core-identifier-key _name170197_)
                                 _key170199_)))
                       (##structure
                        gx#module-export::t
                        _ctx170196_
                        _key170199_
                        _phi170195_
                        _export-key170201_
                        (let ((_$e170204_
                               (##structure-instance-of?
                                _bind170194_
                                'gx#extern-binding::t)))
                          (if _$e170204_
                              _$e170204_
                              (##structure-direct-instance-of?
                               _bind170194_
                               'gx#import-binding::t)))))))
                  (_make-export__0__177118177121_
                   (lambda (_bind170210_)
                     (let* ((_phi170212_ (gx#current-export-expander-phi))
                            (_ctx170214_ (gx#current-expander-context))
                            (_name170216_ '#f))
                       (_make-export__177116177117_
                        _bind170210_
                        _phi170212_
                        _ctx170214_
                        _name170216_))))
                  (_make-export__1__177119177122_
                   (lambda (_bind170218_ _phi170219_)
                     (let* ((_ctx170221_ (gx#current-expander-context))
                            (_name170223_ '#f))
                       (_make-export__177116177117_
                        _bind170218_
                        _phi170219_
                        _ctx170221_
                        _name170223_))))
                  (_make-export__2__177120177123_
                   (lambda (_bind170225_ _phi170226_ _ctx170227_)
                     (let ((_name170229_ '#f))
                       (_make-export__177116177117_
                        _bind170225_
                        _phi170226_
                        _ctx170227_
                        _name170229_))))
                  (_make-export169757_
                   (lambda _g177189_
                     (let ((_g177188_ (##length _g177189_)))
                       (cond ((##fx= _g177188_ 1)
                              (apply (lambda (_bind170210_)
                                       (_make-export__0__177118177121_
                                        _bind170210_))
                                     _g177189_))
                             ((##fx= _g177188_ 2)
                              (apply (lambda (_bind170218_ _phi170219_)
                                       (_make-export__1__177119177122_
                                        _bind170218_
                                        _phi170219_))
                                     _g177189_))
                             ((##fx= _g177188_ 3)
                              (apply (lambda (_bind170225_
                                              _phi170226_
                                              _ctx170227_)
                                       (_make-export__2__177120177123_
                                        _bind170225_
                                        _phi170226_
                                        _ctx170227_))
                                     _g177189_))
                             ((##fx= _g177188_ 4)
                              (apply (lambda (_bind170231_
                                              _phi170232_
                                              _ctx170233_
                                              _name170234_)
                                       (_make-export__177116177117_
                                        _bind170231_
                                        _phi170232_
                                        _ctx170233_
                                        _name170234_))
                                     _g177189_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g177189_))))))
                  (_expand1169758_
                   (lambda (_hd169907_ _K169908_ _rest169909_ _r169910_)
                     (let* ((_e169911169943_ _hd169907_)
                            (_E169938169947_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx169754_
                                _hd169907_)))
                            (_E169928170026_
                             (lambda ()
                               (if (gx#stx-pair? _e169911169943_)
                                   (let ((_e169939169951_
                                          (gx#syntax-e _e169911169943_)))
                                     (let ((_hd169940169954_
                                            (##car _e169939169951_))
                                           (_tl169941169956_
                                            (##cdr _e169939169951_)))
                                       (if (eq? (gx#stx-e _hd169940169954_)
                                                'import:)
                                           (let ((_in169959_ _tl169941169956_))
                                             (if (gx#stx-list? _in169959_)
                                                 (let _lp169961_ ((_in-rest169963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in169959_)
                          (_r169964_ _r169910_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e169965169972_
                                                           _in-rest169963_)
                                                          (_E169967169976_
                                                           (lambda ()
                                                             (_K169908_
                                                              _rest169909_
                                                              _r169964_)))
                                                          (_E169966170022_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e169965169972_)
                         (let ((_e169968169980_ (gx#syntax-e _e169965169972_)))
                           (let ((_hd169969169983_ (##car _e169968169980_))
                                 (_tl169970169985_ (##cdr _e169968169980_)))
                             (let* ((_hd169988_ _hd169969169983_)
                                    (_in-rest169990_ _tl169970169985_))
                               (if '#t
                                   (let ((_src170020_
                                          (if (gx#core-bound-module?
                                               _hd169988_)
                                              (gx#syntax-local-e__0 _hd169988_)
                                              (if (gx#core-library-module-path?
                                                   _hd169988_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd169988_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd169988_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd169988_))
                                                      (if (gx#stx-string?
                                                           _hd169988_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd169988_
                                                            (gx#stx-source
                                                             _stx169754_)))
                                                          (let* ((_e169991169998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd169988_)
                         (_E169993170002_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx169754_
                             _hd169988_)))
                         (_E169992170016_
                          (lambda ()
                            (if (gx#stx-pair? _e169991169998_)
                                (let ((_e169994170006_
                                       (gx#syntax-e _e169991169998_)))
                                  (let ((_hd169995170009_
                                         (##car _e169994170006_))
                                        (_tl169996170011_
                                         (##cdr _e169994170006_)))
                                    (if (eq? (gx#stx-e _hd169995170009_) 'in:)
                                        (let ((_spath170014_ _tl169996170011_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath170014_
                                               _stx169754_)
                                              (_E169993170002_)))
                                        (_E169993170002_))))
                                (_E169993170002_)))))
                    (_E169992170016_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp169961_
                                      _in-rest169990_
                                      (_export-imports169759_
                                       _src170020_
                                       _r169964_)))
                                   (_E169967169976_)))))
                         (_E169967169976_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E169966170022_)))
                                                 (_E169938169947_)))
                                           (_E169938169947_))))
                                   (_E169938169947_))))
                            (_E169915170065_
                             (lambda ()
                               (if (gx#stx-pair? _e169911169943_)
                                   (let ((_e169929170030_
                                          (gx#syntax-e _e169911169943_)))
                                     (let ((_hd169930170033_
                                            (##car _e169929170030_))
                                           (_tl169931170035_
                                            (##cdr _e169929170030_)))
                                       (if (eq? (gx#stx-e _hd169930170033_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl169931170035_)
                                               (let ((_e169932170038_
                                                      (gx#syntax-e
                                                       _tl169931170035_)))
                                                 (let ((_hd169933170041_
                                                        (##car _e169932170038_))
                                                       (_tl169934170043_
                                                        (##cdr _e169932170038_)))
                                                   (let ((_id170046_
                                                          _hd169933170041_))
                                                     (if (gx#stx-pair?
                                                          _tl169934170043_)
                                                         (let ((_e169935170048_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl169934170043_)))
                   (let ((_hd169936170051_ (##car _e169935170048_))
                         (_tl169937170053_ (##cdr _e169935170048_)))
                     (let ((_name170056_ _hd169936170051_))
                       (if (gx#stx-null? _tl169937170053_)
                           (if '#t
                               (let* ((_phi170058_
                                       (gx#current-export-expander-phi))
                                      (_$e170060_
                                       (gx#core-resolve-identifier__1
                                        _id170046_
                                        _phi170058_)))
                                 (if _$e170060_
                                     ((lambda (_bind170063_)
                                        (_K169908_
                                         _rest169909_
                                         (cons (_make-export__177116177117_
                                                _bind170063_
                                                _phi170058_
                                                (gx#current-expander-context)
                                                _name170056_)
                                               _r169910_)))
                                      _$e170060_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx169754_
                                      _hd169907_
                                      _id170046_)))
                               (_E169928170026_))
                           (_E169928170026_)))))
                 (_E169928170026_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E169928170026_))
                                           (_E169928170026_))))
                                   (_E169928170026_))))
                            (_E169914170114_
                             (lambda ()
                               (if (gx#stx-pair? _e169911169943_)
                                   (let ((_e169916170069_
                                          (gx#syntax-e _e169911169943_)))
                                     (let ((_hd169917170072_
                                            (##car _e169916170069_))
                                           (_tl169918170074_
                                            (##cdr _e169916170069_)))
                                       (if (eq? (gx#stx-e _hd169917170072_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl169918170074_)
                                               (let ((_e169919170077_
                                                      (gx#syntax-e
                                                       _tl169918170074_)))
                                                 (let ((_hd169920170080_
                                                        (##car _e169919170077_))
                                                       (_tl169921170082_
                                                        (##cdr _e169919170077_)))
                                                   (let ((_phi170085_
                                                          _hd169920170080_))
                                                     (if (gx#stx-pair?
                                                          _tl169921170082_)
                                                         (let ((_e169922170087_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl169921170082_)))
                   (let ((_hd169923170090_ (##car _e169922170087_))
                         (_tl169924170092_ (##cdr _e169922170087_)))
                     (let ((_id170095_ _hd169923170090_))
                       (if (gx#stx-pair? _tl169924170092_)
                           (let ((_e169925170097_
                                  (gx#syntax-e _tl169924170092_)))
                             (let ((_hd169926170100_ (##car _e169925170097_))
                                   (_tl169927170102_ (##cdr _e169925170097_)))
                               (let ((_name170105_ _hd169926170100_))
                                 (if (gx#stx-null? _tl169927170102_)
                                     (if (and (gx#stx-fixnum? _phi170085_)
                                              (gx#identifier? _id170095_)
                                              (gx#identifier? _name170105_))
                                         (let* ((_phi170107_
                                                 (gx#stx-e _phi170085_))
                                                (_$e170109_
                                                 (gx#core-resolve-identifier__1
                                                  _id170095_
                                                  _phi170107_)))
                                           (if _$e170109_
                                               ((lambda (_bind170112_)
                                                  (_K169908_
                                                   _rest169909_
                                                   (cons (_make-export__177116177117_
                                                          _bind170112_
                                                          _phi170107_
                                                          (gx#current-expander-context)
                                                          _name170105_)
                                                         _r169910_)))
                                                _$e170109_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx169754_
                                                _hd169907_
                                                _id170095_)))
                                         (_E169915170065_))
                                     (_E169915170065_)))))
                           (_E169915170065_)))))
                 (_E169915170065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E169915170065_))
                                           (_E169915170065_))))
                                   (_E169915170065_))))
                            (_E169913170125_
                             (lambda ()
                               (let ((_id170118_ _e169911169943_))
                                 (if (gx#identifier? _id170118_)
                                     (let ((_$e170120_
                                            (gx#core-resolve-identifier__1
                                             _id170118_
                                             (gx#current-export-expander-phi))))
                                       (if _$e170120_
                                           ((lambda (_bind170123_)
                                              (_K169908_
                                               _rest169909_
                                               (cons (_make-export__0__177118177121_
                                                      _bind170123_)
                                                     _r169910_)))
                                            _$e170120_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx169754_
                                            _hd169907_)))
                                     (_E169914170114_)))))
                            (_E169912170189_
                             (lambda ()
                               (if (eq? (gx#stx-e _e169911169943_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx170129_
                                               (gx#current-expander-context))
                                              (_current-phi170131_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx170133_
                                               (gx#core-context-shift
                                                _current-ctx170129_
                                                _current-phi170131_))
                                              (_phi-bind170135_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx170133_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp170138_ ((_bind-rest170140_
                                                           _phi-bind170135_)
                                                          (_set170141_ '()))
                                           (let* ((_bind-rest170142170152_
                                                   _bind-rest170140_)
                                                  (_else170144170160_
                                                   (lambda ()
                                                     (_K169908_
                                                      _rest169909_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi170131_
                                                             _set170141_)
                                                            _r169910_))))
                                                  (_K170146170170_
                                                   (lambda (_bind-rest170163_
                                                            _bind170164_
                                                            _key170165_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind170164_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind170164_))
                                                         (_lp170138_
                                                          _bind-rest170163_
                                                          _set170141_)
                                                         (_lp170138_
                                                          _bind-rest170163_
                                                          (cons (_make-export__2__177120177123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind170164_
                         _current-phi170131_
                         _current-ctx170129_)
                        _set170141_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest170142170152_)
                                                 (let ((_hd170147170173_
                                                        (##car _bind-rest170142170152_))
                                                       (_tl170148170175_
                                                        (##cdr _bind-rest170142170152_)))
                                                   (if (##pair? _hd170147170173_)
                                                       (let ((_hd170149170178_
                                                              (##car _hd170147170173_))
                                                             (_tl170150170180_
                                                              (##cdr _hd170147170173_)))
                                                         (let* ((_key170183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd170149170178_)
                        (_bind170185_ _tl170150170180_)
                        (_bind-rest170187_ _tl170148170175_))
                   (_K170146170170_
                    _bind-rest170187_
                    _bind170185_
                    _key170183_)))
               (_else170144170160_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else170144170160_)))))
                                       (_E169913170125_))
                                   (_E169913170125_)))))
                       (_E169912170189_))))
                  (_export-imports169759_
                   (lambda (_src169783_ _r169784_)
                     (letrec* ((_current-ctx169786_
                                (gx#current-expander-context))
                               (_current-phi169787_
                                (gx#current-export-expander-phi))
                               (_import->export169788_
                                (lambda (_in169869_)
                                  (let* ((_in169870169878_ _in169869_)
                                         (_E169872169882_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in169870169878_)))
                                         (_K169873169889_
                                          (lambda (_phi169885_
                                                   _key169886_
                                                   _out169887_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx169786_
                                             _key169886_
                                             _phi169885_
                                             _key169886_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in169870169878_
                                         'gx#module-import::t)
                                        (let* ((_e169874169892_
                                                (##unchecked-structure-ref
                                                 _in169870169878_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out169895_ _e169874169892_)
                                               (_e169875169897_
                                                (##unchecked-structure-ref
                                                 _in169870169878_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key169900_ _e169875169897_)
                                               (_e169876169902_
                                                (##unchecked-structure-ref
                                                 _in169870169878_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi169905_ _e169876169902_))
                                          (_K169873169889_
                                           _phi169905_
                                           _key169900_
                                           _out169895_))
                                        (_E169872169882_)))))
                               (_fold-e169789_
                                (lambda (_in169791_ _r169792_)
                                  (let* ((_in169793169807_ _in169791_)
                                         (_else169796169815_
                                          (lambda () _r169792_)))
                                    (let ((_K169802169851_
                                           (lambda (_phi169847_
                                                    _key169848_
                                                    _out169849_)
                                             (if (and (fx= _phi169847_
                                                           _current-phi169787_)
                                                      (eq? _src169783_
                                                           (##unchecked-structure-ref
                                                            _out169849_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export169788_
                                                        _in169791_)
                                                       _r169792_)
                                                 _r169792_)))
                                          (_K169798169826_
                                           (lambda (_imports169819_
                                                    _phi169820_
                                                    _ctx169821_)
                                             (if (and (fx= _phi169820_
                                                           _current-phi169787_)
                                                      (eq? _src169783_
                                                           _ctx169821_))
                                                 (foldl1 (lambda (_in169823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r169824_)
                   (cons (_import->export169788_ _in169823_) _r169824_))
                 _r169792_
                 _imports169819_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r169792_))))
                                      (let ((_try-match169795169844_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in169793169807_
                                                    'gx#import-set::t)
                                                   (let* ((_e169799169829_
                                                           (##unchecked-structure-ref
                                                            _in169793169807_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e169800169834_
                                                           (##unchecked-structure-ref
                                                            _in169793169807_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e169801169839_
                                                           (##unchecked-structure-ref
                                                            _in169793169807_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx169832_
                                                            _e169799169829_)
                                                           (_phi169837_
                                                            _e169800169834_)
                                                           (_imports169842_
                                                            _e169801169839_))
                                                       (_K169798169826_
                                                        _imports169842_
                                                        _phi169837_
                                                        _ctx169832_)))
                                                   (_else169796169815_)))))
                                        (if (##structure-direct-instance-of?
                                             _in169793169807_
                                             'gx#module-import::t)
                                            (let* ((_e169803169854_
                                                    (##unchecked-structure-ref
                                                     _in169793169807_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e169804169859_
                                                    (##unchecked-structure-ref
                                                     _in169793169807_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e169805169864_
                                                    (##unchecked-structure-ref
                                                     _in169793169807_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out169857_
                                                     _e169803169854_)
                                                    (_key169862_
                                                     _e169804169859_)
                                                    (_phi169867_
                                                     _e169805169864_))
                                                (_K169802169851_
                                                 _phi169867_
                                                 _key169862_
                                                 _out169857_)))
                                            (_try-match169795169844_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src169783_
                              _current-phi169787_
                              (foldl1 _fold-e169789_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx169786_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r169784_))))
                  (_export!169760_
                   (lambda (_rbody169773_)
                     (letrec* ((_current-ctx169775_
                                (gx#current-expander-context))
                               (_fold-e169776_
                                (lambda (_out169780_ _r169781_)
                                  (if (##structure-direct-instance-of?
                                       _out169780_
                                       'gx#module-export::t)
                                      (cons _out169780_ _r169781_)
                                      (if (##structure-direct-instance-of?
                                           _out169780_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r169781_
                                                  (##unchecked-structure-ref
                                                   _out169780_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r169781_)))))
                       (let ((_body169778_ (reverse _rbody169773_)))
                         (##unchecked-structure-set!
                          _current-ctx169775_
                          (foldl1 _fold-e169776_
                                  (##unchecked-structure-ref
                                   _current-ctx169775_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body169778_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body169778_))))
                  (_expanded-export?169761_
                   (lambda (_e169768_)
                     (let ((_$e169770_
                            (##structure-direct-instance-of?
                             _e169768_
                             'gx#module-export::t)))
                       (if _$e169770_
                           _$e169770_
                           (##structure-direct-instance-of?
                            _e169768_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?169755_)
              (let ((_rbody169766_
                     (gx#core-expand-import/export
                      _stx169754_
                      _expanded-export?169761_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1169758_)))
                (if _internal-expand?169755_
                    (reverse _rbody169766_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!169760_ _rbody169766_))
                     (gx#stx-source _stx169754_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx169754_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx169754_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx170239_)
        (let ((_internal-expand?170241_ '#f))
          (gx#core-expand-export%__% _stx170239_ _internal-expand?170241_))))
    (define gx#core-expand-export%
      (lambda _g177191_
        (let ((_g177190_ (##length _g177191_)))
          (cond ((##fx= _g177190_ 1)
                 (apply (lambda (_stx170239_)
                          (gx#core-expand-export%__0 _stx170239_))
                        _g177191_))
                ((##fx= _g177190_ 2)
                 (apply (lambda (_stx170243_ _internal-expand?170244_)
                          (gx#core-expand-export%__%
                           _stx170243_
                           _internal-expand?170244_))
                        _g177191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g177191_))))))
    (define gx#core-expand-export-source
      (lambda (_hd169751_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd169751_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx169721_)
        (let* ((_e169722169729_ _stx169721_)
               (_E169724169733_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e169722169729_)))
               (_E169723169747_
                (lambda ()
                  (if (gx#stx-pair? _e169722169729_)
                      (let ((_e169725169737_ (gx#syntax-e _e169722169729_)))
                        (let ((_hd169726169740_ (##car _e169725169737_))
                              (_tl169727169742_ (##cdr _e169725169737_)))
                          (let ((_body169745_ _tl169727169742_))
                            (if (gx#identifier-list? _body169745_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body169745_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body169745_))
                                   (gx#stx-source _stx169721_)))
                                (_E169724169733_)))))
                      (_E169724169733_)))))
          (_E169723169747_))))
    (define gx#core-bind-feature!__%
      (lambda (_id169687_ _private?169688_ _phi169689_ _ctx169690_)
        (gx#core-bind-syntax!__%
         _id169687_
         ((if _private?169688_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id169687_))
         _private?169688_
         _phi169689_
         _ctx169690_)))
    (define gx#core-bind-feature!__0
      (lambda (_id169695_)
        (let* ((_private?169697_ '#f)
               (_phi169699_ (gx#current-expander-phi))
               (_ctx169701_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id169695_
           _private?169697_
           _phi169699_
           _ctx169701_))))
    (define gx#core-bind-feature!__1
      (lambda (_id169703_ _private?169704_)
        (let* ((_phi169706_ (gx#current-expander-phi))
               (_ctx169708_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id169703_
           _private?169704_
           _phi169706_
           _ctx169708_))))
    (define gx#core-bind-feature!__2
      (lambda (_id169710_ _private?169711_ _phi169712_)
        (let ((_ctx169714_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id169710_
           _private?169711_
           _phi169712_
           _ctx169714_))))
    (define gx#core-bind-feature!
      (lambda _g177193_
        (let ((_g177192_ (##length _g177193_)))
          (cond ((##fx= _g177192_ 1)
                 (apply (lambda (_id169695_)
                          (gx#core-bind-feature!__0 _id169695_))
                        _g177193_))
                ((##fx= _g177192_ 2)
                 (apply (lambda (_id169703_ _private?169704_)
                          (gx#core-bind-feature!__1
                           _id169703_
                           _private?169704_))
                        _g177193_))
                ((##fx= _g177192_ 3)
                 (apply (lambda (_id169710_ _private?169711_ _phi169712_)
                          (gx#core-bind-feature!__2
                           _id169710_
                           _private?169711_
                           _phi169712_))
                        _g177193_))
                ((##fx= _g177192_ 4)
                 (apply (lambda (_id169716_
                                 _private?169717_
                                 _phi169718_
                                 _ctx169719_)
                          (gx#core-bind-feature!__%
                           _id169716_
                           _private?169717_
                           _phi169718_
                           _ctx169719_))
                        _g177193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g177193_))))))))
