(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#module-import::t
    (make-struct-type
     'gx#module-import::t
     '#f
     '4
     'module-import
     '((final: . #t))
     '#f
     '(source name phi weak?)))
  (define gx#module-import? (make-struct-predicate gx#module-import::t))
  (define gx#make-module-import
    (lambda _$args14468_
      (apply make-struct-instance gx#module-import::t _$args14468_)))
  (define gx#module-import-source
    (make-struct-field-accessor gx#module-import::t '0))
  (define gx#module-import-name
    (make-struct-field-accessor gx#module-import::t '1))
  (define gx#module-import-phi
    (make-struct-field-accessor gx#module-import::t '2))
  (define gx#module-import-weak?
    (make-struct-field-accessor gx#module-import::t '3))
  (define gx#module-import-source-set!
    (make-struct-field-mutator gx#module-import::t '0))
  (define gx#module-import-name-set!
    (make-struct-field-mutator gx#module-import::t '1))
  (define gx#module-import-phi-set!
    (make-struct-field-mutator gx#module-import::t '2))
  (define gx#module-import-weak?-set!
    (make-struct-field-mutator gx#module-import::t '3))
  (define gx#module-export::t
    (make-struct-type
     'gx#module-export::t
     '#f
     '5
     'module-export
     '((final: . #t))
     '#f
     '(context key phi name weak?)))
  (define gx#module-export? (make-struct-predicate gx#module-export::t))
  (define gx#make-module-export
    (lambda _$args14465_
      (apply make-struct-instance gx#module-export::t _$args14465_)))
  (define gx#module-export-context
    (make-struct-field-accessor gx#module-export::t '0))
  (define gx#module-export-key
    (make-struct-field-accessor gx#module-export::t '1))
  (define gx#module-export-phi
    (make-struct-field-accessor gx#module-export::t '2))
  (define gx#module-export-name
    (make-struct-field-accessor gx#module-export::t '3))
  (define gx#module-export-weak?
    (make-struct-field-accessor gx#module-export::t '4))
  (define gx#module-export-context-set!
    (make-struct-field-mutator gx#module-export::t '0))
  (define gx#module-export-key-set!
    (make-struct-field-mutator gx#module-export::t '1))
  (define gx#module-export-phi-set!
    (make-struct-field-mutator gx#module-export::t '2))
  (define gx#module-export-name-set!
    (make-struct-field-mutator gx#module-export::t '3))
  (define gx#module-export-weak?-set!
    (make-struct-field-mutator gx#module-export::t '4))
  (define gx#import-set::t
    (make-struct-type
     'gx#import-set::t
     '#f
     '3
     'import-set
     '((final: . #t))
     '#f
     '(source phi imports)))
  (define gx#import-set? (make-struct-predicate gx#import-set::t))
  (define gx#make-import-set
    (lambda _$args14462_
      (apply make-struct-instance gx#import-set::t _$args14462_)))
  (define gx#import-set-source
    (make-struct-field-accessor gx#import-set::t '0))
  (define gx#import-set-phi (make-struct-field-accessor gx#import-set::t '1))
  (define gx#import-set-imports
    (make-struct-field-accessor gx#import-set::t '2))
  (define gx#import-set-source-set!
    (make-struct-field-mutator gx#import-set::t '0))
  (define gx#import-set-phi-set!
    (make-struct-field-mutator gx#import-set::t '1))
  (define gx#import-set-imports-set!
    (make-struct-field-mutator gx#import-set::t '2))
  (define gx#export-set::t
    (make-struct-type
     'gx#export-set::t
     '#f
     '3
     'export-set
     '((final: . #t))
     '#f
     '(source phi exports)))
  (define gx#export-set? (make-struct-predicate gx#export-set::t))
  (define gx#make-export-set
    (lambda _$args14459_
      (apply make-struct-instance gx#export-set::t _$args14459_)))
  (define gx#export-set-source
    (make-struct-field-accessor gx#export-set::t '0))
  (define gx#export-set-phi (make-struct-field-accessor gx#export-set::t '1))
  (define gx#export-set-exports
    (make-struct-field-accessor gx#export-set::t '2))
  (define gx#export-set-source-set!
    (make-struct-field-mutator gx#export-set::t '0))
  (define gx#export-set-phi-set!
    (make-struct-field-mutator gx#export-set::t '1))
  (define gx#export-set-exports-set!
    (make-struct-field-mutator gx#export-set::t '2))
  (define gx#import-expander::t
    (make-class-type
     'gx#import-expander::t
     (cons gx#user-expander::t '())
     '()
     'import-expander
     '()
     ':init!))
  (define gx#import-expander? (make-class-predicate gx#import-expander::t))
  (define gx#make-import-expander
    (lambda _$args14456_
      (apply make-class-instance gx#import-expander::t _$args14456_)))
  (define gx#export-expander::t
    (make-class-type
     'gx#export-expander::t
     (cons gx#user-expander::t '())
     '()
     'export-expander
     '()
     ':init!))
  (define gx#export-expander? (make-class-predicate gx#export-expander::t))
  (define gx#make-export-expander
    (lambda _$args14453_
      (apply make-class-instance gx#export-expander::t _$args14453_)))
  (define gx#import-export-expander::t
    (make-class-type
     'gx#import-export-expander::t
     (cons gx#import-expander::t (cons gx#export-expander::t '()))
     '()
     'import-export-expander
     '()
     ':init!))
  (define gx#import-export-expander?
    (make-class-predicate gx#import-export-expander::t))
  (define gx#make-import-export-expander
    (lambda _$args14450_
      (apply make-class-instance gx#import-export-expander::t _$args14450_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self14444_ _id14445_ _super14446_ _ns14447_ _path14448_)
      (if (##fx< '11 (##vector-length _self14444_))
          (begin
            (##vector-set! _self14444_ '1 _id14445_)
            (##vector-set! _self14444_ '2 (make-hash-table-eq))
            (##vector-set! _self14444_ '3 _super14446_)
            (##vector-set! _self14444_ '4 '#f)
            (##vector-set! _self14444_ '5 '#f)
            (##vector-set! _self14444_ '6 _ns14447_)
            (##vector-set! _self14444_ '7 _path14448_)
            (##vector-set! _self14444_ '8 '())
            (##vector-set! _self14444_ '9 '())
            (##vector-set! _self14444_ '10 '#f)
            (##vector-set! _self14444_ '11 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14444_))))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__%
      (lambda (_self14288_ _ctx14289_ _root14290_)
        (let ((_super14298_
               (let ((_$e14292_ _root14290_))
                 (if _$e14292_
                     _$e14292_
                     (let ((_$e14295_ (gx#core-context-root__0)))
                       (if _$e14295_
                           _$e14295_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx14289_
              (let ((_id14301_
                     (##structure-ref
                      _ctx14289_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path14302_
                     (##structure-ref _ctx14289_ '7 gx#module-context::t '#f))
                    (_in14303_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx14289_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e14304_
                     (make-promise (lambda () (gx#eval-module _ctx14289_)))))
                (begin
                  (if (##fx< '8 (##vector-length _self14288_))
                      (begin
                        (##vector-set! _self14288_ '1 _id14301_)
                        (##vector-set! _self14288_ '2 (make-hash-table-eq))
                        (##vector-set! _self14288_ '3 _super14298_)
                        (##vector-set! _self14288_ '4 '#f)
                        (##vector-set! _self14288_ '5 '#f)
                        (##vector-set! _self14288_ '6 _path14302_)
                        (##vector-set! _self14288_ '7 _in14303_)
                        (##vector-set! _self14288_ '8 _e14304_))
                      (error '"struct-instance-init!: too many arguments for struct"
                             _self14288_))
                  (for-each
                   (lambda (_g1430514307_)
                     (gx#core-bind-weak-import!__% _g1430514307_ _self14288_))
                   _in14303_)))
              (if (##fx< '8 (##vector-length _self14288_))
                  (begin
                    (##vector-set! _self14288_ '1 '#f)
                    (##vector-set! _self14288_ '2 (make-hash-table-eq))
                    (##vector-set! _self14288_ '3 _super14298_)
                    (##vector-set! _self14288_ '4 '#f)
                    (##vector-set! _self14288_ '5 '#f)
                    (##vector-set! _self14288_ '6 '#f)
                    (##vector-set! _self14288_ '7 '())
                    (##vector-set! _self14288_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self14288_))))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self14313_ _ctx14314_)
          (let ((_root14316_ '#f))
            (gx#prelude-context:::init!__%
             _self14313_
             _ctx14314_
             _root14316_))))
      (define gx#prelude-context:::init!
        (lambda _g14484_
          (let ((_g14483_ (length _g14484_)))
            (cond ((##fx= _g14483_ 2)
                   (apply gx#prelude-context:::init!__0 _g14484_))
                  ((##fx= _g14483_ 3)
                   (apply gx#prelude-context:::init!__% _g14484_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g14484_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-export-expander-init!
    (lambda (_self14162_ _e14163_)
      (if (##fx< '3 (##vector-length _self14162_))
          (begin
            (##vector-set! _self14162_ '1 _e14163_)
            (##vector-set! _self14162_ '2 (gx#current-expander-context))
            (##vector-set! _self14162_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14162_))))
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
    (lambda (_g1378813791_ _g1378913793_)
      (gx#core-apply-user-expander__%
       _g1378813791_
       _g1378913793_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1365913662_ _g1366013664_)
      (gx#core-apply-user-expander__%
       _g1365913662_
       _g1366013664_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx13530_)
      (let* ((_path13532_
              (##structure-ref _ctx13530_ '7 gx#module-context::t '#f))
             (_path13534_
              (if (pair? _path13532_) (last _path13532_) _path13532_)))
        (if (string? _path13534_) _path13534_ '#f))))
  (begin
    (define gx#import-module__%
      (lambda (_path13506_ _reload?13507_ _eval?13508_)
        (let ((_ctx13510_
               ((gx#current-expander-module-import)
                _path13506_
                _reload?13507_)))
          (begin
            (if (if _ctx13510_ _eval?13508_ '#f)
                (gx#eval-module _ctx13510_)
                '#!void)
            _ctx13510_))))
    (begin
      (define gx#import-module__0
        (lambda (_path13515_)
          (let* ((_reload?13517_ '#f) (_eval?13519_ '#f))
            (gx#import-module__% _path13515_ _reload?13517_ _eval?13519_))))
      (define gx#import-module__1
        (lambda (_path13521_ _reload?13522_)
          (let ((_eval?13524_ '#f))
            (gx#import-module__% _path13521_ _reload?13522_ _eval?13524_))))
      (define gx#import-module
        (lambda _g14486_
          (let ((_g14485_ (length _g14486_)))
            (cond ((##fx= _g14485_ 1) (apply gx#import-module__0 _g14486_))
                  ((##fx= _g14485_ 2) (apply gx#import-module__1 _g14486_))
                  ((##fx= _g14485_ 3) (apply gx#import-module__% _g14486_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g14486_))))))))
  (define gx#eval-module
    (lambda (_mod13503_) ((gx#current-expander-module-eval) _mod13503_)))
  (define gx#core-eval-module
    (lambda (_obj13488_)
      (letrec ((_force-e13490_
                (lambda (_getf13499_ _e13500_)
                  (call-with-parameters
                   (lambda () (force (_getf13499_ _e13500_)))
                   gx#current-expander-context
                   _e13500_
                   gx#current-expander-phi
                   '0))))
        (let _recur13492_ ((_e13494_ _obj13488_))
          (if (##structure-instance-of? _e13494_ 'gx#module-context::t)
              (begin
                (let ((_$e13496_ (gx#core-context-prelude__% _e13494_)))
                  (if _$e13496_ (_recur13492_ _$e13496_) '#!void))
                (_force-e13490_ gx#module-context-e _e13494_))
              (if (##structure-instance-of? _e13494_ 'gx#prelude-context::t)
                  (_force-e13490_ gx#prelude-context-e _e13494_)
                  (if (gx#stx-string? _e13494_)
                      (_recur13492_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e13494_)))
                      (if (gx#core-library-module-path? _e13494_)
                          (_recur13492_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e13494_)))
                          (error '"Cannot eval module" _obj13488_)))))))))
  (begin
    (define gx#core-context-prelude__%
      (lambda (_ctx13471_)
        (let _lp13473_ ((_e13475_ _ctx13471_))
          (if (let ((_$e13477_
                     (##structure-instance-of?
                      _e13475_
                      'gx#module-context::t)))
                (if _$e13477_
                    _$e13477_
                    (##structure-instance-of? _e13475_ 'gx#local-context::t)))
              (_lp13473_ (##structure-ref _e13475_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e13475_ 'gx#prelude-context::t)
                  _e13475_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx13484_ (gx#current-expander-context)))
            (gx#core-context-prelude__% _ctx13484_))))
      (define gx#core-context-prelude
        (lambda _g14488_
          (let ((_g14487_ (length _g14488_)))
            (cond ((##fx= _g14487_ 0)
                   (apply gx#core-context-prelude__0 _g14488_))
                  ((##fx= _g14487_ 1)
                   (apply gx#core-context-prelude__% _g14488_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g14488_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx13461_)
      (let* ((_ht13463_ (gx#current-expander-module-registry))
             (_$e13465_ (table-ref _ht13463_ _ctx13461_ '#f)))
        (if _$e13465_
            (values _$e13465_)
            (let ((_pre13468_
                   (let ((__obj14479 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj14479 _ctx13461_)
                       __obj14479))))
              (begin
                (table-set! _ht13463_ _ctx13461_ _pre13468_)
                _pre13468_))))))
  (begin
    (define gx#core-import-module__%
      (lambda (_rpath13342_ _reload?13343_)
        (letrec ((_import-source13345_
                  (lambda (_path13430_)
                    (begin
                      (if (member _path13430_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path13430_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g14489_ (gx#core-read-module _path13430_)))
                           (begin
                             (let ((_g14490_
                                    (if (##values? _g14489_)
                                        (##vector-length _g14489_)
                                        1)))
                               (if (not (##fx= _g14490_ 4))
                                   (error "Context expects 4 values"
                                          _g14490_)))
                             (let ((_pre13433_ (##vector-ref _g14489_ 0))
                                   (_id13434_ (##vector-ref _g14489_ 1))
                                   (_ns13435_ (##vector-ref _g14489_ 2))
                                   (_body13436_ (##vector-ref _g14489_ 3)))
                               (let* ((_prelude13441_
                                       (if (##structure-instance-of?
                                            _pre13433_
                                            'gx#prelude-context::t)
                                           _pre13433_
                                           (if (##structure-instance-of?
                                                _pre13433_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre13433_)
                                               (if (string? _pre13433_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre13433_))
                                                   (if (not _pre13433_)
                                                       (let ((_$e13438_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e13438_
                                                             _$e13438_
                                                             (let ((__obj14480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj14480 '#f)
                         __obj14480))))
               (error '"Cannot import module; unknown prelude"
                      _rpath13342_
                      _pre13433_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx13443_
                                       (let ((__obj14481
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj14481
                                            _id13434_
                                            _prelude13441_
                                            _ns13435_
                                            _path13430_)
                                           __obj14481)))
                                      (_body13445_
                                       (gx#core-expand-module-begin
                                        _body13436_
                                        _ctx13443_))
                                      (_body13447_
                                       (gx#core-quote-syntax__%
                                        (gx#core-cons '%#begin _body13445_)
                                        _path13430_
                                        _ctx13443_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx13443_
                                    (make-promise
                                     (lambda () (gx#eval-syntax* _body13447_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx13443_
                                    _body13447_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path13430_
                                    _ctx13443_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id13434_
                                    _ctx13443_)
                                   _ctx13443_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path13430_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule13346_
                  (lambda (_rpath13358_)
                    (let* ((_rpath1335913366_ _rpath13358_)
                           (_E1336113370_
                            (lambda ()
                              (error '"No clause matching" _rpath1335913366_)))
                           (_K1336213418_
                            (lambda (_refs13373_ _origin13374_)
                              (let ((_ctx13376_
                                     (if _origin13374_
                                         (gx#core-import-module__%
                                          _origin13374_
                                          _reload?13343_)
                                         (gx#current-expander-context))))
                                (let _lp13378_ ((_rest13380_ _refs13373_)
                                                (_ctx13381_ _ctx13376_))
                                  (let* ((_rest1338213390_ _rest13380_)
                                         (_E1338513394_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest1338213390_)))
                                         (_else1338413398_
                                          (lambda () _ctx13381_))
                                         (_K1338613406_
                                          (lambda (_rest13401_ _id13402_)
                                            (let ((_bind13404_
                                                   (gx#resolve-identifier__%
                                                    _id13402_
                                                    '0
                                                    _ctx13381_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind13404_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##direct-structure-ref
                                                        _bind13404_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp13378_
                                                   _rest13401_
                                                   (##direct-structure-ref
                                                    _bind13404_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath13358_
                                                         _id13402_
                                                         _bind13404_))))))
                                    (if (##pair? _rest1338213390_)
                                        (let ((_hd1338713409_
                                               (##car _rest1338213390_))
                                              (_tl1338813411_
                                               (##cdr _rest1338213390_)))
                                          (let* ((_id13414_ _hd1338713409_)
                                                 (_rest13416_ _tl1338813411_))
                                            (_K1338613406_
                                             _rest13416_
                                             _id13414_)))
                                        (_else1338413398_))))))))
                      (if (##pair? _rpath1335913366_)
                          (let ((_hd1336313421_ (##car _rpath1335913366_))
                                (_tl1336413423_ (##cdr _rpath1335913366_)))
                            (let* ((_origin13426_ _hd1336313421_)
                                   (_refs13428_ _tl1336413423_))
                              (_K1336213418_ _refs13428_ _origin13426_)))
                          (_E1336113370_))))))
          (let ((_$e13348_
                 (if (not _reload?13343_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath13342_
                      '#f)
                     '#f)))
            (if _$e13348_
                (values _$e13348_)
                (if (list? _rpath13342_)
                    (_import-submodule13346_ _rpath13342_)
                    (if (gx#core-library-module-path? _rpath13342_)
                        (let ((_ctx13351_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath13342_)
                                _reload?13343_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath13342_
                             _ctx13351_)
                            _ctx13351_))
                        (let* ((_npath13353_ (path-normalize _rpath13342_))
                               (_$e13355_
                                (if (not _reload?13343_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath13353_
                                     '#f)
                                    '#f)))
                          (if _$e13355_
                              (values _$e13355_)
                              (_import-source13345_ _npath13353_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath13454_)
          (let ((_reload?13456_ '#f))
            (gx#core-import-module__% _rpath13454_ _reload?13456_))))
      (define gx#core-import-module
        (lambda _g14492_
          (let ((_g14491_ (length _g14492_)))
            (cond ((##fx= _g14491_ 1)
                   (apply gx#core-import-module__0 _g14492_))
                  ((##fx= _g14491_ 2)
                   (apply gx#core-import-module__% _g14492_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g14492_))))))))
  (define gx#core-read-module
    (lambda (_path13336_)
      (with-exception-catcher
       (lambda (_exn13338_)
         (if (if (datum-parsing-exception? _exn13338_)
                 (eq? (datum-parsing-exception-filepos _exn13338_) '0)
                 '#f)
             (gx#core-read-module/lang _path13336_)
             (raise _exn13338_)))
       (lambda () (gx#core-read-module/sexp _path13336_)))))
  (define gx#core-read-module/sexp
    (lambda (_path13196_)
      (let _lp13198_ ((_body13200_ (read-syntax-from-file _path13196_))
                      (_pre13201_ '#f)
                      (_ns13202_ '#f)
                      (_pkg13203_ '#f))
        (let* ((_e1320413228_ _body13200_)
               (_E1322013250_
                (lambda ()
                  (let ((_g14493_
                         (if _pkg13203_
                             (values _pre13201_ _ns13202_ _pkg13203_)
                             (gx#core-read-module-package
                              _path13196_
                              _pre13201_
                              _ns13202_))))
                    (begin
                      (let ((_g14494_
                             (if (##values? _g14493_)
                                 (##vector-length _g14493_)
                                 1)))
                        (if (not (##fx= _g14494_ 3))
                            (error "Context expects 3 values" _g14494_)))
                      (let ((_pre13232_ (##vector-ref _g14493_ 0))
                            (_ns13233_ (##vector-ref _g14493_ 1))
                            (_pkg13234_ (##vector-ref _g14493_ 2)))
                        (let* ((_prelude13236_
                                (if (gx#core-bound-module-prelude? _pre13232_)
                                    (gx#syntax-local-e__0 _pre13232_)
                                    (if (gx#core-library-module-path?
                                         _pre13232_)
                                        (gx#core-resolve-library-module-path
                                         _pre13232_)
                                        (if (gx#stx-string? _pre13232_)
                                            (gx#core-resolve-module-path__%
                                             _pre13232_
                                             _path13196_)
                                            (gx#stx-e _pre13232_)))))
                               (_path-id13238_
                                (gx#core-module-path->namespace _path13196_))
                               (_pkg-id13240_
                                (if _pkg13234_
                                    (string-append
                                     _pkg13234_
                                     '"/"
                                     _path-id13238_)
                                    _path-id13238_))
                               (_module-id13242_
                                (string->symbol _pkg-id13240_))
                               (_module-ns13247_
                                (let ((_$e13244_ _ns13233_))
                                  (if _$e13244_ _$e13244_ _pkg-id13240_))))
                          (values _prelude13236_
                                  _module-id13242_
                                  _module-ns13247_
                                  _body13200_)))))))
               (_E1321313279_
                (lambda ()
                  (if (gx#stx-pair? _e1320413228_)
                      (let ((_e1322113254_ (gx#syntax-e _e1320413228_)))
                        (let ((_hd1322213257_ (##car _e1322113254_))
                              (_tl1322313259_ (##cdr _e1322113254_)))
                          (if (eq? (gx#stx-e _hd1322213257_) 'package:)
                              (if (gx#stx-pair? _tl1322313259_)
                                  (let ((_e1322413262_
                                         (gx#syntax-e _tl1322313259_)))
                                    (let ((_hd1322513265_
                                           (##car _e1322413262_))
                                          (_tl1322613267_
                                           (##cdr _e1322413262_)))
                                      (let* ((_pkg13270_ _hd1322513265_)
                                             (_rest13272_ _tl1322613267_))
                                        (if '#t
                                            (let ((_pkg13277_
                                                   (if (gx#identifier?
                                                        _pkg13270_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg13270_))
                                                       (if (let ((_$e13274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg13270_)))
                     (if _$e13274_ _$e13274_ (gx#stx-false? _pkg13270_)))
                   (gx#stx-e _pkg13270_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg13270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp13198_
                                               _rest13272_
                                               _pre13201_
                                               _ns13202_
                                               _pkg13277_))
                                            (_E1322013250_)))))
                                  (_E1322013250_))
                              (_E1322013250_))))
                      (_E1322013250_))))
               (_E1320613308_
                (lambda ()
                  (if (gx#stx-pair? _e1320413228_)
                      (let ((_e1321413283_ (gx#syntax-e _e1320413228_)))
                        (let ((_hd1321513286_ (##car _e1321413283_))
                              (_tl1321613288_ (##cdr _e1321413283_)))
                          (if (eq? (gx#stx-e _hd1321513286_) 'namespace:)
                              (if (gx#stx-pair? _tl1321613288_)
                                  (let ((_e1321713291_
                                         (gx#syntax-e _tl1321613288_)))
                                    (let ((_hd1321813294_
                                           (##car _e1321713291_))
                                          (_tl1321913296_
                                           (##cdr _e1321713291_)))
                                      (let* ((_ns13299_ _hd1321813294_)
                                             (_rest13301_ _tl1321913296_))
                                        (if '#t
                                            (let ((_ns13306_
                                                   (if (gx#identifier?
                                                        _ns13299_)
                                                       (symbol->string
                                                        (gx#stx-e _ns13299_))
                                                       (if (let ((_$e13303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns13299_)))
                     (if _$e13303_ _$e13303_ (gx#stx-false? _ns13299_)))
                   (gx#stx-e _ns13299_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns13299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp13198_
                                               _rest13301_
                                               _pre13201_
                                               _ns13306_
                                               _pkg13203_))
                                            (_E1321313279_)))))
                                  (_E1321313279_))
                              (_E1321313279_))))
                      (_E1321313279_))))
               (_E1320513332_
                (lambda ()
                  (if (gx#stx-pair? _e1320413228_)
                      (let ((_e1320713312_ (gx#syntax-e _e1320413228_)))
                        (let ((_hd1320813315_ (##car _e1320713312_))
                              (_tl1320913317_ (##cdr _e1320713312_)))
                          (if (eq? (gx#stx-e _hd1320813315_) 'prelude:)
                              (if (gx#stx-pair? _tl1320913317_)
                                  (let ((_e1321013320_
                                         (gx#syntax-e _tl1320913317_)))
                                    (let ((_hd1321113323_
                                           (##car _e1321013320_))
                                          (_tl1321213325_
                                           (##cdr _e1321013320_)))
                                      (let* ((_prelude13328_ _hd1321113323_)
                                             (_rest13330_ _tl1321213325_))
                                        (if '#t
                                            (_lp13198_
                                             _rest13330_
                                             _prelude13328_
                                             _ns13202_
                                             _pkg13203_)
                                            (_E1320613308_)))))
                                  (_E1320613308_))
                              (_E1320613308_))))
                      (_E1320613308_)))))
          (_E1320513332_)))))
  (define gx#core-read-module/lang
    (lambda (_path13023_)
      (letrec ((_default-read-module-body13025_
                (lambda (_inp13188_)
                  (let _lp13190_ ((_body13192_ '()))
                    (let ((_next13194_ (read-syntax _inp13188_)))
                      (if (eof-object? _next13194_)
                          (reverse _body13192_)
                          (_lp13190_ (cons _next13194_ _body13192_)))))))
               (_read-body13026_
                (lambda (_inp13107_
                         _pre13108_
                         _ns13109_
                         _pkg13110_
                         _args13111_)
                  (let ((_g14495_
                         (if _pkg13110_
                             (values _pre13108_ _ns13109_ _pkg13110_)
                             (gx#core-read-module-package
                              _path13023_
                              _pre13108_
                              _ns13109_))))
                    (begin
                      (let ((_g14496_
                             (if (##values? _g14495_)
                                 (##vector-length _g14495_)
                                 1)))
                        (if (not (##fx= _g14496_ 3))
                            (error "Context expects 3 values" _g14496_)))
                      (let ((_pre13113_ (##vector-ref _g14495_ 0))
                            (_ns13114_ (##vector-ref _g14495_ 1))
                            (_pkg13115_ (##vector-ref _g14495_ 2)))
                        (let* ((_prelude13117_
                                (gx#import-module__0 _pre13113_))
                               (_read-module-body13171_
                                (let ((_$e13163_
                                       (find (lambda (_e1311813120_)
                                               (let* ((_g1312213132_
                                                       _e1311813120_)
                                                      (_E1312513136_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _g1312213132_)))
                                                      (_else1312413140_
                                                       (lambda () '#f))
                                                      (_K1312613144_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1312213132_
                                                      (##type-id
                                                       gx#module-export::t))
                                                     (let* ((_e1312713147_
                                                             (##vector-ref
                                                              _g1312213132_
                                                              '1))
                                                            (_e1312813150_
                                                             (##vector-ref
                                                              _g1312213132_
                                                              '2))
                                                            (_e1312913153_
                                                             (##vector-ref
                                                              _g1312213132_
                                                              '3)))
                                                       (if (##eq? _e1312913153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1313013156_ (##vector-ref _g1312213132_ '4)))
                     (if ((lambda (_g1315813160_)
                            (eq? _g1315813160_ 'read-module-body))
                          _e1313013156_)
                         (_K1312613144_)
                         (_else1312413140_)))
                   (_else1312413140_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1312413140_))))
                                             (##structure-ref
                                              _prelude13117_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e13163_
                                      ((lambda (_xport13166_)
                                         (let ((_proc13169_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport13166_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc13169_)
                                               _proc13169_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path13023_
                                                _pre13113_
                                                _proc13169_))))
                                       _$e13163_)
                                      _default-read-module-body13025_)))
                               (_path-id13173_
                                (gx#core-module-path->namespace _path13023_))
                               (_pkg-id13175_
                                (if _pkg13115_
                                    (string-append
                                     _pkg13115_
                                     '"/"
                                     _path-id13173_)
                                    _path-id13173_))
                               (_module-id13177_
                                (string->symbol _pkg-id13175_))
                               (_module-ns13182_
                                (let ((_$e13179_ _ns13114_))
                                  (if _$e13179_ _$e13179_ _pkg-id13175_)))
                               (_body13185_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body13171_ _inp13107_))
                                 gx#current-module-reader-path
                                 _path13023_
                                 gx#current-module-reader-args
                                 _args13111_)))
                          (values _prelude13117_
                                  _module-id13177_
                                  _module-ns13182_
                                  _body13185_)))))))
               (_string-e13027_
                (lambda (_obj13104_ _what13105_)
                  (if (string? _obj13104_)
                      _obj13104_
                      (if (symbol? _obj13104_)
                          (symbol->string _obj13104_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what13105_)
                           _path13023_
                           _obj13104_)))))
               (_read-lang-args13028_
                (lambda (_inp13059_ _args13060_)
                  (let* ((_args1306113069_ _args13060_)
                         (_E1306413073_
                          (lambda ()
                            (error '"No clause matching" _args1306113069_)))
                         (_else1306313077_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path13023_)))
                         (_K1306513092_
                          (lambda (_args13080_ _prelude13081_)
                            (let* ((_pkg13083_ (pgetq 'package: _args13080_))
                                   (_pkg13085_
                                    (if _pkg13083_
                                        (_string-e13027_ _pkg13083_ '"package")
                                        '#f))
                                   (_ns13087_ (pgetq 'namespace: _args13080_))
                                   (_ns13089_
                                    (if _ns13087_
                                        (_string-e13027_
                                         _ns13087_
                                         '"namespace")
                                        '#f)))
                              (_read-body13026_
                               _inp13059_
                               _prelude13081_
                               _ns13089_
                               _pkg13085_
                               _args13080_)))))
                    (if (##pair? _args1306113069_)
                        (let ((_hd1306613095_ (##car _args1306113069_))
                              (_tl1306713097_ (##cdr _args1306113069_)))
                          (let* ((_prelude13100_ _hd1306613095_)
                                 (_args13102_ _tl1306713097_))
                            (_K1306513092_ _args13102_ _prelude13100_)))
                        (_else1306313077_)))))
               (_read-lang13029_
                (lambda (_inp13034_)
                  (let* ((_head13036_ (read-line _inp13034_))
                         (_$e13038_ (string-index _head13036_ '#\space)))
                    (if _$e13038_
                        ((lambda (_ix13041_)
                           (let ((_lang13043_
                                  (substring _head13036_ '0 _ix13041_)))
                             (if (equal? _lang13043_ '"#lang")
                                 (let* ((_rest13045_
                                         (substring
                                          _head13036_
                                          (fx+ _ix13041_ '1)
                                          (string-length _head13036_)))
                                        (_args13056_
                                         (with-exception-catcher
                                          (lambda (_g1304613048_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path13023_
                                             _g1304613048_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest13045_
                                             (lambda (_g1305113053_)
                                               (read-all
                                                _g1305113053_
                                                read)))))))
                                   (_read-lang-args13028_
                                    _inp13034_
                                    _args13056_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path13023_))))
                         _$e13038_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path13023_)))))
               (_read-e13030_
                (lambda (_inp13032_)
                  (if (eq? (peek-char _inp13032_) '#\#)
                      (_read-lang13029_ _inp13032_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path13023_)))))
        (call-with-input-file _path13023_ _read-e13030_))))
  (define gx#core-read-module-package
    (lambda (_path12977_ _pre12978_ _ns12979_)
      (letrec ((_string-e12981_
                (lambda (_e13021_)
                  (if (symbol? _e13021_)
                      (symbol->string _e13021_)
                      (if (string? _e13021_)
                          _e13021_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e13021_))))))
        (let _lp12983_ ((_dir12985_ (path-directory _path12977_))
                        (_pkg-path12986_ '()))
          (let ((_gerbil.pkg12988_ (path-expand '"gerbil.pkg" _dir12985_)))
            (if (file-exists? _gerbil.pkg12988_)
                (let ((_plist12990_
                       (gx#core-library-package-plist__% _dir12985_ '#t)))
                  (if (null? _plist12990_)
                      (let ((_pkg12992_
                             (if (not (null? _pkg-path12986_))
                                 (string-join _pkg-path12986_ '"/")
                                 '#f)))
                        (values _pre12978_ _ns12979_ _pkg12992_))
                      (if (list? _plist12990_)
                          (let* ((_root12994_ (pgetq 'package: _plist12990_))
                                 (_pkg12998_
                                  (let ((_pkg-path12996_
                                         (if _root12994_
                                             (cons (_string-e12981_
                                                    _root12994_)
                                                   _pkg-path12986_)
                                             _pkg-path12986_)))
                                    (if (not (null? _pkg-path12996_))
                                        (string-join _pkg-path12996_ '"/")
                                        '#f)))
                                 (_ns13005_
                                  (let ((_ns13003_
                                         (let ((_$e13000_ _ns12979_))
                                           (if _$e13000_
                                               _$e13000_
                                               (pgetq 'namespace:
                                                      _plist12990_)))))
                                    (if _ns13003_
                                        (_string-e12981_ _ns13003_)
                                        '#f)))
                                 (_pre13010_
                                  (let ((_$e13007_ _pre12978_))
                                    (if _$e13007_
                                        _$e13007_
                                        (pgetq 'prelude: _plist12990_)))))
                            (values _pre13010_ _ns13005_ _pkg12998_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist12990_))))
                (let ((_dir*13013_
                       (path-strip-trailing-directory-separator _dir12985_)))
                  (if (let ((_$e13015_ (string-empty? _dir*13013_)))
                        (if _$e13015_
                            _$e13015_
                            (equal? _dir12985_ _dir*13013_)))
                      (values _pre12978_ _ns12979_ '#f)
                      (let ((_xpath13018_ (path-strip-directory _dir*13013_))
                            (_xdir13019_ (path-directory _dir*13013_)))
                        (_lp12983_
                         _xdir13019_
                         (cons _xpath13018_ _pkg-path12986_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path12975_)
      (path-strip-extension (path-strip-directory _path12975_))))
  (define gx#core-module-path->id
    (lambda (_path12973_)
      (string->symbol (gx#core-module-path->namespace _path12973_))))
  (begin
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path12952_ _rel12953_)
        (let* ((_path12955_ (gx#stx-e _stx-path12952_))
               (_path12957_
                (if (string-empty? (path-extension _path12955_))
                    (string-append _path12955_ '".ss")
                    _path12955_)))
          (gx#core-resolve-path__%
           _path12957_
           (let ((_$e12960_ (gx#stx-source _stx-path12952_)))
             (if _$e12960_ _$e12960_ _rel12953_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path12966_)
          (let ((_rel12968_ '#f))
            (gx#core-resolve-module-path__% _stx-path12966_ _rel12968_))))
      (define gx#core-resolve-module-path
        (lambda _g14498_
          (let ((_g14497_ (length _g14498_)))
            (cond ((##fx= _g14497_ 1)
                   (apply gx#core-resolve-module-path__0 _g14498_))
                  ((##fx= _g14497_ 2)
                   (apply gx#core-resolve-module-path__% _g14498_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g14498_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath12879_)
      (let* ((_spath12881_ (symbol->string (gx#stx-e _libpath12879_)))
             (_spath12883_
              (substring _spath12881_ '1 (string-length _spath12881_)))
             (_ext12885_ (path-extension _spath12883_))
             (_ssi12887_
              (if (string-empty? _ext12885_)
                  (string-append _spath12883_ '".ssi")
                  (string-append (path-strip-extension _spath12883_) '".ssi")))
             (_src12889_
              (if (string-empty? _ext12885_)
                  (string-append _spath12883_ '".ss")
                  _spath12883_)))
        (let _lp12892_ ((_rest12894_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1289512904_ _rest12894_)
                 (_E1289812908_
                  (lambda () (error '"No clause matching" _rest1289512904_)))
                 (_try-match1289712916_
                  (lambda ()
                    (let ((_K1289912913_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Cannot find library module"
                              _libpath12879_))))
                      (if (##null? _rest1289512904_)
                          (_K1289912913_)
                          (_E1289812908_)))))
                 (_K1290012939_
                  (lambda (_rest12919_ _dir12920_)
                    (letrec ((_resolve12922_
                              (lambda (_ssi12932_ _src12933_)
                                (let ((_compiled-path12935_
                                       (path-expand _ssi12932_ _dir12920_)))
                                  (if (file-exists? _compiled-path12935_)
                                      (path-normalize _compiled-path12935_)
                                      (let ((_src-path12937_
                                             (path-expand
                                              _src12933_
                                              _dir12920_)))
                                        (if (file-exists? _src-path12937_)
                                            (path-normalize _src-path12937_)
                                            (_lp12892_ _rest12919_))))))))
                      (let ((_$e12924_
                             (gx#core-library-package-path-prefix _dir12920_)))
                        (if _$e12924_
                            ((lambda (_prefix12927_)
                               (if (string-prefix? _spath12883_ _prefix12927_)
                                   (let ((_ssi12929_
                                          (substring
                                           _ssi12887_
                                           (string-length _prefix12927_)
                                           (string-length _ssi12887_)))
                                         (_src12930_
                                          (substring
                                           _src12889_
                                           (string-length _prefix12927_)
                                           (string-length _src12889_))))
                                     (_resolve12922_ _ssi12929_ _src12930_))
                                   (_lp12892_ _rest12919_)))
                             _$e12924_)
                            (_resolve12922_ _ssi12887_ _src12889_)))))))
            (if (##pair? _rest1289512904_)
                (let ((_hd1290112942_ (##car _rest1289512904_))
                      (_tl1290212944_ (##cdr _rest1289512904_)))
                  (let* ((_dir12947_ _hd1290112942_)
                         (_rest12949_ _tl1290212944_))
                    (_K1290012939_ _rest12949_ _dir12947_)))
                (_try-match1289712916_)))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir12872_)
      (let ((_$e12874_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir12872_))))
        (if _$e12874_
            ((lambda (_pkg12877_)
               (string-append (symbol->string _pkg12877_) '"/"))
             _$e12874_)
            '#f))))
  (begin
    (define gx#core-library-package-plist__%
      (lambda (_dir12844_ _exists?12845_)
        (let* ((_cache12847_ (gx#core-library-package-cache))
               (_$e12849_ (table-ref _cache12847_ _dir12844_ '#f)))
          (if _$e12849_
              (values _$e12849_)
              (let* ((_gerbil.pkg12852_ (path-expand '"gerbil.pkg" _dir12844_))
                     (_plist12859_
                      (if (let ((_$e12854_ _exists?12845_))
                            (if _$e12854_
                                _$e12854_
                                (file-exists? _gerbil.pkg12852_)))
                          (let ((_e12857_
                                 (call-with-input-file
                                  _gerbil.pkg12852_
                                  read)))
                            (if (eof-object? _e12857_)
                                '()
                                (if (list? _e12857_)
                                    _e12857_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg12852_
                                     _e12857_))))
                          '())))
                (begin
                  (table-set! _cache12847_ _dir12844_ _plist12859_)
                  _plist12859_))))))
    (begin
      (define gx#core-library-package-plist__0
        (lambda (_dir12865_)
          (let ((_exists?12867_ '#f))
            (gx#core-library-package-plist__% _dir12865_ _exists?12867_))))
      (define gx#core-library-package-plist
        (lambda _g14500_
          (let ((_g14499_ (length _g14500_)))
            (cond ((##fx= _g14499_ 1)
                   (apply gx#core-library-package-plist__0 _g14500_))
                  ((##fx= _g14499_ 2)
                   (apply gx#core-library-package-plist__% _g14500_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-library-package-plist
                    _g14500_))))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e12838_ (gx#current-expander-module-library-package-cache)))
        (if _$e12838_
            (values _$e12838_)
            (let ((_cache12841_ (make-table)))
              (begin
                (gx#current-expander-module-library-package-cache _cache12841_)
                _cache12841_))))))
  (define gx#core-library-module-path?
    (lambda (_stx12835_) (gx#core-special-module-path? _stx12835_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx12830_ _char12831_)
      (if (gx#identifier? _stx12830_)
          (if (interned-symbol? (gx#stx-e _stx12830_))
              (let ((_str12833_ (symbol->string (gx#stx-e _stx12830_))))
                (if (fx> (string-length _str12833_) '1)
                    (eq? (string-ref _str12833_ '0) _char12831_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx12824_)
      (gx#core-bound-identifier?__%
       _stx12824_
       (lambda (_g1282512827_)
         (gx#expander-binding?__% _g1282512827_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx12818_)
      (gx#core-bound-identifier?__%
       _stx12818_
       (lambda (_g1281912821_)
         (gx#expander-binding?__% _g1281912821_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx12805_)
      (letrec ((_module-prelude?12807_
                (lambda (_e12813_)
                  (let ((_$e12815_
                         (##structure-instance-of?
                          _e12813_
                          'gx#module-context::t)))
                    (if _$e12815_
                        _$e12815_
                        (##structure-instance-of?
                         _e12813_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__%
         _stx12805_
         (lambda (_g1280812810_)
           (gx#expander-binding?__% _g1280812810_ _module-prelude?12807_))))))
  (begin
    (define gx#core-bind-import!__%
      (lambda (_in12735_ _ctx12736_ _force-weak?12737_)
        (let* ((_in1273812747_ _in12735_)
               (_E1274012751_
                (lambda () (error '"No clause matching" _in1273812747_)))
               (_K1274112764_
                (lambda (_weak?12754_ _phi12755_ _key12756_ _source12757_)
                  (gx#core-bind!__%
                   _key12756_
                   (let ((_e12759_
                          (gx#core-resolve-module-export _source12757_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e12759_ '1 gx#binding::t '#f)
                      _key12756_
                      _phi12755_
                      _e12759_
                      (##direct-structure-ref
                       _source12757_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e12761_ _force-weak?12737_))
                        (if _$e12761_ _$e12761_ _weak?12754_))))
                   gx#core-context-rebind?
                   _phi12755_
                   _ctx12736_))))
          (if (##structure-direct-instance-of?
               _in1273812747_
               (##type-id gx#module-import::t))
              (let* ((_e1274212767_ (##vector-ref _in1273812747_ '1))
                     (_source12770_ _e1274212767_)
                     (_e1274312772_ (##vector-ref _in1273812747_ '2))
                     (_key12775_ _e1274312772_)
                     (_e1274412777_ (##vector-ref _in1273812747_ '3))
                     (_phi12780_ _e1274412777_)
                     (_e1274512782_ (##vector-ref _in1273812747_ '4))
                     (_weak?12785_ _e1274512782_))
                (_K1274112764_
                 _weak?12785_
                 _phi12780_
                 _key12775_
                 _source12770_))
              (_E1274012751_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in12790_)
          (let* ((_ctx12792_ (gx#current-expander-context))
                 (_force-weak?12794_ '#f))
            (gx#core-bind-import!__%
             _in12790_
             _ctx12792_
             _force-weak?12794_))))
      (define gx#core-bind-import!__1
        (lambda (_in12796_ _ctx12797_)
          (let ((_force-weak?12799_ '#f))
            (gx#core-bind-import!__%
             _in12796_
             _ctx12797_
             _force-weak?12799_))))
      (define gx#core-bind-import!
        (lambda _g14502_
          (let ((_g14501_ (length _g14502_)))
            (cond ((##fx= _g14501_ 1) (apply gx#core-bind-import!__0 _g14502_))
                  ((##fx= _g14501_ 2) (apply gx#core-bind-import!__1 _g14502_))
                  ((##fx= _g14501_ 3) (apply gx#core-bind-import!__% _g14502_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g14502_))))))))
  (begin
    (define gx#core-bind-weak-import!__%
      (lambda (_in12721_ _ctx12722_)
        (gx#core-bind-import!__% _in12721_ _ctx12722_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in12727_)
          (let ((_ctx12729_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__% _in12727_ _ctx12729_))))
      (define gx#core-bind-weak-import!
        (lambda _g14504_
          (let ((_g14503_ (length _g14504_)))
            (cond ((##fx= _g14503_ 1)
                   (apply gx#core-bind-weak-import!__0 _g14504_))
                  ((##fx= _g14503_ 2)
                   (apply gx#core-bind-weak-import!__% _g14504_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g14504_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out12612_)
      (letrec ((_subst12614_
                (lambda (_key12660_)
                  (let* ((_key1266112669_ _key12660_)
                         (_E1266412673_
                          (lambda ()
                            (error '"No clause matching" _key1266112669_)))
                         (_else1266312677_ (lambda () _key12660_))
                         (_K1266512708_
                          (lambda (_mark12680_ _id12681_)
                            (let* ((_mark1268212688_ _mark12680_)
                                   (_E1268412692_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1268212688_)))
                                   (_K1268512700_
                                    (lambda (_subst12695_)
                                      (let ((_$e12697_
                                             (if _subst12695_
                                                 (table-ref
                                                  _subst12695_
                                                  _id12681_
                                                  '#f)
                                                 '#f)))
                                        (if _$e12697_
                                            _$e12697_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key12660_))))))
                              (if (##structure-instance-of?
                                   _mark1268212688_
                                   (##type-id gx#expander-mark::t))
                                  (let* ((_e1268612703_
                                          (##vector-ref _mark1268212688_ '1))
                                         (_subst12706_ _e1268612703_))
                                    (_K1268512700_ _subst12706_))
                                  (_E1268412692_))))))
                    (if (##pair? _key1266112669_)
                        (let ((_hd1266612711_ (##car _key1266112669_))
                              (_tl1266712713_ (##cdr _key1266112669_)))
                          (let* ((_id12716_ _hd1266612711_)
                                 (_mark12718_ _tl1266712713_))
                            (_K1266512708_ _mark12718_ _id12716_)))
                        (_else1266312677_))))))
        (let* ((_out1261512625_ _out12612_)
               (_E1261712629_
                (lambda () (error '"No clause matching" _out1261512625_)))
               (_K1261812636_
                (lambda (_phi12632_ _key12633_ _ctx12634_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx12634_ _phi12632_)
                   (_subst12614_ _key12633_)))))
          (if (##structure-direct-instance-of?
               _out1261512625_
               (##type-id gx#module-export::t))
              (let* ((_e1261912639_ (##vector-ref _out1261512625_ '1))
                     (_ctx12642_ _e1261912639_)
                     (_e1262012644_ (##vector-ref _out1261512625_ '2))
                     (_key12647_ _e1262012644_)
                     (_e1262112649_ (##vector-ref _out1261512625_ '3))
                     (_phi12652_ _e1262112649_)
                     (_e1262212654_ (##vector-ref _out1261512625_ '4))
                     (_e1262312657_ (##vector-ref _out1261512625_ '5)))
                (_K1261812636_ _phi12652_ _key12647_ _ctx12642_))
              (_E1261712629_))))))
  (begin
    (define gx#core-module-export->import__%
      (lambda (_out12537_ _rename12538_ _dphi12539_)
        (let* ((_out1254012550_ _out12537_)
               (_E1254212554_
                (lambda () (error '"No clause matching" _out1254012550_)))
               (_K1254312566_
                (lambda (_weak?12557_
                         _name12558_
                         _phi12559_
                         _key12560_
                         _ctx12561_)
                  (##structure
                   gx#module-import::t
                   _out12537_
                   (let ((_$e12563_ _rename12538_))
                     (if _$e12563_ _$e12563_ _name12558_))
                   (fx+ _phi12559_ _dphi12539_)
                   _weak?12557_))))
          (if (##structure-direct-instance-of?
               _out1254012550_
               (##type-id gx#module-export::t))
              (let* ((_e1254412569_ (##vector-ref _out1254012550_ '1))
                     (_ctx12572_ _e1254412569_)
                     (_e1254512574_ (##vector-ref _out1254012550_ '2))
                     (_key12577_ _e1254512574_)
                     (_e1254612579_ (##vector-ref _out1254012550_ '3))
                     (_phi12582_ _e1254612579_)
                     (_e1254712584_ (##vector-ref _out1254012550_ '4))
                     (_name12587_ _e1254712584_)
                     (_e1254812589_ (##vector-ref _out1254012550_ '5))
                     (_weak?12592_ _e1254812589_))
                (_K1254312566_
                 _weak?12592_
                 _name12587_
                 _phi12582_
                 _key12577_
                 _ctx12572_))
              (_E1254212554_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out12597_)
          (let* ((_rename12599_ '#f) (_dphi12601_ '0))
            (gx#core-module-export->import__%
             _out12597_
             _rename12599_
             _dphi12601_))))
      (define gx#core-module-export->import__1
        (lambda (_out12603_ _rename12604_)
          (let ((_dphi12606_ '0))
            (gx#core-module-export->import__%
             _out12603_
             _rename12604_
             _dphi12606_))))
      (define gx#core-module-export->import
        (lambda _g14506_
          (let ((_g14505_ (length _g14506_)))
            (cond ((##fx= _g14505_ 1)
                   (apply gx#core-module-export->import__0 _g14506_))
                  ((##fx= _g14505_ 2)
                   (apply gx#core-module-export->import__1 _g14506_))
                  ((##fx= _g14505_ 3)
                   (apply gx#core-module-export->import__% _g14506_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g14506_))))))))
  (define gx#core-expand-module%
    (lambda (_stx12465_)
      (letrec ((_make-context12467_
                (lambda (_id12518_)
                  (let* ((_super12520_ (gx#current-expander-context))
                         (_bind-id12522_ (gx#stx-e _id12518_))
                         (_mod-id12524_
                          (if (##structure-instance-of?
                               _super12520_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super12520_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id12522_)
                              _bind-id12522_))
                         (_ns12526_ (symbol->string _mod-id12524_))
                         (_path12533_
                          (if (##structure-instance-of?
                               _super12520_
                               'gx#module-context::t)
                              (let ((_path12528_
                                     (##structure-ref
                                      _super12520_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e12530_ (pair? _path12528_)))
                                      (if _$e12530_
                                          _$e12530_
                                          (null? _path12528_)))
                                    (cons _bind-id12522_ _path12528_)
                                    (if (not _path12528_)
                                        _bind-id12522_
                                        (cons _bind-id12522_
                                              (cons _path12528_ '())))))
                              _bind-id12522_)))
                    (let ((__obj14482 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj14482
                         _mod-id12524_
                         _super12520_
                         _ns12526_
                         _path12533_)
                        __obj14482))))))
        (let* ((_e1246812478_ _stx12465_)
               (_E1247012482_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1246812478_)))
               (_E1246912514_
                (lambda ()
                  (if (gx#stx-pair? _e1246812478_)
                      (let ((_e1247112486_ (gx#syntax-e _e1246812478_)))
                        (let ((_hd1247212489_ (##car _e1247112486_))
                              (_tl1247312491_ (##cdr _e1247112486_)))
                          (if (gx#stx-pair? _tl1247312491_)
                              (let ((_e1247412494_
                                     (gx#syntax-e _tl1247312491_)))
                                (let ((_hd1247512497_ (##car _e1247412494_))
                                      (_tl1247612499_ (##cdr _e1247412494_)))
                                  (let* ((_id12502_ _hd1247512497_)
                                         (_body12504_ _tl1247612499_))
                                    (if (if (gx#identifier? _id12502_)
                                            (gx#stx-list? _body12504_)
                                            '#f)
                                        (let* ((_ctx12506_
                                                (_make-context12467_
                                                 _id12502_))
                                               (_body12508_
                                                (gx#core-expand-module-begin
                                                 _body12504_
                                                 _ctx12506_))
                                               (_body12510_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body12508_)
                                                 (gx#stx-source _stx12465_))))
                                          (begin
                                            (##structure-set!
                                             _ctx12506_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body12510_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx12506_
                                             _body12510_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id12502_
                                             _ctx12506_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id12502_)
                                              _body12510_)
                                             (gx#stx-source _stx12465_))))
                                        (_E1247012482_)))))
                              (_E1247012482_))))
                      (_E1247012482_)))))
          (_E1246912514_)))))
  (define gx#core-expand-module-begin
    (lambda (_body12431_ _ctx12432_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx12435_
                   (gx#core-expand-head (cons '%%begin-module _body12431_)))
                  (_e1243612443_ _stx12435_)
                  (_E1243812447_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx12435_)))
                  (_E1243712461_
                   (lambda ()
                     (if (gx#stx-pair? _e1243612443_)
                         (let ((_e1243912451_ (gx#syntax-e _e1243612443_)))
                           (let ((_hd1244012454_ (##car _e1243912451_))
                                 (_tl1244112456_ (##cdr _e1243912451_)))
                             (if (if (gx#identifier? _hd1244012454_)
                                     (gx#core-identifier=?
                                      _hd1244012454_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body12459_ _tl1244112456_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx12435_)
                                           _body12459_
                                           (gx#core-expand-module-body
                                            _body12459_))
                                       (_E1243812447_)))
                                 (_E1243812447_))))
                         (_E1243812447_)))))
             (_E1243712461_))))
       gx#current-expander-context
       _ctx12432_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body12227_)
      (letrec ((_expand-special12229_
                (lambda (_hd12358_ _K12359_ _rest12360_ _r12361_)
                  (let* ((_e1236212379_ _hd12358_)
                         (_E1237412383_
                          (lambda ()
                            (_K12359_
                             _rest12360_
                             (cons (gx#core-expand-top _hd12358_) _r12361_))))
                         (_E1236412395_
                          (lambda ()
                            (if (gx#stx-pair? _e1236212379_)
                                (let ((_e1237512387_
                                       (gx#syntax-e _e1236212379_)))
                                  (let ((_hd1237612390_ (##car _e1237512387_))
                                        (_tl1237712392_ (##cdr _e1237512387_)))
                                    (if (if (gx#identifier? _hd1237612390_)
                                            (gx#core-identifier=?
                                             _hd1237612390_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K12359_
                                             _rest12360_
                                             (cons _hd12358_ _r12361_))
                                            (_E1237412383_))
                                        (_E1237412383_))))
                                (_E1237412383_))))
                         (_E1236312427_
                          (lambda ()
                            (if (gx#stx-pair? _e1236212379_)
                                (let ((_e1236512399_
                                       (gx#syntax-e _e1236212379_)))
                                  (let ((_hd1236612402_ (##car _e1236512399_))
                                        (_tl1236712404_ (##cdr _e1236512399_)))
                                    (if (if (gx#identifier? _hd1236612402_)
                                            (gx#core-identifier=?
                                             _hd1236612402_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1236712404_)
                                            (let ((_e1236812407_
                                                   (gx#syntax-e
                                                    _tl1236712404_)))
                                              (let ((_hd1236912410_
                                                     (##car _e1236812407_))
                                                    (_tl1237012412_
                                                     (##cdr _e1236812407_)))
                                                (let ((_hd-bind12415_
                                                       _hd1236912410_))
                                                  (if (gx#stx-pair?
                                                       _tl1237012412_)
                                                      (let ((_e1237112417_
                                                             (gx#syntax-e
                                                              _tl1237012412_)))
                                                        (let ((_hd1237212420_
                                                               (##car _e1237112417_))
                                                              (_tl1237312422_
                                                               (##cdr _e1237112417_)))
                                                          (let ((_expr12425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1237212420_))
                    (if (gx#stx-null? _tl1237312422_)
                        (if (gx#core-bind-values? _hd-bind12415_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12415_)
                              (_K12359_ _rest12360_ (cons _hd12358_ _r12361_)))
                            (_E1236412395_))
                        (_E1236412395_)))))
              (_E1236412395_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1236412395_))
                                        (_E1236412395_))))
                                (_E1236412395_)))))
                    (_E1236312427_))))
               (_expand-body12230_
                (lambda (_rbody12232_)
                  (let _lp12234_ ((_rest12236_ _rbody12232_) (_body12237_ '()))
                    (let* ((_rest1223812246_ _rest12236_)
                           (_E1224112250_
                            (lambda ()
                              (error '"No clause matching" _rest1223812246_)))
                           (_else1224012254_ (lambda () _body12237_))
                           (_K1224212346_
                            (lambda (_rest12257_ _hd12258_)
                              (let* ((_e1225912280_ _hd12258_)
                                     (_E1227512284_
                                      (lambda ()
                                        (_lp12234_
                                         _rest12257_
                                         (cons (gx#core-expand-expression
                                                _hd12258_)
                                               _body12237_))))
                                     (_E1227112298_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1225912280_)
                                            (let ((_e1227612288_
                                                   (gx#syntax-e
                                                    _e1225912280_)))
                                              (let ((_hd1227712291_
                                                     (##car _e1227612288_))
                                                    (_tl1227812293_
                                                     (##cdr _e1227612288_)))
                                                (let ((_form12296_
                                                       _hd1227712291_))
                                                  (if (gx#core-bound-identifier?__%
                                                       _form12296_
                                                       gx#special-form-binding?)
                                                      (_lp12234_
                                                       _rest12257_
                                                       (cons _hd12258_
                                                             _body12237_))
                                                      (_E1227512284_)))))
                                            (_E1227512284_))))
                                     (_E1226112310_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1225912280_)
                                            (let ((_e1227212302_
                                                   (gx#syntax-e
                                                    _e1225912280_)))
                                              (let ((_hd1227312305_
                                                     (##car _e1227212302_))
                                                    (_tl1227412307_
                                                     (##cdr _e1227212302_)))
                                                (if (if (gx#identifier?
                                                         _hd1227312305_)
                                                        (gx#core-identifier=?
                                                         _hd1227312305_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp12234_
                                                         _rest12257_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd12258_)
                                                               _body12237_))
                                                        (_E1227112298_))
                                                    (_E1227112298_))))
                                            (_E1227112298_))))
                                     (_E1226012342_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1225912280_)
                                            (let ((_e1226212314_
                                                   (gx#syntax-e
                                                    _e1225912280_)))
                                              (let ((_hd1226312317_
                                                     (##car _e1226212314_))
                                                    (_tl1226412319_
                                                     (##cdr _e1226212314_)))
                                                (if (if (gx#identifier?
                                                         _hd1226312317_)
                                                        (gx#core-identifier=?
                                                         _hd1226312317_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1226412319_)
                                                        (let ((_e1226512322_
                                                               (gx#syntax-e
                                                                _tl1226412319_)))
                                                          (let ((_hd1226612325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1226512322_))
                        (_tl1226712327_ (##cdr _e1226512322_)))
                    (let ((_hd-bind12330_ _hd1226612325_))
                      (if (gx#stx-pair? _tl1226712327_)
                          (let ((_e1226812332_ (gx#syntax-e _tl1226712327_)))
                            (let ((_hd1226912335_ (##car _e1226812332_))
                                  (_tl1227012337_ (##cdr _e1226812332_)))
                              (let ((_expr12340_ _hd1226912335_))
                                (if (gx#stx-null? _tl1227012337_)
                                    (if '#t
                                        (_lp12234_
                                         _rest12257_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind12330_)
                                                 (gx#core-expand-expression
                                                  _expr12340_))
                                                (gx#stx-source _hd12258_))
                                               _body12237_))
                                        (_E1226112310_))
                                    (_E1226112310_)))))
                          (_E1226112310_)))))
                (_E1226112310_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1226112310_))))
                                            (_E1226112310_)))))
                                (_E1226012342_)))))
                      (if (##pair? _rest1223812246_)
                          (let ((_hd1224312349_ (##car _rest1223812246_))
                                (_tl1224412351_ (##cdr _rest1223812246_)))
                            (let* ((_hd12354_ _hd1224312349_)
                                   (_rest12356_ _tl1224412351_))
                              (_K1224212346_ _rest12356_ _hd12354_)))
                          (_else1224012254_)))))))
        (_expand-body12230_
         (gx#core-expand-block__%
          (cons '%#begin-module _body12227_)
          _expand-special12229_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx12070_
             _expanded?12071_
             _method12072_
             _current-phi12073_
             _expand112074_)
      (letrec ((_K12076_
                (lambda (_rest12194_ _r12195_)
                  (let* ((_e1219612203_ _rest12194_)
                         (_E1219812207_ (lambda () _r12195_))
                         (_E1219712223_
                          (lambda ()
                            (if (gx#stx-pair? _e1219612203_)
                                (let ((_e1219912211_
                                       (gx#syntax-e _e1219612203_)))
                                  (let ((_hd1220012214_ (##car _e1219912211_))
                                        (_tl1220112216_ (##cdr _e1219912211_)))
                                    (let* ((_hd12219_ _hd1220012214_)
                                           (_rest12221_ _tl1220112216_))
                                      (if '#t
                                          (_step12077_
                                           _hd12219_
                                           _rest12221_
                                           _r12195_)
                                          (_E1219812207_)))))
                                (_E1219812207_)))))
                    (_E1219712223_))))
               (_step12077_
                (lambda (_hd12108_ _rest12109_ _r12110_)
                  (let* ((_e1211112129_ _hd12108_)
                         (_E1212412133_
                          (lambda ()
                            (if (_expanded?12071_ (gx#stx-e _hd12108_))
                                (_K12076_
                                 _rest12109_
                                 (cons (gx#stx-e _hd12108_) _r12110_))
                                (_expand112074_
                                 _hd12108_
                                 _K12076_
                                 _rest12109_
                                 _r12110_))))
                         (_E1212012149_
                          (lambda ()
                            (if (gx#stx-pair? _e1211112129_)
                                (let ((_e1212512137_
                                       (gx#syntax-e _e1211112129_)))
                                  (let ((_hd1212612140_ (##car _e1212512137_))
                                        (_tl1212712142_ (##cdr _e1212512137_)))
                                    (let* ((_macro12145_ _hd1212612140_)
                                           (_body12147_ _tl1212712142_))
                                      (if (gx#core-bound-identifier?__%
                                           _macro12145_
                                           gx#syntax-binding?)
                                          (_K12076_
                                           (cons (gx#core-apply-expander__%
                                                  (gx#syntax-local-e__0
                                                   _macro12145_)
                                                  _hd12108_
                                                  _method12072_)
                                                 _rest12109_)
                                           _r12110_)
                                          (_E1212412133_)))))
                                (_E1212412133_))))
                         (_E1211312163_
                          (lambda ()
                            (if (gx#stx-pair? _e1211112129_)
                                (let ((_e1212112153_
                                       (gx#syntax-e _e1211112129_)))
                                  (let ((_hd1212212156_ (##car _e1212112153_))
                                        (_tl1212312158_ (##cdr _e1212112153_)))
                                    (if (eq? (gx#stx-e _hd1212212156_) 'begin:)
                                        (let ((_body12161_ _tl1212312158_))
                                          (if '#t
                                              (_K12076_
                                               (gx#stx-foldr
                                                cons
                                                _rest12109_
                                                _body12161_)
                                               _r12110_)
                                              (_E1212012149_)))
                                        (_E1212012149_))))
                                (_E1212012149_))))
                         (_E1211212190_
                          (lambda ()
                            (if (gx#stx-pair? _e1211112129_)
                                (let ((_e1211412167_
                                       (gx#syntax-e _e1211112129_)))
                                  (let ((_hd1211512170_ (##car _e1211412167_))
                                        (_tl1211612172_ (##cdr _e1211412167_)))
                                    (if (eq? (gx#stx-e _hd1211512170_) 'phi:)
                                        (if (gx#stx-pair? _tl1211612172_)
                                            (let ((_e1211712175_
                                                   (gx#syntax-e
                                                    _tl1211612172_)))
                                              (let ((_hd1211812178_
                                                     (##car _e1211712175_))
                                                    (_tl1211912180_
                                                     (##cdr _e1211712175_)))
                                                (let* ((_dphi12183_
                                                        _hd1211812178_)
                                                       (_body12185_
                                                        _tl1211912180_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi12183_)
                                                      (let ((_rbody12188_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K12076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body12185_
                         '()))
                      _current-phi12073_
                      (fx+ (gx#stx-e _dphi12183_) (_current-phi12073_)))))
                (_K12076_ _rest12109_ (foldr1 cons _r12110_ _rbody12188_)))
              (_E1211312163_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1211312163_))
                                        (_E1211312163_))))
                                (_E1211312163_)))))
                    (_E1211212190_)))))
        (let* ((_e1207812085_ _stx12070_)
               (_E1208012089_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1207812085_)))
               (_E1207912104_
                (lambda ()
                  (if (gx#stx-pair? _e1207812085_)
                      (let ((_e1208112093_ (gx#syntax-e _e1207812085_)))
                        (let ((_hd1208212096_ (##car _e1208112093_))
                              (_tl1208312098_ (##cdr _e1208112093_)))
                          (let ((_body12101_ _tl1208312098_))
                            (if '#t
                                (if (_current-phi12073_)
                                    (_K12076_ _body12101_ '())
                                    (call-with-parameters
                                     (lambda () (_K12076_ _body12101_ '()))
                                     _current-phi12073_
                                     (gx#current-expander-phi)))
                                (_E1208012089_)))))
                      (_E1208012089_)))))
          (_E1207912104_)))))
  (begin
    (define gx#core-expand-import%__%
      (lambda (_stx11610_ _internal-expand?11611_)
        (letrec ((_expand111613_
                  (lambda (_hd12055_ _K12056_ _rest12057_ _r12058_)
                    (if (gx#core-bound-module? _hd12055_)
                        (_import111614_
                         (gx#syntax-local-e__0 _hd12055_)
                         _K12056_
                         _rest12057_
                         _r12058_)
                        (if (gx#core-library-module-path? _hd12055_)
                            (_import111614_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd12055_))
                             _K12056_
                             _rest12057_
                             _r12058_)
                            (if (gx#stx-string? _hd12055_)
                                (_import111614_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__%
                                   _hd12055_
                                   (gx#stx-source _stx11610_)))
                                 _K12056_
                                 _rest12057_
                                 _r12058_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd12055_)
                                     'gx#module-context::t)
                                    (_K12056_
                                     _rest12057_
                                     (cons (gx#stx-e _hd12055_) _r12058_))
                                    (if (_import-spec?11615_ _hd12055_)
                                        (_import-spec11620_
                                         _hd12055_
                                         _K12056_
                                         _rest12057_
                                         _r12058_)
                                        (if (_import-submodule?11616_
                                             _hd12055_)
                                            (_import-submodule11618_
                                             _hd12055_
                                             _K12056_
                                             _rest12057_
                                             _r12058_)
                                            (if (_import-runtime?11617_
                                                 _hd12055_)
                                                (_import-runtime11619_
                                                 _hd12055_
                                                 _K12056_
                                                 _rest12057_
                                                 _r12058_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx11610_
                                                 _hd12055_))))))))))
                 (_import111614_
                  (lambda (_ctx12044_ _K12045_ _rest12046_ _r12047_)
                    (let ((_dphi12049_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K12045_
                       _rest12046_
                       (cons (##structure
                              gx#import-set::t
                              _ctx12044_
                              _dphi12049_
                              (map (lambda (_g1205012052_)
                                     (gx#core-module-export->import__%
                                      _g1205012052_
                                      '#f
                                      _dphi12049_))
                                   (##structure-ref
                                    _ctx12044_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r12047_)))))
                 (_import-spec?11615_
                  (lambda (_hd12001_)
                    (let* ((_e1200212012_ _hd12001_)
                           (_E1200412016_ (lambda () '#f))
                           (_E1200312040_
                            (lambda ()
                              (if (gx#stx-pair? _e1200212012_)
                                  (let ((_e1200512020_
                                         (gx#syntax-e _e1200212012_)))
                                    (let ((_hd1200612023_
                                           (##car _e1200512020_))
                                          (_tl1200712025_
                                           (##cdr _e1200512020_)))
                                      (if (eq? (gx#stx-e _hd1200612023_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1200712025_)
                                              (let ((_e1200812028_
                                                     (gx#syntax-e
                                                      _tl1200712025_)))
                                                (let ((_hd1200912031_
                                                       (##car _e1200812028_))
                                                      (_tl1201012033_
                                                       (##cdr _e1200812028_)))
                                                  (let* ((_spath12036_
                                                          _hd1200912031_)
                                                         (_specs12038_
                                                          _tl1201012033_))
                                                    (if '#t
                                                        '#t
                                                        (_E1200412016_)))))
                                              (_E1200412016_))
                                          (_E1200412016_))))
                                  (_E1200412016_)))))
                      (_E1200312040_))))
                 (_import-submodule?11616_
                  (lambda (_hd11958_)
                    (let* ((_e1195911969_ _hd11958_)
                           (_E1196111973_ (lambda () '#f))
                           (_E1196011997_
                            (lambda ()
                              (if (gx#stx-pair? _e1195911969_)
                                  (let ((_e1196211977_
                                         (gx#syntax-e _e1195911969_)))
                                    (let ((_hd1196311980_
                                           (##car _e1196211977_))
                                          (_tl1196411982_
                                           (##cdr _e1196211977_)))
                                      (if (eq? (gx#stx-e _hd1196311980_) 'in:)
                                          (if (gx#stx-pair? _tl1196411982_)
                                              (let ((_e1196511985_
                                                     (gx#syntax-e
                                                      _tl1196411982_)))
                                                (let ((_hd1196611988_
                                                       (##car _e1196511985_))
                                                      (_tl1196711990_
                                                       (##cdr _e1196511985_)))
                                                  (let* ((_top11993_
                                                          _hd1196611988_)
                                                         (_sub11995_
                                                          _tl1196711990_))
                                                    (if '#t
                                                        '#t
                                                        (_E1196111973_)))))
                                              (_E1196111973_))
                                          (_E1196111973_))))
                                  (_E1196111973_)))))
                      (_E1196011997_))))
                 (_import-runtime?11617_
                  (lambda (_hd11915_)
                    (let* ((_e1191611926_ _hd11915_)
                           (_E1191811930_ (lambda () '#f))
                           (_E1191711954_
                            (lambda ()
                              (if (gx#stx-pair? _e1191611926_)
                                  (let ((_e1191911934_
                                         (gx#syntax-e _e1191611926_)))
                                    (let ((_hd1192011937_
                                           (##car _e1191911934_))
                                          (_tl1192111939_
                                           (##cdr _e1191911934_)))
                                      (if (eq? (gx#stx-e _hd1192011937_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl1192111939_)
                                              (let ((_e1192211942_
                                                     (gx#syntax-e
                                                      _tl1192111939_)))
                                                (let ((_hd1192311945_
                                                       (##car _e1192211942_))
                                                      (_tl1192411947_
                                                       (##cdr _e1192211942_)))
                                                  (let* ((_top11950_
                                                          _hd1192311945_)
                                                         (_spath11952_
                                                          _tl1192411947_))
                                                    (if '#t
                                                        '#t
                                                        (_E1191811930_)))))
                                              (_E1191811930_))
                                          (_E1191811930_))))
                                  (_E1191811930_)))))
                      (_E1191711954_))))
                 (_import-submodule11618_
                  (lambda (_hd11882_ _K11883_ _rest11884_ _r11885_)
                    (let* ((_e1188611893_ _hd11882_)
                           (_E1188811897_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1188611893_)))
                           (_E1188711911_
                            (lambda ()
                              (if (gx#stx-pair? _e1188611893_)
                                  (let ((_e1188911901_
                                         (gx#syntax-e _e1188611893_)))
                                    (let ((_hd1189011904_
                                           (##car _e1188911901_))
                                          (_tl1189111906_
                                           (##cdr _e1188911901_)))
                                      (let ((_spath11909_ _tl1189111906_))
                                        (if '#t
                                            (_import111614_
                                             (_import-spec-source11621_
                                              _spath11909_)
                                             _K11883_
                                             _rest11884_
                                             _r11885_)
                                            (_E1188811897_)))))
                                  (_E1188811897_)))))
                      (_E1188711911_))))
                 (_import-runtime11619_
                  (lambda (_hd11849_ _K11850_ _rest11851_ _r11852_)
                    (let* ((_e1185311860_ _hd11849_)
                           (_E1185511864_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1185311860_)))
                           (_E1185411878_
                            (lambda ()
                              (if (gx#stx-pair? _e1185311860_)
                                  (let ((_e1185611868_
                                         (gx#syntax-e _e1185311860_)))
                                    (let ((_hd1185711871_
                                           (##car _e1185611868_))
                                          (_tl1185811873_
                                           (##cdr _e1185611868_)))
                                      (let ((_spath11876_ _tl1185811873_))
                                        (if '#t
                                            (_K11850_
                                             _rest11851_
                                             (cons (_import-spec-source11621_
                                                    _spath11876_)
                                                   _r11852_))
                                            (_E1185511864_)))))
                                  (_E1185511864_)))))
                      (_E1185411878_))))
                 (_import-spec11620_
                  (lambda (_hd11688_ _K11689_ _rest11690_ _r11691_)
                    (let* ((_e1169211709_ _hd11688_)
                           (_E1170111713_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1169211709_)))
                           (_E1169411823_
                            (lambda ()
                              (if (gx#stx-pair? _e1169211709_)
                                  (let ((_e1170211717_
                                         (gx#syntax-e _e1169211709_)))
                                    (let ((_hd1170311720_
                                           (##car _e1170211717_))
                                          (_tl1170411722_
                                           (##cdr _e1170211717_)))
                                      (if (gx#stx-pair? _tl1170411722_)
                                          (let ((_e1170511725_
                                                 (gx#syntax-e _tl1170411722_)))
                                            (let ((_hd1170611728_
                                                   (##car _e1170511725_))
                                                  (_tl1170711730_
                                                   (##cdr _e1170511725_)))
                                              (let* ((_path11733_
                                                      _hd1170611728_)
                                                     (_specs11735_
                                                      _tl1170711730_))
                                                (if '#t
                                                    (let ((_src-ctx11737_
                                                           (_import-spec-source11621_
                                                            _path11733_))
                                                          (_exports11738_
                                                           (make-table))
                                                          (_specs11739_
                                                           (gx#syntax->list
                                                            _specs11735_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out11741_)
                                                           (table-set!
                                                            _exports11738_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out11741_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out11741_
                           '4
                           gx#module-export::t
                           '#f))
                    _out11741_))
                 (##structure-ref _src-ctx11737_ '9 gx#module-context::t '#f))
                (_K11689_
                 _rest11690_
                 (foldl1 (lambda (_spec11743_ _r11744_)
                           (let* ((_e1174511761_ _spec11743_)
                                  (_E1174711765_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _e1174511761_)))
                                  (_E1174611819_
                                   (lambda ()
                                     (if (gx#stx-pair? _e1174511761_)
                                         (let ((_e1174811769_
                                                (gx#syntax-e _e1174511761_)))
                                           (let ((_hd1174911772_
                                                  (##car _e1174811769_))
                                                 (_tl1175011774_
                                                  (##cdr _e1174811769_)))
                                             (let ((_phi11777_ _hd1174911772_))
                                               (if (gx#stx-pair?
                                                    _tl1175011774_)
                                                   (let ((_e1175111779_
                                                          (gx#syntax-e
                                                           _tl1175011774_)))
                                                     (let ((_hd1175211782_
                                                            (##car _e1175111779_))
                                                           (_tl1175311784_
                                                            (##cdr _e1175111779_)))
                                                       (let ((_name11787_
                                                              _hd1175211782_))
                                                         (if (gx#stx-pair?
                                                              _tl1175311784_)
                                                             (let ((_e1175411789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1175311784_)))
                       (let ((_hd1175511792_ (##car _e1175411789_))
                             (_tl1175611794_ (##cdr _e1175411789_)))
                         (let ((_src-phi11797_ _hd1175511792_))
                           (if (gx#stx-pair? _tl1175611794_)
                               (let ((_e1175711799_
                                      (gx#syntax-e _tl1175611794_)))
                                 (let ((_hd1175811802_ (##car _e1175711799_))
                                       (_tl1175911804_ (##cdr _e1175711799_)))
                                   (let ((_src-name11807_ _hd1175811802_))
                                     (if (gx#stx-null? _tl1175911804_)
                                         (if (if (gx#stx-fixnum?
                                                  _src-phi11797_)
                                                 (if (gx#identifier?
                                                      _src-name11807_)
                                                     (if (gx#stx-fixnum?
                                                          _phi11777_)
                                                         (gx#identifier?
                                                          _name11787_)
                                                         '#f)
                                                     '#f)
                                                 '#f)
                                             (let ((_src-phi11809_
                                                    (gx#stx-e _src-phi11797_))
                                                   (_src-name11810_
                                                    (gx#core-identifier-key
                                                     _src-name11807_))
                                                   (_phi11811_
                                                    (gx#stx-e _phi11777_))
                                                   (_name11812_
                                                    (gx#core-identifier-key
                                                     _name11787_)))
                                               (let ((_$e11814_
                                                      (table-ref
                                                       _exports11738_
                                                       (cons _src-phi11809_
                                                             _src-name11810_)
                                                       '#f)))
                                                 (if _$e11814_
                                                     ((lambda (_out11817_)
                                                        (cons (gx#core-module-export->import__%
                                                               _out11817_
                                                               _name11812_
                                                               (fx- _phi11811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _src-phi11809_))
                      _r11744_))
              _$e11814_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; no matching export"
                                                      _stx11610_
                                                      _hd11688_))))
                                             (_E1174711765_))
                                         (_E1174711765_)))))
                               (_E1174711765_)))))
                     (_E1174711765_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1174711765_)))))
                                         (_E1174711765_)))))
                             (_E1174611819_)))
                         _r11691_
                         _specs11739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1170111713_)))))
                                          (_E1170111713_))))
                                  (_E1170111713_))))
                           (_E1169311845_
                            (lambda ()
                              (if (gx#stx-pair? _e1169211709_)
                                  (let ((_e1169511827_
                                         (gx#syntax-e _e1169211709_)))
                                    (let ((_hd1169611830_
                                           (##car _e1169511827_))
                                          (_tl1169711832_
                                           (##cdr _e1169511827_)))
                                      (if (gx#stx-pair? _tl1169711832_)
                                          (let ((_e1169811835_
                                                 (gx#syntax-e _tl1169711832_)))
                                            (let ((_hd1169911838_
                                                   (##car _e1169811835_))
                                                  (_tl1170011840_
                                                   (##cdr _e1169811835_)))
                                              (let ((_path11843_
                                                     _hd1169911838_))
                                                (if (gx#stx-null?
                                                     _tl1170011840_)
                                                    (if '#t
                                                        (_K11689_
                                                         _rest11690_
                                                         (cons (_import-spec-source11621_
                                                                _path11843_)
                                                               _r11691_))
                                                        (_E1169411823_))
                                                    (_E1169411823_)))))
                                          (_E1169411823_))))
                                  (_E1169411823_)))))
                      (_E1169311845_))))
                 (_import-spec-source11621_
                  (lambda (_spath11686_)
                    (gx#core-import-nested-module _spath11686_ _stx11610_)))
                 (_import!11622_
                  (lambda (_rbody11635_)
                    (letrec* ((_current-ctx11637_
                               (gx#current-expander-context))
                              (_deps11638_ (make-hash-table-eq))
                              (_bind!11639_
                               (lambda (_hd11684_)
                                 (gx#core-bind-import!__1
                                  _hd11684_
                                  _current-ctx11637_))))
                      (let _lp11641_ ((_rest11643_ _rbody11635_)
                                      (_body11644_ '()))
                        (let* ((_rest1164511653_ _rest11643_)
                               (_E1164811657_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1164511653_)))
                               (_else1164711663_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx11637_
                                         'gx#module-context::t)
                                        (##structure-set!
                                         _current-ctx11637_
                                         (foldl1 cons
                                                 (##structure-ref
                                                  _current-ctx11637_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body11644_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx11661_ _g14507_)
                                       (gx#eval-module _ctx11661_))
                                     _deps11638_)
                                    _body11644_)))
                               (_K1164911672_
                                (lambda (_rest11666_ _hd11667_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd11667_
                                         'gx#module-import::t)
                                        (begin
                                          (_bind!11639_ _hd11667_)
                                          (if (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd11667_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##direct-structure-ref
                                                            (##direct-structure-ref
                                                             _hd11667_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps11638_
                                               (##direct-structure-ref
                                                (##direct-structure-ref
                                                 _hd11667_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void))
                                        (if (##structure-direct-instance-of?
                                             _hd11667_
                                             'gx#import-set::t)
                                            (begin
                                              (for-each
                                               _bind!11639_
                                               (##direct-structure-ref
                                                _hd11667_
                                                '3
                                                gx#import-set::t
                                                '#f))
                                              (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd11667_
                                                    '2
                                                    gx#import-set::t
                                                    '#f))
                                                  (table-set!
                                                   _deps11638_
                                                   (##direct-structure-ref
                                                    _hd11667_
                                                    '1
                                                    gx#import-set::t
                                                    '#f)
                                                   '#t)
                                                  '#!void))
                                            (let ((_$e11669_
                                                   (##structure-instance-of?
                                                    _hd11667_
                                                    'gx#module-context::t)))
                                              (if _$e11669_
                                                  (values _$e11669_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _stx11610_
                                                   _hd11667_)))))
                                    (_lp11641_
                                     _rest11666_
                                     (cons _hd11667_ _body11644_))))))
                          (if (##pair? _rest1164511653_)
                              (let ((_hd1165011675_ (##car _rest1164511653_))
                                    (_tl1165111677_ (##cdr _rest1164511653_)))
                                (let* ((_hd11680_ _hd1165011675_)
                                       (_rest11682_ _tl1165111677_))
                                  (_K1164911672_ _rest11682_ _hd11680_)))
                              (_else1164711663_)))))))
                 (_expanded-import?11623_
                  (lambda (_e11627_)
                    (let ((_$e11629_
                           (##structure-direct-instance-of?
                            _e11627_
                            'gx#import-set::t)))
                      (if _$e11629_
                          _$e11629_
                          (let ((_$e11632_
                                 (##structure-direct-instance-of?
                                  _e11627_
                                  'gx#module-import::t)))
                            (if _$e11632_
                                _$e11632_
                                (##structure-instance-of?
                                 _e11627_
                                 'gx#module-context::t))))))))
          (let ((_rbody11625_
                 (gx#core-expand-import/export
                  _stx11610_
                  _expanded-import?11623_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand111613_)))
            (if _internal-expand?11611_
                (reverse _rbody11625_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!11622_ _rbody11625_))
                 (gx#stx-source _stx11610_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx12063_)
          (let ((_internal-expand?12065_ '#f))
            (gx#core-expand-import%__% _stx12063_ _internal-expand?12065_))))
      (define gx#core-expand-import%
        (lambda _g14509_
          (let ((_g14508_ (length _g14509_)))
            (cond ((##fx= _g14508_ 1)
                   (apply gx#core-expand-import%__0 _g14509_))
                  ((##fx= _g14508_ 2)
                   (apply gx#core-expand-import%__% _g14509_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g14509_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath11537_ _where11538_)
      (let* ((_e1153911546_ _spath11537_)
             (_E1154111550_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1153911546_)))
             (_E1154011605_
              (lambda ()
                (if (gx#stx-pair? _e1153911546_)
                    (let ((_e1154211554_ (gx#syntax-e _e1153911546_)))
                      (let ((_hd1154311557_ (##car _e1154211554_))
                            (_tl1154411559_ (##cdr _e1154211554_)))
                        (let* ((_origin11562_ _hd1154311557_)
                               (_sub11564_ _tl1154411559_))
                          (if '#t
                              (let ((_origin-ctx11566_
                                     (if (gx#stx-false? _origin11562_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin11562_))))
                                (let _lp11568_ ((_rest11570_ _sub11564_)
                                                (_ctx11571_ _origin-ctx11566_))
                                  (let* ((_e1157211579_ _rest11570_)
                                         (_E1157411583_ (lambda () _ctx11571_))
                                         (_E1157311601_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1157211579_)
                                                (let ((_e1157511587_
                                                       (gx#syntax-e
                                                        _e1157211579_)))
                                                  (let ((_hd1157611590_
                                                         (##car _e1157511587_))
                                                        (_tl1157711592_
                                                         (##cdr _e1157511587_)))
                                                    (let* ((_id11595_
                                                            _hd1157611590_)
                                                           (_rest11597_
                                                            _tl1157711592_))
                                                      (if '#t
                                                          (let ((_bind11599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__% _id11595_ '0 _ctx11571_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind11599_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind11599_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where11538_
                           _spath11537_
                           _id11595_))
                      (_lp11568_
                       _rest11597_
                       (##direct-structure-ref
                        _bind11599_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E1157411583_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1157411583_)))))
                                    (_E1157311601_))))
                              (_E1154111550_)))))
                    (_E1154111550_)))))
        (_E1154011605_))))
  (define gx#core-expand-import-source
    (lambda (_hd11535_)
      (gx#core-expand-import%__%
       (cons 'import-internal% (cons _hd11535_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__%
      (lambda (_stx11046_ _internal-expand?11047_)
        (letrec* ((_make-export__1447114472_
                   (lambda (_bind11483_ _phi11484_ _ctx11485_ _name11486_)
                     (let* ((_key11488_
                             (##structure-ref
                              _bind11483_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key11490_
                             (if _name11486_
                                 (gx#core-identifier-key _name11486_)
                                 _key11488_)))
                       (##structure
                        gx#module-export::t
                        _ctx11485_
                        _key11488_
                        _phi11484_
                        _export-key11490_
                        (let ((_$e11493_
                               (##structure-instance-of?
                                _bind11483_
                                'gx#extern-binding::t)))
                          (if _$e11493_
                              _$e11493_
                              (##structure-direct-instance-of?
                               _bind11483_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1447314476_
                   (lambda (_bind11499_)
                     (let* ((_phi11501_ (gx#current-export-expander-phi))
                            (_ctx11503_ (gx#current-expander-context))
                            (_name11505_ '#f))
                       (_make-export__1447114472_
                        _bind11499_
                        _phi11501_
                        _ctx11503_
                        _name11505_))))
                  (_make-export__1__1447414477_
                   (lambda (_bind11507_ _phi11508_)
                     (let* ((_ctx11510_ (gx#current-expander-context))
                            (_name11512_ '#f))
                       (_make-export__1447114472_
                        _bind11507_
                        _phi11508_
                        _ctx11510_
                        _name11512_))))
                  (_make-export__2__1447514478_
                   (lambda (_bind11514_ _phi11515_ _ctx11516_)
                     (let ((_name11518_ '#f))
                       (_make-export__1447114472_
                        _bind11514_
                        _phi11515_
                        _ctx11516_
                        _name11518_))))
                  (_make-export11049_
                   (lambda _g14511_
                     (let ((_g14510_ (length _g14511_)))
                       (cond ((##fx= _g14510_ 1)
                              (apply _make-export__0__1447314476_ _g14511_))
                             ((##fx= _g14510_ 2)
                              (apply _make-export__1__1447414477_ _g14511_))
                             ((##fx= _g14510_ 3)
                              (apply _make-export__2__1447514478_ _g14511_))
                             ((##fx= _g14510_ 4)
                              (apply _make-export__1447114472_ _g14511_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g14511_))))))
                  (_expand111050_
                   (lambda (_hd11196_ _K11197_ _rest11198_ _r11199_)
                     (let* ((_e1120011232_ _hd11196_)
                            (_E1122711236_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx11046_
                                _hd11196_)))
                            (_E1121711315_
                             (lambda ()
                               (if (gx#stx-pair? _e1120011232_)
                                   (let ((_e1122811240_
                                          (gx#syntax-e _e1120011232_)))
                                     (let ((_hd1122911243_
                                            (##car _e1122811240_))
                                           (_tl1123011245_
                                            (##cdr _e1122811240_)))
                                       (if (eq? (gx#stx-e _hd1122911243_)
                                                'import:)
                                           (let ((_in11248_ _tl1123011245_))
                                             (if (gx#stx-list? _in11248_)
                                                 (let _lp11250_ ((_in-rest11252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in11248_)
                         (_r11253_ _r11199_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1125411261_
                                                           _in-rest11252_)
                                                          (_E1125611265_
                                                           (lambda ()
                                                             (_K11197_
                                                              _rest11198_
                                                              _r11253_)))
                                                          (_E1125511311_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1125411261_)
                         (let ((_e1125711269_ (gx#syntax-e _e1125411261_)))
                           (let ((_hd1125811272_ (##car _e1125711269_))
                                 (_tl1125911274_ (##cdr _e1125711269_)))
                             (let* ((_hd11277_ _hd1125811272_)
                                    (_in-rest11279_ _tl1125911274_))
                               (if '#t
                                   (let ((_src11309_
                                          (if (gx#core-bound-module? _hd11277_)
                                              (gx#syntax-local-e__0 _hd11277_)
                                              (if (gx#core-library-module-path?
                                                   _hd11277_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd11277_))
                                                  (if (gx#stx-string?
                                                       _hd11277_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__%
                                                        _hd11277_
                                                        (gx#stx-source
                                                         _stx11046_)))
                                                      (let* ((_e1128011287_
                                                              _hd11277_)
                                                             (_E1128211291_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx11046_
                         _hd11277_)))
                     (_E1128111305_
                      (lambda ()
                        (if (gx#stx-pair? _e1128011287_)
                            (let ((_e1128311295_ (gx#syntax-e _e1128011287_)))
                              (let ((_hd1128411298_ (##car _e1128311295_))
                                    (_tl1128511300_ (##cdr _e1128311295_)))
                                (if (eq? (gx#stx-e _hd1128411298_) 'in:)
                                    (let ((_spath11303_ _tl1128511300_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath11303_
                                           _stx11046_)
                                          (_E1128211291_)))
                                    (_E1128211291_))))
                            (_E1128211291_)))))
                (_E1128111305_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp11250_
                                      _in-rest11279_
                                      (_export-imports11051_
                                       _src11309_
                                       _r11253_)))
                                   (_E1125611265_)))))
                         (_E1125611265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1125511311_)))
                                                 (_E1122711236_)))
                                           (_E1122711236_))))
                                   (_E1122711236_))))
                            (_E1120411354_
                             (lambda ()
                               (if (gx#stx-pair? _e1120011232_)
                                   (let ((_e1121811319_
                                          (gx#syntax-e _e1120011232_)))
                                     (let ((_hd1121911322_
                                            (##car _e1121811319_))
                                           (_tl1122011324_
                                            (##cdr _e1121811319_)))
                                       (if (eq? (gx#stx-e _hd1121911322_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1122011324_)
                                               (let ((_e1122111327_
                                                      (gx#syntax-e
                                                       _tl1122011324_)))
                                                 (let ((_hd1122211330_
                                                        (##car _e1122111327_))
                                                       (_tl1122311332_
                                                        (##cdr _e1122111327_)))
                                                   (let ((_id11335_
                                                          _hd1122211330_))
                                                     (if (gx#stx-pair?
                                                          _tl1122311332_)
                                                         (let ((_e1122411337_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1122311332_)))
                   (let ((_hd1122511340_ (##car _e1122411337_))
                         (_tl1122611342_ (##cdr _e1122411337_)))
                     (let ((_name11345_ _hd1122511340_))
                       (if (gx#stx-null? _tl1122611342_)
                           (if '#t
                               (let* ((_phi11347_
                                       (gx#current-export-expander-phi))
                                      (_$e11349_
                                       (gx#core-resolve-identifier__1
                                        _id11335_
                                        _phi11347_)))
                                 (if _$e11349_
                                     ((lambda (_bind11352_)
                                        (_K11197_
                                         _rest11198_
                                         (cons (_make-export__1447114472_
                                                _bind11352_
                                                _phi11347_
                                                (gx#current-expander-context)
                                                _name11345_)
                                               _r11199_)))
                                      _$e11349_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx11046_
                                      _hd11196_
                                      _id11335_)))
                               (_E1121711315_))
                           (_E1121711315_)))))
                 (_E1121711315_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1121711315_))
                                           (_E1121711315_))))
                                   (_E1121711315_))))
                            (_E1120311403_
                             (lambda ()
                               (if (gx#stx-pair? _e1120011232_)
                                   (let ((_e1120511358_
                                          (gx#syntax-e _e1120011232_)))
                                     (let ((_hd1120611361_
                                            (##car _e1120511358_))
                                           (_tl1120711363_
                                            (##cdr _e1120511358_)))
                                       (if (eq? (gx#stx-e _hd1120611361_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1120711363_)
                                               (let ((_e1120811366_
                                                      (gx#syntax-e
                                                       _tl1120711363_)))
                                                 (let ((_hd1120911369_
                                                        (##car _e1120811366_))
                                                       (_tl1121011371_
                                                        (##cdr _e1120811366_)))
                                                   (let ((_phi11374_
                                                          _hd1120911369_))
                                                     (if (gx#stx-pair?
                                                          _tl1121011371_)
                                                         (let ((_e1121111376_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1121011371_)))
                   (let ((_hd1121211379_ (##car _e1121111376_))
                         (_tl1121311381_ (##cdr _e1121111376_)))
                     (let ((_id11384_ _hd1121211379_))
                       (if (gx#stx-pair? _tl1121311381_)
                           (let ((_e1121411386_ (gx#syntax-e _tl1121311381_)))
                             (let ((_hd1121511389_ (##car _e1121411386_))
                                   (_tl1121611391_ (##cdr _e1121411386_)))
                               (let ((_name11394_ _hd1121511389_))
                                 (if (gx#stx-null? _tl1121611391_)
                                     (if (if (gx#stx-fixnum? _phi11374_)
                                             (if (gx#identifier? _id11384_)
                                                 (gx#identifier? _name11394_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi11396_
                                                 (gx#stx-e _phi11374_))
                                                (_$e11398_
                                                 (gx#core-resolve-identifier__1
                                                  _id11384_
                                                  _phi11396_)))
                                           (if _$e11398_
                                               ((lambda (_bind11401_)
                                                  (_K11197_
                                                   _rest11198_
                                                   (cons (_make-export__1447114472_
                                                          _bind11401_
                                                          _phi11396_
                                                          (gx#current-expander-context)
                                                          _name11394_)
                                                         _r11199_)))
                                                _$e11398_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx11046_
                                                _hd11196_
                                                _id11384_)))
                                         (_E1120411354_))
                                     (_E1120411354_)))))
                           (_E1120411354_)))))
                 (_E1120411354_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1120411354_))
                                           (_E1120411354_))))
                                   (_E1120411354_))))
                            (_E1120211414_
                             (lambda ()
                               (let ((_id11407_ _e1120011232_))
                                 (if (gx#identifier? _id11407_)
                                     (let ((_$e11409_
                                            (gx#core-resolve-identifier__1
                                             _id11407_
                                             (gx#current-export-expander-phi))))
                                       (if _$e11409_
                                           ((lambda (_bind11412_)
                                              (_K11197_
                                               _rest11198_
                                               (cons (_make-export__0__1447314476_
                                                      _bind11412_)
                                                     _r11199_)))
                                            _$e11409_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx11046_
                                            _hd11196_)))
                                     (_E1120311403_)))))
                            (_E1120111478_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1120011232_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx11418_
                                               (gx#current-expander-context))
                                              (_current-phi11420_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx11422_
                                               (gx#core-context-shift
                                                _current-ctx11418_
                                                _current-phi11420_))
                                              (_phi-bind11424_
                                               (table->list
                                                (##structure-ref
                                                 _phi-ctx11422_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp11427_ ((_bind-rest11429_
                                                          _phi-bind11424_)
                                                         (_set11430_ '()))
                                           (let* ((_bind-rest1143111441_
                                                   _bind-rest11429_)
                                                  (_E1143411445_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _bind-rest1143111441_)))
                                                  (_else1143311449_
                                                   (lambda ()
                                                     (_K11197_
                                                      _rest11198_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi11420_
                                                             _set11430_)
                                                            _r11199_))))
                                                  (_K1143511459_
                                                   (lambda (_bind-rest11452_
                                                            _bind11453_
                                                            _key11454_)
                                                     (if (let ((_$e11456_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind11453_
                         'gx#import-binding::t)))
                   (if _$e11456_
                       _$e11456_
                       (gx#private-feature-binding? _bind11453_)))
                 (_lp11427_ _bind-rest11452_ _set11430_)
                 (_lp11427_
                  _bind-rest11452_
                  (cons (_make-export__2__1447514478_
                         _bind11453_
                         _current-phi11420_
                         _current-ctx11418_)
                        _set11430_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1143111441_)
                                                 (let ((_hd1143611462_
                                                        (##car _bind-rest1143111441_))
                                                       (_tl1143711464_
                                                        (##cdr _bind-rest1143111441_)))
                                                   (if (##pair? _hd1143611462_)
                                                       (let ((_hd1143811467_
                                                              (##car _hd1143611462_))
                                                             (_tl1143911469_
                                                              (##cdr _hd1143611462_)))
                                                         (let* ((_key11472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1143811467_)
                        (_bind11474_ _tl1143911469_)
                        (_bind-rest11476_ _tl1143711464_))
                   (_K1143511459_ _bind-rest11476_ _bind11474_ _key11472_)))
               (_else1143311449_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1143311449_)))))
                                       (_E1120211414_))
                                   (_E1120211414_)))))
                       (_E1120111478_))))
                  (_export-imports11051_
                   (lambda (_src11072_ _r11073_)
                     (letrec* ((_current-ctx11075_
                                (gx#current-expander-context))
                               (_current-phi11076_
                                (gx#current-export-expander-phi))
                               (_import->export11077_
                                (lambda (_in11158_)
                                  (let* ((_in1115911167_ _in11158_)
                                         (_E1116111171_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1115911167_)))
                                         (_K1116211178_
                                          (lambda (_phi11174_
                                                   _key11175_
                                                   _out11176_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx11075_
                                             _key11175_
                                             _phi11174_
                                             _key11175_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in1115911167_
                                         (##type-id gx#module-import::t))
                                        (let* ((_e1116311181_
                                                (##vector-ref
                                                 _in1115911167_
                                                 '1))
                                               (_out11184_ _e1116311181_)
                                               (_e1116411186_
                                                (##vector-ref
                                                 _in1115911167_
                                                 '2))
                                               (_key11189_ _e1116411186_)
                                               (_e1116511191_
                                                (##vector-ref
                                                 _in1115911167_
                                                 '3))
                                               (_phi11194_ _e1116511191_))
                                          (_K1116211178_
                                           _phi11194_
                                           _key11189_
                                           _out11184_))
                                        (_E1116111171_)))))
                               (_fold-e11078_
                                (lambda (_in11080_ _r11081_)
                                  (let* ((_in1108211096_ _in11080_)
                                         (_E1108611100_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1108211096_)))
                                         (_else1108511104_
                                          (lambda () _r11081_))
                                         (_try-match1108411133_
                                          (lambda ()
                                            (let ((_K1108711115_
                                                   (lambda (_imports11108_
                                                            _phi11109_
                                                            _ctx11110_)
                                                     (if (if (fx= _phi11109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-phi11076_)
                     (eq? _src11072_ _ctx11110_)
                     '#f)
                 (foldl1 (lambda (_in11112_ _r11113_)
                           (cons (_import->export11077_ _in11112_) _r11113_))
                         _r11081_
                         _imports11108_)
                 _r11081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##structure-direct-instance-of?
                                                   _in1108211096_
                                                   (##type-id
                                                    gx#import-set::t))
                                                  (let* ((_e1108811118_
                                                          (##vector-ref
                                                           _in1108211096_
                                                           '1))
                                                         (_ctx11121_
                                                          _e1108811118_)
                                                         (_e1108911123_
                                                          (##vector-ref
                                                           _in1108211096_
                                                           '2))
                                                         (_phi11126_
                                                          _e1108911123_)
                                                         (_e1109011128_
                                                          (##vector-ref
                                                           _in1108211096_
                                                           '3))
                                                         (_imports11131_
                                                          _e1109011128_))
                                                    (_K1108711115_
                                                     _imports11131_
                                                     _phi11126_
                                                     _ctx11121_))
                                                  (_else1108511104_)))))
                                         (_K1109111140_
                                          (lambda (_phi11136_
                                                   _key11137_
                                                   _out11138_)
                                            (if (if (fx= _phi11136_
                                                         _current-phi11076_)
                                                    (eq? _src11072_
                                                         (##direct-structure-ref
                                                          _out11138_
                                                          '1
                                                          gx#module-export::t
                                                          '#f))
                                                    '#f)
                                                (cons (_import->export11077_
                                                       _in11080_)
                                                      _r11081_)
                                                _r11081_))))
                                    (if (##structure-direct-instance-of?
                                         _in1108211096_
                                         (##type-id gx#module-import::t))
                                        (let* ((_e1109211143_
                                                (##vector-ref
                                                 _in1108211096_
                                                 '1))
                                               (_out11146_ _e1109211143_)
                                               (_e1109311148_
                                                (##vector-ref
                                                 _in1108211096_
                                                 '2))
                                               (_key11151_ _e1109311148_)
                                               (_e1109411153_
                                                (##vector-ref
                                                 _in1108211096_
                                                 '3))
                                               (_phi11156_ _e1109411153_))
                                          (_K1109111140_
                                           _phi11156_
                                           _key11151_
                                           _out11146_))
                                        (_try-match1108411133_))))))
                       (cons (##structure
                              gx#export-set::t
                              _src11072_
                              _current-phi11076_
                              (foldl1 _fold-e11078_
                                      '()
                                      (##structure-ref
                                       _current-ctx11075_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r11073_))))
                  (_export!11052_
                   (lambda (_rbody11062_)
                     (letrec* ((_current-ctx11064_
                                (gx#current-expander-context))
                               (_fold-e11065_
                                (lambda (_out11069_ _r11070_)
                                  (if (##structure-direct-instance-of?
                                       _out11069_
                                       'gx#module-export::t)
                                      (cons _out11069_ _r11070_)
                                      (if (##structure-direct-instance-of?
                                           _out11069_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r11070_
                                                  (##direct-structure-ref
                                                   _out11069_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r11070_)))))
                       (let ((_body11067_ (reverse _rbody11062_)))
                         (begin
                           (##structure-set!
                            _current-ctx11064_
                            (foldl1 _fold-e11065_
                                    (##structure-ref
                                     _current-ctx11064_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body11067_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body11067_)))))
                  (_expanded-export?11053_
                   (lambda (_e11057_)
                     (let ((_$e11059_
                            (##structure-direct-instance-of?
                             _e11057_
                             'gx#module-export::t)))
                       (if _$e11059_
                           _$e11059_
                           (##structure-direct-instance-of?
                            _e11057_
                            'gx#export-set::t))))))
          (let ((_rbody11055_
                 (gx#core-expand-import/export
                  _stx11046_
                  _expanded-export?11053_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand111050_)))
            (if _internal-expand?11047_
                (reverse _rbody11055_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!11052_ _rbody11055_))
                 (gx#stx-source _stx11046_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx11528_)
          (let ((_internal-expand?11530_ '#f))
            (gx#core-expand-export%__% _stx11528_ _internal-expand?11530_))))
      (define gx#core-expand-export%
        (lambda _g14513_
          (let ((_g14512_ (length _g14513_)))
            (cond ((##fx= _g14512_ 1)
                   (apply gx#core-expand-export%__0 _g14513_))
                  ((##fx= _g14512_ 2)
                   (apply gx#core-expand-export%__% _g14513_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g14513_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd11043_)
      (gx#core-expand-export%__%
       (cons 'export-macro% (cons _hd11043_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx11013_)
      (let* ((_e1101411021_ _stx11013_)
             (_E1101611025_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1101411021_)))
             (_E1101511039_
              (lambda ()
                (if (gx#stx-pair? _e1101411021_)
                    (let ((_e1101711029_ (gx#syntax-e _e1101411021_)))
                      (let ((_hd1101811032_ (##car _e1101711029_))
                            (_tl1101911034_ (##cdr _e1101711029_)))
                        (let ((_body11037_ _tl1101911034_))
                          (if (gx#identifier-list? _body11037_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body11037_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body11037_))
                                 (gx#stx-source _stx11013_)))
                              (_E1101611025_)))))
                    (_E1101611025_)))))
        (_E1101511039_))))
  (begin
    (define gx#core-bind-feature!__%
      (lambda (_id10979_ _private?10980_ _phi10981_ _ctx10982_)
        (gx#core-bind-syntax!__%
         _id10979_
         ((if _private?10980_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id10979_))
         _private?10980_
         _phi10981_
         _ctx10982_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id10987_)
          (let* ((_private?10989_ '#f)
                 (_phi10991_ (gx#current-expander-phi))
                 (_ctx10993_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id10987_
             _private?10989_
             _phi10991_
             _ctx10993_))))
      (define gx#core-bind-feature!__1
        (lambda (_id10995_ _private?10996_)
          (let* ((_phi10998_ (gx#current-expander-phi))
                 (_ctx11000_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id10995_
             _private?10996_
             _phi10998_
             _ctx11000_))))
      (define gx#core-bind-feature!__2
        (lambda (_id11002_ _private?11003_ _phi11004_)
          (let ((_ctx11006_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id11002_
             _private?11003_
             _phi11004_
             _ctx11006_))))
      (define gx#core-bind-feature!
        (lambda _g14515_
          (let ((_g14514_ (length _g14515_)))
            (cond ((##fx= _g14514_ 1)
                   (apply gx#core-bind-feature!__0 _g14515_))
                  ((##fx= _g14514_ 2)
                   (apply gx#core-bind-feature!__1 _g14515_))
                  ((##fx= _g14514_ 3)
                   (apply gx#core-bind-feature!__2 _g14515_))
                  ((##fx= _g14514_ 4)
                   (apply gx#core-bind-feature!__% _g14515_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g14515_)))))))))
