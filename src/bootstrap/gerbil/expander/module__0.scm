(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707346616)
  (begin
    (declare (not safe))
    (define gx#module-import::t
      (make-struct-type*
       'gx#module-import::t
       'module-import
       '#f
       '(source name phi weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-import? (make-struct-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _$args155580_
        (apply make-struct-instance gx#module-import::t _$args155580_)))
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
      (make-struct-type*
       'gx#module-export::t
       'module-export
       '#f
       '(context key phi name weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-export? (make-struct-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _$args155577_
        (apply make-struct-instance gx#module-export::t _$args155577_)))
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
      (make-struct-type*
       'gx#import-set::t
       'import-set
       '#f
       '(source phi imports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-set? (make-struct-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _$args155574_
        (apply make-struct-instance gx#import-set::t _$args155574_)))
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
      (make-struct-type*
       'gx#export-set::t
       'export-set
       '#f
       '(source phi exports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#export-set? (make-struct-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _$args155571_
        (apply make-struct-instance gx#export-set::t _$args155571_)))
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
      (make-class-type*
       'gx#import-expander::t
       'import-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-expander? (make-class-predicate gx#import-expander::t))
    (define gx#make-import-expander
      (lambda _$args155568_
        (apply make-class-instance gx#import-expander::t _$args155568_)))
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
      (make-class-type*
       'gx#export-expander::t
       'export-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#export-expander? (make-class-predicate gx#export-expander::t))
    (define gx#make-export-expander
      (lambda _$args155565_
        (apply make-class-instance gx#export-expander::t _$args155565_)))
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
      (make-class-type*
       'gx#import-export-expander::t
       'import-export-expander
       (list gx#import-expander::t gx#export-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-export-expander?
      (make-class-predicate gx#import-export-expander::t))
    (define gx#make-import-export-expander
      (lambda _$args155562_
        (apply make-class-instance
               gx#import-export-expander::t
               _$args155562_)))
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
      (lambda (_path155559_ _fun155560_)
        (call-with-input-file
         (cons 'path: (cons _path155559_ gx#source-file-settings))
         _fun155560_)))
    (define gx#module-context:::init!
      (lambda (_self155553_ _id155554_ _super155555_ _ns155556_ _path155557_)
        (if (##fx< '11 (##vector-length _self155553_))
            (begin
              (##vector-set! _self155553_ '1 _id155554_)
              (##vector-set! _self155553_ '2 (make-table 'test: eq?))
              (##vector-set! _self155553_ '3 _super155555_)
              (##vector-set! _self155553_ '4 '#f)
              (##vector-set! _self155553_ '5 '#f)
              (##vector-set! _self155553_ '6 _ns155556_)
              (##vector-set! _self155553_ '7 _path155557_)
              (##vector-set! _self155553_ '8 '())
              (##vector-set! _self155553_ '9 '())
              (##vector-set! _self155553_ '10 '#f)
              (##vector-set! _self155553_ '11 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self155553_
                   '11
                   (##vector-length _self155553_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self155397_ _ctx155398_ _root155399_)
        (let ((_super155407_
               (let ((_$e155401_ _root155399_))
                 (if _$e155401_
                     _$e155401_
                     (let ((_$e155404_ (gx#core-context-root__0)))
                       (if _$e155404_
                           _$e155404_
                           (let ((__obj159816
                                  (make-object* gx#root-context::t '3)))
                             (let ((__constructor159817
                                    (find-method gx#root-context::t ':init!)))
                               (if __constructor159817
                                   (__constructor159817 __obj159816)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj159816)))))))
          (if _ctx155398_
              (let ((_id155410_
                     (##structure-ref
                      _ctx155398_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path155411_
                     (##structure-ref _ctx155398_ '7 gx#module-context::t '#f))
                    (_in155412_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx155398_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e155413_
                     (make-promise (lambda () (gx#eval-module _ctx155398_)))))
                (if (##fx< '8 (##vector-length _self155397_))
                    (begin
                      (##vector-set! _self155397_ '1 _id155410_)
                      (##vector-set!
                       _self155397_
                       '2
                       (make-table 'test: eq? 'size: (length _in155412_)))
                      (##vector-set! _self155397_ '3 _super155407_)
                      (##vector-set! _self155397_ '4 '#f)
                      (##vector-set! _self155397_ '5 '#f)
                      (##vector-set! _self155397_ '6 _path155411_)
                      (##vector-set! _self155397_ '7 _in155412_)
                      (##vector-set! _self155397_ '8 _e155413_))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self155397_
                           '8
                           (##vector-length _self155397_)))
                (for-each
                 (lambda (_g155414155416_)
                   (gx#core-bind-weak-import!__% _g155414155416_ _self155397_))
                 _in155412_))
              (if (##fx< '8 (##vector-length _self155397_))
                  (begin
                    (##vector-set! _self155397_ '1 '#f)
                    (##vector-set! _self155397_ '2 (make-table 'test: eq?))
                    (##vector-set! _self155397_ '3 _super155407_)
                    (##vector-set! _self155397_ '4 '#f)
                    (##vector-set! _self155397_ '5 '#f)
                    (##vector-set! _self155397_ '6 '#f)
                    (##vector-set! _self155397_ '7 '())
                    (##vector-set! _self155397_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self155397_
                         '8
                         (##vector-length _self155397_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self155422_ _ctx155423_)
        (let ((_root155425_ '#f))
          (gx#prelude-context:::init!__%
           _self155422_
           _ctx155423_
           _root155425_))))
    (define gx#prelude-context:::init!
      (lambda _g159823_
        (let ((_g159822_ (##length _g159823_)))
          (cond ((##fx= _g159822_ 2)
                 (apply (lambda (_self155422_ _ctx155423_)
                          (gx#prelude-context:::init!__0
                           _self155422_
                           _ctx155423_))
                        _g159823_))
                ((##fx= _g159822_ 3)
                 (apply (lambda (_self155427_ _ctx155428_ _root155429_)
                          (gx#prelude-context:::init!__%
                           _self155427_
                           _ctx155428_
                           _root155429_))
                        _g159823_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g159823_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self155271_ _e155272_)
        (if (##fx< '3 (##vector-length _self155271_))
            (begin
              (##vector-set! _self155271_ '1 _e155272_)
              (##vector-set! _self155271_ '2 (gx#current-expander-context))
              (##vector-set!
               _self155271_
               '3
               (fx- (gx#current-expander-phi) '1)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self155271_
                   '3
                   (##vector-length _self155271_)))))
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
      (lambda (_g154897154900_ _g154898154902_)
        (gx#core-apply-user-expander__%
         _g154897154900_
         _g154898154902_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g154768154771_ _g154769154773_)
        (gx#core-apply-user-expander__%
         _g154768154771_
         _g154769154773_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx154639_)
        (let* ((_path154641_
                (##structure-ref _ctx154639_ '7 gx#module-context::t '#f))
               (_path154643_
                (if (pair? _path154641_) (last _path154641_) _path154641_)))
          (if (string? _path154643_) _path154643_ '#f))))
    (define gx#import-module__%
      (lambda (_path154615_ _reload?154616_ _eval?154617_)
        (let ((_ctx154619_
               ((gx#current-expander-module-import)
                _path154615_
                _reload?154616_)))
          (if (and _ctx154619_ _eval?154617_)
              (gx#eval-module _ctx154619_)
              '#!void)
          _ctx154619_)))
    (define gx#import-module__0
      (lambda (_path154624_)
        (let* ((_reload?154626_ '#f) (_eval?154628_ '#f))
          (gx#import-module__% _path154624_ _reload?154626_ _eval?154628_))))
    (define gx#import-module__1
      (lambda (_path154630_ _reload?154631_)
        (let ((_eval?154633_ '#f))
          (gx#import-module__% _path154630_ _reload?154631_ _eval?154633_))))
    (define gx#import-module
      (lambda _g159825_
        (let ((_g159824_ (##length _g159825_)))
          (cond ((##fx= _g159824_ 1)
                 (apply (lambda (_path154624_)
                          (gx#import-module__0 _path154624_))
                        _g159825_))
                ((##fx= _g159824_ 2)
                 (apply (lambda (_path154630_ _reload?154631_)
                          (gx#import-module__1 _path154630_ _reload?154631_))
                        _g159825_))
                ((##fx= _g159824_ 3)
                 (apply (lambda (_path154635_ _reload?154636_ _eval?154637_)
                          (gx#import-module__%
                           _path154635_
                           _reload?154636_
                           _eval?154637_))
                        _g159825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g159825_))))))
    (define gx#eval-module
      (lambda (_mod154612_) ((gx#current-expander-module-eval) _mod154612_)))
    (define gx#core-eval-module
      (lambda (_obj154597_)
        (letrec ((_force-e154599_
                  (lambda (_getf154608_ _e154609_)
                    (call-with-parameters
                     (lambda () (force (_getf154608_ _e154609_)))
                     gx#current-expander-context
                     _e154609_
                     gx#current-expander-phi
                     '0))))
          (let _recur154601_ ((_e154603_ _obj154597_))
            (if (##structure-instance-of? _e154603_ 'gx#module-context::t)
                (begin
                  (let ((_$e154605_ (gx#core-context-prelude__% _e154603_)))
                    (if _$e154605_ (_recur154601_ _$e154605_) '#!void))
                  (_force-e154599_ gx#module-context-e _e154603_))
                (if (##structure-instance-of? _e154603_ 'gx#prelude-context::t)
                    (_force-e154599_ gx#prelude-context-e _e154603_)
                    (if (gx#stx-string? _e154603_)
                        (_recur154601_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e154603_)))
                        (if (gx#core-library-module-path? _e154603_)
                            (_recur154601_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e154603_)))
                            (error '"Cannot eval module" _obj154597_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx154580_)
        (let _lp154582_ ((_e154584_ _ctx154580_))
          (if (or (##structure-instance-of? _e154584_ 'gx#module-context::t)
                  (##structure-instance-of? _e154584_ 'gx#local-context::t))
              (_lp154582_
               (##unchecked-structure-ref _e154584_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e154584_ 'gx#prelude-context::t)
                  _e154584_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx154593_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx154593_))))
    (define gx#core-context-prelude
      (lambda _g159827_
        (let ((_g159826_ (##length _g159827_)))
          (cond ((##fx= _g159826_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g159827_))
                ((##fx= _g159826_ 1)
                 (apply (lambda (_ctx154595_)
                          (gx#core-context-prelude__% _ctx154595_))
                        _g159827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g159827_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx154570_)
        (let* ((_ht154572_ (gx#current-expander-module-registry))
               (_$e154574_ (table-ref _ht154572_ _ctx154570_ '#f)))
          (if _$e154574_
              (values _$e154574_)
              (let ((_pre154577_
                     (let ((__obj159818
                            (make-object* gx#prelude-context::t '9)))
                       (gx#prelude-context:::init! __obj159818 _ctx154570_)
                       __obj159818)))
                (table-set! _ht154572_ _ctx154570_ _pre154577_)
                _pre154577_)))))
    (define gx#core-import-module__%
      (lambda (_rpath154451_ _reload?154452_)
        (letrec ((_import-source154454_
                  (lambda (_path154539_)
                    (if (member _path154539_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path154539_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g159828_ (gx#core-read-module _path154539_)))
                         (begin
                           (let ((_g159829_
                                  (if (##values? _g159828_)
                                      (##vector-length _g159828_)
                                      1)))
                             (if (not (##fx= _g159829_ 4))
                                 (error "Context expects 4 values" _g159829_)))
                           (let ((_pre154542_ (##vector-ref _g159828_ 0))
                                 (_id154543_ (##vector-ref _g159828_ 1))
                                 (_ns154544_ (##vector-ref _g159828_ 2))
                                 (_body154545_ (##vector-ref _g159828_ 3)))
                             (let* ((_prelude154550_
                                     (if (##structure-instance-of?
                                          _pre154542_
                                          'gx#prelude-context::t)
                                         _pre154542_
                                         (if (##structure-instance-of?
                                              _pre154542_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre154542_)
                                             (if (string? _pre154542_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre154542_))
                                                 (if (not _pre154542_)
                                                     (let ((_$e154547_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e154547_
                                                           _$e154547_
                                                           (let ((__obj159819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-object* gx#prelude-context::t '9)))
                     (gx#prelude-context:::init! __obj159819 '#f)
                     __obj159819)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath154451_
                                                            _pre154542_))))))
                                    (_ctx154552_
                                     (let ((__obj159820
                                            (make-object*
                                             gx#module-context::t
                                             '12)))
                                       (gx#module-context:::init!
                                        __obj159820
                                        _id154543_
                                        _prelude154550_
                                        _ns154544_
                                        _path154539_)
                                       __obj159820))
                                    (_body154554_
                                     (gx#core-expand-module-begin
                                      _body154545_
                                      _ctx154552_))
                                    (_body154556_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body154554_)
                                      _path154539_
                                      _ctx154552_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx154552_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body154556_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx154552_
                                _body154556_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path154539_
                                _ctx154552_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id154543_
                                _ctx154552_)
                               _ctx154552_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path154539_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule154455_
                  (lambda (_rpath154467_)
                    (let* ((_rpath154468154475_ _rpath154467_)
                           (_E154470154479_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath154468154475_)))
                           (_K154471154527_
                            (lambda (_refs154482_ _origin154483_)
                              (let ((_ctx154485_
                                     (if _origin154483_
                                         (gx#core-import-module__%
                                          _origin154483_
                                          _reload?154452_)
                                         (gx#current-expander-context))))
                                (let _lp154487_ ((_rest154489_ _refs154482_)
                                                 (_ctx154490_ _ctx154485_))
                                  (let* ((_rest154491154499_ _rest154489_)
                                         (_else154493154507_
                                          (lambda () _ctx154490_))
                                         (_K154495154515_
                                          (lambda (_rest154510_ _id154511_)
                                            (let ((_bind154513_
                                                   (gx#resolve-identifier__%
                                                    _id154511_
                                                    '0
                                                    _ctx154490_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind154513_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind154513_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp154487_
                                                   _rest154510_
                                                   (##unchecked-structure-ref
                                                    _bind154513_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath154467_
                                                         _id154511_
                                                         _bind154513_))))))
                                    (if (##pair? _rest154491154499_)
                                        (let ((_hd154496154518_
                                               (##car _rest154491154499_))
                                              (_tl154497154520_
                                               (##cdr _rest154491154499_)))
                                          (let* ((_id154523_ _hd154496154518_)
                                                 (_rest154525_
                                                  _tl154497154520_))
                                            (_K154495154515_
                                             _rest154525_
                                             _id154523_)))
                                        (_else154493154507_))))))))
                      (if (##pair? _rpath154468154475_)
                          (let ((_hd154472154530_ (##car _rpath154468154475_))
                                (_tl154473154532_ (##cdr _rpath154468154475_)))
                            (let* ((_origin154535_ _hd154472154530_)
                                   (_refs154537_ _tl154473154532_))
                              (_K154471154527_ _refs154537_ _origin154535_)))
                          (_E154470154479_))))))
          (let ((_$e154457_
                 (if (not _reload?154452_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath154451_
                      '#f)
                     '#f)))
            (if _$e154457_
                (values _$e154457_)
                (if (list? _rpath154451_)
                    (_import-submodule154455_ _rpath154451_)
                    (if (gx#core-library-module-path? _rpath154451_)
                        (let ((_ctx154460_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath154451_)
                                _reload?154452_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath154451_
                           _ctx154460_)
                          _ctx154460_)
                        (let* ((_npath154462_ (path-normalize _rpath154451_))
                               (_$e154464_
                                (if (not _reload?154452_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath154462_
                                     '#f)
                                    '#f)))
                          (if _$e154464_
                              (values _$e154464_)
                              (_import-source154454_ _npath154462_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath154563_)
        (let ((_reload?154565_ '#f))
          (gx#core-import-module__% _rpath154563_ _reload?154565_))))
    (define gx#core-import-module
      (lambda _g159831_
        (let ((_g159830_ (##length _g159831_)))
          (cond ((##fx= _g159830_ 1)
                 (apply (lambda (_rpath154563_)
                          (gx#core-import-module__0 _rpath154563_))
                        _g159831_))
                ((##fx= _g159830_ 2)
                 (apply (lambda (_rpath154567_ _reload?154568_)
                          (gx#core-import-module__%
                           _rpath154567_
                           _reload?154568_))
                        _g159831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g159831_))))))
    (define gx#core-read-module
      (lambda (_path154445_)
        (with-catch
         (lambda (_exn154447_)
           (if (and (datum-parsing-exception? _exn154447_)
                    (eq? (datum-parsing-exception-filepos _exn154447_) '0))
               (gx#core-read-module/lang _path154445_)
               (raise _exn154447_)))
         (lambda () (gx#core-read-module/sexp _path154445_)))))
    (define gx#core-read-module/sexp
      (lambda (_path154308_)
        (let _lp154310_ ((_body154312_ (read-syntax-from-file _path154308_))
                         (_pre154313_ '#f)
                         (_ns154314_ '#f)
                         (_pkg154315_ '#f))
          (let* ((_e154316154340_ _body154312_)
                 (_E154332154362_
                  (lambda ()
                    (let ((_g159832_
                           (if _pkg154315_
                               (values _pre154313_ _ns154314_ _pkg154315_)
                               (gx#core-read-module-package
                                _path154308_
                                _pre154313_
                                _ns154314_))))
                      (begin
                        (let ((_g159833_
                               (if (##values? _g159832_)
                                   (##vector-length _g159832_)
                                   1)))
                          (if (not (##fx= _g159833_ 3))
                              (error "Context expects 3 values" _g159833_)))
                        (let ((_pre154344_ (##vector-ref _g159832_ 0))
                              (_ns154345_ (##vector-ref _g159832_ 1))
                              (_pkg154346_ (##vector-ref _g159832_ 2)))
                          (let* ((_prelude154348_
                                  (if (gx#core-bound-module-prelude?
                                       _pre154344_)
                                      (gx#syntax-local-e__0 _pre154344_)
                                      (if (gx#core-library-module-path?
                                           _pre154344_)
                                          (gx#core-resolve-library-module-path
                                           _pre154344_)
                                          (if (gx#stx-string? _pre154344_)
                                              (gx#core-resolve-module-path__%
                                               _pre154344_
                                               _path154308_)
                                              (gx#stx-e _pre154344_)))))
                                 (_path-id154350_
                                  (gx#core-module-path->namespace
                                   _path154308_))
                                 (_pkg-id154352_
                                  (if _pkg154346_
                                      (string-append
                                       _pkg154346_
                                       '"/"
                                       _path-id154350_)
                                      _path-id154350_))
                                 (_module-id154354_
                                  (string->symbol _pkg-id154352_))
                                 (_module-ns154359_
                                  (if (eq? _ns154345_ '#!void)
                                      '#f
                                      (let ((_$e154356_ _ns154345_))
                                        (if _$e154356_
                                            _$e154356_
                                            _pkg-id154352_)))))
                            (values _prelude154348_
                                    _module-id154354_
                                    _module-ns154359_
                                    _body154312_)))))))
                 (_E154325154391_
                  (lambda ()
                    (if (gx#stx-pair? _e154316154340_)
                        (let ((_e154333154366_ (gx#syntax-e _e154316154340_)))
                          (let ((_hd154334154369_ (##car _e154333154366_))
                                (_tl154335154371_ (##cdr _e154333154366_)))
                            (if (eq? (gx#stx-e _hd154334154369_) 'package:)
                                (if (gx#stx-pair? _tl154335154371_)
                                    (let ((_e154336154374_
                                           (gx#syntax-e _tl154335154371_)))
                                      (let ((_hd154337154377_
                                             (##car _e154336154374_))
                                            (_tl154338154379_
                                             (##cdr _e154336154374_)))
                                        (let* ((_pkg154382_ _hd154337154377_)
                                               (_rest154384_ _tl154338154379_))
                                          (if '#t
                                              (let ((_pkg154389_
                                                     (if (gx#identifier?
                                                          _pkg154382_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg154382_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg154382_)
                         (gx#stx-false? _pkg154382_))
                     (gx#stx-e _pkg154382_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg154382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp154310_
                                                 _rest154384_
                                                 _pre154313_
                                                 _ns154314_
                                                 _pkg154389_))
                                              (_E154332154362_)))))
                                    (_E154332154362_))
                                (_E154332154362_))))
                        (_E154332154362_))))
                 (_E154318154417_
                  (lambda ()
                    (if (gx#stx-pair? _e154316154340_)
                        (let ((_e154326154395_ (gx#syntax-e _e154316154340_)))
                          (let ((_hd154327154398_ (##car _e154326154395_))
                                (_tl154328154400_ (##cdr _e154326154395_)))
                            (if (eq? (gx#stx-e _hd154327154398_) 'namespace:)
                                (if (gx#stx-pair? _tl154328154400_)
                                    (let ((_e154329154403_
                                           (gx#syntax-e _tl154328154400_)))
                                      (let ((_hd154330154406_
                                             (##car _e154329154403_))
                                            (_tl154331154408_
                                             (##cdr _e154329154403_)))
                                        (let* ((_ns154411_ _hd154330154406_)
                                               (_rest154413_ _tl154331154408_))
                                          (if '#t
                                              (let ((_ns154415_
                                                     (if (gx#identifier?
                                                          _ns154411_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns154411_))
                                                         (if (gx#stx-string?
                                                              _ns154411_)
                                                             (gx#stx-e
                                                              _ns154411_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns154411_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns154411_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp154310_
                                                 _rest154413_
                                                 _pre154313_
                                                 _ns154415_
                                                 _pkg154315_))
                                              (_E154325154391_)))))
                                    (_E154325154391_))
                                (_E154325154391_))))
                        (_E154325154391_))))
                 (_E154317154441_
                  (lambda ()
                    (if (gx#stx-pair? _e154316154340_)
                        (let ((_e154319154421_ (gx#syntax-e _e154316154340_)))
                          (let ((_hd154320154424_ (##car _e154319154421_))
                                (_tl154321154426_ (##cdr _e154319154421_)))
                            (if (eq? (gx#stx-e _hd154320154424_) 'prelude:)
                                (if (gx#stx-pair? _tl154321154426_)
                                    (let ((_e154322154429_
                                           (gx#syntax-e _tl154321154426_)))
                                      (let ((_hd154323154432_
                                             (##car _e154322154429_))
                                            (_tl154324154434_
                                             (##cdr _e154322154429_)))
                                        (let* ((_prelude154437_
                                                _hd154323154432_)
                                               (_rest154439_ _tl154324154434_))
                                          (if '#t
                                              (_lp154310_
                                               _rest154439_
                                               _prelude154437_
                                               _ns154314_
                                               _pkg154315_)
                                              (_E154318154417_)))))
                                    (_E154318154417_))
                                (_E154318154417_))))
                        (_E154318154417_)))))
            (_E154317154441_)))))
    (define gx#core-read-module/lang
      (lambda (_path154135_)
        (letrec ((_default-read-module-body154137_
                  (lambda (_inp154300_)
                    (let _lp154302_ ((_body154304_ '()))
                      (let ((_next154306_ (read-syntax _inp154300_)))
                        (if (eof-object? _next154306_)
                            (reverse _body154304_)
                            (_lp154302_ (cons _next154306_ _body154304_)))))))
                 (_read-body154138_
                  (lambda (_inp154219_
                           _pre154220_
                           _ns154221_
                           _pkg154222_
                           _args154223_)
                    (let ((_g159834_
                           (if _pkg154222_
                               (values _pre154220_ _ns154221_ _pkg154222_)
                               (gx#core-read-module-package
                                _path154135_
                                _pre154220_
                                _ns154221_))))
                      (begin
                        (let ((_g159835_
                               (if (##values? _g159834_)
                                   (##vector-length _g159834_)
                                   1)))
                          (if (not (##fx= _g159835_ 3))
                              (error "Context expects 3 values" _g159835_)))
                        (let ((_pre154225_ (##vector-ref _g159834_ 0))
                              (_ns154226_ (##vector-ref _g159834_ 1))
                              (_pkg154227_ (##vector-ref _g159834_ 2)))
                          (let* ((_prelude154229_
                                  (gx#import-module__0 _pre154225_))
                                 (_read-module-body154283_
                                  (let ((_$e154275_
                                         (find (lambda (_e154230154232_)
                                                 (let* ((_g154234154244_
                                                         _e154230154232_)
                                                        (_else154236154252_
                                                         (lambda () '#f))
                                                        (_K154238154256_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g154234154244_
                                                        'gx#module-export::t)
                                                       (let* ((_e154239154259_
                                                               (##unchecked-structure-ref
                                                                _g154234154244_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e154240154262_
                                                               (##unchecked-structure-ref
                                                                _g154234154244_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e154241154265_
                                                               (##unchecked-structure-ref
                                                                _g154234154244_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e154241154265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e154242154268_
                            (##unchecked-structure-ref
                             _g154234154244_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g154270154272_)
                              (eq? _g154270154272_ 'read-module-body))
                            _e154242154268_)
                           (_K154238154256_)
                           (_else154236154252_)))
                     (_else154236154252_)))
               (_else154236154252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude154229_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e154275_
                                        ((lambda (_xport154278_)
                                           (let ((_proc154281_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport154278_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc154281_)
                                                 _proc154281_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path154135_
                                                  _pre154225_
                                                  _proc154281_))))
                                         _$e154275_)
                                        _default-read-module-body154137_)))
                                 (_path-id154285_
                                  (gx#core-module-path->namespace
                                   _path154135_))
                                 (_pkg-id154287_
                                  (if _pkg154227_
                                      (string-append
                                       _pkg154227_
                                       '"/"
                                       _path-id154285_)
                                      _path-id154285_))
                                 (_module-id154289_
                                  (string->symbol _pkg-id154287_))
                                 (_module-ns154294_
                                  (let ((_$e154291_ _ns154226_))
                                    (if _$e154291_ _$e154291_ _pkg-id154287_)))
                                 (_body154297_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body154283_ _inp154219_))
                                   gx#current-module-reader-path
                                   _path154135_
                                   gx#current-module-reader-args
                                   _args154223_)))
                            (values _prelude154229_
                                    _module-id154289_
                                    _module-ns154294_
                                    _body154297_)))))))
                 (_string-e154139_
                  (lambda (_obj154216_ _what154217_)
                    (if (string? _obj154216_)
                        _obj154216_
                        (if (symbol? _obj154216_)
                            (symbol->string _obj154216_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what154217_)
                             _path154135_
                             _obj154216_)))))
                 (_read-lang-args154140_
                  (lambda (_inp154171_ _args154172_)
                    (let* ((_args154173154181_ _args154172_)
                           (_else154175154189_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path154135_)))
                           (_K154177154204_
                            (lambda (_args154192_ _prelude154193_)
                              (let* ((_pkg154195_
                                      (pgetq 'package: _args154192_))
                                     (_pkg154197_
                                      (if _pkg154195_
                                          (_string-e154139_
                                           _pkg154195_
                                           '"package")
                                          '#f))
                                     (_ns154199_
                                      (pgetq 'namespace: _args154192_))
                                     (_ns154201_
                                      (if _ns154199_
                                          (_string-e154139_
                                           _ns154199_
                                           '"namespace")
                                          '#f)))
                                (_read-body154138_
                                 _inp154171_
                                 _prelude154193_
                                 _ns154201_
                                 _pkg154197_
                                 _args154192_)))))
                      (if (##pair? _args154173154181_)
                          (let ((_hd154178154207_ (##car _args154173154181_))
                                (_tl154179154209_ (##cdr _args154173154181_)))
                            (let* ((_prelude154212_ _hd154178154207_)
                                   (_args154214_ _tl154179154209_))
                              (_K154177154204_ _args154214_ _prelude154212_)))
                          (_else154175154189_)))))
                 (_read-lang154141_
                  (lambda (_inp154146_)
                    (let* ((_head154148_ (read-line _inp154146_))
                           (_$e154150_ (string-index _head154148_ '#\space)))
                      (if _$e154150_
                          ((lambda (_ix154153_)
                             (let ((_lang154155_
                                    (substring _head154148_ '0 _ix154153_)))
                               (if (equal? _lang154155_ '"#lang")
                                   (let* ((_rest154157_
                                           (substring
                                            _head154148_
                                            (fx+ _ix154153_ '1)
                                            (string-length _head154148_)))
                                          (_args154168_
                                           (with-catch
                                            (lambda (_g154158154160_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path154135_
                                               _g154158154160_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest154157_
                                               (lambda (_g154163154165_)
                                                 (read-all
                                                  _g154163154165_
                                                  read)))))))
                                     (_read-lang-args154140_
                                      _inp154146_
                                      _args154168_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path154135_))))
                           _$e154150_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path154135_)))))
                 (_read-e154142_
                  (lambda (_inp154144_)
                    (if (eq? (peek-char _inp154144_) '#\#)
                        (_read-lang154141_ _inp154144_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path154135_)))))
          (gx#call-with-input-source-file _path154135_ _read-e154142_))))
    (define gx#core-read-module-package
      (lambda (_path154089_ _pre154090_ _ns154091_)
        (letrec ((_string-e154093_
                  (lambda (_e154133_)
                    (if (symbol? _e154133_)
                        (symbol->string _e154133_)
                        (if (string? _e154133_)
                            _e154133_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e154133_))))))
          (let _lp154095_ ((_dir154097_ (path-directory _path154089_))
                           (_pkg-path154098_ '()))
            (let ((_gerbil.pkg154100_ (path-expand '"gerbil.pkg" _dir154097_)))
              (if (file-exists? _gerbil.pkg154100_)
                  (let ((_plist154102_
                         (gx#core-library-package-plist__% _dir154097_ '#t)))
                    (if (null? _plist154102_)
                        (let ((_pkg154104_
                               (if (not (null? _pkg-path154098_))
                                   (string-join _pkg-path154098_ '"/")
                                   '#f)))
                          (values _pre154090_ _ns154091_ _pkg154104_))
                        (if (list? _plist154102_)
                            (let* ((_root154106_
                                    (pgetq 'package: _plist154102_))
                                   (_pkg154110_
                                    (let ((_pkg-path154108_
                                           (if _root154106_
                                               (cons (_string-e154093_
                                                      _root154106_)
                                                     _pkg-path154098_)
                                               _pkg-path154098_)))
                                      (if (not (null? _pkg-path154108_))
                                          (string-join _pkg-path154108_ '"/")
                                          '#f)))
                                   (_ns154117_
                                    (let ((_ns154115_
                                           (let ((_$e154112_ _ns154091_))
                                             (if _$e154112_
                                                 _$e154112_
                                                 (pgetq 'namespace:
                                                        _plist154102_)))))
                                      (if _ns154115_
                                          (_string-e154093_ _ns154115_)
                                          '#f)))
                                   (_pre154122_
                                    (let ((_$e154119_ _pre154090_))
                                      (if _$e154119_
                                          _$e154119_
                                          (pgetq 'prelude: _plist154102_)))))
                              (values _pre154122_ _ns154117_ _pkg154110_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist154102_))))
                  (let ((_dir*154125_
                         (path-strip-trailing-directory-separator
                          _dir154097_)))
                    (if (or (string-empty? _dir*154125_)
                            (equal? _dir154097_ _dir*154125_))
                        (values _pre154090_ _ns154091_ '#f)
                        (let ((_xpath154130_
                               (path-strip-directory _dir*154125_))
                              (_xdir154131_ (path-directory _dir*154125_)))
                          (_lp154095_
                           _xdir154131_
                           (cons _xpath154130_ _pkg-path154098_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path154087_)
        (path-strip-extension (path-strip-directory _path154087_))))
    (define gx#core-module-path->id
      (lambda (_path154085_)
        (string->symbol (gx#core-module-path->namespace _path154085_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path154064_ _rel154065_)
        (let* ((_path154067_ (gx#stx-e _stx-path154064_))
               (_path154069_
                (if (string-empty? (path-extension _path154067_))
                    (string-append _path154067_ '".ss")
                    _path154067_)))
          (gx#core-resolve-path__%
           _path154069_
           (let ((_$e154072_ (gx#stx-source _stx-path154064_)))
             (if _$e154072_ _$e154072_ _rel154065_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path154078_)
        (let ((_rel154080_ '#f))
          (gx#core-resolve-module-path__% _stx-path154078_ _rel154080_))))
    (define gx#core-resolve-module-path
      (lambda _g159837_
        (let ((_g159836_ (##length _g159837_)))
          (cond ((##fx= _g159836_ 1)
                 (apply (lambda (_stx-path154078_)
                          (gx#core-resolve-module-path__0 _stx-path154078_))
                        _g159837_))
                ((##fx= _g159836_ 2)
                 (apply (lambda (_stx-path154082_ _rel154083_)
                          (gx#core-resolve-module-path__%
                           _stx-path154082_
                           _rel154083_))
                        _g159837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g159837_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath153950_)
        (let* ((_spath153952_ (symbol->string (gx#stx-e _libpath153950_)))
               (_spath153954_
                (substring _spath153952_ '1 (string-length _spath153952_)))
               (_ext153956_ (path-extension _spath153954_))
               (_ssi153958_
                (if (string-empty? _ext153956_)
                    (string-append _spath153954_ '".ssi")
                    (string-append
                     (path-strip-extension _spath153954_)
                     '".ssi")))
               (_srcs153962_
                (if (string-empty? _ext153956_)
                    (map (lambda (_ext153960_)
                           (string-append _spath153954_ _ext153960_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath153954_ '()))))
          (let _lp153965_ ((_rest153967_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest153968153977_ _rest153967_)
                   (_E153971153981_
                    (lambda ()
                      (error '"No clause matching" _rest153968153977_))))
              (let ((_K153973154051_
                     (lambda (_rest153992_ _dir153993_)
                       (letrec ((_resolve153995_
                                 (lambda (_ssi154007_ _srcs154008_)
                                   (let ((_compiled-path154010_
                                          (path-expand
                                           _ssi154007_
                                           _dir153993_)))
                                     (if (file-exists? _compiled-path154010_)
                                         (path-normalize _compiled-path154010_)
                                         (let _lpr154012_ ((_rest-src154014_
                                                            _srcs154008_))
                                           (let* ((_rest-src154015154023_
                                                   _rest-src154014_)
                                                  (_else154017154031_
                                                   (lambda ()
                                                     (_lp153965_
                                                      _rest153992_)))
                                                  (_K154019154039_
                                                   (lambda (_rest-src154034_
                                                            _src154035_)
                                                     (let ((_src-path154037_
                                                            (path-expand
                                                             _src154035_
                                                             _dir153993_)))
                                                       (if (file-exists?
                                                            _src-path154037_)
                                                           (path-normalize
                                                            _src-path154037_)
                                                           (_lpr154012_
                                                            _rest-src154034_))))))
                                             (if (##pair? _rest-src154015154023_)
                                                 (let ((_hd154020154042_
                                                        (##car _rest-src154015154023_))
                                                       (_tl154021154044_
                                                        (##cdr _rest-src154015154023_)))
                                                   (let* ((_src154047_
                                                           _hd154020154042_)
                                                          (_rest-src154049_
                                                           _tl154021154044_))
                                                     (_K154019154039_
                                                      _rest-src154049_
                                                      _src154047_)))
                                                 (_else154017154031_)))))))))
                         (let ((_$e153997_
                                (gx#core-library-package-path-prefix
                                 _dir153993_)))
                           (if _$e153997_
                               ((lambda (_prefix154000_)
                                  (if (string-prefix?
                                       _prefix154000_
                                       _spath153954_)
                                      (let ((_ssi154004_
                                             (substring
                                              _ssi153958_
                                              (string-length _prefix154000_)
                                              (string-length _ssi153958_)))
                                            (_srcs154005_
                                             (map (lambda (_src154002_)
                                                    (substring
                                                     _src154002_
                                                     (string-length
                                                      _prefix154000_)
                                                     (string-length
                                                      _src154002_)))
                                                  _srcs153962_)))
                                        (_resolve153995_
                                         _ssi154004_
                                         _srcs154005_))
                                      (_lp153965_ _rest153992_)))
                                _$e153997_)
                               (_resolve153995_ _ssi153958_ _srcs153962_))))))
                    (_K153972153986_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath153950_))))
                (let ((_try-match153970153989_
                       (lambda ()
                         (if (##null? _rest153968153977_)
                             (_K153972153986_)
                             (_E153971153981_)))))
                  (if (##pair? _rest153968153977_)
                      (let ((_tl153975154056_ (##cdr _rest153968153977_))
                            (_hd153974154054_ (##car _rest153968153977_)))
                        (let ((_dir154059_ _hd153974154054_)
                              (_rest154061_ _tl153975154056_))
                          (_K153973154051_ _rest154061_ _dir154059_)))
                      (_try-match153970153989_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath153923_)
        (letrec ((_resolve153925_
                  (lambda (_path153942_ _base153943_)
                    (let ((_$e153945_ (string-rindex _base153943_ '#\/)))
                      (if _$e153945_
                          ((lambda (_idx153948_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base153943_ '0 _idx153948_)
                                '"/"
                                _path153942_))))
                           _$e153945_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path153942_))))))))
          (let ((_spath153927_ (symbol->string (gx#stx-e _modpath153923_)))
                (_mod153928_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod153928_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath153923_))
            (let ((_mpath153930_
                   (symbol->string
                    (##structure-ref
                     _mod153928_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp153932_ ((_spath153934_ _spath153927_)
                               (_mpath153935_ _mpath153930_))
                (if (string-prefix? '"../" _spath153934_)
                    (let ((_$e153937_ (string-rindex _mpath153935_ '#\/)))
                      (if _$e153937_
                          ((lambda (_idx153940_)
                             (_lp153932_
                              (substring
                               _spath153934_
                               '3
                               (string-length _spath153934_))
                              (substring _mpath153935_ '0 _idx153940_)))
                           _$e153937_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath153923_)))
                    (if (string-prefix? '"./" _spath153934_)
                        (_lp153932_
                         (substring
                          _spath153934_
                          '2
                          (string-length _spath153934_))
                         _mpath153935_)
                        (_resolve153925_ _spath153934_ _mpath153935_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir153916_)
        (let ((_$e153918_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir153916_))))
          (if _$e153918_
              ((lambda (_pkg153921_)
                 (string-append (symbol->string _pkg153921_) '"/"))
               _$e153918_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir153888_ _exists?153889_)
        (let* ((_cache153891_ (gx#core-library-package-cache))
               (_$e153893_ (table-ref _cache153891_ _dir153888_ '#f)))
          (if _$e153893_
              (values _$e153893_)
              (let* ((_gerbil.pkg153896_
                      (path-expand '"gerbil.pkg" _dir153888_))
                     (_plist153903_
                      (if (or _exists?153889_
                              (file-exists? _gerbil.pkg153896_))
                          (let ((_e153901_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg153896_
                                  read)))
                            (if (eof-object? _e153901_)
                                '()
                                (if (list? _e153901_)
                                    _e153901_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg153896_
                                     _e153901_))))
                          '())))
                (table-set! _cache153891_ _dir153888_ _plist153903_)
                _plist153903_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir153909_)
        (let ((_exists?153911_ '#f))
          (gx#core-library-package-plist__% _dir153909_ _exists?153911_))))
    (define gx#core-library-package-plist
      (lambda _g159839_
        (let ((_g159838_ (##length _g159839_)))
          (cond ((##fx= _g159838_ 1)
                 (apply (lambda (_dir153909_)
                          (gx#core-library-package-plist__0 _dir153909_))
                        _g159839_))
                ((##fx= _g159838_ 2)
                 (apply (lambda (_dir153913_ _exists?153914_)
                          (gx#core-library-package-plist__%
                           _dir153913_
                           _exists?153914_))
                        _g159839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g159839_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e153882_ (gx#current-expander-module-library-package-cache)))
          (if _$e153882_
              (values _$e153882_)
              (let ((_cache153885_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache153885_)
                _cache153885_)))))
    (define gx#core-library-module-path?
      (lambda (_stx153879_) (gx#core-special-module-path? _stx153879_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx153877_) (gx#core-special-module-path? _stx153877_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx153872_ _char153873_)
        (if (gx#identifier? _stx153872_)
            (if (interned-symbol? (gx#stx-e _stx153872_))
                (let ((_str153875_ (symbol->string (gx#stx-e _stx153872_))))
                  (if (fx> (string-length _str153875_) '1)
                      (eq? (string-ref _str153875_ '0) _char153873_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx153866_)
        (gx#core-bound-identifier?__%
         _stx153866_
         (lambda (_g153867153869_)
           (gx#expander-binding?__% _g153867153869_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx153860_)
        (gx#core-bound-identifier?__%
         _stx153860_
         (lambda (_g153861153863_)
           (gx#expander-binding?__% _g153861153863_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx153847_)
        (letrec ((_module-prelude?153849_
                  (lambda (_e153855_)
                    (let ((_$e153857_
                           (##structure-instance-of?
                            _e153855_
                            'gx#module-context::t)))
                      (if _$e153857_
                          _$e153857_
                          (##structure-instance-of?
                           _e153855_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx153847_
           (lambda (_g153850153852_)
             (gx#expander-binding?__%
              _g153850153852_
              _module-prelude?153849_))))))
    (define gx#core-bind-import!__%
      (lambda (_in153777_ _ctx153778_ _force-weak?153779_)
        (let* ((_in153780153789_ _in153777_)
               (_E153782153793_
                (lambda () (error '"No clause matching" _in153780153789_)))
               (_K153783153806_
                (lambda (_weak?153796_ _phi153797_ _key153798_ _source153799_)
                  (gx#core-bind!__%
                   _key153798_
                   (let ((_e153801_
                          (gx#core-resolve-module-export _source153799_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e153801_
                       '1
                       gx#binding::t
                       '#f)
                      _key153798_
                      _phi153797_
                      _e153801_
                      (##unchecked-structure-ref
                       _source153799_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e153803_ _force-weak?153779_))
                        (if _$e153803_ _$e153803_ _weak?153796_))))
                   gx#core-context-rebind?
                   _phi153797_
                   _ctx153778_))))
          (if (##structure-direct-instance-of?
               _in153780153789_
               'gx#module-import::t)
              (let* ((_e153784153809_
                      (##unchecked-structure-ref
                       _in153780153789_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source153812_ _e153784153809_)
                     (_e153785153814_
                      (##unchecked-structure-ref
                       _in153780153789_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key153817_ _e153785153814_)
                     (_e153786153819_
                      (##unchecked-structure-ref
                       _in153780153789_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi153822_ _e153786153819_)
                     (_e153787153824_
                      (##unchecked-structure-ref
                       _in153780153789_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?153827_ _e153787153824_))
                (_K153783153806_
                 _weak?153827_
                 _phi153822_
                 _key153817_
                 _source153812_))
              (_E153782153793_)))))
    (define gx#core-bind-import!__0
      (lambda (_in153832_)
        (let* ((_ctx153834_ (gx#current-expander-context))
               (_force-weak?153836_ '#f))
          (gx#core-bind-import!__%
           _in153832_
           _ctx153834_
           _force-weak?153836_))))
    (define gx#core-bind-import!__1
      (lambda (_in153838_ _ctx153839_)
        (let ((_force-weak?153841_ '#f))
          (gx#core-bind-import!__%
           _in153838_
           _ctx153839_
           _force-weak?153841_))))
    (define gx#core-bind-import!
      (lambda _g159841_
        (let ((_g159840_ (##length _g159841_)))
          (cond ((##fx= _g159840_ 1)
                 (apply (lambda (_in153832_)
                          (gx#core-bind-import!__0 _in153832_))
                        _g159841_))
                ((##fx= _g159840_ 2)
                 (apply (lambda (_in153838_ _ctx153839_)
                          (gx#core-bind-import!__1 _in153838_ _ctx153839_))
                        _g159841_))
                ((##fx= _g159840_ 3)
                 (apply (lambda (_in153843_ _ctx153844_ _force-weak?153845_)
                          (gx#core-bind-import!__%
                           _in153843_
                           _ctx153844_
                           _force-weak?153845_))
                        _g159841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g159841_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in153763_ _ctx153764_)
        (gx#core-bind-import!__% _in153763_ _ctx153764_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in153769_)
        (let ((_ctx153771_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in153769_ _ctx153771_))))
    (define gx#core-bind-weak-import!
      (lambda _g159843_
        (let ((_g159842_ (##length _g159843_)))
          (cond ((##fx= _g159842_ 1)
                 (apply (lambda (_in153769_)
                          (gx#core-bind-weak-import!__0 _in153769_))
                        _g159843_))
                ((##fx= _g159842_ 2)
                 (apply (lambda (_in153773_ _ctx153774_)
                          (gx#core-bind-weak-import!__%
                           _in153773_
                           _ctx153774_))
                        _g159843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g159843_))))))
    (define gx#core-resolve-module-export
      (lambda (_out153654_)
        (letrec ((_subst153656_
                  (lambda (_key153702_)
                    (let* ((_key153703153711_ _key153702_)
                           (_else153705153719_ (lambda () _key153702_))
                           (_K153707153750_
                            (lambda (_mark153722_ _id153723_)
                              (let* ((_mark153724153730_ _mark153722_)
                                     (_E153726153734_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark153724153730_)))
                                     (_K153727153742_
                                      (lambda (_subst153737_)
                                        (let ((_$e153739_
                                               (if _subst153737_
                                                   (table-ref
                                                    _subst153737_
                                                    _id153723_
                                                    '#f)
                                                   '#f)))
                                          (if _$e153739_
                                              _$e153739_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key153702_))))))
                                (if (##structure-instance-of?
                                     _mark153724153730_
                                     'gx#expander-mark::t)
                                    (let* ((_e153728153745_
                                            (##unchecked-structure-ref
                                             _mark153724153730_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst153748_ _e153728153745_))
                                      (_K153727153742_ _subst153748_))
                                    (_E153726153734_))))))
                      (if (##pair? _key153703153711_)
                          (let ((_hd153708153753_ (##car _key153703153711_))
                                (_tl153709153755_ (##cdr _key153703153711_)))
                            (let* ((_id153758_ _hd153708153753_)
                                   (_mark153760_ _tl153709153755_))
                              (_K153707153750_ _mark153760_ _id153758_)))
                          (_else153705153719_))))))
          (let* ((_out153657153667_ _out153654_)
                 (_E153659153671_
                  (lambda () (error '"No clause matching" _out153657153667_)))
                 (_K153660153678_
                  (lambda (_phi153674_ _key153675_ _ctx153676_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx153676_ _phi153674_)
                     (_subst153656_ _key153675_)))))
            (if (##structure-direct-instance-of?
                 _out153657153667_
                 'gx#module-export::t)
                (let* ((_e153661153681_
                        (##unchecked-structure-ref
                         _out153657153667_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx153684_ _e153661153681_)
                       (_e153662153686_
                        (##unchecked-structure-ref
                         _out153657153667_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key153689_ _e153662153686_)
                       (_e153663153691_
                        (##unchecked-structure-ref
                         _out153657153667_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi153694_ _e153663153691_)
                       (_e153664153696_
                        (##unchecked-structure-ref
                         _out153657153667_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e153665153699_
                        (##unchecked-structure-ref
                         _out153657153667_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K153660153678_ _phi153694_ _key153689_ _ctx153684_))
                (_E153659153671_))))))
    (define gx#core-module-export->import__%
      (lambda (_out153579_ _rename153580_ _dphi153581_)
        (let* ((_out153582153592_ _out153579_)
               (_E153584153596_
                (lambda () (error '"No clause matching" _out153582153592_)))
               (_K153585153608_
                (lambda (_weak?153599_
                         _name153600_
                         _phi153601_
                         _key153602_
                         _ctx153603_)
                  (##structure
                   gx#module-import::t
                   _out153579_
                   (let ((_$e153605_ _rename153580_))
                     (if _$e153605_ _$e153605_ _name153600_))
                   (fx+ _phi153601_ _dphi153581_)
                   _weak?153599_))))
          (if (##structure-direct-instance-of?
               _out153582153592_
               'gx#module-export::t)
              (let* ((_e153586153611_
                      (##unchecked-structure-ref
                       _out153582153592_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx153614_ _e153586153611_)
                     (_e153587153616_
                      (##unchecked-structure-ref
                       _out153582153592_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key153619_ _e153587153616_)
                     (_e153588153621_
                      (##unchecked-structure-ref
                       _out153582153592_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi153624_ _e153588153621_)
                     (_e153589153626_
                      (##unchecked-structure-ref
                       _out153582153592_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name153629_ _e153589153626_)
                     (_e153590153631_
                      (##unchecked-structure-ref
                       _out153582153592_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?153634_ _e153590153631_))
                (_K153585153608_
                 _weak?153634_
                 _name153629_
                 _phi153624_
                 _key153619_
                 _ctx153614_))
              (_E153584153596_)))))
    (define gx#core-module-export->import__0
      (lambda (_out153639_)
        (let* ((_rename153641_ '#f) (_dphi153643_ '0))
          (gx#core-module-export->import__%
           _out153639_
           _rename153641_
           _dphi153643_))))
    (define gx#core-module-export->import__1
      (lambda (_out153645_ _rename153646_)
        (let ((_dphi153648_ '0))
          (gx#core-module-export->import__%
           _out153645_
           _rename153646_
           _dphi153648_))))
    (define gx#core-module-export->import
      (lambda _g159845_
        (let ((_g159844_ (##length _g159845_)))
          (cond ((##fx= _g159844_ 1)
                 (apply (lambda (_out153639_)
                          (gx#core-module-export->import__0 _out153639_))
                        _g159845_))
                ((##fx= _g159844_ 2)
                 (apply (lambda (_out153645_ _rename153646_)
                          (gx#core-module-export->import__1
                           _out153645_
                           _rename153646_))
                        _g159845_))
                ((##fx= _g159844_ 3)
                 (apply (lambda (_out153650_ _rename153651_ _dphi153652_)
                          (gx#core-module-export->import__%
                           _out153650_
                           _rename153651_
                           _dphi153652_))
                        _g159845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g159845_))))))
    (define gx#core-expand-module%
      (lambda (_stx153507_)
        (letrec ((_make-context153509_
                  (lambda (_id153560_)
                    (let* ((_super153562_ (gx#current-expander-context))
                           (_bind-id153564_ (gx#stx-e _id153560_))
                           (_mod-id153566_
                            (if (##structure-instance-of?
                                 _super153562_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super153562_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id153564_)
                                _bind-id153564_))
                           (_ns153568_ (symbol->string _mod-id153566_))
                           (_path153575_
                            (if (##structure-instance-of?
                                 _super153562_
                                 'gx#module-context::t)
                                (let ((_path153570_
                                       (##unchecked-structure-ref
                                        _super153562_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path153570_)
                                          (null? _path153570_))
                                      (cons _bind-id153564_ _path153570_)
                                      (if (not _path153570_)
                                          _bind-id153564_
                                          (cons _bind-id153564_
                                                (cons _path153570_ '())))))
                                _bind-id153564_)))
                      (let ((__obj159821
                             (make-object* gx#module-context::t '12)))
                        (gx#module-context:::init!
                         __obj159821
                         _mod-id153566_
                         _super153562_
                         _ns153568_
                         _path153575_)
                        __obj159821)))))
          (let* ((_e153510153520_ _stx153507_)
                 (_E153512153524_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153510153520_)))
                 (_E153511153556_
                  (lambda ()
                    (if (gx#stx-pair? _e153510153520_)
                        (let ((_e153513153528_ (gx#syntax-e _e153510153520_)))
                          (let ((_hd153514153531_ (##car _e153513153528_))
                                (_tl153515153533_ (##cdr _e153513153528_)))
                            (if (gx#stx-pair? _tl153515153533_)
                                (let ((_e153516153536_
                                       (gx#syntax-e _tl153515153533_)))
                                  (let ((_hd153517153539_
                                         (##car _e153516153536_))
                                        (_tl153518153541_
                                         (##cdr _e153516153536_)))
                                    (let* ((_id153544_ _hd153517153539_)
                                           (_body153546_ _tl153518153541_))
                                      (if (and (gx#identifier? _id153544_)
                                               (gx#stx-list? _body153546_))
                                          (let* ((_ctx153548_
                                                  (_make-context153509_
                                                   _id153544_))
                                                 (_body153550_
                                                  (gx#core-expand-module-begin
                                                   _body153546_
                                                   _ctx153548_))
                                                 (_body153552_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body153550_)
                                                   (gx#stx-source
                                                    _stx153507_))))
                                            (##unchecked-structure-set!
                                             _ctx153548_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body153552_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx153548_
                                             _body153552_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id153544_
                                             _ctx153548_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id153544_)
                                              _body153552_)
                                             (gx#stx-source _stx153507_)))
                                          (_E153512153524_)))))
                                (_E153512153524_))))
                        (_E153512153524_)))))
            (_E153511153556_)))))
    (define gx#core-expand-module-begin
      (lambda (_body153473_ _ctx153474_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx153477_
                   (gx#core-expand-head (cons '%%begin-module _body153473_)))
                  (_e153478153485_ _stx153477_)
                  (_E153480153489_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx153477_)))
                  (_E153479153503_
                   (lambda ()
                     (if (gx#stx-pair? _e153478153485_)
                         (let ((_e153481153493_ (gx#syntax-e _e153478153485_)))
                           (let ((_hd153482153496_ (##car _e153481153493_))
                                 (_tl153483153498_ (##cdr _e153481153493_)))
                             (if (and (gx#identifier? _hd153482153496_)
                                      (gx#core-identifier=?
                                       _hd153482153496_
                                       '%#begin-module))
                                 (let ((_body153501_ _tl153483153498_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx153477_)
                                           _body153501_
                                           (gx#core-expand-module-body
                                            _body153501_))
                                       (_E153480153489_)))
                                 (_E153480153489_))))
                         (_E153480153489_)))))
             (_E153479153503_)))
         gx#current-expander-context
         _ctx153474_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body153269_)
        (letrec ((_expand-special153271_
                  (lambda (_hd153400_ _K153401_ _rest153402_ _r153403_)
                    (let* ((_e153404153421_ _hd153400_)
                           (_E153416153425_
                            (lambda ()
                              (_K153401_
                               _rest153402_
                               (cons (gx#core-expand-top _hd153400_)
                                     _r153403_))))
                           (_E153406153437_
                            (lambda ()
                              (if (gx#stx-pair? _e153404153421_)
                                  (let ((_e153417153429_
                                         (gx#syntax-e _e153404153421_)))
                                    (let ((_hd153418153432_
                                           (##car _e153417153429_))
                                          (_tl153419153434_
                                           (##cdr _e153417153429_)))
                                      (if (and (gx#identifier?
                                                _hd153418153432_)
                                               (gx#core-identifier=?
                                                _hd153418153432_
                                                '%#export))
                                          (if '#t
                                              (_K153401_
                                               _rest153402_
                                               (cons _hd153400_ _r153403_))
                                              (_E153416153425_))
                                          (_E153416153425_))))
                                  (_E153416153425_))))
                           (_E153405153469_
                            (lambda ()
                              (if (gx#stx-pair? _e153404153421_)
                                  (let ((_e153407153441_
                                         (gx#syntax-e _e153404153421_)))
                                    (let ((_hd153408153444_
                                           (##car _e153407153441_))
                                          (_tl153409153446_
                                           (##cdr _e153407153441_)))
                                      (if (and (gx#identifier?
                                                _hd153408153444_)
                                               (gx#core-identifier=?
                                                _hd153408153444_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl153409153446_)
                                              (let ((_e153410153449_
                                                     (gx#syntax-e
                                                      _tl153409153446_)))
                                                (let ((_hd153411153452_
                                                       (##car _e153410153449_))
                                                      (_tl153412153454_
                                                       (##cdr _e153410153449_)))
                                                  (let ((_hd-bind153457_
                                                         _hd153411153452_))
                                                    (if (gx#stx-pair?
                                                         _tl153412153454_)
                                                        (let ((_e153413153459_
                                                               (gx#syntax-e
                                                                _tl153412153454_)))
                                                          (let ((_hd153414153462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153413153459_))
                        (_tl153415153464_ (##cdr _e153413153459_)))
                    (let ((_expr153467_ _hd153414153462_))
                      (if (gx#stx-null? _tl153415153464_)
                          (if (gx#core-bind-values? _hd-bind153457_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind153457_)
                                (_K153401_
                                 _rest153402_
                                 (cons _hd153400_ _r153403_)))
                              (_E153406153437_))
                          (_E153406153437_)))))
                (_E153406153437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153406153437_))
                                          (_E153406153437_))))
                                  (_E153406153437_)))))
                      (_E153405153469_))))
                 (_expand-body153272_
                  (lambda (_rbody153274_)
                    (let _lp153276_ ((_rest153278_ _rbody153274_)
                                     (_body153279_ '()))
                      (let* ((_rest153280153288_ _rest153278_)
                             (_else153282153296_ (lambda () _body153279_))
                             (_K153284153388_
                              (lambda (_rest153299_ _hd153300_)
                                (let* ((_e153301153322_ _hd153300_)
                                       (_E153317153326_
                                        (lambda ()
                                          (_lp153276_
                                           _rest153299_
                                           (cons (gx#core-expand-expression
                                                  _hd153300_)
                                                 _body153279_))))
                                       (_E153313153340_
                                        (lambda ()
                                          (if (gx#stx-pair? _e153301153322_)
                                              (let ((_e153318153330_
                                                     (gx#syntax-e
                                                      _e153301153322_)))
                                                (let ((_hd153319153333_
                                                       (##car _e153318153330_))
                                                      (_tl153320153335_
                                                       (##cdr _e153318153330_)))
                                                  (let ((_form153338_
                                                         _hd153319153333_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form153338_
                                                         gx#special-form-binding?)
                                                        (_lp153276_
                                                         _rest153299_
                                                         (cons _hd153300_
                                                               _body153279_))
                                                        (_E153317153326_)))))
                                              (_E153317153326_))))
                                       (_E153303153352_
                                        (lambda ()
                                          (if (gx#stx-pair? _e153301153322_)
                                              (let ((_e153314153344_
                                                     (gx#syntax-e
                                                      _e153301153322_)))
                                                (let ((_hd153315153347_
                                                       (##car _e153314153344_))
                                                      (_tl153316153349_
                                                       (##cdr _e153314153344_)))
                                                  (if (and (gx#identifier?
                                                            _hd153315153347_)
                                                           (gx#core-identifier=?
                                                            _hd153315153347_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp153276_
                                                           _rest153299_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd153300_)
                         _body153279_))
                  (_E153313153340_))
              (_E153313153340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153313153340_))))
                                       (_E153302153384_
                                        (lambda ()
                                          (if (gx#stx-pair? _e153301153322_)
                                              (let ((_e153304153356_
                                                     (gx#syntax-e
                                                      _e153301153322_)))
                                                (let ((_hd153305153359_
                                                       (##car _e153304153356_))
                                                      (_tl153306153361_
                                                       (##cdr _e153304153356_)))
                                                  (if (and (gx#identifier?
                                                            _hd153305153359_)
                                                           (gx#core-identifier=?
                                                            _hd153305153359_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl153306153361_)
                                                          (let ((_e153307153364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl153306153361_)))
                    (let ((_hd153308153367_ (##car _e153307153364_))
                          (_tl153309153369_ (##cdr _e153307153364_)))
                      (let ((_hd-bind153372_ _hd153308153367_))
                        (if (gx#stx-pair? _tl153309153369_)
                            (let ((_e153310153374_
                                   (gx#syntax-e _tl153309153369_)))
                              (let ((_hd153311153377_ (##car _e153310153374_))
                                    (_tl153312153379_ (##cdr _e153310153374_)))
                                (let ((_expr153382_ _hd153311153377_))
                                  (if (gx#stx-null? _tl153312153379_)
                                      (if '#t
                                          (_lp153276_
                                           _rest153299_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind153372_)
                                                   (gx#core-expand-expression
                                                    _expr153382_))
                                                  (gx#stx-source _hd153300_))
                                                 _body153279_))
                                          (_E153303153352_))
                                      (_E153303153352_)))))
                            (_E153303153352_)))))
                  (_E153303153352_))
              (_E153303153352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153303153352_)))))
                                  (_E153302153384_)))))
                        (if (##pair? _rest153280153288_)
                            (let ((_hd153285153391_ (##car _rest153280153288_))
                                  (_tl153286153393_
                                   (##cdr _rest153280153288_)))
                              (let* ((_hd153396_ _hd153285153391_)
                                     (_rest153398_ _tl153286153393_))
                                (_K153284153388_ _rest153398_ _hd153396_)))
                            (_else153282153296_)))))))
          (_expand-body153272_
           (gx#core-expand-block__%
            (cons '%#begin-module _body153269_)
            _expand-special153271_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx153112_
               _expanded?153113_
               _method153114_
               _current-phi153115_
               _expand1153116_)
        (letrec ((_K153118_
                  (lambda (_rest153236_ _r153237_)
                    (let* ((_e153238153245_ _rest153236_)
                           (_E153240153249_ (lambda () _r153237_))
                           (_E153239153265_
                            (lambda ()
                              (if (gx#stx-pair? _e153238153245_)
                                  (let ((_e153241153253_
                                         (gx#syntax-e _e153238153245_)))
                                    (let ((_hd153242153256_
                                           (##car _e153241153253_))
                                          (_tl153243153258_
                                           (##cdr _e153241153253_)))
                                      (let* ((_hd153261_ _hd153242153256_)
                                             (_rest153263_ _tl153243153258_))
                                        (if '#t
                                            (_step153119_
                                             _hd153261_
                                             _rest153263_
                                             _r153237_)
                                            (_E153240153249_)))))
                                  (_E153240153249_)))))
                      (_E153239153265_))))
                 (_step153119_
                  (lambda (_hd153150_ _rest153151_ _r153152_)
                    (let* ((_e153153153171_ _hd153150_)
                           (_E153166153175_
                            (lambda ()
                              (if (_expanded?153113_ (gx#stx-e _hd153150_))
                                  (_K153118_
                                   _rest153151_
                                   (cons (gx#stx-e _hd153150_) _r153152_))
                                  (_expand1153116_
                                   _hd153150_
                                   _K153118_
                                   _rest153151_
                                   _r153152_))))
                           (_E153162153191_
                            (lambda ()
                              (if (gx#stx-pair? _e153153153171_)
                                  (let ((_e153167153179_
                                         (gx#syntax-e _e153153153171_)))
                                    (let ((_hd153168153182_
                                           (##car _e153167153179_))
                                          (_tl153169153184_
                                           (##cdr _e153167153179_)))
                                      (let* ((_macro153187_ _hd153168153182_)
                                             (_body153189_ _tl153169153184_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro153187_
                                             gx#syntax-binding?)
                                            (_K153118_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro153187_)
                                                    _hd153150_
                                                    _method153114_)
                                                   _rest153151_)
                                             _r153152_)
                                            (_E153166153175_)))))
                                  (_E153166153175_))))
                           (_E153155153205_
                            (lambda ()
                              (if (gx#stx-pair? _e153153153171_)
                                  (let ((_e153163153195_
                                         (gx#syntax-e _e153153153171_)))
                                    (let ((_hd153164153198_
                                           (##car _e153163153195_))
                                          (_tl153165153200_
                                           (##cdr _e153163153195_)))
                                      (if (eq? (gx#stx-e _hd153164153198_)
                                               'begin:)
                                          (let ((_body153203_
                                                 _tl153165153200_))
                                            (if '#t
                                                (_K153118_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest153151_
                                                  _body153203_)
                                                 _r153152_)
                                                (_E153162153191_)))
                                          (_E153162153191_))))
                                  (_E153162153191_))))
                           (_E153154153232_
                            (lambda ()
                              (if (gx#stx-pair? _e153153153171_)
                                  (let ((_e153156153209_
                                         (gx#syntax-e _e153153153171_)))
                                    (let ((_hd153157153212_
                                           (##car _e153156153209_))
                                          (_tl153158153214_
                                           (##cdr _e153156153209_)))
                                      (if (eq? (gx#stx-e _hd153157153212_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl153158153214_)
                                              (let ((_e153159153217_
                                                     (gx#syntax-e
                                                      _tl153158153214_)))
                                                (let ((_hd153160153220_
                                                       (##car _e153159153217_))
                                                      (_tl153161153222_
                                                       (##cdr _e153159153217_)))
                                                  (let* ((_dphi153225_
                                                          _hd153160153220_)
                                                         (_body153227_
                                                          _tl153161153222_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi153225_)
                                                        (let ((_rbody153230_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K153118_ _body153227_ '()))
                        _current-phi153115_
                        (fx+ (gx#stx-e _dphi153225_) (_current-phi153115_)))))
                  (_K153118_
                   _rest153151_
                   (foldr1 cons _r153152_ _rbody153230_)))
                (_E153155153205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153155153205_))
                                          (_E153155153205_))))
                                  (_E153155153205_)))))
                      (_E153154153232_)))))
          (let* ((_e153120153127_ _stx153112_)
                 (_E153122153131_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153120153127_)))
                 (_E153121153146_
                  (lambda ()
                    (if (gx#stx-pair? _e153120153127_)
                        (let ((_e153123153135_ (gx#syntax-e _e153120153127_)))
                          (let ((_hd153124153138_ (##car _e153123153135_))
                                (_tl153125153140_ (##cdr _e153123153135_)))
                            (let ((_body153143_ _tl153125153140_))
                              (if '#t
                                  (if (_current-phi153115_)
                                      (_K153118_ _body153143_ '())
                                      (call-with-parameters
                                       (lambda () (_K153118_ _body153143_ '()))
                                       _current-phi153115_
                                       (gx#current-expander-phi)))
                                  (_E153122153131_)))))
                        (_E153122153131_)))))
            (_E153121153146_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx152779_ _internal-expand?152780_)
        (letrec ((_expand1152782_
                  (lambda (_hd153092_ _K153093_ _rest153094_ _r153095_)
                    (if (gx#core-bound-module? _hd153092_)
                        (_import1152783_
                         (gx#syntax-local-e__0 _hd153092_)
                         _K153093_
                         _rest153094_
                         _r153095_)
                        (if (gx#core-library-module-path? _hd153092_)
                            (_import1152783_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd153092_))
                             _K153093_
                             _rest153094_
                             _r153095_)
                            (if (gx#core-library-relative-module-path?
                                 _hd153092_)
                                (_import1152783_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd153092_))
                                 _K153093_
                                 _rest153094_
                                 _r153095_)
                                (let ((_e153097_ (gx#stx-e _hd153092_)))
                                  (if (pair? _e153097_)
                                      (let ((_$e153099_
                                             (gx#stx-e (car _e153097_))))
                                        (if (eq? 'spec: _$e153099_)
                                            (_import-spec152786_
                                             _hd153092_
                                             _K153093_
                                             _rest153094_
                                             _r153095_)
                                            (if (eq? 'in: _$e153099_)
                                                (_import-submodule152784_
                                                 _hd153092_
                                                 _K153093_
                                                 _rest153094_
                                                 _r153095_)
                                                (if (eq? 'runtime: _$e153099_)
                                                    (_import-runtime152785_
                                                     _hd153092_
                                                     _K153093_
                                                     _rest153094_
                                                     _r153095_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx152779_
                                                     _hd153092_)))))
                                      (if (string? _e153097_)
                                          (_import1152783_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd153092_
                                             (gx#stx-source _stx152779_)))
                                           _K153093_
                                           _rest153094_
                                           _r153095_)
                                          (if (##structure-instance-of?
                                               _e153097_
                                               'gx#module-context::t)
                                              (_K153093_
                                               _rest153094_
                                               (cons _e153097_ _r153095_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx152779_
                                               _hd153092_))))))))))
                 (_import1152783_
                  (lambda (_ctx153081_ _K153082_ _rest153083_ _r153084_)
                    (let ((_dphi153086_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K153082_
                       _rest153083_
                       (cons (##structure
                              gx#import-set::t
                              _ctx153081_
                              _dphi153086_
                              (map (lambda (_g153087153089_)
                                     (gx#core-module-export->import__%
                                      _g153087153089_
                                      '#f
                                      _dphi153086_))
                                   (##unchecked-structure-ref
                                    _ctx153081_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r153084_)))))
                 (_import-submodule152784_
                  (lambda (_hd153048_ _K153049_ _rest153050_ _r153051_)
                    (let* ((_e153052153059_ _hd153048_)
                           (_E153054153063_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e153052153059_)))
                           (_E153053153077_
                            (lambda ()
                              (if (gx#stx-pair? _e153052153059_)
                                  (let ((_e153055153067_
                                         (gx#syntax-e _e153052153059_)))
                                    (let ((_hd153056153070_
                                           (##car _e153055153067_))
                                          (_tl153057153072_
                                           (##cdr _e153055153067_)))
                                      (let ((_spath153075_ _tl153057153072_))
                                        (if '#t
                                            (_import1152783_
                                             (_import-spec-source152787_
                                              _spath153075_)
                                             _K153049_
                                             _rest153050_
                                             _r153051_)
                                            (_E153054153063_)))))
                                  (_E153054153063_)))))
                      (_E153053153077_))))
                 (_import-runtime152785_
                  (lambda (_hd153015_ _K153016_ _rest153017_ _r153018_)
                    (let* ((_e153019153026_ _hd153015_)
                           (_E153021153030_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e153019153026_)))
                           (_E153020153044_
                            (lambda ()
                              (if (gx#stx-pair? _e153019153026_)
                                  (let ((_e153022153034_
                                         (gx#syntax-e _e153019153026_)))
                                    (let ((_hd153023153037_
                                           (##car _e153022153034_))
                                          (_tl153024153039_
                                           (##cdr _e153022153034_)))
                                      (let ((_spath153042_ _tl153024153039_))
                                        (if '#t
                                            (_K153016_
                                             _rest153017_
                                             (cons (_import-spec-source152787_
                                                    _spath153042_)
                                                   _r153018_))
                                            (_E153021153030_)))))
                                  (_E153021153030_)))))
                      (_E153020153044_))))
                 (_import-spec152786_
                  (lambda (_hd152854_ _K152855_ _rest152856_ _r152857_)
                    (let* ((_e152858152875_ _hd152854_)
                           (_E152867152879_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152858152875_)))
                           (_E152860152989_
                            (lambda ()
                              (if (gx#stx-pair? _e152858152875_)
                                  (let ((_e152868152883_
                                         (gx#syntax-e _e152858152875_)))
                                    (let ((_hd152869152886_
                                           (##car _e152868152883_))
                                          (_tl152870152888_
                                           (##cdr _e152868152883_)))
                                      (if (gx#stx-pair? _tl152870152888_)
                                          (let ((_e152871152891_
                                                 (gx#syntax-e
                                                  _tl152870152888_)))
                                            (let ((_hd152872152894_
                                                   (##car _e152871152891_))
                                                  (_tl152873152896_
                                                   (##cdr _e152871152891_)))
                                              (let* ((_path152899_
                                                      _hd152872152894_)
                                                     (_specs152901_
                                                      _tl152873152896_))
                                                (if '#t
                                                    (let ((_src-ctx152903_
                                                           (_import-spec-source152787_
                                                            _path152899_))
                                                          (_exports152904_
                                                           (make-table))
                                                          (_specs152905_
                                                           (gx#syntax->list
                                                            _specs152901_)))
                                                      (for-each
                                                       (lambda (_out152907_)
                                                         (table-set!
                                                          _exports152904_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out152907_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out152907_
                         '4
                         gx#module-export::t
                         '#f))
                  _out152907_))
               (##unchecked-structure-ref
                _src-ctx152903_
                '9
                gx#module-context::t
                '#f))
              (_K152855_
               _rest152856_
               (foldl1 (lambda (_spec152909_ _r152910_)
                         (let* ((_e152911152927_ _spec152909_)
                                (_E152913152931_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e152911152927_)))
                                (_E152912152985_
                                 (lambda ()
                                   (if (gx#stx-pair? _e152911152927_)
                                       (let ((_e152914152935_
                                              (gx#syntax-e _e152911152927_)))
                                         (let ((_hd152915152938_
                                                (##car _e152914152935_))
                                               (_tl152916152940_
                                                (##cdr _e152914152935_)))
                                           (let ((_phi152943_
                                                  _hd152915152938_))
                                             (if (gx#stx-pair?
                                                  _tl152916152940_)
                                                 (let ((_e152917152945_
                                                        (gx#syntax-e
                                                         _tl152916152940_)))
                                                   (let ((_hd152918152948_
                                                          (##car _e152917152945_))
                                                         (_tl152919152950_
                                                          (##cdr _e152917152945_)))
                                                     (let ((_name152953_
                                                            _hd152918152948_))
                                                       (if (gx#stx-pair?
                                                            _tl152919152950_)
                                                           (let ((_e152920152955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl152919152950_)))
                     (let ((_hd152921152958_ (##car _e152920152955_))
                           (_tl152922152960_ (##cdr _e152920152955_)))
                       (let ((_src-phi152963_ _hd152921152958_))
                         (if (gx#stx-pair? _tl152922152960_)
                             (let ((_e152923152965_
                                    (gx#syntax-e _tl152922152960_)))
                               (let ((_hd152924152968_ (##car _e152923152965_))
                                     (_tl152925152970_
                                      (##cdr _e152923152965_)))
                                 (let ((_src-name152973_ _hd152924152968_))
                                   (if (gx#stx-null? _tl152925152970_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi152963_)
                                                (gx#identifier?
                                                 _src-name152973_)
                                                (gx#stx-fixnum? _phi152943_)
                                                (gx#identifier? _name152953_))
                                           (let ((_src-phi152975_
                                                  (gx#stx-e _src-phi152963_))
                                                 (_src-name152976_
                                                  (gx#core-identifier-key
                                                   _src-name152973_))
                                                 (_phi152977_
                                                  (gx#stx-e _phi152943_))
                                                 (_name152978_
                                                  (gx#core-identifier-key
                                                   _name152953_)))
                                             (let ((_$e152980_
                                                    (table-ref
                                                     _exports152904_
                                                     (cons _src-phi152975_
                                                           _src-name152976_)
                                                     '#f)))
                                               (if _$e152980_
                                                   ((lambda (_out152983_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out152983_
                                                             _name152978_
                                                             (fx- _phi152977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi152975_))
                    _r152910_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e152980_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx152779_
                                                    _hd152854_))))
                                           (_E152913152931_))
                                       (_E152913152931_)))))
                             (_E152913152931_)))))
                   (_E152913152931_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E152913152931_)))))
                                       (_E152913152931_)))))
                           (_E152912152985_)))
                       _r152857_
                       _specs152905_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152867152879_)))))
                                          (_E152867152879_))))
                                  (_E152867152879_))))
                           (_E152859153011_
                            (lambda ()
                              (if (gx#stx-pair? _e152858152875_)
                                  (let ((_e152861152993_
                                         (gx#syntax-e _e152858152875_)))
                                    (let ((_hd152862152996_
                                           (##car _e152861152993_))
                                          (_tl152863152998_
                                           (##cdr _e152861152993_)))
                                      (if (gx#stx-pair? _tl152863152998_)
                                          (let ((_e152864153001_
                                                 (gx#syntax-e
                                                  _tl152863152998_)))
                                            (let ((_hd152865153004_
                                                   (##car _e152864153001_))
                                                  (_tl152866153006_
                                                   (##cdr _e152864153001_)))
                                              (let ((_path153009_
                                                     _hd152865153004_))
                                                (if (gx#stx-null?
                                                     _tl152866153006_)
                                                    (if '#t
                                                        (_K152855_
                                                         _rest152856_
                                                         (cons (_import-spec-source152787_
                                                                _path153009_)
                                                               _r152857_))
                                                        (_E152860152989_))
                                                    (_E152860152989_)))))
                                          (_E152860152989_))))
                                  (_E152860152989_)))))
                      (_E152859153011_))))
                 (_import-spec-source152787_
                  (lambda (_spath152852_)
                    (gx#core-import-nested-module _spath152852_ _stx152779_)))
                 (_import!152788_
                  (lambda (_rbody152801_)
                    (letrec* ((_current-ctx152803_
                               (gx#current-expander-context))
                              (_deps152804_ (make-table 'test: eq?))
                              (_bind!152805_
                               (lambda (_hd152850_)
                                 (gx#core-bind-import!__1
                                  _hd152850_
                                  _current-ctx152803_))))
                      (let _lp152807_ ((_rest152809_ _rbody152801_)
                                       (_body152810_ '()))
                        (let* ((_rest152811152819_ _rest152809_)
                               (_else152813152829_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx152803_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx152803_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx152803_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body152810_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx152827_ _g159846_)
                                     (gx#eval-module _ctx152827_))
                                   _deps152804_)
                                  _body152810_))
                               (_K152815152838_
                                (lambda (_rest152832_ _hd152833_)
                                  (if (##structure-direct-instance-of?
                                       _hd152833_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!152805_ _hd152833_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd152833_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd152833_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps152804_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd152833_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd152833_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!152805_
                                             (##unchecked-structure-ref
                                              _hd152833_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd152833_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps152804_
                                                 (##unchecked-structure-ref
                                                  _hd152833_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e152835_
                                                 (##structure-instance-of?
                                                  _hd152833_
                                                  'gx#module-context::t)))
                                            (if _$e152835_
                                                _$e152835_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx152779_
                                                 _hd152833_)))))
                                  (_lp152807_
                                   _rest152832_
                                   (cons _hd152833_ _body152810_)))))
                          (if (##pair? _rest152811152819_)
                              (let ((_hd152816152841_
                                     (##car _rest152811152819_))
                                    (_tl152817152843_
                                     (##cdr _rest152811152819_)))
                                (let* ((_hd152846_ _hd152816152841_)
                                       (_rest152848_ _tl152817152843_))
                                  (_K152815152838_ _rest152848_ _hd152846_)))
                              (_else152813152829_)))))))
                 (_expanded-import?152789_
                  (lambda (_e152793_)
                    (let ((_$e152795_
                           (##structure-direct-instance-of?
                            _e152793_
                            'gx#import-set::t)))
                      (if _$e152795_
                          _$e152795_
                          (let ((_$e152798_
                                 (##structure-direct-instance-of?
                                  _e152793_
                                  'gx#module-import::t)))
                            (if _$e152798_
                                _$e152798_
                                (##structure-instance-of?
                                 _e152793_
                                 'gx#module-context::t))))))))
          (let ((_rbody152791_
                 (gx#core-expand-import/export
                  _stx152779_
                  _expanded-import?152789_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1152782_)))
            (if _internal-expand?152780_
                (reverse _rbody152791_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!152788_ _rbody152791_))
                 (gx#stx-source _stx152779_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx153105_)
        (let ((_internal-expand?153107_ '#f))
          (gx#core-expand-import%__% _stx153105_ _internal-expand?153107_))))
    (define gx#core-expand-import%
      (lambda _g159848_
        (let ((_g159847_ (##length _g159848_)))
          (cond ((##fx= _g159847_ 1)
                 (apply (lambda (_stx153105_)
                          (gx#core-expand-import%__0 _stx153105_))
                        _g159848_))
                ((##fx= _g159847_ 2)
                 (apply (lambda (_stx153109_ _internal-expand?153110_)
                          (gx#core-expand-import%__%
                           _stx153109_
                           _internal-expand?153110_))
                        _g159848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g159848_))))))
    (define gx#core-import-nested-module
      (lambda (_spath152706_ _where152707_)
        (let* ((_e152708152715_ _spath152706_)
               (_E152710152719_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152708152715_)))
               (_E152709152774_
                (lambda ()
                  (if (gx#stx-pair? _e152708152715_)
                      (let ((_e152711152723_ (gx#syntax-e _e152708152715_)))
                        (let ((_hd152712152726_ (##car _e152711152723_))
                              (_tl152713152728_ (##cdr _e152711152723_)))
                          (let* ((_origin152731_ _hd152712152726_)
                                 (_sub152733_ _tl152713152728_))
                            (if '#t
                                (let ((_origin-ctx152735_
                                       (if (gx#stx-false? _origin152731_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin152731_))))
                                  (let _lp152737_ ((_rest152739_ _sub152733_)
                                                   (_ctx152740_
                                                    _origin-ctx152735_))
                                    (let* ((_e152741152748_ _rest152739_)
                                           (_E152743152752_
                                            (lambda () _ctx152740_))
                                           (_E152742152770_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e152741152748_)
                                                  (let ((_e152744152756_
                                                         (gx#syntax-e
                                                          _e152741152748_)))
                                                    (let ((_hd152745152759_
                                                           (##car _e152744152756_))
                                                          (_tl152746152761_
                                                           (##cdr _e152744152756_)))
                                                      (let* ((_id152764_
                                                              _hd152745152759_)
                                                             (_rest152766_
                                                              _tl152746152761_))
                                                        (if '#t
                                                            (let ((_bind152768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id152764_
                            '0
                            _ctx152740_)))
                      (if (and (##structure-direct-instance-of?
                                _bind152768_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind152768_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where152707_
                           _spath152706_
                           _id152764_))
                      (_lp152737_
                       _rest152766_
                       (##unchecked-structure-ref
                        _bind152768_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E152743152752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152743152752_)))))
                                      (_E152742152770_))))
                                (_E152710152719_)))))
                      (_E152710152719_)))))
          (_E152709152774_))))
    (define gx#core-expand-import-source
      (lambda (_hd152704_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd152704_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx152212_ _internal-expand?152213_)
        (letrec* ((_make-export__159777159778_
                   (lambda (_bind152652_ _phi152653_ _ctx152654_ _name152655_)
                     (let* ((_key152657_
                             (##unchecked-structure-ref
                              _bind152652_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key152659_
                             (if _name152655_
                                 (gx#core-identifier-key _name152655_)
                                 _key152657_)))
                       (##structure
                        gx#module-export::t
                        _ctx152654_
                        _key152657_
                        _phi152653_
                        _export-key152659_
                        (let ((_$e152662_
                               (##structure-instance-of?
                                _bind152652_
                                'gx#extern-binding::t)))
                          (if _$e152662_
                              _$e152662_
                              (##structure-direct-instance-of?
                               _bind152652_
                               'gx#import-binding::t)))))))
                  (_make-export__0__159779159782_
                   (lambda (_bind152668_)
                     (let* ((_phi152670_ (gx#current-export-expander-phi))
                            (_ctx152672_ (gx#current-expander-context))
                            (_name152674_ '#f))
                       (_make-export__159777159778_
                        _bind152668_
                        _phi152670_
                        _ctx152672_
                        _name152674_))))
                  (_make-export__1__159780159783_
                   (lambda (_bind152676_ _phi152677_)
                     (let* ((_ctx152679_ (gx#current-expander-context))
                            (_name152681_ '#f))
                       (_make-export__159777159778_
                        _bind152676_
                        _phi152677_
                        _ctx152679_
                        _name152681_))))
                  (_make-export__2__159781159784_
                   (lambda (_bind152683_ _phi152684_ _ctx152685_)
                     (let ((_name152687_ '#f))
                       (_make-export__159777159778_
                        _bind152683_
                        _phi152684_
                        _ctx152685_
                        _name152687_))))
                  (_make-export152215_
                   (lambda _g159850_
                     (let ((_g159849_ (##length _g159850_)))
                       (cond ((##fx= _g159849_ 1)
                              (apply (lambda (_bind152668_)
                                       (_make-export__0__159779159782_
                                        _bind152668_))
                                     _g159850_))
                             ((##fx= _g159849_ 2)
                              (apply (lambda (_bind152676_ _phi152677_)
                                       (_make-export__1__159780159783_
                                        _bind152676_
                                        _phi152677_))
                                     _g159850_))
                             ((##fx= _g159849_ 3)
                              (apply (lambda (_bind152683_
                                              _phi152684_
                                              _ctx152685_)
                                       (_make-export__2__159781159784_
                                        _bind152683_
                                        _phi152684_
                                        _ctx152685_))
                                     _g159850_))
                             ((##fx= _g159849_ 4)
                              (apply (lambda (_bind152689_
                                              _phi152690_
                                              _ctx152691_
                                              _name152692_)
                                       (_make-export__159777159778_
                                        _bind152689_
                                        _phi152690_
                                        _ctx152691_
                                        _name152692_))
                                     _g159850_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g159850_))))))
                  (_expand1152216_
                   (lambda (_hd152365_ _K152366_ _rest152367_ _r152368_)
                     (let* ((_e152369152401_ _hd152365_)
                            (_E152396152405_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx152212_
                                _hd152365_)))
                            (_E152386152484_
                             (lambda ()
                               (if (gx#stx-pair? _e152369152401_)
                                   (let ((_e152397152409_
                                          (gx#syntax-e _e152369152401_)))
                                     (let ((_hd152398152412_
                                            (##car _e152397152409_))
                                           (_tl152399152414_
                                            (##cdr _e152397152409_)))
                                       (if (eq? (gx#stx-e _hd152398152412_)
                                                'import:)
                                           (let ((_in152417_ _tl152399152414_))
                                             (if (gx#stx-list? _in152417_)
                                                 (let _lp152419_ ((_in-rest152421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in152417_)
                          (_r152422_ _r152368_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e152423152430_
                                                           _in-rest152421_)
                                                          (_E152425152434_
                                                           (lambda ()
                                                             (_K152366_
                                                              _rest152367_
                                                              _r152422_)))
                                                          (_E152424152480_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e152423152430_)
                         (let ((_e152426152438_ (gx#syntax-e _e152423152430_)))
                           (let ((_hd152427152441_ (##car _e152426152438_))
                                 (_tl152428152443_ (##cdr _e152426152438_)))
                             (let* ((_hd152446_ _hd152427152441_)
                                    (_in-rest152448_ _tl152428152443_))
                               (if '#t
                                   (let ((_src152478_
                                          (if (gx#core-bound-module?
                                               _hd152446_)
                                              (gx#syntax-local-e__0 _hd152446_)
                                              (if (gx#core-library-module-path?
                                                   _hd152446_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd152446_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd152446_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd152446_))
                                                      (if (gx#stx-string?
                                                           _hd152446_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd152446_
                                                            (gx#stx-source
                                                             _stx152212_)))
                                                          (let* ((_e152449152456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd152446_)
                         (_E152451152460_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx152212_
                             _hd152446_)))
                         (_E152450152474_
                          (lambda ()
                            (if (gx#stx-pair? _e152449152456_)
                                (let ((_e152452152464_
                                       (gx#syntax-e _e152449152456_)))
                                  (let ((_hd152453152467_
                                         (##car _e152452152464_))
                                        (_tl152454152469_
                                         (##cdr _e152452152464_)))
                                    (if (eq? (gx#stx-e _hd152453152467_) 'in:)
                                        (let ((_spath152472_ _tl152454152469_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath152472_
                                               _stx152212_)
                                              (_E152451152460_)))
                                        (_E152451152460_))))
                                (_E152451152460_)))))
                    (_E152450152474_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp152419_
                                      _in-rest152448_
                                      (_export-imports152217_
                                       _src152478_
                                       _r152422_)))
                                   (_E152425152434_)))))
                         (_E152425152434_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152424152480_)))
                                                 (_E152396152405_)))
                                           (_E152396152405_))))
                                   (_E152396152405_))))
                            (_E152373152523_
                             (lambda ()
                               (if (gx#stx-pair? _e152369152401_)
                                   (let ((_e152387152488_
                                          (gx#syntax-e _e152369152401_)))
                                     (let ((_hd152388152491_
                                            (##car _e152387152488_))
                                           (_tl152389152493_
                                            (##cdr _e152387152488_)))
                                       (if (eq? (gx#stx-e _hd152388152491_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl152389152493_)
                                               (let ((_e152390152496_
                                                      (gx#syntax-e
                                                       _tl152389152493_)))
                                                 (let ((_hd152391152499_
                                                        (##car _e152390152496_))
                                                       (_tl152392152501_
                                                        (##cdr _e152390152496_)))
                                                   (let ((_id152504_
                                                          _hd152391152499_))
                                                     (if (gx#stx-pair?
                                                          _tl152392152501_)
                                                         (let ((_e152393152506_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl152392152501_)))
                   (let ((_hd152394152509_ (##car _e152393152506_))
                         (_tl152395152511_ (##cdr _e152393152506_)))
                     (let ((_name152514_ _hd152394152509_))
                       (if (gx#stx-null? _tl152395152511_)
                           (if '#t
                               (let* ((_phi152516_
                                       (gx#current-export-expander-phi))
                                      (_$e152518_
                                       (gx#core-resolve-identifier__1
                                        _id152504_
                                        _phi152516_)))
                                 (if _$e152518_
                                     ((lambda (_bind152521_)
                                        (_K152366_
                                         _rest152367_
                                         (cons (_make-export__159777159778_
                                                _bind152521_
                                                _phi152516_
                                                (gx#current-expander-context)
                                                _name152514_)
                                               _r152368_)))
                                      _$e152518_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx152212_
                                      _hd152365_
                                      _id152504_)))
                               (_E152386152484_))
                           (_E152386152484_)))))
                 (_E152386152484_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E152386152484_))
                                           (_E152386152484_))))
                                   (_E152386152484_))))
                            (_E152372152572_
                             (lambda ()
                               (if (gx#stx-pair? _e152369152401_)
                                   (let ((_e152374152527_
                                          (gx#syntax-e _e152369152401_)))
                                     (let ((_hd152375152530_
                                            (##car _e152374152527_))
                                           (_tl152376152532_
                                            (##cdr _e152374152527_)))
                                       (if (eq? (gx#stx-e _hd152375152530_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl152376152532_)
                                               (let ((_e152377152535_
                                                      (gx#syntax-e
                                                       _tl152376152532_)))
                                                 (let ((_hd152378152538_
                                                        (##car _e152377152535_))
                                                       (_tl152379152540_
                                                        (##cdr _e152377152535_)))
                                                   (let ((_phi152543_
                                                          _hd152378152538_))
                                                     (if (gx#stx-pair?
                                                          _tl152379152540_)
                                                         (let ((_e152380152545_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl152379152540_)))
                   (let ((_hd152381152548_ (##car _e152380152545_))
                         (_tl152382152550_ (##cdr _e152380152545_)))
                     (let ((_id152553_ _hd152381152548_))
                       (if (gx#stx-pair? _tl152382152550_)
                           (let ((_e152383152555_
                                  (gx#syntax-e _tl152382152550_)))
                             (let ((_hd152384152558_ (##car _e152383152555_))
                                   (_tl152385152560_ (##cdr _e152383152555_)))
                               (let ((_name152563_ _hd152384152558_))
                                 (if (gx#stx-null? _tl152385152560_)
                                     (if (and (gx#stx-fixnum? _phi152543_)
                                              (gx#identifier? _id152553_)
                                              (gx#identifier? _name152563_))
                                         (let* ((_phi152565_
                                                 (gx#stx-e _phi152543_))
                                                (_$e152567_
                                                 (gx#core-resolve-identifier__1
                                                  _id152553_
                                                  _phi152565_)))
                                           (if _$e152567_
                                               ((lambda (_bind152570_)
                                                  (_K152366_
                                                   _rest152367_
                                                   (cons (_make-export__159777159778_
                                                          _bind152570_
                                                          _phi152565_
                                                          (gx#current-expander-context)
                                                          _name152563_)
                                                         _r152368_)))
                                                _$e152567_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx152212_
                                                _hd152365_
                                                _id152553_)))
                                         (_E152373152523_))
                                     (_E152373152523_)))))
                           (_E152373152523_)))))
                 (_E152373152523_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E152373152523_))
                                           (_E152373152523_))))
                                   (_E152373152523_))))
                            (_E152371152583_
                             (lambda ()
                               (let ((_id152576_ _e152369152401_))
                                 (if (gx#identifier? _id152576_)
                                     (let ((_$e152578_
                                            (gx#core-resolve-identifier__1
                                             _id152576_
                                             (gx#current-export-expander-phi))))
                                       (if _$e152578_
                                           ((lambda (_bind152581_)
                                              (_K152366_
                                               _rest152367_
                                               (cons (_make-export__0__159779159782_
                                                      _bind152581_)
                                                     _r152368_)))
                                            _$e152578_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx152212_
                                            _hd152365_)))
                                     (_E152372152572_)))))
                            (_E152370152647_
                             (lambda ()
                               (if (eq? (gx#stx-e _e152369152401_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx152587_
                                               (gx#current-expander-context))
                                              (_current-phi152589_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx152591_
                                               (gx#core-context-shift
                                                _current-ctx152587_
                                                _current-phi152589_))
                                              (_phi-bind152593_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx152591_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp152596_ ((_bind-rest152598_
                                                           _phi-bind152593_)
                                                          (_set152599_ '()))
                                           (let* ((_bind-rest152600152610_
                                                   _bind-rest152598_)
                                                  (_else152602152618_
                                                   (lambda ()
                                                     (_K152366_
                                                      _rest152367_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi152589_
                                                             _set152599_)
                                                            _r152368_))))
                                                  (_K152604152628_
                                                   (lambda (_bind-rest152621_
                                                            _bind152622_
                                                            _key152623_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind152622_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind152622_))
                                                         (_lp152596_
                                                          _bind-rest152621_
                                                          _set152599_)
                                                         (_lp152596_
                                                          _bind-rest152621_
                                                          (cons (_make-export__2__159781159784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind152622_
                         _current-phi152589_
                         _current-ctx152587_)
                        _set152599_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest152600152610_)
                                                 (let ((_hd152605152631_
                                                        (##car _bind-rest152600152610_))
                                                       (_tl152606152633_
                                                        (##cdr _bind-rest152600152610_)))
                                                   (if (##pair? _hd152605152631_)
                                                       (let ((_hd152607152636_
                                                              (##car _hd152605152631_))
                                                             (_tl152608152638_
                                                              (##cdr _hd152605152631_)))
                                                         (let* ((_key152641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd152607152636_)
                        (_bind152643_ _tl152608152638_)
                        (_bind-rest152645_ _tl152606152633_))
                   (_K152604152628_
                    _bind-rest152645_
                    _bind152643_
                    _key152641_)))
               (_else152602152618_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else152602152618_)))))
                                       (_E152371152583_))
                                   (_E152371152583_)))))
                       (_E152370152647_))))
                  (_export-imports152217_
                   (lambda (_src152241_ _r152242_)
                     (letrec* ((_current-ctx152244_
                                (gx#current-expander-context))
                               (_current-phi152245_
                                (gx#current-export-expander-phi))
                               (_import->export152246_
                                (lambda (_in152327_)
                                  (let* ((_in152328152336_ _in152327_)
                                         (_E152330152340_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in152328152336_)))
                                         (_K152331152347_
                                          (lambda (_phi152343_
                                                   _key152344_
                                                   _out152345_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx152244_
                                             _key152344_
                                             _phi152343_
                                             _key152344_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in152328152336_
                                         'gx#module-import::t)
                                        (let* ((_e152332152350_
                                                (##unchecked-structure-ref
                                                 _in152328152336_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out152353_ _e152332152350_)
                                               (_e152333152355_
                                                (##unchecked-structure-ref
                                                 _in152328152336_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key152358_ _e152333152355_)
                                               (_e152334152360_
                                                (##unchecked-structure-ref
                                                 _in152328152336_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi152363_ _e152334152360_))
                                          (_K152331152347_
                                           _phi152363_
                                           _key152358_
                                           _out152353_))
                                        (_E152330152340_)))))
                               (_fold-e152247_
                                (lambda (_in152249_ _r152250_)
                                  (let* ((_in152251152265_ _in152249_)
                                         (_else152254152273_
                                          (lambda () _r152250_)))
                                    (let ((_K152260152309_
                                           (lambda (_phi152305_
                                                    _key152306_
                                                    _out152307_)
                                             (if (and (fx= _phi152305_
                                                           _current-phi152245_)
                                                      (eq? _src152241_
                                                           (##unchecked-structure-ref
                                                            _out152307_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export152246_
                                                        _in152249_)
                                                       _r152250_)
                                                 _r152250_)))
                                          (_K152256152284_
                                           (lambda (_imports152277_
                                                    _phi152278_
                                                    _ctx152279_)
                                             (if (and (fx= _phi152278_
                                                           _current-phi152245_)
                                                      (eq? _src152241_
                                                           _ctx152279_))
                                                 (foldl1 (lambda (_in152281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r152282_)
                   (cons (_import->export152246_ _in152281_) _r152282_))
                 _r152250_
                 _imports152277_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r152250_))))
                                      (let ((_try-match152253152302_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in152251152265_
                                                    'gx#import-set::t)
                                                   (let* ((_e152257152287_
                                                           (##unchecked-structure-ref
                                                            _in152251152265_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e152258152292_
                                                           (##unchecked-structure-ref
                                                            _in152251152265_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e152259152297_
                                                           (##unchecked-structure-ref
                                                            _in152251152265_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx152290_
                                                            _e152257152287_)
                                                           (_phi152295_
                                                            _e152258152292_)
                                                           (_imports152300_
                                                            _e152259152297_))
                                                       (_K152256152284_
                                                        _imports152300_
                                                        _phi152295_
                                                        _ctx152290_)))
                                                   (_else152254152273_)))))
                                        (if (##structure-direct-instance-of?
                                             _in152251152265_
                                             'gx#module-import::t)
                                            (let* ((_e152261152312_
                                                    (##unchecked-structure-ref
                                                     _in152251152265_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e152262152317_
                                                    (##unchecked-structure-ref
                                                     _in152251152265_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e152263152322_
                                                    (##unchecked-structure-ref
                                                     _in152251152265_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out152315_
                                                     _e152261152312_)
                                                    (_key152320_
                                                     _e152262152317_)
                                                    (_phi152325_
                                                     _e152263152322_))
                                                (_K152260152309_
                                                 _phi152325_
                                                 _key152320_
                                                 _out152315_)))
                                            (_try-match152253152302_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src152241_
                              _current-phi152245_
                              (foldl1 _fold-e152247_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx152244_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r152242_))))
                  (_export!152218_
                   (lambda (_rbody152231_)
                     (letrec* ((_current-ctx152233_
                                (gx#current-expander-context))
                               (_fold-e152234_
                                (lambda (_out152238_ _r152239_)
                                  (if (##structure-direct-instance-of?
                                       _out152238_
                                       'gx#module-export::t)
                                      (cons _out152238_ _r152239_)
                                      (if (##structure-direct-instance-of?
                                           _out152238_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r152239_
                                                  (##unchecked-structure-ref
                                                   _out152238_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r152239_)))))
                       (let ((_body152236_ (reverse _rbody152231_)))
                         (##unchecked-structure-set!
                          _current-ctx152233_
                          (foldl1 _fold-e152234_
                                  (##unchecked-structure-ref
                                   _current-ctx152233_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body152236_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body152236_))))
                  (_expanded-export?152219_
                   (lambda (_e152226_)
                     (let ((_$e152228_
                            (##structure-direct-instance-of?
                             _e152226_
                             'gx#module-export::t)))
                       (if _$e152228_
                           _$e152228_
                           (##structure-direct-instance-of?
                            _e152226_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?152213_)
              (let ((_rbody152224_
                     (gx#core-expand-import/export
                      _stx152212_
                      _expanded-export?152219_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1152216_)))
                (if _internal-expand?152213_
                    (reverse _rbody152224_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!152218_ _rbody152224_))
                     (gx#stx-source _stx152212_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx152212_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx152212_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx152697_)
        (let ((_internal-expand?152699_ '#f))
          (gx#core-expand-export%__% _stx152697_ _internal-expand?152699_))))
    (define gx#core-expand-export%
      (lambda _g159852_
        (let ((_g159851_ (##length _g159852_)))
          (cond ((##fx= _g159851_ 1)
                 (apply (lambda (_stx152697_)
                          (gx#core-expand-export%__0 _stx152697_))
                        _g159852_))
                ((##fx= _g159851_ 2)
                 (apply (lambda (_stx152701_ _internal-expand?152702_)
                          (gx#core-expand-export%__%
                           _stx152701_
                           _internal-expand?152702_))
                        _g159852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g159852_))))))
    (define gx#core-expand-export-source
      (lambda (_hd152209_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd152209_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx152179_)
        (let* ((_e152180152187_ _stx152179_)
               (_E152182152191_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152180152187_)))
               (_E152181152205_
                (lambda ()
                  (if (gx#stx-pair? _e152180152187_)
                      (let ((_e152183152195_ (gx#syntax-e _e152180152187_)))
                        (let ((_hd152184152198_ (##car _e152183152195_))
                              (_tl152185152200_ (##cdr _e152183152195_)))
                          (let ((_body152203_ _tl152185152200_))
                            (if (gx#identifier-list? _body152203_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body152203_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body152203_))
                                   (gx#stx-source _stx152179_)))
                                (_E152182152191_)))))
                      (_E152182152191_)))))
          (_E152181152205_))))
    (define gx#core-bind-feature!__%
      (lambda (_id152145_ _private?152146_ _phi152147_ _ctx152148_)
        (gx#core-bind-syntax!__%
         _id152145_
         ((if _private?152146_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id152145_))
         _private?152146_
         _phi152147_
         _ctx152148_)))
    (define gx#core-bind-feature!__0
      (lambda (_id152153_)
        (let* ((_private?152155_ '#f)
               (_phi152157_ (gx#current-expander-phi))
               (_ctx152159_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id152153_
           _private?152155_
           _phi152157_
           _ctx152159_))))
    (define gx#core-bind-feature!__1
      (lambda (_id152161_ _private?152162_)
        (let* ((_phi152164_ (gx#current-expander-phi))
               (_ctx152166_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id152161_
           _private?152162_
           _phi152164_
           _ctx152166_))))
    (define gx#core-bind-feature!__2
      (lambda (_id152168_ _private?152169_ _phi152170_)
        (let ((_ctx152172_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id152168_
           _private?152169_
           _phi152170_
           _ctx152172_))))
    (define gx#core-bind-feature!
      (lambda _g159854_
        (let ((_g159853_ (##length _g159854_)))
          (cond ((##fx= _g159853_ 1)
                 (apply (lambda (_id152153_)
                          (gx#core-bind-feature!__0 _id152153_))
                        _g159854_))
                ((##fx= _g159853_ 2)
                 (apply (lambda (_id152161_ _private?152162_)
                          (gx#core-bind-feature!__1
                           _id152161_
                           _private?152162_))
                        _g159854_))
                ((##fx= _g159853_ 3)
                 (apply (lambda (_id152168_ _private?152169_ _phi152170_)
                          (gx#core-bind-feature!__2
                           _id152168_
                           _private?152169_
                           _phi152170_))
                        _g159854_))
                ((##fx= _g159853_ 4)
                 (apply (lambda (_id152174_
                                 _private?152175_
                                 _phi152176_
                                 _ctx152177_)
                          (gx#core-bind-feature!__%
                           _id152174_
                           _private?152175_
                           _phi152176_
                           _ctx152177_))
                        _g159854_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g159854_))))))))
