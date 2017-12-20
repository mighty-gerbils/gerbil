(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#module-import::t
    (make-struct-type
     'gx#module-import::t
     '#f
     '4
     'module-import
     '((final: . #t))
     '#f))
  (define gx#module-import? (make-struct-predicate gx#module-import::t))
  (define gx#make-module-import
    (lambda _$args11580_
      (apply make-struct-instance gx#module-import::t _$args11580_)))
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
     '#f))
  (define gx#module-export? (make-struct-predicate gx#module-export::t))
  (define gx#make-module-export
    (lambda _$args11577_
      (apply make-struct-instance gx#module-export::t _$args11577_)))
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
     '#f))
  (define gx#import-set? (make-struct-predicate gx#import-set::t))
  (define gx#make-import-set
    (lambda _$args11574_
      (apply make-struct-instance gx#import-set::t _$args11574_)))
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
     '#f))
  (define gx#export-set? (make-struct-predicate gx#export-set::t))
  (define gx#make-export-set
    (lambda _$args11571_
      (apply make-struct-instance gx#export-set::t _$args11571_)))
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
    (make-struct-type
     'gx#import-expander::t
     gx#user-expander::t
     '0
     'import-expander
     '()
     ':init!))
  (define gx#import-expander? (make-struct-predicate gx#import-expander::t))
  (define gx#make-import-expander
    (lambda _$args11568_
      (apply make-struct-instance gx#import-expander::t _$args11568_)))
  (define gx#export-expander::t
    (make-struct-type
     'gx#export-expander::t
     gx#user-expander::t
     '0
     'export-expander
     '()
     ':init!))
  (define gx#export-expander? (make-struct-predicate gx#export-expander::t))
  (define gx#make-export-expander
    (lambda _$args11565_
      (apply make-struct-instance gx#export-expander::t _$args11565_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self11559_ _id11560_ _super11561_ _ns11562_ _path11563_)
      (struct-instance-init!
       _self11559_
       _id11560_
       (make-hash-table-eq)
       _super11561_
       '#f
       '#f
       _ns11562_
       _path11563_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda11523
      (lambda (_self11525_ _ctx11526_ _root11527_)
        (let ((_super11535_
               (let ((_$e11529_ _root11527_))
                 (if _$e11529_
                     _$e11529_
                     (let ((_$e11532_ (gx#core-context-root__0)))
                       (if _$e11532_
                           _$e11532_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx11526_
              (let ((_id11538_
                     (##structure-ref
                      _ctx11526_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path11539_
                     (##structure-ref _ctx11526_ '7 gx#module-context::t '#f))
                    (_in11540_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx11526_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11541_
                     (make-promise (lambda () (gx#eval-module _ctx11526_)))))
                (begin
                  (struct-instance-init!
                   _self11525_
                   _id11538_
                   (make-hash-table-eq)
                   _super11535_
                   '#f
                   '#f
                   _path11539_
                   _in11540_
                   _e11541_)
                  (for-each
                   (lambda (_g1154211544_)
                     (gx#core-bind-weak-import!__opt-lambda10823
                      _g1154211544_
                      _self11525_))
                   _in11540_)))
              (struct-instance-init!
               _self11525_
               '#f
               (make-hash-table-eq)
               _super11535_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self11550_ _ctx11551_)
          (let ((_root11553_ '#f))
            (gx#prelude-context:::init!__opt-lambda11523
             _self11550_
             _ctx11551_
             _root11553_))))
      (define gx#prelude-context:::init!
        (lambda _g11596_
          (let ((_g11595_ (length _g11596_)))
            (cond ((fx= _g11595_ 2)
                   (apply gx#prelude-context:::init!__0 _g11596_))
                  ((fx= _g11595_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda11523
                          _g11596_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g11596_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self11521_ _e11522_)
      (struct-instance-init!
       _self11521_
       _e11522_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self11518_ _e11519_)
      (struct-instance-init!
       _self11518_
       _e11519_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1151011513_ _g1151111515_)
      (gx#core-apply-user-expander__opt-lambda4822
       _g1151011513_
       _g1151111515_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1150311506_ _g1150411508_)
      (gx#core-apply-user-expander__opt-lambda4822
       _g1150311506_
       _g1150411508_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx11497_)
      (let* ((_path11499_
              (##structure-ref _ctx11497_ '7 gx#module-context::t '#f))
             (_path11501_
              (if (pair? _path11499_) (last _path11499_) _path11499_)))
        (if (string? _path11501_) _path11501_ '#f))))
  (begin
    (define gx#import-module__opt-lambda11471
      (lambda (_path11473_ _reload?11474_ _eval?11475_)
        (let ((_ctx11477_
               ((gx#current-expander-module-import)
                _path11473_
                _reload?11474_)))
          (begin
            (if (if _ctx11477_ _eval?11475_ '#f)
                (gx#eval-module _ctx11477_)
                '#!void)
            _ctx11477_))))
    (begin
      (define gx#import-module__0
        (lambda (_path11482_)
          (let* ((_reload?11484_ '#f) (_eval?11486_ '#f))
            (gx#import-module__opt-lambda11471
             _path11482_
             _reload?11484_
             _eval?11486_))))
      (define gx#import-module__1
        (lambda (_path11488_ _reload?11489_)
          (let ((_eval?11491_ '#f))
            (gx#import-module__opt-lambda11471
             _path11488_
             _reload?11489_
             _eval?11491_))))
      (define gx#import-module
        (lambda _g11598_
          (let ((_g11597_ (length _g11598_)))
            (cond ((fx= _g11597_ 1) (apply gx#import-module__0 _g11598_))
                  ((fx= _g11597_ 2) (apply gx#import-module__1 _g11598_))
                  ((fx= _g11597_ 3)
                   (apply gx#import-module__opt-lambda11471 _g11598_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g11598_))))))))
  (define gx#eval-module
    (lambda (_mod11470_) ((gx#current-expander-module-eval) _mod11470_)))
  (define gx#core-eval-module
    (lambda (_obj11455_)
      (letrec ((_force-e11457_
                (lambda (_getf11466_ _e11467_)
                  (call-with-parameters
                   (lambda () (force (_getf11466_ _e11467_)))
                   gx#current-expander-context
                   _e11467_
                   gx#current-expander-phi
                   '0))))
        (let _recur11459_ ((_e11461_ _obj11455_))
          (if (##structure-instance-of? _e11461_ 'gx#module-context::t)
              (begin
                (let ((_$e11463_
                       (gx#core-context-prelude__opt-lambda11436 _e11461_)))
                  (if _$e11463_ (_recur11459_ _$e11463_) '#!void))
                (_force-e11457_ gx#module-context-e _e11461_))
              (if (##structure-instance-of? _e11461_ 'gx#prelude-context::t)
                  (_force-e11457_ gx#prelude-context-e _e11461_)
                  (if (gx#stx-string? _e11461_)
                      (_recur11459_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e11461_)))
                      (if (gx#core-library-module-path? _e11461_)
                          (_recur11459_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e11461_)))
                          (error '"Cannot eval module" _obj11455_)))))))))
  (begin
    (define gx#core-context-prelude__opt-lambda11436
      (lambda (_ctx11438_)
        (let _lp11440_ ((_e11442_ _ctx11438_))
          (if (let ((_$e11444_
                     (##structure-instance-of?
                      _e11442_
                      'gx#module-context::t)))
                (if _$e11444_
                    _$e11444_
                    (##structure-instance-of? _e11442_ 'gx#local-context::t)))
              (_lp11440_ (##structure-ref _e11442_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e11442_ 'gx#prelude-context::t)
                  _e11442_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx11451_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda11436 _ctx11451_))))
      (define gx#core-context-prelude
        (lambda _g11600_
          (let ((_g11599_ (length _g11600_)))
            (cond ((fx= _g11599_ 0)
                   (apply gx#core-context-prelude__0 _g11600_))
                  ((fx= _g11599_ 1)
                   (apply gx#core-context-prelude__opt-lambda11436 _g11600_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g11600_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx11428_)
      (let* ((_ht11430_ (gx#current-expander-module-registry))
             (_$e11432_ (table-ref _ht11430_ _ctx11428_ '#f)))
        (if _$e11432_
            (values _$e11432_)
            (let ((_pre11435_
                   (let ((__obj11591 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj11591 _ctx11428_)
                       __obj11591))))
              (begin
                (table-set! _ht11430_ _ctx11428_ _pre11435_)
                _pre11435_))))))
  (begin
    (define gx#core-import-module__opt-lambda11380
      (lambda (_rpath11382_ _reload?11383_)
        (letrec ((_import-source11385_
                  (lambda (_path11397_)
                    (begin
                      (if (member _path11397_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path11397_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g11601_ (gx#core-read-module _path11397_)))
                           (begin
                             (let ((_g11602_ (values-count _g11601_)))
                               (if (not (fx= _g11602_ 4))
                                   (error "Context expects 4 values"
                                          _g11602_)))
                             (let ((_pre11400_ (values-ref _g11601_ 0))
                                   (_id11401_ (values-ref _g11601_ 1))
                                   (_ns11402_ (values-ref _g11601_ 2))
                                   (_body11403_ (values-ref _g11601_ 3)))
                               (let* ((_prelude11408_
                                       (if (##structure-instance-of?
                                            _pre11400_
                                            'gx#prelude-context::t)
                                           _pre11400_
                                           (if (##structure-instance-of?
                                                _pre11400_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre11400_)
                                               (if (string? _pre11400_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre11400_))
                                                   (if (not _pre11400_)
                                                       (let ((_$e11405_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e11405_
                                                             _$e11405_
                                                             (let ((__obj11592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj11592 '#f)
                         __obj11592))))
               (error '"Cannot import module; unknown prelude"
                      _rpath11382_
                      _pre11400_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx11410_
                                       (let ((__obj11593
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj11593
                                            _id11401_
                                            _prelude11408_
                                            _ns11402_
                                            _path11397_)
                                           __obj11593)))
                                      (_body11412_
                                       (gx#core-expand-module-begin
                                        _body11403_
                                        _ctx11410_))
                                      (_body11414_
                                       (gx#core-quote-syntax__opt-lambda4175
                                        (gx#core-cons '%#begin _body11412_)
                                        _path11397_
                                        _ctx11410_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx11410_
                                    (make-promise
                                     (lambda () (gx#eval-syntax* _body11414_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx11410_
                                    _body11414_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path11397_
                                    _ctx11410_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id11401_
                                    _ctx11410_)
                                   _ctx11410_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path11397_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f)))))
          (let ((_$e11387_
                 (if (not _reload?11383_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath11382_
                      '#f)
                     '#f)))
            (if _$e11387_
                (values _$e11387_)
                (if (gx#core-library-module-path? _rpath11382_)
                    (let ((_ctx11390_
                           (gx#core-import-module__opt-lambda11380
                            (gx#core-resolve-library-module-path _rpath11382_)
                            _reload?11383_)))
                      (begin
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath11382_
                         _ctx11390_)
                        _ctx11390_))
                    (let* ((_npath11392_ (path-normalize _rpath11382_))
                           (_$e11394_
                            (if (not _reload?11383_)
                                (table-ref
                                 (gx#current-expander-module-registry)
                                 _npath11392_
                                 '#f)
                                '#f)))
                      (if _$e11394_
                          (values _$e11394_)
                          (_import-source11385_ _npath11392_)))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath11421_)
          (let ((_reload?11423_ '#f))
            (gx#core-import-module__opt-lambda11380
             _rpath11421_
             _reload?11423_))))
      (define gx#core-import-module
        (lambda _g11604_
          (let ((_g11603_ (length _g11604_)))
            (cond ((fx= _g11603_ 1) (apply gx#core-import-module__0 _g11604_))
                  ((fx= _g11603_ 2)
                   (apply gx#core-import-module__opt-lambda11380 _g11604_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g11604_))))))))
  (define gx#core-read-module
    (lambda (_path11376_)
      (with-exception-catcher
       (lambda (_exn11378_)
         (if (if (datum-parsing-exception? _exn11378_)
                 (eq? (datum-parsing-exception-filepos _exn11378_) '0)
                 '#f)
             (gx#core-read-module/lang _path11376_)
             (raise _exn11378_)))
       (lambda () (gx#core-read-module/sexp _path11376_)))))
  (define gx#core-read-module/sexp
    (lambda (_path11236_)
      (let _lp11238_ ((_body11240_ (read-syntax-from-file _path11236_))
                      (_pre11241_ '#f)
                      (_ns11242_ '#f)
                      (_pkg11243_ '#f))
        (let* ((_e1124411268_ _body11240_)
               (_E1126011290_
                (lambda ()
                  (let ((_g11605_
                         (if _pkg11243_
                             (values _pre11241_ _ns11242_ _pkg11243_)
                             (gx#core-read-module-package
                              _path11236_
                              _pre11241_
                              _ns11242_))))
                    (begin
                      (let ((_g11606_ (values-count _g11605_)))
                        (if (not (fx= _g11606_ 3))
                            (error "Context expects 3 values" _g11606_)))
                      (let ((_pre11272_ (values-ref _g11605_ 0))
                            (_ns11273_ (values-ref _g11605_ 1))
                            (_pkg11274_ (values-ref _g11605_ 2)))
                        (let* ((_prelude11276_
                                (if (gx#core-bound-module-prelude? _pre11272_)
                                    (gx#syntax-local-e__0 _pre11272_)
                                    (if (gx#core-library-module-path?
                                         _pre11272_)
                                        (gx#core-resolve-library-module-path
                                         _pre11272_)
                                        (if (gx#stx-string? _pre11272_)
                                            (gx#core-resolve-module-path__opt-lambda10999
                                             _pre11272_
                                             _path11236_)
                                            (gx#stx-e _pre11272_)))))
                               (_path-id11278_
                                (gx#core-module-path->namespace _path11236_))
                               (_pkg-id11280_
                                (if _pkg11274_
                                    (string-append
                                     _pkg11274_
                                     '"/"
                                     _path-id11278_)
                                    _path-id11278_))
                               (_module-id11282_
                                (string->symbol _pkg-id11280_))
                               (_module-ns11287_
                                (let ((_$e11284_ _ns11273_))
                                  (if _$e11284_ _$e11284_ _pkg-id11280_))))
                          (values _prelude11276_
                                  _module-id11282_
                                  _module-ns11287_
                                  _body11240_)))))))
               (_E1125311319_
                (lambda ()
                  (if (gx#stx-pair? _e1124411268_)
                      (let ((_e1126111294_ (gx#syntax-e _e1124411268_)))
                        (let ((_hd1126211297_ (##car _e1126111294_))
                              (_tl1126311299_ (##cdr _e1126111294_)))
                          (if (eq? (gx#stx-e _hd1126211297_) 'package:)
                              (if (gx#stx-pair? _tl1126311299_)
                                  (let ((_e1126411302_
                                         (gx#syntax-e _tl1126311299_)))
                                    (let ((_hd1126511305_
                                           (##car _e1126411302_))
                                          (_tl1126611307_
                                           (##cdr _e1126411302_)))
                                      (let* ((_pkg11310_ _hd1126511305_)
                                             (_rest11312_ _tl1126611307_))
                                        (if '#t
                                            (let ((_pkg11317_
                                                   (if (gx#identifier?
                                                        _pkg11310_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg11310_))
                                                       (if (let ((_$e11314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg11310_)))
                     (if _$e11314_ _$e11314_ (gx#stx-false? _pkg11310_)))
                   (gx#stx-e _pkg11310_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg11310_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp11238_
                                               _rest11312_
                                               _pre11241_
                                               _ns11242_
                                               _pkg11317_))
                                            (_E1126011290_)))))
                                  (_E1126011290_))
                              (_E1126011290_))))
                      (_E1126011290_))))
               (_E1124611348_
                (lambda ()
                  (if (gx#stx-pair? _e1124411268_)
                      (let ((_e1125411323_ (gx#syntax-e _e1124411268_)))
                        (let ((_hd1125511326_ (##car _e1125411323_))
                              (_tl1125611328_ (##cdr _e1125411323_)))
                          (if (eq? (gx#stx-e _hd1125511326_) 'namespace:)
                              (if (gx#stx-pair? _tl1125611328_)
                                  (let ((_e1125711331_
                                         (gx#syntax-e _tl1125611328_)))
                                    (let ((_hd1125811334_
                                           (##car _e1125711331_))
                                          (_tl1125911336_
                                           (##cdr _e1125711331_)))
                                      (let* ((_ns11339_ _hd1125811334_)
                                             (_rest11341_ _tl1125911336_))
                                        (if '#t
                                            (let ((_ns11346_
                                                   (if (gx#identifier?
                                                        _ns11339_)
                                                       (symbol->string
                                                        (gx#stx-e _ns11339_))
                                                       (if (let ((_$e11343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns11339_)))
                     (if _$e11343_ _$e11343_ (gx#stx-false? _ns11339_)))
                   (gx#stx-e _ns11339_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns11339_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp11238_
                                               _rest11341_
                                               _pre11241_
                                               _ns11346_
                                               _pkg11243_))
                                            (_E1125311319_)))))
                                  (_E1125311319_))
                              (_E1125311319_))))
                      (_E1125311319_))))
               (_E1124511372_
                (lambda ()
                  (if (gx#stx-pair? _e1124411268_)
                      (let ((_e1124711352_ (gx#syntax-e _e1124411268_)))
                        (let ((_hd1124811355_ (##car _e1124711352_))
                              (_tl1124911357_ (##cdr _e1124711352_)))
                          (if (eq? (gx#stx-e _hd1124811355_) 'prelude:)
                              (if (gx#stx-pair? _tl1124911357_)
                                  (let ((_e1125011360_
                                         (gx#syntax-e _tl1124911357_)))
                                    (let ((_hd1125111363_
                                           (##car _e1125011360_))
                                          (_tl1125211365_
                                           (##cdr _e1125011360_)))
                                      (let* ((_prelude11368_ _hd1125111363_)
                                             (_rest11370_ _tl1125211365_))
                                        (if '#t
                                            (_lp11238_
                                             _rest11370_
                                             _prelude11368_
                                             _ns11242_
                                             _pkg11243_)
                                            (_E1124611348_)))))
                                  (_E1124611348_))
                              (_E1124611348_))))
                      (_E1124611348_)))))
          (_E1124511372_)))))
  (define gx#core-read-module/lang
    (lambda (_path11072_)
      (letrec ((_read-body11074_
                (lambda (_inp11155_
                         _pre11156_
                         _ns11157_
                         _pkg11158_
                         _args11159_)
                  (let ((_g11607_
                         (if _pkg11158_
                             (values _pre11156_ _ns11157_ _pkg11158_)
                             (gx#core-read-module-package
                              _path11072_
                              _pre11156_
                              _ns11157_))))
                    (begin
                      (let ((_g11608_ (values-count _g11607_)))
                        (if (not (fx= _g11608_ 3))
                            (error "Context expects 3 values" _g11608_)))
                      (let ((_pre11161_ (values-ref _g11607_ 0))
                            (_ns11162_ (values-ref _g11607_ 1))
                            (_pkg11163_ (values-ref _g11607_ 2)))
                        (let* ((_prelude11165_
                                (gx#import-module__0 _pre11161_))
                               (_read-module-body11219_
                                (let ((_$e11211_
                                       (find (lambda (_e1116611168_)
                                               (let* ((_g1117011180_
                                                       _e1116611168_)
                                                      (_E1117311184_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _g1117011180_)))
                                                      (_else1117211188_
                                                       (lambda () '#f))
                                                      (_K1117411192_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1117011180_
                                                      (##type-id
                                                       gx#module-export::t))
                                                     (let* ((_e1117511195_
                                                             (##vector-ref
                                                              _g1117011180_
                                                              '1))
                                                            (_e1117611198_
                                                             (##vector-ref
                                                              _g1117011180_
                                                              '2))
                                                            (_e1117711201_
                                                             (##vector-ref
                                                              _g1117011180_
                                                              '3)))
                                                       (if (##eq? _e1117711201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1117811204_ (##vector-ref _g1117011180_ '4)))
                     (if ((lambda (_g1120611208_)
                            (eq? _g1120611208_ 'read-module-body))
                          _e1117811204_)
                         (_K1117411192_)
                         (_else1117211188_)))
                   (_else1117211188_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1117211188_))))
                                             (##structure-ref
                                              _prelude11165_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e11211_
                                      ((lambda (_xport11214_)
                                         (let ((_proc11217_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport11214_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc11217_)
                                               _proc11217_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path11072_
                                                _pre11161_
                                                _proc11217_))))
                                       _$e11211_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Illegal #lang prelude; does not export read-module-body for syntax"
                                       _path11072_
                                       _pre11161_))))
                               (_path-id11221_
                                (gx#core-module-path->namespace _path11072_))
                               (_pkg-id11223_
                                (if _pkg11163_
                                    (string-append
                                     _pkg11163_
                                     '"/"
                                     _path-id11221_)
                                    _path-id11221_))
                               (_module-id11225_
                                (string->symbol _pkg-id11223_))
                               (_module-ns11230_
                                (let ((_$e11227_ _ns11162_))
                                  (if _$e11227_ _$e11227_ _pkg-id11223_)))
                               (_body11233_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body11219_ _inp11155_))
                                 gx#current-module-reader-path
                                 _path11072_
                                 gx#current-module-reader-args
                                 _args11159_)))
                          (values _prelude11165_
                                  _module-id11225_
                                  _module-ns11230_
                                  _body11233_)))))))
               (_string-e11075_
                (lambda (_obj11152_ _what11153_)
                  (if (string? _obj11152_)
                      _obj11152_
                      (if (symbol? _obj11152_)
                          (symbol->string _obj11152_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what11153_)
                           _path11072_
                           _obj11152_)))))
               (_read-lang-args11076_
                (lambda (_inp11107_ _args11108_)
                  (let* ((_args1110911117_ _args11108_)
                         (_E1111211121_
                          (lambda ()
                            (error '"No clause matching" _args1110911117_)))
                         (_else1111111125_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path11072_)))
                         (_K1111311140_
                          (lambda (_args11128_ _prelude11129_)
                            (let* ((_pkg11131_ (pgetq 'package: _args11128_))
                                   (_pkg11133_
                                    (if _pkg11131_
                                        (_string-e11075_ _pkg11131_ '"package")
                                        '#f))
                                   (_ns11135_ (pgetq 'namespace: _args11128_))
                                   (_ns11137_
                                    (if _ns11135_
                                        (_string-e11075_
                                         _ns11135_
                                         '"namespace")
                                        '#f)))
                              (_read-body11074_
                               _inp11107_
                               _prelude11129_
                               _ns11137_
                               _pkg11133_
                               _args11128_)))))
                    (if (##pair? _args1110911117_)
                        (let ((_hd1111411143_ (##car _args1110911117_))
                              (_tl1111511145_ (##cdr _args1110911117_)))
                          (let* ((_prelude11148_ _hd1111411143_)
                                 (_args11150_ _tl1111511145_))
                            (_K1111311140_ _args11150_ _prelude11148_)))
                        (_else1111111125_)))))
               (_read-lang11077_
                (lambda (_inp11082_)
                  (let* ((_head11084_ (read-line _inp11082_))
                         (_$e11086_ (string-index _head11084_ '#\space)))
                    (if _$e11086_
                        ((lambda (_ix11089_)
                           (let ((_lang11091_
                                  (substring _head11084_ '0 _ix11089_)))
                             (if (equal? _lang11091_ '"#lang")
                                 (let* ((_rest11093_
                                         (substring
                                          _head11084_
                                          (fx+ _ix11089_ '1)
                                          (string-length _head11084_)))
                                        (_args11104_
                                         (with-exception-catcher
                                          (lambda (_g1109411096_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path11072_
                                             _g1109411096_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest11093_
                                             (lambda (_g1109911101_)
                                               (read-all
                                                _g1109911101_
                                                read)))))))
                                   (_read-lang-args11076_
                                    _inp11082_
                                    _args11104_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path11072_))))
                         _$e11086_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path11072_)))))
               (_read-e11078_
                (lambda (_inp11080_)
                  (if (eq? (peek-char _inp11080_) '#\#)
                      (_read-lang11077_ _inp11080_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path11072_)))))
        (call-with-input-file _path11072_ _read-e11078_))))
  (define gx#core-read-module-package
    (lambda (_path11026_ _pre11027_ _ns11028_)
      (letrec ((_string-e11030_
                (lambda (_e11070_)
                  (if (symbol? _e11070_)
                      (symbol->string _e11070_)
                      (if (string? _e11070_)
                          _e11070_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e11070_))))))
        (let _lp11032_ ((_dir11034_ (path-directory _path11026_))
                        (_pkg-path11035_ '()))
          (let ((_gerbil.pkg11037_ (path-expand '"gerbil.pkg" _dir11034_)))
            (if (file-exists? _gerbil.pkg11037_)
                (let ((_plist11039_
                       (call-with-input-file _gerbil.pkg11037_ read)))
                  (if (eof-object? _plist11039_)
                      (let ((_pkg11041_
                             (if (not (null? _pkg-path11035_))
                                 (string-join _pkg-path11035_ '"/")
                                 '#f)))
                        (values _pre11027_ _ns11028_ _pkg11041_))
                      (if (list? _plist11039_)
                          (let* ((_root11043_ (pgetq 'package: _plist11039_))
                                 (_pkg11047_
                                  (let ((_pkg-path11045_
                                         (if _root11043_
                                             (cons (_string-e11030_
                                                    _root11043_)
                                                   _pkg-path11035_)
                                             _pkg-path11035_)))
                                    (if (not (null? _pkg-path11045_))
                                        (string-join _pkg-path11045_ '"/")
                                        '#f)))
                                 (_ns11054_
                                  (let ((_ns11052_
                                         (let ((_$e11049_ _ns11028_))
                                           (if _$e11049_
                                               _$e11049_
                                               (pgetq 'namespace:
                                                      _plist11039_)))))
                                    (if _ns11052_
                                        (_string-e11030_ _ns11052_)
                                        '#f)))
                                 (_pre11059_
                                  (let ((_$e11056_ _pre11027_))
                                    (if _$e11056_
                                        _$e11056_
                                        (pgetq 'prelude: _plist11039_)))))
                            (values _pre11059_ _ns11054_ _pkg11047_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist11039_))))
                (let ((_dir*11062_
                       (path-strip-trailing-directory-separator _dir11034_)))
                  (if (let ((_$e11064_ (string-empty? _dir*11062_)))
                        (if _$e11064_
                            _$e11064_
                            (equal? _dir11034_ _dir*11062_)))
                      (values _pre11027_ _ns11028_ '#f)
                      (let ((_xpath11067_ (path-strip-directory _dir*11062_))
                            (_xdir11068_ (path-directory _dir*11062_)))
                        (_lp11032_
                         _xdir11068_
                         (cons _xpath11067_ _pkg-path11035_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path11024_)
      (path-strip-extension (path-strip-directory _path11024_))))
  (define gx#core-module-path->id
    (lambda (_path11022_)
      (string->symbol (gx#core-module-path->namespace _path11022_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda10999
      (lambda (_stx-path11001_ _rel11002_)
        (let* ((_path11004_ (gx#stx-e _stx-path11001_))
               (_path11006_
                (if (string-empty? (path-extension _path11004_))
                    (string-append _path11004_ '".ss")
                    _path11004_)))
          (gx#core-resolve-path__opt-lambda4139
           _path11006_
           (let ((_$e11009_ (gx#stx-source _stx-path11001_)))
             (if _$e11009_ _$e11009_ _rel11002_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path11015_)
          (let ((_rel11017_ '#f))
            (gx#core-resolve-module-path__opt-lambda10999
             _stx-path11015_
             _rel11017_))))
      (define gx#core-resolve-module-path
        (lambda _g11610_
          (let ((_g11609_ (length _g11610_)))
            (cond ((fx= _g11609_ 1)
                   (apply gx#core-resolve-module-path__0 _g11610_))
                  ((fx= _g11609_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda10999
                          _g11610_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g11610_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10941_)
      (let* ((_spath10943_ (symbol->string (gx#stx-e _libpath10941_)))
             (_spath10945_
              (substring _spath10943_ '1 (string-length _spath10943_)))
             (_ext10947_ (path-extension _spath10945_))
             (_ssi10949_
              (if (string-empty? _ext10947_)
                  (string-append _spath10945_ '".ssi")
                  (string-append (path-strip-extension _spath10945_) '".ssi")))
             (_src10951_
              (if (string-empty? _ext10947_)
                  (string-append _spath10945_ '".ss")
                  _spath10945_)))
        (let _lp10954_ ((_rest10956_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1095710966_ _rest10956_)
                 (_E1096010970_
                  (lambda () (error '"No clause matching" _rest1095710966_)))
                 (_try-match1095910978_
                  (lambda ()
                    (let ((_K1096110975_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Cannot find library module"
                              _libpath10941_))))
                      (if (##null? _rest1095710966_)
                          (_K1096110975_)
                          (_E1096010970_)))))
                 (_K1096210988_
                  (lambda (_rest10981_ _dir10982_)
                    (let ((_compiled-path10984_
                           (path-expand _ssi10949_ _dir10982_)))
                      (if (file-exists? _compiled-path10984_)
                          (path-normalize _compiled-path10984_)
                          (let ((_src-path10986_
                                 (path-expand _src10951_ _dir10982_)))
                            (if (file-exists? _src-path10986_)
                                (path-normalize _src-path10986_)
                                (_lp10954_ _rest10981_))))))))
            (if (##pair? _rest1095710966_)
                (let ((_hd1096310991_ (##car _rest1095710966_))
                      (_tl1096410993_ (##cdr _rest1095710966_)))
                  (let* ((_dir10996_ _hd1096310991_)
                         (_rest10998_ _tl1096410993_))
                    (_K1096210988_ _rest10998_ _dir10996_)))
                (_try-match1095910978_)))))))
  (define gx#core-library-module-path?
    (lambda (_stx10939_) (gx#core-special-module-path? _stx10939_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10934_ _char10935_)
      (if (gx#identifier? _stx10934_)
          (if (interned-symbol? (gx#stx-e _stx10934_))
              (let ((_str10937_ (symbol->string (gx#stx-e _stx10934_))))
                (if (fx> (string-length _str10937_) '1)
                    (eq? (string-ref _str10937_ '0) _char10935_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10928_)
      (gx#core-bound-identifier?__opt-lambda4229
       _stx10928_
       (lambda (_g1092910931_)
         (gx#expander-binding?__opt-lambda4266
          _g1092910931_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10922_)
      (gx#core-bound-identifier?__opt-lambda4229
       _stx10922_
       (lambda (_g1092310925_)
         (gx#expander-binding?__opt-lambda4266
          _g1092310925_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10909_)
      (letrec ((_module-prelude?10911_
                (lambda (_e10917_)
                  (let ((_$e10919_
                         (##structure-instance-of?
                          _e10917_
                          'gx#module-context::t)))
                    (if _$e10919_
                        _$e10919_
                        (##structure-instance-of?
                         _e10917_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4229
         _stx10909_
         (lambda (_g1091210914_)
           (gx#expander-binding?__opt-lambda4266
            _g1091210914_
            _module-prelude?10911_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10837
      (lambda (_in10839_ _ctx10840_ _force-weak?10841_)
        (let* ((_in1084210851_ _in10839_)
               (_E1084410855_
                (lambda () (error '"No clause matching" _in1084210851_)))
               (_K1084510868_
                (lambda (_weak?10858_ _phi10859_ _key10860_ _source10861_)
                  (gx#core-bind!__opt-lambda4505
                   _key10860_
                   (let ((_e10863_
                          (gx#core-resolve-module-export _source10861_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e10863_ '1 gx#binding::t '#f)
                      _key10860_
                      _phi10859_
                      _e10863_
                      (##direct-structure-ref
                       _source10861_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e10865_ _force-weak?10841_))
                        (if _$e10865_ _$e10865_ _weak?10858_))))
                   gx#core-context-rebind?
                   _phi10859_
                   _ctx10840_))))
          (if (##structure-direct-instance-of?
               _in1084210851_
               (##type-id gx#module-import::t))
              (let* ((_e1084610871_ (##vector-ref _in1084210851_ '1))
                     (_source10874_ _e1084610871_)
                     (_e1084710876_ (##vector-ref _in1084210851_ '2))
                     (_key10879_ _e1084710876_)
                     (_e1084810881_ (##vector-ref _in1084210851_ '3))
                     (_phi10884_ _e1084810881_)
                     (_e1084910886_ (##vector-ref _in1084210851_ '4))
                     (_weak?10889_ _e1084910886_))
                (_K1084510868_
                 _weak?10889_
                 _phi10884_
                 _key10879_
                 _source10874_))
              (_E1084410855_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10894_)
          (let* ((_ctx10896_ (gx#current-expander-context))
                 (_force-weak?10898_ '#f))
            (gx#core-bind-import!__opt-lambda10837
             _in10894_
             _ctx10896_
             _force-weak?10898_))))
      (define gx#core-bind-import!__1
        (lambda (_in10900_ _ctx10901_)
          (let ((_force-weak?10903_ '#f))
            (gx#core-bind-import!__opt-lambda10837
             _in10900_
             _ctx10901_
             _force-weak?10903_))))
      (define gx#core-bind-import!
        (lambda _g11612_
          (let ((_g11611_ (length _g11612_)))
            (cond ((fx= _g11611_ 1) (apply gx#core-bind-import!__0 _g11612_))
                  ((fx= _g11611_ 2) (apply gx#core-bind-import!__1 _g11612_))
                  ((fx= _g11611_ 3)
                   (apply gx#core-bind-import!__opt-lambda10837 _g11612_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g11612_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10823
      (lambda (_in10825_ _ctx10826_)
        (gx#core-bind-import!__opt-lambda10837 _in10825_ _ctx10826_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10831_)
          (let ((_ctx10833_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10823
             _in10831_
             _ctx10833_))))
      (define gx#core-bind-weak-import!
        (lambda _g11614_
          (let ((_g11613_ (length _g11614_)))
            (cond ((fx= _g11613_ 1)
                   (apply gx#core-bind-weak-import!__0 _g11614_))
                  ((fx= _g11613_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10823 _g11614_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g11614_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10716_)
      (letrec ((_subst10718_
                (lambda (_key10764_)
                  (let* ((_key1076510773_ _key10764_)
                         (_E1076810777_
                          (lambda ()
                            (error '"No clause matching" _key1076510773_)))
                         (_else1076710781_ (lambda () _key10764_))
                         (_K1076910812_
                          (lambda (_mark10784_ _id10785_)
                            (let* ((_mark1078610792_ _mark10784_)
                                   (_E1078810796_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1078610792_)))
                                   (_K1078910804_
                                    (lambda (_subst10799_)
                                      (let ((_$e10801_
                                             (if _subst10799_
                                                 (table-ref
                                                  _subst10799_
                                                  _id10785_
                                                  '#f)
                                                 '#f)))
                                        (if _$e10801_
                                            _$e10801_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key10764_))))))
                              (if (##structure-instance-of?
                                   _mark1078610792_
                                   (##type-id gx#expander-mark::t))
                                  (let* ((_e1079010807_
                                          (##vector-ref _mark1078610792_ '1))
                                         (_subst10810_ _e1079010807_))
                                    (_K1078910804_ _subst10810_))
                                  (_E1078810796_))))))
                    (if (##pair? _key1076510773_)
                        (let ((_hd1077010815_ (##car _key1076510773_))
                              (_tl1077110817_ (##cdr _key1076510773_)))
                          (let* ((_id10820_ _hd1077010815_)
                                 (_mark10822_ _tl1077110817_))
                            (_K1076910812_ _mark10822_ _id10820_)))
                        (_else1076710781_))))))
        (let* ((_out1071910729_ _out10716_)
               (_E1072110733_
                (lambda () (error '"No clause matching" _out1071910729_)))
               (_K1072210740_
                (lambda (_phi10736_ _key10737_ _ctx10738_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx10738_ _phi10736_)
                   (_subst10718_ _key10737_)))))
          (if (##structure-direct-instance-of?
               _out1071910729_
               (##type-id gx#module-export::t))
              (let* ((_e1072310743_ (##vector-ref _out1071910729_ '1))
                     (_ctx10746_ _e1072310743_)
                     (_e1072410748_ (##vector-ref _out1071910729_ '2))
                     (_key10751_ _e1072410748_)
                     (_e1072510753_ (##vector-ref _out1071910729_ '3))
                     (_phi10756_ _e1072510753_)
                     (_e1072610758_ (##vector-ref _out1071910729_ '4))
                     (_e1072710761_ (##vector-ref _out1071910729_ '5)))
                (_K1072210740_ _phi10756_ _key10751_ _ctx10746_))
              (_E1072110733_))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10639
      (lambda (_out10641_ _rename10642_ _dphi10643_)
        (let* ((_out1064410654_ _out10641_)
               (_E1064610658_
                (lambda () (error '"No clause matching" _out1064410654_)))
               (_K1064710670_
                (lambda (_weak?10661_
                         _name10662_
                         _phi10663_
                         _key10664_
                         _ctx10665_)
                  (##structure
                   gx#module-import::t
                   _out10641_
                   (let ((_$e10667_ _rename10642_))
                     (if _$e10667_ _$e10667_ _name10662_))
                   (fx+ _phi10663_ _dphi10643_)
                   _weak?10661_))))
          (if (##structure-direct-instance-of?
               _out1064410654_
               (##type-id gx#module-export::t))
              (let* ((_e1064810673_ (##vector-ref _out1064410654_ '1))
                     (_ctx10676_ _e1064810673_)
                     (_e1064910678_ (##vector-ref _out1064410654_ '2))
                     (_key10681_ _e1064910678_)
                     (_e1065010683_ (##vector-ref _out1064410654_ '3))
                     (_phi10686_ _e1065010683_)
                     (_e1065110688_ (##vector-ref _out1064410654_ '4))
                     (_name10691_ _e1065110688_)
                     (_e1065210693_ (##vector-ref _out1064410654_ '5))
                     (_weak?10696_ _e1065210693_))
                (_K1064710670_
                 _weak?10696_
                 _name10691_
                 _phi10686_
                 _key10681_
                 _ctx10676_))
              (_E1064610658_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10701_)
          (let* ((_rename10703_ '#f) (_dphi10705_ '0))
            (gx#core-module-export->import__opt-lambda10639
             _out10701_
             _rename10703_
             _dphi10705_))))
      (define gx#core-module-export->import__1
        (lambda (_out10707_ _rename10708_)
          (let ((_dphi10710_ '0))
            (gx#core-module-export->import__opt-lambda10639
             _out10707_
             _rename10708_
             _dphi10710_))))
      (define gx#core-module-export->import
        (lambda _g11616_
          (let ((_g11615_ (length _g11616_)))
            (cond ((fx= _g11615_ 1)
                   (apply gx#core-module-export->import__0 _g11616_))
                  ((fx= _g11615_ 2)
                   (apply gx#core-module-export->import__1 _g11616_))
                  ((fx= _g11615_ 3)
                   (apply gx#core-module-export->import__opt-lambda10639
                          _g11616_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g11616_))))))))
  (define gx#core-expand-module%
    (lambda (_stx10569_)
      (letrec ((_make-context10571_
                (lambda (_id10622_)
                  (let* ((_super10624_ (gx#current-expander-context))
                         (_bind-id10626_ (gx#stx-e _id10622_))
                         (_mod-id10628_
                          (if (##structure-instance-of?
                               _super10624_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super10624_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id10626_)
                              _bind-id10626_))
                         (_ns10630_ (symbol->string _mod-id10628_))
                         (_path10637_
                          (if (##structure-instance-of?
                               _super10624_
                               'gx#module-context::t)
                              (let ((_path10632_
                                     (##structure-ref
                                      _super10624_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e10634_ (pair? _path10632_)))
                                      (if _$e10634_
                                          _$e10634_
                                          (null? _path10632_)))
                                    (cons _bind-id10626_ _path10632_)
                                    (if (not _path10632_)
                                        _bind-id10626_
                                        (cons _bind-id10626_
                                              (cons _path10632_ '())))))
                              _bind-id10626_)))
                    (let ((__obj11594 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj11594
                         _mod-id10628_
                         _super10624_
                         _ns10630_
                         _path10637_)
                        __obj11594))))))
        (let* ((_e1057210582_ _stx10569_)
               (_E1057410586_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1057210582_)))
               (_E1057310618_
                (lambda ()
                  (if (gx#stx-pair? _e1057210582_)
                      (let ((_e1057510590_ (gx#syntax-e _e1057210582_)))
                        (let ((_hd1057610593_ (##car _e1057510590_))
                              (_tl1057710595_ (##cdr _e1057510590_)))
                          (if (gx#stx-pair? _tl1057710595_)
                              (let ((_e1057810598_
                                     (gx#syntax-e _tl1057710595_)))
                                (let ((_hd1057910601_ (##car _e1057810598_))
                                      (_tl1058010603_ (##cdr _e1057810598_)))
                                  (let* ((_id10606_ _hd1057910601_)
                                         (_body10608_ _tl1058010603_))
                                    (if (if (gx#identifier? _id10606_)
                                            (gx#stx-list? _body10608_)
                                            '#f)
                                        (let* ((_ctx10610_
                                                (_make-context10571_
                                                 _id10606_))
                                               (_body10612_
                                                (gx#core-expand-module-begin
                                                 _body10608_
                                                 _ctx10610_))
                                               (_body10614_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body10612_)
                                                 (gx#stx-source _stx10569_))))
                                          (begin
                                            (##structure-set!
                                             _ctx10610_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body10614_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx10610_
                                             _body10614_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id10606_
                                             _ctx10610_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id10606_)
                                              _body10614_)
                                             (gx#stx-source _stx10569_))))
                                        (_E1057410586_)))))
                              (_E1057410586_))))
                      (_E1057410586_)))))
          (_E1057310618_)))))
  (define gx#core-expand-module-begin
    (lambda (_body10535_ _ctx10536_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx10539_
                   (gx#core-expand-head (cons '%%begin-module _body10535_)))
                  (_e1054010547_ _stx10539_)
                  (_E1054210551_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx10539_)))
                  (_E1054110565_
                   (lambda ()
                     (if (gx#stx-pair? _e1054010547_)
                         (let ((_e1054310555_ (gx#syntax-e _e1054010547_)))
                           (let ((_hd1054410558_ (##car _e1054310555_))
                                 (_tl1054510560_ (##cdr _e1054310555_)))
                             (if (if (gx#identifier? _hd1054410558_)
                                     (gx#core-identifier=?
                                      _hd1054410558_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body10563_ _tl1054510560_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx10539_)
                                           _body10563_
                                           (gx#core-expand-module-body
                                            _body10563_))
                                       (_E1054210551_)))
                                 (_E1054210551_))))
                         (_E1054210551_)))))
             (_E1054110565_))))
       gx#current-expander-context
       _ctx10536_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10331_)
      (letrec ((_expand-special10333_
                (lambda (_hd10462_ _K10463_ _rest10464_ _r10465_)
                  (let* ((_e1046610483_ _hd10462_)
                         (_E1047810487_
                          (lambda ()
                            (_K10463_
                             _rest10464_
                             (cons (gx#core-expand-top _hd10462_) _r10465_))))
                         (_E1046810499_
                          (lambda ()
                            (if (gx#stx-pair? _e1046610483_)
                                (let ((_e1047910491_
                                       (gx#syntax-e _e1046610483_)))
                                  (let ((_hd1048010494_ (##car _e1047910491_))
                                        (_tl1048110496_ (##cdr _e1047910491_)))
                                    (if (if (gx#identifier? _hd1048010494_)
                                            (gx#core-identifier=?
                                             _hd1048010494_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10463_
                                             _rest10464_
                                             (cons _hd10462_ _r10465_))
                                            (_E1047810487_))
                                        (_E1047810487_))))
                                (_E1047810487_))))
                         (_E1046710531_
                          (lambda ()
                            (if (gx#stx-pair? _e1046610483_)
                                (let ((_e1046910503_
                                       (gx#syntax-e _e1046610483_)))
                                  (let ((_hd1047010506_ (##car _e1046910503_))
                                        (_tl1047110508_ (##cdr _e1046910503_)))
                                    (if (if (gx#identifier? _hd1047010506_)
                                            (gx#core-identifier=?
                                             _hd1047010506_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1047110508_)
                                            (let ((_e1047210511_
                                                   (gx#syntax-e
                                                    _tl1047110508_)))
                                              (let ((_hd1047310514_
                                                     (##car _e1047210511_))
                                                    (_tl1047410516_
                                                     (##cdr _e1047210511_)))
                                                (let ((_hd-bind10519_
                                                       _hd1047310514_))
                                                  (if (gx#stx-pair?
                                                       _tl1047410516_)
                                                      (let ((_e1047510521_
                                                             (gx#syntax-e
                                                              _tl1047410516_)))
                                                        (let ((_hd1047610524_
                                                               (##car _e1047510521_))
                                                              (_tl1047710526_
                                                               (##cdr _e1047510521_)))
                                                          (let ((_expr10529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1047610524_))
                    (if (gx#stx-null? _tl1047710526_)
                        (if (gx#core-bind-values? _hd-bind10519_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10519_)
                              (_K10463_ _rest10464_ (cons _hd10462_ _r10465_)))
                            (_E1046810499_))
                        (_E1046810499_)))))
              (_E1046810499_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1046810499_))
                                        (_E1046810499_))))
                                (_E1046810499_)))))
                    (_E1046710531_))))
               (_expand-body10334_
                (lambda (_rbody10336_)
                  (let _lp10338_ ((_rest10340_ _rbody10336_) (_body10341_ '()))
                    (let* ((_rest1034210350_ _rest10340_)
                           (_E1034510354_
                            (lambda ()
                              (error '"No clause matching" _rest1034210350_)))
                           (_else1034410358_ (lambda () _body10341_))
                           (_K1034610450_
                            (lambda (_rest10361_ _hd10362_)
                              (let* ((_e1036310384_ _hd10362_)
                                     (_E1037910388_
                                      (lambda ()
                                        (_lp10338_
                                         _rest10361_
                                         (cons (gx#core-expand-expression
                                                _hd10362_)
                                               _body10341_))))
                                     (_E1037510402_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1036310384_)
                                            (let ((_e1038010392_
                                                   (gx#syntax-e
                                                    _e1036310384_)))
                                              (let ((_hd1038110395_
                                                     (##car _e1038010392_))
                                                    (_tl1038210397_
                                                     (##cdr _e1038010392_)))
                                                (let ((_form10400_
                                                       _hd1038110395_))
                                                  (if (gx#core-bound-identifier?__opt-lambda4229
                                                       _form10400_
                                                       gx#special-form-binding?)
                                                      (_lp10338_
                                                       _rest10361_
                                                       (cons _hd10362_
                                                             _body10341_))
                                                      (_E1037910388_)))))
                                            (_E1037910388_))))
                                     (_E1036510414_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1036310384_)
                                            (let ((_e1037610406_
                                                   (gx#syntax-e
                                                    _e1036310384_)))
                                              (let ((_hd1037710409_
                                                     (##car _e1037610406_))
                                                    (_tl1037810411_
                                                     (##cdr _e1037610406_)))
                                                (if (if (gx#identifier?
                                                         _hd1037710409_)
                                                        (gx#core-identifier=?
                                                         _hd1037710409_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp10338_
                                                         _rest10361_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd10362_)
                                                               _body10341_))
                                                        (_E1037510402_))
                                                    (_E1037510402_))))
                                            (_E1037510402_))))
                                     (_E1036410446_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1036310384_)
                                            (let ((_e1036610418_
                                                   (gx#syntax-e
                                                    _e1036310384_)))
                                              (let ((_hd1036710421_
                                                     (##car _e1036610418_))
                                                    (_tl1036810423_
                                                     (##cdr _e1036610418_)))
                                                (if (if (gx#identifier?
                                                         _hd1036710421_)
                                                        (gx#core-identifier=?
                                                         _hd1036710421_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1036810423_)
                                                        (let ((_e1036910426_
                                                               (gx#syntax-e
                                                                _tl1036810423_)))
                                                          (let ((_hd1037010429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1036910426_))
                        (_tl1037110431_ (##cdr _e1036910426_)))
                    (let ((_hd-bind10434_ _hd1037010429_))
                      (if (gx#stx-pair? _tl1037110431_)
                          (let ((_e1037210436_ (gx#syntax-e _tl1037110431_)))
                            (let ((_hd1037310439_ (##car _e1037210436_))
                                  (_tl1037410441_ (##cdr _e1037210436_)))
                              (let ((_expr10444_ _hd1037310439_))
                                (if (gx#stx-null? _tl1037410441_)
                                    (if '#t
                                        (_lp10338_
                                         _rest10361_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind10434_)
                                                 (gx#core-expand-expression
                                                  _expr10444_))
                                                (gx#stx-source _hd10362_))
                                               _body10341_))
                                        (_E1036510414_))
                                    (_E1036510414_)))))
                          (_E1036510414_)))))
                (_E1036510414_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1036510414_))))
                                            (_E1036510414_)))))
                                (_E1036410446_)))))
                      (if (##pair? _rest1034210350_)
                          (let ((_hd1034710453_ (##car _rest1034210350_))
                                (_tl1034810455_ (##cdr _rest1034210350_)))
                            (let* ((_hd10458_ _hd1034710453_)
                                   (_rest10460_ _tl1034810455_))
                              (_K1034610450_ _rest10460_ _hd10458_)))
                          (_else1034410358_)))))))
        (_expand-body10334_
         (gx#core-expand-block__opt-lambda5283
          (cons '%#begin-module _body10331_)
          _expand-special10333_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx10174_
             _expanded?10175_
             _method10176_
             _current-phi10177_
             _expand110178_)
      (letrec ((_K10180_
                (lambda (_rest10298_ _r10299_)
                  (let* ((_e1030010307_ _rest10298_)
                         (_E1030210311_ (lambda () _r10299_))
                         (_E1030110327_
                          (lambda ()
                            (if (gx#stx-pair? _e1030010307_)
                                (let ((_e1030310315_
                                       (gx#syntax-e _e1030010307_)))
                                  (let ((_hd1030410318_ (##car _e1030310315_))
                                        (_tl1030510320_ (##cdr _e1030310315_)))
                                    (let* ((_hd10323_ _hd1030410318_)
                                           (_rest10325_ _tl1030510320_))
                                      (if '#t
                                          (_step10181_
                                           _hd10323_
                                           _rest10325_
                                           _r10299_)
                                          (_E1030210311_)))))
                                (_E1030210311_)))))
                    (_E1030110327_))))
               (_step10181_
                (lambda (_hd10212_ _rest10213_ _r10214_)
                  (let* ((_e1021510233_ _hd10212_)
                         (_E1022810237_
                          (lambda ()
                            (if (_expanded?10175_ (gx#stx-e _hd10212_))
                                (_K10180_
                                 _rest10213_
                                 (cons (gx#stx-e _hd10212_) _r10214_))
                                (_expand110178_
                                 _hd10212_
                                 _K10180_
                                 _rest10213_
                                 _r10214_))))
                         (_E1022410253_
                          (lambda ()
                            (if (gx#stx-pair? _e1021510233_)
                                (let ((_e1022910241_
                                       (gx#syntax-e _e1021510233_)))
                                  (let ((_hd1023010244_ (##car _e1022910241_))
                                        (_tl1023110246_ (##cdr _e1022910241_)))
                                    (let* ((_macro10249_ _hd1023010244_)
                                           (_body10251_ _tl1023110246_))
                                      (if (gx#core-bound-identifier?__opt-lambda4229
                                           _macro10249_
                                           gx#syntax-binding?)
                                          (_K10180_
                                           (cons (gx#core-apply-expander__opt-lambda5001
                                                  (gx#syntax-local-e__0
                                                   _macro10249_)
                                                  _hd10212_
                                                  _method10176_)
                                                 _rest10213_)
                                           _r10214_)
                                          (_E1022810237_)))))
                                (_E1022810237_))))
                         (_E1021710267_
                          (lambda ()
                            (if (gx#stx-pair? _e1021510233_)
                                (let ((_e1022510257_
                                       (gx#syntax-e _e1021510233_)))
                                  (let ((_hd1022610260_ (##car _e1022510257_))
                                        (_tl1022710262_ (##cdr _e1022510257_)))
                                    (if (eq? (gx#stx-e _hd1022610260_) 'begin:)
                                        (let ((_body10265_ _tl1022710262_))
                                          (if '#t
                                              (_K10180_
                                               (gx#stx-foldr
                                                cons
                                                _rest10213_
                                                _body10265_)
                                               _r10214_)
                                              (_E1022410253_)))
                                        (_E1022410253_))))
                                (_E1022410253_))))
                         (_E1021610294_
                          (lambda ()
                            (if (gx#stx-pair? _e1021510233_)
                                (let ((_e1021810271_
                                       (gx#syntax-e _e1021510233_)))
                                  (let ((_hd1021910274_ (##car _e1021810271_))
                                        (_tl1022010276_ (##cdr _e1021810271_)))
                                    (if (eq? (gx#stx-e _hd1021910274_) 'phi:)
                                        (if (gx#stx-pair? _tl1022010276_)
                                            (let ((_e1022110279_
                                                   (gx#syntax-e
                                                    _tl1022010276_)))
                                              (let ((_hd1022210282_
                                                     (##car _e1022110279_))
                                                    (_tl1022310284_
                                                     (##cdr _e1022110279_)))
                                                (let* ((_dphi10287_
                                                        _hd1022210282_)
                                                       (_body10289_
                                                        _tl1022310284_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi10287_)
                                                      (let ((_rbody10292_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K10180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body10289_
                         '()))
                      _current-phi10177_
                      (fx+ (gx#stx-e _dphi10287_) (_current-phi10177_)))))
                (_K10180_ _rest10213_ (foldr1 cons _r10214_ _rbody10292_)))
              (_E1021710267_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1021710267_))
                                        (_E1021710267_))))
                                (_E1021710267_)))))
                    (_E1021610294_)))))
        (let* ((_e1018210189_ _stx10174_)
               (_E1018410193_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1018210189_)))
               (_E1018310208_
                (lambda ()
                  (if (gx#stx-pair? _e1018210189_)
                      (let ((_e1018510197_ (gx#syntax-e _e1018210189_)))
                        (let ((_hd1018610200_ (##car _e1018510197_))
                              (_tl1018710202_ (##cdr _e1018510197_)))
                          (let ((_body10205_ _tl1018710202_))
                            (if '#t
                                (if (_current-phi10177_)
                                    (_K10180_ _body10205_ '())
                                    (call-with-parameters
                                     (lambda () (_K10180_ _body10205_ '()))
                                     _current-phi10177_
                                     (gx#current-expander-phi)))
                                (_E1018410193_)))))
                      (_E1018410193_)))))
          (_E1018310208_)))))
  (begin
    (define gx#core-expand-import%__opt-lambda9711
      (lambda (_stx9713_ _internal-expand?9714_)
        (letrec ((_expand19716_
                  (lambda (_hd10159_ _K10160_ _rest10161_ _r10162_)
                    (if (gx#core-bound-module? _hd10159_)
                        (_import19717_
                         (gx#syntax-local-e__0 _hd10159_)
                         _K10160_
                         _rest10161_
                         _r10162_)
                        (if (gx#core-library-module-path? _hd10159_)
                            (_import19717_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd10159_))
                             _K10160_
                             _rest10161_
                             _r10162_)
                            (if (gx#stx-string? _hd10159_)
                                (_import19717_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__opt-lambda10999
                                   _hd10159_
                                   (gx#stx-source _stx9713_)))
                                 _K10160_
                                 _rest10161_
                                 _r10162_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd10159_)
                                     'gx#module-context::t)
                                    (_K10160_
                                     _rest10161_
                                     (cons (gx#stx-e _hd10159_) _r10162_))
                                    (if (_import-spec?9718_ _hd10159_)
                                        (_import-spec9723_
                                         _hd10159_
                                         _K10160_
                                         _rest10161_
                                         _r10162_)
                                        (if (_import-submodule?9719_ _hd10159_)
                                            (_import-submodule9721_
                                             _hd10159_
                                             _K10160_
                                             _rest10161_
                                             _r10162_)
                                            (if (_import-runtime?9720_
                                                 _hd10159_)
                                                (_import-runtime9722_
                                                 _hd10159_
                                                 _K10160_
                                                 _rest10161_
                                                 _r10162_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx9713_
                                                 _hd10159_))))))))))
                 (_import19717_
                  (lambda (_ctx10148_ _K10149_ _rest10150_ _r10151_)
                    (let ((_dphi10153_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K10149_
                       _rest10150_
                       (cons (##structure
                              gx#import-set::t
                              _ctx10148_
                              _dphi10153_
                              (map (lambda (_g1015410156_)
                                     (gx#core-module-export->import__opt-lambda10639
                                      _g1015410156_
                                      '#f
                                      _dphi10153_))
                                   (##structure-ref
                                    _ctx10148_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r10151_)))))
                 (_import-spec?9718_
                  (lambda (_hd10105_)
                    (let* ((_e1010610116_ _hd10105_)
                           (_E1010810120_ (lambda () '#f))
                           (_E1010710144_
                            (lambda ()
                              (if (gx#stx-pair? _e1010610116_)
                                  (let ((_e1010910124_
                                         (gx#syntax-e _e1010610116_)))
                                    (let ((_hd1011010127_
                                           (##car _e1010910124_))
                                          (_tl1011110129_
                                           (##cdr _e1010910124_)))
                                      (if (eq? (gx#stx-e _hd1011010127_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1011110129_)
                                              (let ((_e1011210132_
                                                     (gx#syntax-e
                                                      _tl1011110129_)))
                                                (let ((_hd1011310135_
                                                       (##car _e1011210132_))
                                                      (_tl1011410137_
                                                       (##cdr _e1011210132_)))
                                                  (let* ((_spath10140_
                                                          _hd1011310135_)
                                                         (_specs10142_
                                                          _tl1011410137_))
                                                    (if '#t
                                                        '#t
                                                        (_E1010810120_)))))
                                              (_E1010810120_))
                                          (_E1010810120_))))
                                  (_E1010810120_)))))
                      (_E1010710144_))))
                 (_import-submodule?9719_
                  (lambda (_hd10062_)
                    (let* ((_e1006310073_ _hd10062_)
                           (_E1006510077_ (lambda () '#f))
                           (_E1006410101_
                            (lambda ()
                              (if (gx#stx-pair? _e1006310073_)
                                  (let ((_e1006610081_
                                         (gx#syntax-e _e1006310073_)))
                                    (let ((_hd1006710084_
                                           (##car _e1006610081_))
                                          (_tl1006810086_
                                           (##cdr _e1006610081_)))
                                      (if (eq? (gx#stx-e _hd1006710084_) 'in:)
                                          (if (gx#stx-pair? _tl1006810086_)
                                              (let ((_e1006910089_
                                                     (gx#syntax-e
                                                      _tl1006810086_)))
                                                (let ((_hd1007010092_
                                                       (##car _e1006910089_))
                                                      (_tl1007110094_
                                                       (##cdr _e1006910089_)))
                                                  (let* ((_top10097_
                                                          _hd1007010092_)
                                                         (_sub10099_
                                                          _tl1007110094_))
                                                    (if '#t
                                                        '#t
                                                        (_E1006510077_)))))
                                              (_E1006510077_))
                                          (_E1006510077_))))
                                  (_E1006510077_)))))
                      (_E1006410101_))))
                 (_import-runtime?9720_
                  (lambda (_hd10019_)
                    (let* ((_e1002010030_ _hd10019_)
                           (_E1002210034_ (lambda () '#f))
                           (_E1002110058_
                            (lambda ()
                              (if (gx#stx-pair? _e1002010030_)
                                  (let ((_e1002310038_
                                         (gx#syntax-e _e1002010030_)))
                                    (let ((_hd1002410041_
                                           (##car _e1002310038_))
                                          (_tl1002510043_
                                           (##cdr _e1002310038_)))
                                      (if (eq? (gx#stx-e _hd1002410041_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl1002510043_)
                                              (let ((_e1002610046_
                                                     (gx#syntax-e
                                                      _tl1002510043_)))
                                                (let ((_hd1002710049_
                                                       (##car _e1002610046_))
                                                      (_tl1002810051_
                                                       (##cdr _e1002610046_)))
                                                  (let* ((_top10054_
                                                          _hd1002710049_)
                                                         (_spath10056_
                                                          _tl1002810051_))
                                                    (if '#t
                                                        '#t
                                                        (_E1002210034_)))))
                                              (_E1002210034_))
                                          (_E1002210034_))))
                                  (_E1002210034_)))))
                      (_E1002110058_))))
                 (_import-submodule9721_
                  (lambda (_hd9986_ _K9987_ _rest9988_ _r9989_)
                    (let* ((_e99909997_ _hd9986_)
                           (_E999210001_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e99909997_)))
                           (_E999110015_
                            (lambda ()
                              (if (gx#stx-pair? _e99909997_)
                                  (let ((_e999310005_
                                         (gx#syntax-e _e99909997_)))
                                    (let ((_hd999410008_ (##car _e999310005_))
                                          (_tl999510010_ (##cdr _e999310005_)))
                                      (let ((_spath10013_ _tl999510010_))
                                        (if '#t
                                            (_import19717_
                                             (_import-spec-source9724_
                                              _spath10013_)
                                             _K9987_
                                             _rest9988_
                                             _r9989_)
                                            (_E999210001_)))))
                                  (_E999210001_)))))
                      (_E999110015_))))
                 (_import-runtime9722_
                  (lambda (_hd9953_ _K9954_ _rest9955_ _r9956_)
                    (let* ((_e99579964_ _hd9953_)
                           (_E99599968_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e99579964_)))
                           (_E99589982_
                            (lambda ()
                              (if (gx#stx-pair? _e99579964_)
                                  (let ((_e99609972_
                                         (gx#syntax-e _e99579964_)))
                                    (let ((_hd99619975_ (##car _e99609972_))
                                          (_tl99629977_ (##cdr _e99609972_)))
                                      (let ((_spath9980_ _tl99629977_))
                                        (if '#t
                                            (_K9954_ _rest9955_
                                                     (cons (_import-spec-source9724_
                                                            _spath9980_)
                                                           _r9956_))
                                            (_E99599968_)))))
                                  (_E99599968_)))))
                      (_E99589982_))))
                 (_import-spec9723_
                  (lambda (_hd9792_ _K9793_ _rest9794_ _r9795_)
                    (let* ((_e97969813_ _hd9792_)
                           (_E98059817_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e97969813_)))
                           (_E97989927_
                            (lambda ()
                              (if (gx#stx-pair? _e97969813_)
                                  (let ((_e98069821_
                                         (gx#syntax-e _e97969813_)))
                                    (let ((_hd98079824_ (##car _e98069821_))
                                          (_tl98089826_ (##cdr _e98069821_)))
                                      (if (gx#stx-pair? _tl98089826_)
                                          (let ((_e98099829_
                                                 (gx#syntax-e _tl98089826_)))
                                            (let ((_hd98109832_
                                                   (##car _e98099829_))
                                                  (_tl98119834_
                                                   (##cdr _e98099829_)))
                                              (let* ((_path9837_ _hd98109832_)
                                                     (_specs9839_
                                                      _tl98119834_))
                                                (if '#t
                                                    (let ((_src-ctx9841_
                                                           (_import-spec-source9724_
                                                            _path9837_))
                                                          (_exports9842_
                                                           (make-table))
                                                          (_specs9843_
                                                           (gx#syntax->list
                                                            _specs9839_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out9845_)
                                                           (table-set!
                                                            _exports9842_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out9845_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out9845_
                           '4
                           gx#module-export::t
                           '#f))
                    _out9845_))
                 (##structure-ref _src-ctx9841_ '9 gx#module-context::t '#f))
                (_K9793_ _rest9794_
                         (foldl1 (lambda (_spec9847_ _r9848_)
                                   (let* ((_e98499865_ _spec9847_)
                                          (_E98519869_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e98499865_)))
                                          (_E98509923_
                                           (lambda ()
                                             (if (gx#stx-pair? _e98499865_)
                                                 (let ((_e98529873_
                                                        (gx#syntax-e
                                                         _e98499865_)))
                                                   (let ((_hd98539876_
                                                          (##car _e98529873_))
                                                         (_tl98549878_
                                                          (##cdr _e98529873_)))
                                                     (let ((_phi9881_
                                                            _hd98539876_))
                                                       (if (gx#stx-pair?
                                                            _tl98549878_)
                                                           (let ((_e98559883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl98549878_)))
                     (let ((_hd98569886_ (##car _e98559883_))
                           (_tl98579888_ (##cdr _e98559883_)))
                       (let ((_name9891_ _hd98569886_))
                         (if (gx#stx-pair? _tl98579888_)
                             (let ((_e98589893_ (gx#syntax-e _tl98579888_)))
                               (let ((_hd98599896_ (##car _e98589893_))
                                     (_tl98609898_ (##cdr _e98589893_)))
                                 (let ((_src-phi9901_ _hd98599896_))
                                   (if (gx#stx-pair? _tl98609898_)
                                       (let ((_e98619903_
                                              (gx#syntax-e _tl98609898_)))
                                         (let ((_hd98629906_
                                                (##car _e98619903_))
                                               (_tl98639908_
                                                (##cdr _e98619903_)))
                                           (let ((_src-name9911_ _hd98629906_))
                                             (if (gx#stx-null? _tl98639908_)
                                                 (if (if (gx#stx-fixnum?
                                                          _src-phi9901_)
                                                         (if (gx#identifier?
                                                              _src-name9911_)
                                                             (if (gx#stx-fixnum?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _phi9881_)
                         (gx#identifier? _name9891_)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_src-phi9913_
                                                            (gx#stx-e
                                                             _src-phi9901_))
                                                           (_src-name9914_
                                                            (gx#core-identifier-key
                                                             _src-name9911_))
                                                           (_phi9915_
                                                            (gx#stx-e
                                                             _phi9881_))
                                                           (_name9916_
                                                            (gx#core-identifier-key
                                                             _name9891_)))
                                                       (let ((_$e9918_
                                                              (table-ref
                                                               _exports9842_
                                                               (cons _src-phi9913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _src-name9914_)
                       '#f)))
                 (if _$e9918_
                     ((lambda (_out9921_)
                        (cons (gx#core-module-export->import__opt-lambda10639
                               _out9921_
                               _name9916_
                               (fx- _phi9915_ _src-phi9913_))
                              _r9848_))
                      _$e9918_)
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; no matching export"
                      _stx9713_
                      _hd9792_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E98519869_))
                                                 (_E98519869_)))))
                                       (_E98519869_)))))
                             (_E98519869_)))))
                   (_E98519869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E98519869_)))))
                                     (_E98509923_)))
                                 _r9795_
                                 _specs9843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98059817_)))))
                                          (_E98059817_))))
                                  (_E98059817_))))
                           (_E97979949_
                            (lambda ()
                              (if (gx#stx-pair? _e97969813_)
                                  (let ((_e97999931_
                                         (gx#syntax-e _e97969813_)))
                                    (let ((_hd98009934_ (##car _e97999931_))
                                          (_tl98019936_ (##cdr _e97999931_)))
                                      (if (gx#stx-pair? _tl98019936_)
                                          (let ((_e98029939_
                                                 (gx#syntax-e _tl98019936_)))
                                            (let ((_hd98039942_
                                                   (##car _e98029939_))
                                                  (_tl98049944_
                                                   (##cdr _e98029939_)))
                                              (let ((_path9947_ _hd98039942_))
                                                (if (gx#stx-null? _tl98049944_)
                                                    (if '#t
                                                        (_K9793_ _rest9794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (_import-spec-source9724_ _path9947_) _r9795_))
                (_E97989927_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97989927_)))))
                                          (_E97989927_))))
                                  (_E97989927_)))))
                      (_E97979949_))))
                 (_import-spec-source9724_
                  (lambda (_spath9790_)
                    (gx#core-import-nested-module _spath9790_ _stx9713_)))
                 (_import!9725_
                  (lambda (_rbody9738_)
                    (letrec* ((_current-ctx9740_ (gx#current-expander-context))
                              (_deps9741_ (make-hash-table-eq))
                              (_bind!9742_
                               (lambda (_hd9788_)
                                 (begin
                                   (gx#core-bind-import!__1
                                    _hd9788_
                                    _current-ctx9740_)
                                   (if (if (fxpositive?
                                            (##direct-structure-ref
                                             _hd9788_
                                             '3
                                             gx#module-import::t
                                             '#f))
                                           (fxzero? (##direct-structure-ref
                                                     (##direct-structure-ref
                                                      _hd9788_
                                                      '1
                                                      gx#module-import::t
                                                      '#f)
                                                     '3
                                                     gx#module-export::t
                                                     '#f))
                                           '#f)
                                       (table-set!
                                        _deps9741_
                                        (##direct-structure-ref
                                         (##direct-structure-ref
                                          _hd9788_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         '1
                                         gx#module-export::t
                                         '#f)
                                        '#t)
                                       '#!void))))
                              (_fold-e9743_
                               (lambda (_in9785_ _r9786_)
                                 (if (##structure-direct-instance-of?
                                      _in9785_
                                      'gx#module-import::t)
                                     (cons _in9785_ _r9786_)
                                     (if (##structure-direct-instance-of?
                                          _in9785_
                                          'gx#import-set::t)
                                         (foldl1 cons
                                                 _r9786_
                                                 (##direct-structure-ref
                                                  _in9785_
                                                  '3
                                                  gx#import-set::t
                                                  '#f))
                                         _r9786_)))))
                      (let _lp9745_ ((_rest9747_ _rbody9738_) (_body9748_ '()))
                        (let* ((_rest97499757_ _rest9747_)
                               (_E97529761_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest97499757_)))
                               (_else97519767_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx9740_
                                         'gx#module-context::t)
                                        (##structure-set!
                                         _current-ctx9740_
                                         (foldl1 _fold-e9743_
                                                 (##structure-ref
                                                  _current-ctx9740_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body9748_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx9765_ _g11617_)
                                       (gx#eval-module _ctx9765_))
                                     _deps9741_)
                                    _body9748_)))
                               (_K97539773_
                                (lambda (_rest9770_ _hd9771_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd9771_
                                         'gx#module-import::t)
                                        (_bind!9742_ _hd9771_)
                                        (if (##structure-direct-instance-of?
                                             _hd9771_
                                             'gx#import-set::t)
                                            (for-each
                                             _bind!9742_
                                             (##direct-structure-ref
                                              _hd9771_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (##structure-instance-of?
                                                 _hd9771_
                                                 'gx#module-context::t)
                                                '#!void
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx9713_
                                                 _hd9771_))))
                                    (_lp9745_
                                     _rest9770_
                                     (cons _hd9771_ _body9748_))))))
                          (if (##pair? _rest97499757_)
                              (let ((_hd97549776_ (##car _rest97499757_))
                                    (_tl97559778_ (##cdr _rest97499757_)))
                                (let* ((_hd9781_ _hd97549776_)
                                       (_rest9783_ _tl97559778_))
                                  (_K97539773_ _rest9783_ _hd9781_)))
                              (_else97519767_)))))))
                 (_expanded-import?9726_
                  (lambda (_e9730_)
                    (let ((_$e9732_
                           (##structure-direct-instance-of?
                            _e9730_
                            'gx#import-set::t)))
                      (if _$e9732_
                          _$e9732_
                          (let ((_$e9735_
                                 (##structure-direct-instance-of?
                                  _e9730_
                                  'gx#module-import::t)))
                            (if _$e9735_
                                _$e9735_
                                (##structure-instance-of?
                                 _e9730_
                                 'gx#module-context::t))))))))
          (let ((_rbody9728_
                 (gx#core-expand-import/export
                  _stx9713_
                  _expanded-import?9726_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand19716_)))
            (if _internal-expand?9714_
                (reverse _rbody9728_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!9725_ _rbody9728_))
                 (gx#stx-source _stx9713_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx10167_)
          (let ((_internal-expand?10169_ '#f))
            (gx#core-expand-import%__opt-lambda9711
             _stx10167_
             _internal-expand?10169_))))
      (define gx#core-expand-import%
        (lambda _g11619_
          (let ((_g11618_ (length _g11619_)))
            (cond ((fx= _g11618_ 1) (apply gx#core-expand-import%__0 _g11619_))
                  ((fx= _g11618_ 2)
                   (apply gx#core-expand-import%__opt-lambda9711 _g11619_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g11619_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9640_ _where9641_)
      (let* ((_e96429649_ _spath9640_)
             (_E96449653_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96429649_)))
             (_E96439708_
              (lambda ()
                (if (gx#stx-pair? _e96429649_)
                    (let ((_e96459657_ (gx#syntax-e _e96429649_)))
                      (let ((_hd96469660_ (##car _e96459657_))
                            (_tl96479662_ (##cdr _e96459657_)))
                        (let* ((_origin9665_ _hd96469660_)
                               (_sub9667_ _tl96479662_))
                          (if '#t
                              (let ((_origin-ctx9669_
                                     (if (gx#stx-false? _origin9665_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin9665_))))
                                (let _lp9671_ ((_rest9673_ _sub9667_)
                                               (_ctx9674_ _origin-ctx9669_))
                                  (let* ((_e96759682_ _rest9673_)
                                         (_E96779686_ (lambda () _ctx9674_))
                                         (_E96769704_
                                          (lambda ()
                                            (if (gx#stx-pair? _e96759682_)
                                                (let ((_e96789690_
                                                       (gx#syntax-e
                                                        _e96759682_)))
                                                  (let ((_hd96799693_
                                                         (##car _e96789690_))
                                                        (_tl96809695_
                                                         (##cdr _e96789690_)))
                                                    (let* ((_id9698_
                                                            _hd96799693_)
                                                           (_rest9700_
                                                            _tl96809695_))
                                                      (if '#t
                                                          (let ((_bind9702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__opt-lambda4786
                          _id9698_
                          '0
                          _ctx9674_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind9702_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind9702_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where9641_
                           _spath9640_
                           _id9698_))
                      (_lp9671_
                       _rest9700_
                       (##direct-structure-ref
                        _bind9702_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E96779686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E96779686_)))))
                                    (_E96769704_))))
                              (_E96449653_)))))
                    (_E96449653_)))))
        (_E96439708_))))
  (define gx#core-expand-import-source
    (lambda (_hd9638_)
      (gx#core-expand-import%__opt-lambda9711
       (cons 'import-internal% (cons _hd9638_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda9220
      (lambda (_stx9222_ _internal-expand?9223_)
        (letrec* ((_make-export__opt-lambda9584__1158311584_
                   (lambda (_bind9586_ _phi9587_ _ctx9588_ _name9589_)
                     (let* ((_key9591_
                             (##structure-ref _bind9586_ '2 gx#binding::t '#f))
                            (_export-key9593_
                             (if _name9589_
                                 (gx#core-identifier-key _name9589_)
                                 _key9591_)))
                       (##structure
                        gx#module-export::t
                        _ctx9588_
                        _key9591_
                        _phi9587_
                        _export-key9593_
                        (let ((_$e9596_
                               (##structure-instance-of?
                                _bind9586_
                                'gx#extern-binding::t)))
                          (if _$e9596_
                              _$e9596_
                              (##structure-direct-instance-of?
                               _bind9586_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1158511588_
                   (lambda (_bind9602_)
                     (let* ((_phi9604_ (gx#current-export-expander-phi))
                            (_ctx9606_ (gx#current-expander-context))
                            (_name9608_ '#f))
                       (_make-export__opt-lambda9584__1158311584_
                        _bind9602_
                        _phi9604_
                        _ctx9606_
                        _name9608_))))
                  (_make-export__1__1158611589_
                   (lambda (_bind9610_ _phi9611_)
                     (let* ((_ctx9613_ (gx#current-expander-context))
                            (_name9615_ '#f))
                       (_make-export__opt-lambda9584__1158311584_
                        _bind9610_
                        _phi9611_
                        _ctx9613_
                        _name9615_))))
                  (_make-export__2__1158711590_
                   (lambda (_bind9617_ _phi9618_ _ctx9619_)
                     (let ((_name9621_ '#f))
                       (_make-export__opt-lambda9584__1158311584_
                        _bind9617_
                        _phi9618_
                        _ctx9619_
                        _name9621_))))
                  (_make-export9225_
                   (lambda _g11621_
                     (let ((_g11620_ (length _g11621_)))
                       (cond ((fx= _g11620_ 1)
                              (apply _make-export__0__1158511588_ _g11621_))
                             ((fx= _g11620_ 2)
                              (apply _make-export__1__1158611589_ _g11621_))
                             ((fx= _g11620_ 3)
                              (apply _make-export__2__1158711590_ _g11621_))
                             ((fx= _g11620_ 4)
                              (apply _make-export__opt-lambda9584__1158311584_
                                     _g11621_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g11621_))))))
                  (_expand19226_
                   (lambda (_hd9299_ _K9300_ _rest9301_ _r9302_)
                     (let* ((_e93039335_ _hd9299_)
                            (_E93309339_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx9222_
                                _hd9299_)))
                            (_E93209418_
                             (lambda ()
                               (if (gx#stx-pair? _e93039335_)
                                   (let ((_e93319343_
                                          (gx#syntax-e _e93039335_)))
                                     (let ((_hd93329346_ (##car _e93319343_))
                                           (_tl93339348_ (##cdr _e93319343_)))
                                       (if (eq? (gx#stx-e _hd93329346_)
                                                'import:)
                                           (let ((_in9351_ _tl93339348_))
                                             (if (gx#stx-list? _in9351_)
                                                 (let _lp9353_ ((_in-rest9355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in9351_)
                        (_r9356_ _r9302_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e93579364_
                                                           _in-rest9355_)
                                                          (_E93599368_
                                                           (lambda ()
                                                             (_K9300_ _rest9301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r9356_)))
                  (_E93589414_
                   (lambda ()
                     (if (gx#stx-pair? _e93579364_)
                         (let ((_e93609372_ (gx#syntax-e _e93579364_)))
                           (let ((_hd93619375_ (##car _e93609372_))
                                 (_tl93629377_ (##cdr _e93609372_)))
                             (let* ((_hd9380_ _hd93619375_)
                                    (_in-rest9382_ _tl93629377_))
                               (if '#t
                                   (let ((_src9412_
                                          (if (gx#core-bound-module? _hd9380_)
                                              (gx#syntax-local-e__0 _hd9380_)
                                              (if (gx#core-library-module-path?
                                                   _hd9380_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd9380_))
                                                  (if (gx#stx-string? _hd9380_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__opt-lambda10999
                                                        _hd9380_
                                                        (gx#stx-source
                                                         _stx9222_)))
                                                      (let* ((_e93839390_
                                                              _hd9380_)
                                                             (_E93859394_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx9222_
                         _hd9380_)))
                     (_E93849408_
                      (lambda ()
                        (if (gx#stx-pair? _e93839390_)
                            (let ((_e93869398_ (gx#syntax-e _e93839390_)))
                              (let ((_hd93879401_ (##car _e93869398_))
                                    (_tl93889403_ (##cdr _e93869398_)))
                                (if (eq? (gx#stx-e _hd93879401_) 'in:)
                                    (let ((_spath9406_ _tl93889403_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath9406_
                                           _stx9222_)
                                          (_E93859394_)))
                                    (_E93859394_))))
                            (_E93859394_)))))
                (_E93849408_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp9353_
                                      _in-rest9382_
                                      (_export-imports9227_
                                       _src9412_
                                       _r9356_)))
                                   (_E93599368_)))))
                         (_E93599368_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E93589414_)))
                                                 (_E93309339_)))
                                           (_E93309339_))))
                                   (_E93309339_))))
                            (_E93079457_
                             (lambda ()
                               (if (gx#stx-pair? _e93039335_)
                                   (let ((_e93219422_
                                          (gx#syntax-e _e93039335_)))
                                     (let ((_hd93229425_ (##car _e93219422_))
                                           (_tl93239427_ (##cdr _e93219422_)))
                                       (if (eq? (gx#stx-e _hd93229425_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl93239427_)
                                               (let ((_e93249430_
                                                      (gx#syntax-e
                                                       _tl93239427_)))
                                                 (let ((_hd93259433_
                                                        (##car _e93249430_))
                                                       (_tl93269435_
                                                        (##cdr _e93249430_)))
                                                   (let ((_id9438_
                                                          _hd93259433_))
                                                     (if (gx#stx-pair?
                                                          _tl93269435_)
                                                         (let ((_e93279440_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl93269435_)))
                   (let ((_hd93289443_ (##car _e93279440_))
                         (_tl93299445_ (##cdr _e93279440_)))
                     (let ((_name9448_ _hd93289443_))
                       (if (gx#stx-null? _tl93299445_)
                           (if '#t
                               (let* ((_phi9450_
                                       (gx#current-export-expander-phi))
                                      (_$e9452_
                                       (gx#core-resolve-identifier__1
                                        _id9438_
                                        _phi9450_)))
                                 (if _$e9452_
                                     ((lambda (_bind9455_)
                                        (_K9300_ _rest9301_
                                                 (cons (_make-export__opt-lambda9584__1158311584_
                                                        _bind9455_
                                                        _phi9450_
                                                        (gx#current-expander-context)
                                                        _name9448_)
                                                       _r9302_)))
                                      _$e9452_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx9222_
                                      _hd9299_
                                      _id9438_)))
                               (_E93209418_))
                           (_E93209418_)))))
                 (_E93209418_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E93209418_))
                                           (_E93209418_))))
                                   (_E93209418_))))
                            (_E93069506_
                             (lambda ()
                               (if (gx#stx-pair? _e93039335_)
                                   (let ((_e93089461_
                                          (gx#syntax-e _e93039335_)))
                                     (let ((_hd93099464_ (##car _e93089461_))
                                           (_tl93109466_ (##cdr _e93089461_)))
                                       (if (eq? (gx#stx-e _hd93099464_) 'spec:)
                                           (if (gx#stx-pair? _tl93109466_)
                                               (let ((_e93119469_
                                                      (gx#syntax-e
                                                       _tl93109466_)))
                                                 (let ((_hd93129472_
                                                        (##car _e93119469_))
                                                       (_tl93139474_
                                                        (##cdr _e93119469_)))
                                                   (let ((_phi9477_
                                                          _hd93129472_))
                                                     (if (gx#stx-pair?
                                                          _tl93139474_)
                                                         (let ((_e93149479_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl93139474_)))
                   (let ((_hd93159482_ (##car _e93149479_))
                         (_tl93169484_ (##cdr _e93149479_)))
                     (let ((_id9487_ _hd93159482_))
                       (if (gx#stx-pair? _tl93169484_)
                           (let ((_e93179489_ (gx#syntax-e _tl93169484_)))
                             (let ((_hd93189492_ (##car _e93179489_))
                                   (_tl93199494_ (##cdr _e93179489_)))
                               (let ((_name9497_ _hd93189492_))
                                 (if (gx#stx-null? _tl93199494_)
                                     (if (if (gx#stx-fixnum? _phi9477_)
                                             (if (gx#identifier? _id9487_)
                                                 (gx#identifier? _name9497_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi9499_
                                                 (gx#stx-e _phi9477_))
                                                (_$e9501_
                                                 (gx#core-resolve-identifier__1
                                                  _id9487_
                                                  _phi9499_)))
                                           (if _$e9501_
                                               ((lambda (_bind9504_)
                                                  (_K9300_ _rest9301_
                                                           (cons (_make-export__opt-lambda9584__1158311584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind9504_
                          _phi9499_
                          (gx#current-expander-context)
                          _name9497_)
                         _r9302_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e9501_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx9222_
                                                _hd9299_
                                                _id9487_)))
                                         (_E93079457_))
                                     (_E93079457_)))))
                           (_E93079457_)))))
                 (_E93079457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E93079457_))
                                           (_E93079457_))))
                                   (_E93079457_))))
                            (_E93059517_
                             (lambda ()
                               (let ((_id9510_ _e93039335_))
                                 (if (gx#identifier? _id9510_)
                                     (let ((_$e9512_
                                            (gx#core-resolve-identifier__1
                                             _id9510_
                                             (gx#current-export-expander-phi))))
                                       (if _$e9512_
                                           ((lambda (_bind9515_)
                                              (_K9300_ _rest9301_
                                                       (cons (_make-export__0__1158511588_
                                                              _bind9515_)
                                                             _r9302_)))
                                            _$e9512_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx9222_
                                            _hd9299_)))
                                     (_E93069506_)))))
                            (_E93049581_
                             (lambda ()
                               (if (eq? (gx#stx-e _e93039335_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx9521_
                                               (gx#current-expander-context))
                                              (_current-phi9523_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx9525_
                                               (gx#core-context-shift
                                                _current-ctx9521_
                                                _current-phi9523_))
                                              (_phi-bind9527_
                                               (table->list
                                                (##structure-ref
                                                 _phi-ctx9525_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp9530_ ((_bind-rest9532_
                                                         _phi-bind9527_)
                                                        (_set9533_ '()))
                                           (let* ((_bind-rest95349544_
                                                   _bind-rest9532_)
                                                  (_E95379548_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _bind-rest95349544_)))
                                                  (_else95369552_
                                                   (lambda ()
                                                     (_K9300_ _rest9301_
                                                              (cons (##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gx#export-set::t
                             '#f
                             _current-phi9523_
                             _set9533_)
                            _r9302_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_K95389562_
                                                   (lambda (_bind-rest9555_
                                                            _bind9556_
                                                            _key9557_)
                                                     (if (let ((_$e9559_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind9556_
                         'gx#import-binding::t)))
                   (if _$e9559_
                       _$e9559_
                       (gx#private-feature-binding? _bind9556_)))
                 (_lp9530_ _bind-rest9555_ _set9533_)
                 (_lp9530_
                  _bind-rest9555_
                  (cons (_make-export__2__1158711590_
                         _bind9556_
                         _current-phi9523_
                         _current-ctx9521_)
                        _set9533_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest95349544_)
                                                 (let ((_hd95399565_
                                                        (##car _bind-rest95349544_))
                                                       (_tl95409567_
                                                        (##cdr _bind-rest95349544_)))
                                                   (if (##pair? _hd95399565_)
                                                       (let ((_hd95419570_
                                                              (##car _hd95399565_))
                                                             (_tl95429572_
                                                              (##cdr _hd95399565_)))
                                                         (let* ((_key9575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd95419570_)
                        (_bind9577_ _tl95429572_)
                        (_bind-rest9579_ _tl95409567_))
                   (_K95389562_ _bind-rest9579_ _bind9577_ _key9575_)))
               (_else95369552_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else95369552_)))))
                                       (_E93059517_))
                                   (_E93059517_)))))
                       (_E93049581_))))
                  (_export-imports9227_
                   (lambda (_src9248_ _r9249_)
                     (letrec* ((_current-ctx9251_
                                (gx#current-expander-context))
                               (_current-phi9252_
                                (gx#current-export-expander-phi))
                               (_import->export9253_
                                (lambda (_in9261_)
                                  (let* ((_in92629270_ _in9261_)
                                         (_E92649274_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in92629270_)))
                                         (_K92659281_
                                          (lambda (_phi9277_
                                                   _key9278_
                                                   _out9279_)
                                            (if (fx= _phi9277_
                                                     _current-phi9252_)
                                                (if (eq? _src9248_
                                                         (##direct-structure-ref
                                                          _out9279_
                                                          '1
                                                          gx#module-export::t
                                                          '#f))
                                                    (##structure
                                                     gx#module-export::t
                                                     _current-ctx9251_
                                                     _key9278_
                                                     _phi9277_
                                                     _key9278_
                                                     '#t)
                                                    '#f)
                                                '#f))))
                                    (if (##structure-direct-instance-of?
                                         _in92629270_
                                         (##type-id gx#module-import::t))
                                        (let* ((_e92669284_
                                                (##vector-ref _in92629270_ '1))
                                               (_out9287_ _e92669284_)
                                               (_e92679289_
                                                (##vector-ref _in92629270_ '2))
                                               (_key9292_ _e92679289_)
                                               (_e92689294_
                                                (##vector-ref _in92629270_ '3))
                                               (_phi9297_ _e92689294_))
                                          (_K92659281_
                                           _phi9297_
                                           _key9292_
                                           _out9287_))
                                        (_E92649274_)))))
                               (_fold-e9254_
                                (lambda (_in9256_ _r9257_)
                                  (let ((_out9259_
                                         (_import->export9253_ _in9256_)))
                                    (if _out9259_
                                        (cons _out9259_ _r9257_)
                                        _r9257_)))))
                       (cons (##structure
                              gx#export-set::t
                              _src9248_
                              _current-phi9252_
                              (foldl1 _fold-e9254_
                                      '()
                                      (##structure-ref
                                       _current-ctx9251_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r9249_))))
                  (_export!9228_
                   (lambda (_rbody9238_)
                     (letrec* ((_current-ctx9240_
                                (gx#current-expander-context))
                               (_fold-e9241_
                                (lambda (_out9245_ _r9246_)
                                  (if (##structure-direct-instance-of?
                                       _out9245_
                                       'gx#module-export::t)
                                      (cons _out9245_ _r9246_)
                                      (if (##structure-direct-instance-of?
                                           _out9245_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r9246_
                                                  (##direct-structure-ref
                                                   _out9245_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r9246_)))))
                       (let ((_body9243_ (reverse _rbody9238_)))
                         (begin
                           (##structure-set!
                            _current-ctx9240_
                            (foldl1 _fold-e9241_
                                    (##structure-ref
                                     _current-ctx9240_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body9243_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body9243_)))))
                  (_expanded-export?9229_
                   (lambda (_e9233_)
                     (let ((_$e9235_
                            (##structure-direct-instance-of?
                             _e9233_
                             'gx#module-export::t)))
                       (if _$e9235_
                           _$e9235_
                           (##structure-direct-instance-of?
                            _e9233_
                            'gx#export-set::t))))))
          (let ((_rbody9231_
                 (gx#core-expand-import/export
                  _stx9222_
                  _expanded-export?9229_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand19226_)))
            (if _internal-expand?9223_
                (reverse _rbody9231_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!9228_ _rbody9231_))
                 (gx#stx-source _stx9222_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9631_)
          (let ((_internal-expand?9633_ '#f))
            (gx#core-expand-export%__opt-lambda9220
             _stx9631_
             _internal-expand?9633_))))
      (define gx#core-expand-export%
        (lambda _g11623_
          (let ((_g11622_ (length _g11623_)))
            (cond ((fx= _g11622_ 1) (apply gx#core-expand-export%__0 _g11623_))
                  ((fx= _g11622_ 2)
                   (apply gx#core-expand-export%__opt-lambda9220 _g11623_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g11623_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd9219_)
      (gx#core-expand-export%__opt-lambda9220
       (cons 'export-macro% (cons _hd9219_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx9189_)
      (let* ((_e91909197_ _stx9189_)
             (_E91929201_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e91909197_)))
             (_E91919215_
              (lambda ()
                (if (gx#stx-pair? _e91909197_)
                    (let ((_e91939205_ (gx#syntax-e _e91909197_)))
                      (let ((_hd91949208_ (##car _e91939205_))
                            (_tl91959210_ (##cdr _e91939205_)))
                        (let ((_body9213_ _tl91959210_))
                          (if (gx#identifier-list? _body9213_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body9213_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body9213_))
                                 (gx#stx-source _stx9189_)))
                              (_E91929201_)))))
                    (_E91929201_)))))
        (_E91919215_))))
  (begin
    (define gx#core-bind-feature!__opt-lambda9153
      (lambda (_id9155_ _private?9156_ _phi9157_ _ctx9158_)
        (gx#core-bind-syntax!__opt-lambda6249
         _id9155_
         ((if _private?9156_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id9155_))
         _private?9156_
         _phi9157_
         _ctx9158_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id9163_)
          (let* ((_private?9165_ '#f)
                 (_phi9167_ (gx#current-expander-phi))
                 (_ctx9169_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9153
             _id9163_
             _private?9165_
             _phi9167_
             _ctx9169_))))
      (define gx#core-bind-feature!__1
        (lambda (_id9171_ _private?9172_)
          (let* ((_phi9174_ (gx#current-expander-phi))
                 (_ctx9176_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9153
             _id9171_
             _private?9172_
             _phi9174_
             _ctx9176_))))
      (define gx#core-bind-feature!__2
        (lambda (_id9178_ _private?9179_ _phi9180_)
          (let ((_ctx9182_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9153
             _id9178_
             _private?9179_
             _phi9180_
             _ctx9182_))))
      (define gx#core-bind-feature!
        (lambda _g11625_
          (let ((_g11624_ (length _g11625_)))
            (cond ((fx= _g11624_ 1) (apply gx#core-bind-feature!__0 _g11625_))
                  ((fx= _g11624_ 2) (apply gx#core-bind-feature!__1 _g11625_))
                  ((fx= _g11624_ 3) (apply gx#core-bind-feature!__2 _g11625_))
                  ((fx= _g11624_ 4)
                   (apply gx#core-bind-feature!__opt-lambda9153 _g11625_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g11625_)))))))))
