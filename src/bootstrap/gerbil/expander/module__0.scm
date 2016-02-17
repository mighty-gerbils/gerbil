(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
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
    (lambda _$args37523_
      (apply make-struct-instance gx#module-import::t _$args37523_)))
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
  (begin)
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
    (lambda _$args37520_
      (apply make-struct-instance gx#module-export::t _$args37520_)))
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
  (begin)
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
    (lambda _$args37517_
      (apply make-struct-instance gx#import-set::t _$args37517_)))
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
  (begin)
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
    (lambda _$args37514_
      (apply make-struct-instance gx#export-set::t _$args37514_)))
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
  (begin)
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
    (lambda _$args37511_
      (apply make-struct-instance gx#import-expander::t _$args37511_)))
  (begin)
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
    (lambda _$args37508_
      (apply make-struct-instance gx#export-expander::t _$args37508_)))
  (begin)
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self37502_ _id37503_ _super37504_ _ns37505_ _path37506_)
      (direct-struct-instance-init!
       _self37502_
       _id37503_
       (make-hash-table-eq)
       _super37504_
       '#f
       '#f
       _ns37505_
       _path37506_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (define gx#prelude-context:::init!
    (let ((_opt-lambda3746637490_
           (lambda (_self37468_ _ctx37469_ _root37470_)
             (let ((_super37478_
                    (let ((_$e37472_ _root37470_))
                      (if _$e37472_
                          _$e37472_
                          (let ((_$e37475_ (gx#core-context-root)))
                            (if _$e37475_
                                _$e37475_
                                (gx#make-root-context)))))))
               (if _ctx37469_
                   (let ((_id37481_ (gx#expander-context-id _ctx37469_))
                         (_path37482_ (gx#module-context-path _ctx37469_))
                         (_in37483_
                          (map gx#core-module-export->import
                               (gx#module-context-export _ctx37469_)))
                         (_e37484_
                          (make-promise
                           (lambda () (gx#eval-module _ctx37469_)))))
                     (begin
                       (direct-struct-instance-init!
                        _self37468_
                        _id37481_
                        (make-hash-table-eq)
                        _super37478_
                        '#f
                        '#f
                        _path37482_
                        _in37483_
                        _e37484_)
                       (for-each
                        (lambda (_g3748537487_)
                          (gx#core-bind-weak-import!
                           _g3748537487_
                           _self37468_))
                        _in37483_)))
                   (direct-struct-instance-init!
                    _self37468_
                    '#f
                    (make-hash-table-eq)
                    _super37478_
                    '#f
                    '#f
                    '#f
                    '()
                    '#f))))))
      (lambda _g40417_
        (let ((_g40416_ (length _g40417_)))
          (cond ((fx= _g40416_ 2)
                 (apply (lambda (_self37493_ _ctx37494_)
                          (let ((_root37496_ '#f))
                            (_opt-lambda3746637490_
                             _self37493_
                             _ctx37494_
                             _root37496_)))
                        _g40417_))
                ((fx= _g40416_ 3)
                 (apply (lambda (_self37498_ _ctx37499_ _root37500_)
                          (_opt-lambda3746637490_
                           _self37498_
                           _ctx37499_
                           _root37500_))
                        _g40417_))
                (else (error "No clause matching arguments" _g40417_)))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self37464_ _e37465_)
      (direct-struct-instance-init!
       _self37464_
       _e37465_
       (gx#current-expander-context)
       (fx1- (gx#current-expander-phi)))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self37461_ _e37462_)
      (direct-struct-instance-init!
       _self37461_
       _e37462_
       (gx#current-expander-context)
       (fx1- (gx#current-expander-phi)))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g3745337456_ _g3745437458_)
      (gx#core-apply-user-expander
       _g3745337456_
       _g3745437458_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g3744637449_ _g3744737451_)
      (gx#core-apply-user-expander
       _g3744637449_
       _g3744737451_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx37440_)
      (let ((_path37442_ (gx#module-context-path _ctx37440_)))
        (let ((_path37444_
               (if (pair? _path37442_) (last _path37442_) _path37442_)))
          (let () (if (string? _path37444_) _path37444_ '#f))))))
  (define gx#import-module
    (let ((_opt-lambda3741437422_
           (lambda (_path37416_ _reload?37417_ _eval?37418_)
             (let ((_ctx37420_
                    ((gx#current-expander-module-import)
                     _path37416_
                     _reload?37417_)))
               (begin
                 (if (if _ctx37420_ _eval?37418_ '#f)
                     (gx#eval-module _ctx37420_)
                     '#!void)
                 _ctx37420_)))))
      (lambda _g40419_
        (let ((_g40418_ (length _g40419_)))
          (cond ((fx= _g40418_ 1)
                 (apply (lambda (_path37425_)
                          (let ((_reload?37427_ '#f))
                            (let ((_eval?37429_ '#f))
                              (_opt-lambda3741437422_
                               _path37425_
                               _reload?37427_
                               _eval?37429_))))
                        _g40419_))
                ((fx= _g40418_ 2)
                 (apply (lambda (_path37431_ _reload?37432_)
                          (let ((_eval?37434_ '#f))
                            (_opt-lambda3741437422_
                             _path37431_
                             _reload?37432_
                             _eval?37434_)))
                        _g40419_))
                ((fx= _g40418_ 3)
                 (apply (lambda (_path37436_ _reload?37437_ _eval?37438_)
                          (_opt-lambda3741437422_
                           _path37436_
                           _reload?37437_
                           _eval?37438_))
                        _g40419_))
                (else (error "No clause matching arguments" _g40419_)))))))
  (define gx#eval-module
    (lambda (_mod37413_) ((gx#current-expander-module-eval) _mod37413_)))
  (define gx#core-eval-module
    (lambda (_obj37398_)
      (let ((_force-e37400_
             (lambda (_getf37409_ _e37410_)
               (call-with-parameters
                (lambda () (force (_getf37409_ _e37410_)))
                gx#current-expander-context
                _e37410_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur37402_
                   (lambda (_e37404_)
                     (if (gx#module-context? _e37404_)
                         (begin
                           (let ((_$e37406_
                                  (gx#core-context-prelude _e37404_)))
                             (if _$e37406_ (_recur37402_ _$e37406_) '#!void))
                           (_force-e37400_ gx#module-context-e _e37404_))
                         (if (gx#prelude-context? _e37404_)
                             (_force-e37400_ gx#prelude-context-e _e37404_)
                             (if (gx#stx-string? _e37404_)
                                 (_recur37402_
                                  (gx#import-module
                                   (gx#core-resolve-module-path _e37404_)))
                                 (if (gx#core-library-module-path? _e37404_)
                                     (_recur37402_
                                      (gx#import-module
                                       (gx#core-resolve-library-module-path
                                        _e37404_)))
                                     (error '"Cannot eval module"
                                            _obj37398_))))))))
           _recur37402_)
         _obj37398_))))
  (define gx#core-context-prelude
    (let ((_opt-lambda3737937390_
           (lambda (_ctx37381_)
             ((letrec ((_lp37383_
                        (lambda (_e37385_)
                          (if (let ((_$e37387_ (gx#module-context? _e37385_)))
                                (if _$e37387_
                                    _$e37387_
                                    (gx#local-context? _e37385_)))
                              (_lp37383_ (gx#phi-context-super _e37385_))
                              (if (gx#prelude-context? _e37385_)
                                  _e37385_
                                  '#f)))))
                _lp37383_)
              _ctx37381_))))
      (lambda _g40421_
        (let ((_g40420_ (length _g40421_)))
          (cond ((fx= _g40420_ 0)
                 (apply (lambda ()
                          (let ((_ctx37394_ (gx#current-expander-context)))
                            (_opt-lambda3737937390_ _ctx37394_)))
                        _g40421_))
                ((fx= _g40420_ 1)
                 (apply (lambda (_ctx37396_)
                          (_opt-lambda3737937390_ _ctx37396_))
                        _g40421_))
                (else (error "No clause matching arguments" _g40421_)))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx37371_)
      (let ((_ht37373_ (gx#current-expander-module-registry)))
        (let ((_$e37375_ (hash-get _ht37373_ _ctx37371_)))
          (if _$e37375_
              (values _$e37375_)
              (let ((_pre37378_ (gx#make-prelude-context _ctx37371_)))
                (begin
                  (hash-put! _ht37373_ _ctx37371_ _pre37378_)
                  _pre37378_)))))))
  (define gx#core-import-module
    (let ((_opt-lambda3732337361_
           (lambda (_rpath37325_ _reload?37326_)
             (let ((_import-source37328_
                    (lambda (_path37340_)
                      (begin
                        (if (member _path37340_ (gx#current-expander-path))
                            (error '"Cyclic expansion" _path37340_)
                            '#!void)
                        (call-with-parameters
                         (lambda ()
                           (let ((_g40422_ (gx#core-read-module _path37340_)))
                             (begin
                               (let ((_g40423_ (values-count _g40422_)))
                                 (if (not (fx= _g40423_ 4))
                                     (error "Context expects 4 values"
                                            _g40423_)))
                               (let ((_pre37343_ (values-ref _g40422_ 0))
                                     (_id37344_ (values-ref _g40422_ 1))
                                     (_ns37345_ (values-ref _g40422_ 2))
                                     (_body37346_ (values-ref _g40422_ 3)))
                                 (let ((_prelude37351_
                                        (if (gx#prelude-context? _pre37343_)
                                            _pre37343_
                                            (if (gx#module-context? _pre37343_)
                                                (gx#core-module->prelude-context
                                                 _pre37343_)
                                                (if (string? _pre37343_)
                                                    (gx#core-module->prelude-context
                                                     (gx#core-import-module
                                                      _pre37343_))
                                                    (if (not _pre37343_)
                                                        (let ((_$e37348_
                                                               (gx#current-expander-module-prelude)))
                                                          (if _$e37348_
                                                              _$e37348_
                                                              (gx#make-prelude-context
                                                               '#f)))
                                                        (error '"Cannot import module; unknown prelude"
                                                               _rpath37325_
                                                               _pre37343_)))))))
                                   (let ((_ctx37353_
                                          (gx#make-module-context
                                           _id37344_
                                           _prelude37351_
                                           _ns37345_
                                           _path37340_)))
                                     (let ((_body37355_
                                            (gx#core-expand-module-begin
                                             _body37346_
                                             _ctx37353_)))
                                       (let ((_body37357_
                                              (gx#core-quote-syntax
                                               (gx#core-cons
                                                '%#begin
                                                _body37355_)
                                               _path37340_
                                               _ctx37353_
                                               '())))
                                         (let ()
                                           (begin
                                             (gx#module-context-e-set!
                                              _ctx37353_
                                              (make-promise
                                               (lambda ()
                                                 (gx#eval-syntax*
                                                  _body37357_))))
                                             (gx#module-context-code-set!
                                              _ctx37353_
                                              _body37357_)
                                             (hash-put!
                                              (gx#current-expander-module-registry)
                                              _path37340_
                                              _ctx37353_)
                                             (hash-put!
                                              (gx#current-expander-module-registry)
                                              _id37344_
                                              _ctx37353_)
                                             _ctx37353_))))))))))
                         gx#current-expander-context
                         (gx#core-context-root)
                         gx#current-expander-marks
                         '()
                         gx#current-expander-phi
                         '0
                         gx#current-expander-path
                         (cons _path37340_ (gx#current-expander-path))
                         gx#current-import-expander-phi
                         '#f
                         gx#current-export-expander-phi
                         '#f)))))
               (let ((_$e37330_
                      (if (not _reload?37326_)
                          (hash-get
                           (gx#current-expander-module-registry)
                           _rpath37325_)
                          '#f)))
                 (if _$e37330_
                     (values _$e37330_)
                     (if (gx#core-library-module-path? _rpath37325_)
                         (let ((_ctx37333_
                                (gx#core-import-module
                                 (gx#core-resolve-library-module-path
                                  _rpath37325_)
                                 _reload?37326_)))
                           (begin
                             (hash-put!
                              (gx#current-expander-module-registry)
                              _rpath37325_
                              _ctx37333_)
                             _ctx37333_))
                         (let ((_npath37335_ (path-normalize _rpath37325_)))
                           (let ((_$e37337_
                                  (if (not _reload?37326_)
                                      (hash-get
                                       (gx#current-expander-module-registry)
                                       _npath37335_)
                                      '#f)))
                             (if _$e37337_
                                 (values _$e37337_)
                                 (_import-source37328_ _npath37335_)))))))))))
      (lambda _g40425_
        (let ((_g40424_ (length _g40425_)))
          (cond ((fx= _g40424_ 1)
                 (apply (lambda (_rpath37364_)
                          (let ((_reload?37366_ '#f))
                            (_opt-lambda3732337361_
                             _rpath37364_
                             _reload?37366_)))
                        _g40425_))
                ((fx= _g40424_ 2)
                 (apply (lambda (_rpath37368_ _reload?37369_)
                          (_opt-lambda3732337361_ _rpath37368_ _reload?37369_))
                        _g40425_))
                (else (error "No clause matching arguments" _g40425_)))))))
  (define gx#core-read-module
    (lambda (_path37188_)
      ((letrec ((_lp37190_
                 (lambda (_body37192_ _pre37193_ _ns37194_ _pkg37195_)
                   (let ((_e3719637220_ _body37192_))
                     (let ((_E3721237238_
                            (lambda ()
                              (let ((_prelude37224_
                                     (if (gx#core-bound-module-prelude?
                                          _pre37193_)
                                         (gx#syntax-local-e _pre37193_)
                                         (if (gx#core-library-module-path?
                                              _pre37193_)
                                             (gx#core-resolve-library-module-path
                                              _pre37193_)
                                             (if (gx#stx-string? _pre37193_)
                                                 (gx#core-resolve-module-path
                                                  _pre37193_
                                                  _path37188_)
                                                 (gx#stx-e _pre37193_))))))
                                (let ((_path-id37226_
                                       (gx#core-module-path->namespace
                                        _path37188_)))
                                  (let ((_pkg-id37228_
                                         (if _pkg37195_
                                             (string-append
                                              _pkg37195_
                                              '"/"
                                              _path-id37226_)
                                             _path-id37226_)))
                                    (let ((_module-id37230_
                                           (string->symbol _pkg-id37228_)))
                                      (let ((_module-ns37235_
                                             (let ((_$e37232_ _ns37194_))
                                               (if _$e37232_
                                                   _$e37232_
                                                   _pkg-id37228_))))
                                        (let ()
                                          (values _prelude37224_
                                                  _module-id37230_
                                                  _module-ns37235_
                                                  _body37192_))))))))))
                       (let ((_E3720537267_
                              (lambda ()
                                (if (gx#stx-pair? _e3719637220_)
                                    (let ((_e3721337242_
                                           (gx#syntax-e _e3719637220_)))
                                      (let ((_hd3721437245_
                                             (##car _e3721337242_))
                                            (_tl3721537247_
                                             (##cdr _e3721337242_)))
                                        (if (eq? (gx#stx-e _hd3721437245_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl3721537247_)
                                                (let ((_e3721637250_
                                                       (gx#syntax-e
                                                        _tl3721537247_)))
                                                  (let ((_hd3721737253_
                                                         (##car _e3721637250_))
                                                        (_tl3721837255_
                                                         (##cdr _e3721637250_)))
                                                    (let ((_pkg37258_
                                                           _hd3721737253_))
                                                      (let ((_rest37260_
                                                             _tl3721837255_))
                                                        (if '#t
                                                            (let ((_pkg37265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg37258_)
                               (symbol->string (gx#stx-e _pkg37258_))
                               (if (let ((_$e37262_
                                          (gx#stx-string? _pkg37258_)))
                                     (if _$e37262_
                                         _$e37262_
                                         (gx#stx-false? _pkg37258_)))
                                   (gx#stx-e _pkg37258_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg37258_)))))
                      (_lp37190_ _rest37260_ _pre37193_ _ns37194_ _pkg37265_))
                    (_E3721237238_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E3721237238_))
                                            (_E3721237238_))))
                                    (_E3721237238_)))))
                         (let ((_E3719837296_
                                (lambda ()
                                  (if (gx#stx-pair? _e3719637220_)
                                      (let ((_e3720637271_
                                             (gx#syntax-e _e3719637220_)))
                                        (let ((_hd3720737274_
                                               (##car _e3720637271_))
                                              (_tl3720837276_
                                               (##cdr _e3720637271_)))
                                          (if (eq? (gx#stx-e _hd3720737274_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl3720837276_)
                                                  (let ((_e3720937279_
                                                         (gx#syntax-e
                                                          _tl3720837276_)))
                                                    (let ((_hd3721037282_
                                                           (##car _e3720937279_))
                                                          (_tl3721137284_
                                                           (##cdr _e3720937279_)))
                                                      (let ((_ns37287_
                                                             _hd3721037282_))
                                                        (let ((_rest37289_
                                                               _tl3721137284_))
                                                          (if '#t
                                                              (let ((_ns37294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns37287_)
                                 (symbol->string (gx#stx-e _ns37287_))
                                 (if (let ((_$e37291_
                                            (gx#stx-string? _ns37287_)))
                                       (if _$e37291_
                                           _$e37291_
                                           (gx#stx-false? _ns37287_)))
                                     (gx#stx-e _ns37287_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns37287_)))))
                        (_lp37190_
                         _rest37289_
                         _pre37193_
                         _ns37294_
                         _pkg37195_))
                      (_E3720537267_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E3720537267_))
                                              (_E3720537267_))))
                                      (_E3720537267_)))))
                           (let ((_E3719737320_
                                  (lambda ()
                                    (if (gx#stx-pair? _e3719637220_)
                                        (let ((_e3719937300_
                                               (gx#syntax-e _e3719637220_)))
                                          (let ((_hd3720037303_
                                                 (##car _e3719937300_))
                                                (_tl3720137305_
                                                 (##cdr _e3719937300_)))
                                            (if (eq? (gx#stx-e _hd3720037303_)
                                                     'prelude:)
                                                (if (gx#stx-pair?
                                                     _tl3720137305_)
                                                    (let ((_e3720237308_
                                                           (gx#syntax-e
                                                            _tl3720137305_)))
                                                      (let ((_hd3720337311_
                                                             (##car _e3720237308_))
                                                            (_tl3720437313_
                                                             (##cdr _e3720237308_)))
                                                        (let ((_prelude37316_
                                                               _hd3720337311_))
                                                          (let ((_rest37318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3720437313_))
                    (if '#t
                        (_lp37190_
                         _rest37318_
                         _prelude37316_
                         _ns37194_
                         _pkg37195_)
                        (_E3719837296_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3719837296_))
                                                (_E3719837296_))))
                                        (_E3719837296_)))))
                             (let () (_E3719737320_))))))))))
         _lp37190_)
       (read-syntax-from-file _path37188_)
       '#f
       '#f
       '#f)))
  (define gx#core-module-path->namespace
    (lambda (_path37186_)
      (path-strip-extension (path-strip-directory _path37186_))))
  (define gx#core-module-path->id
    (lambda (_path37184_)
      (string->symbol (gx#core-module-path->namespace _path37184_))))
  (define gx#core-resolve-module-path
    (let ((_opt-lambda3716137174_
           (lambda (_stx-path37163_ _rel37164_)
             (let ((_path37166_ (gx#stx-e _stx-path37163_)))
               (let ((_path37168_
                      (if (equal? (path-extension _path37166_) '".ss")
                          _path37166_
                          (string-append _path37166_ '".ss"))))
                 (let ()
                   (gx#core-resolve-path
                    _path37168_
                    (let ((_$e37171_ (gx#stx-source _stx-path37163_)))
                      (if _$e37171_ _$e37171_ _rel37164_)))))))))
      (lambda _g40427_
        (let ((_g40426_ (length _g40427_)))
          (cond ((fx= _g40426_ 1)
                 (apply (lambda (_stx-path37177_)
                          (let ((_rel37179_ '#f))
                            (_opt-lambda3716137174_
                             _stx-path37177_
                             _rel37179_)))
                        _g40427_))
                ((fx= _g40426_ 2)
                 (apply (lambda (_stx-path37181_ _rel37182_)
                          (_opt-lambda3716137174_ _stx-path37181_ _rel37182_))
                        _g40427_))
                (else (error "No clause matching arguments" _g40427_)))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath37109_)
      (let ((_spath37111_ (symbol->string (gx#stx-e _libpath37109_))))
        (let ((_spath37113_
               (substring _spath37111_ '1 (string-length _spath37111_))))
          (let ()
            ((letrec ((_lp37116_
                       (lambda (_rest37118_)
                         (let ((_rest3711937128_ _rest37118_))
                           (let ((_E3712237132_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _rest3711937128_))))
                             (let ((_try-match3712137140_
                                    (lambda ()
                                      (let ((_K3712337137_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Cannot find library module"
                                                _libpath37109_))))
                                        (if (##null? _rest3711937128_)
                                            (_K3712337137_)
                                            (_E3712237132_))))))
                               (let ((_K3712437150_
                                      (lambda (_rest37143_ _dir37144_)
                                        (let ((_compiled-path37146_
                                               (path-expand
                                                (string-append
                                                 _spath37113_
                                                 '".ssi")
                                                _dir37144_)))
                                          (if (file-exists?
                                               _compiled-path37146_)
                                              (path-normalize
                                               _compiled-path37146_)
                                              (let ((_src-path37148_
                                                     (path-expand
                                                      (string-append
                                                       _spath37113_
                                                       '".ss")
                                                      _dir37144_)))
                                                (if (file-exists?
                                                     _src-path37148_)
                                                    (path-normalize
                                                     _src-path37148_)
                                                    (_lp37116_
                                                     _rest37143_))))))))
                                 (if (##pair? _rest3711937128_)
                                     (let ((_hd3712537153_
                                            (##car _rest3711937128_))
                                           (_tl3712637155_
                                            (##cdr _rest3711937128_)))
                                       (let ((_dir37158_ _hd3712537153_))
                                         (let ((_rest37160_ _tl3712637155_))
                                           (_K3712437150_
                                            _rest37160_
                                            _dir37158_))))
                                     (_try-match3712137140_)))))))))
               _lp37116_)
             (gx#current-expander-module-library-path)))))))
  (define gx#core-library-module-path?
    (lambda (_stx37107_) (gx#core-special-module-path? _stx37107_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx37102_ _char37103_)
      (if (gx#identifier? _stx37102_)
          (if (interned-symbol? (gx#stx-e _stx37102_))
              (let ((_str37105_ (symbol->string (gx#stx-e _stx37102_))))
                (if (fx> (string-length _str37105_) '1)
                    (eq? (string-ref _str37105_ '0) _char37103_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx37096_)
      (gx#core-bound-identifier?
       _stx37096_
       (lambda (_g3709737099_)
         (gx#expander-binding? _g3709737099_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx37090_)
      (gx#core-bound-identifier?
       _stx37090_
       (lambda (_g3709137093_)
         (gx#expander-binding? _g3709137093_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx37077_)
      (let ((_module-prelude?37079_
             (lambda (_e37085_)
               (let ((_$e37087_ (gx#module-context? _e37085_)))
                 (if _$e37087_ _$e37087_ (gx#prelude-context? _e37085_))))))
        (gx#core-bound-identifier?
         _stx37077_
         (lambda (_g3708037082_)
           (gx#expander-binding? _g3708037082_ _module-prelude?37079_))))))
  (define gx#core-bind-import!
    (let ((_opt-lambda3700537059_
           (lambda (_in37007_ _ctx37008_ _force-weak?37009_)
             (let ((_in3701037019_ _in37007_))
               (let ((_E3701237023_
                      (lambda ()
                        (error '"No clause matching" _in3701037019_))))
                 (let ((_K3701337036_
                        (lambda (_weak?37026_
                                 _phi37027_
                                 _key37028_
                                 _source37029_)
                          (gx#core-bind!
                           _key37028_
                           (let ((_e37031_
                                  (gx#core-resolve-module-export
                                   _source37029_)))
                             (gx#make-import-binding
                              (gx#binding-id _e37031_)
                              _key37028_
                              _phi37027_
                              _e37031_
                              (gx#module-export-context _source37029_)
                              (let ((_$e37033_ _force-weak?37009_))
                                (if _$e37033_ _$e37033_ _weak?37026_))))
                           gx#core-context-rebind?
                           _phi37027_
                           _ctx37008_))))
                   (if (direct-struct-instance?
                        gx#module-import::t
                        _in3701037019_)
                       (let ((_e3701437039_ (##vector-ref _in3701037019_ '1)))
                         (let ((_source37042_ _e3701437039_))
                           (let ((_e3701537044_
                                  (##vector-ref _in3701037019_ '2)))
                             (let ((_key37047_ _e3701537044_))
                               (let ((_e3701637049_
                                      (##vector-ref _in3701037019_ '3)))
                                 (let ((_phi37052_ _e3701637049_))
                                   (let ((_e3701737054_
                                          (##vector-ref _in3701037019_ '4)))
                                     (let ((_weak?37057_ _e3701737054_))
                                       (_K3701337036_
                                        _weak?37057_
                                        _phi37052_
                                        _key37047_
                                        _source37042_)))))))))
                       (_E3701237023_))))))))
      (lambda _g40429_
        (let ((_g40428_ (length _g40429_)))
          (cond ((fx= _g40428_ 1)
                 (apply (lambda (_in37062_)
                          (let ((_ctx37064_ (gx#current-expander-context)))
                            (let ((_force-weak?37066_ '#f))
                              (_opt-lambda3700537059_
                               _in37062_
                               _ctx37064_
                               _force-weak?37066_))))
                        _g40429_))
                ((fx= _g40428_ 2)
                 (apply (lambda (_in37068_ _ctx37069_)
                          (let ((_force-weak?37071_ '#f))
                            (_opt-lambda3700537059_
                             _in37068_
                             _ctx37069_
                             _force-weak?37071_)))
                        _g40429_))
                ((fx= _g40428_ 3)
                 (apply (lambda (_in37073_ _ctx37074_ _force-weak?37075_)
                          (_opt-lambda3700537059_
                           _in37073_
                           _ctx37074_
                           _force-weak?37075_))
                        _g40429_))
                (else (error "No clause matching arguments" _g40429_)))))))
  (define gx#core-bind-weak-import!
    (let ((_opt-lambda3699136996_
           (lambda (_in36993_ _ctx36994_)
             (gx#core-bind-import! _in36993_ _ctx36994_ '#t))))
      (lambda _g40431_
        (let ((_g40430_ (length _g40431_)))
          (cond ((fx= _g40430_ 1)
                 (apply (lambda (_in36999_)
                          (let ((_ctx37001_ (gx#current-expander-context)))
                            (_opt-lambda3699136996_ _in36999_ _ctx37001_)))
                        _g40431_))
                ((fx= _g40430_ 2)
                 (apply (lambda (_in37003_ _ctx37004_)
                          (_opt-lambda3699136996_ _in37003_ _ctx37004_))
                        _g40431_))
                (else (error "No clause matching arguments" _g40431_)))))))
  (define gx#core-resolve-module-export
    (lambda (_out36884_)
      (let ((_subst36886_
             (lambda (_key36932_)
               (let ((_key3693336941_ _key36932_))
                 (let ((_E3693636945_
                        (lambda ()
                          (error '"No clause matching" _key3693336941_))))
                   (let ((_else3693536949_ (lambda () _key36932_)))
                     (let ((_K3693736980_
                            (lambda (_mark36952_ _id36953_)
                              (let ((_mark3695436960_ _mark36952_))
                                (let ((_E3695636964_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark3695436960_))))
                                  (let ((_K3695736972_
                                         (lambda (_subst36967_)
                                           (let ((_$e36969_
                                                  (if _subst36967_
                                                      (hash-get
                                                       _subst36967_
                                                       _id36953_)
                                                      '#f)))
                                             (if _$e36969_
                                                 _$e36969_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key36932_))))))
                                    (if (struct-instance?
                                         gx#expander-mark::t
                                         _mark3695436960_)
                                        (let ((_e3695836975_
                                               (##vector-ref
                                                _mark3695436960_
                                                '1)))
                                          (let ((_subst36978_ _e3695836975_))
                                            (_K3695736972_ _subst36978_)))
                                        (_E3695636964_))))))))
                       (if (##pair? _key3693336941_)
                           (let ((_hd3693836983_ (##car _key3693336941_))
                                 (_tl3693936985_ (##cdr _key3693336941_)))
                             (let ((_id36988_ _hd3693836983_))
                               (let ((_mark36990_ _tl3693936985_))
                                 (_K3693736980_ _mark36990_ _id36988_))))
                           (_else3693536949_)))))))))
        (let ((_out3688736897_ _out36884_))
          (let ((_E3688936901_
                 (lambda () (error '"No clause matching" _out3688736897_))))
            (let ((_K3689036908_
                   (lambda (_phi36904_ _key36905_ _ctx36906_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx36906_ _phi36904_)
                      (_subst36886_ _key36905_)))))
              (if (direct-struct-instance? gx#module-export::t _out3688736897_)
                  (let ((_e3689136911_ (##vector-ref _out3688736897_ '1)))
                    (let ((_ctx36914_ _e3689136911_))
                      (let ((_e3689236916_ (##vector-ref _out3688736897_ '2)))
                        (let ((_key36919_ _e3689236916_))
                          (let ((_e3689336921_
                                 (##vector-ref _out3688736897_ '3)))
                            (let ((_phi36924_ _e3689336921_))
                              (let ((_e3689436926_
                                     (##vector-ref _out3688736897_ '4)))
                                (let ((_e3689536929_
                                       (##vector-ref _out3688736897_ '5)))
                                  (_K3689036908_
                                   _phi36924_
                                   _key36919_
                                   _ctx36914_)))))))))
                  (_E3688936901_))))))))
  (define gx#core-module-export->import
    (let ((_opt-lambda3680736866_
           (lambda (_out36809_ _rename36810_ _dphi36811_)
             (let ((_out3681236822_ _out36809_))
               (let ((_E3681436826_
                      (lambda ()
                        (error '"No clause matching" _out3681236822_))))
                 (let ((_K3681536838_
                        (lambda (_weak?36829_
                                 _name36830_
                                 _phi36831_
                                 _key36832_
                                 _ctx36833_)
                          (gx#make-module-import
                           _out36809_
                           (let ((_$e36835_ _rename36810_))
                             (if _$e36835_ _$e36835_ _name36830_))
                           (fx+ _phi36831_ _dphi36811_)
                           _weak?36829_))))
                   (if (direct-struct-instance?
                        gx#module-export::t
                        _out3681236822_)
                       (let ((_e3681636841_ (##vector-ref _out3681236822_ '1)))
                         (let ((_ctx36844_ _e3681636841_))
                           (let ((_e3681736846_
                                  (##vector-ref _out3681236822_ '2)))
                             (let ((_key36849_ _e3681736846_))
                               (let ((_e3681836851_
                                      (##vector-ref _out3681236822_ '3)))
                                 (let ((_phi36854_ _e3681836851_))
                                   (let ((_e3681936856_
                                          (##vector-ref _out3681236822_ '4)))
                                     (let ((_name36859_ _e3681936856_))
                                       (let ((_e3682036861_
                                              (##vector-ref
                                               _out3681236822_
                                               '5)))
                                         (let ((_weak?36864_ _e3682036861_))
                                           (_K3681536838_
                                            _weak?36864_
                                            _name36859_
                                            _phi36854_
                                            _key36849_
                                            _ctx36844_)))))))))))
                       (_E3681436826_))))))))
      (lambda _g40433_
        (let ((_g40432_ (length _g40433_)))
          (cond ((fx= _g40432_ 1)
                 (apply (lambda (_out36869_)
                          (let ((_rename36871_ '#f))
                            (let ((_dphi36873_ '0))
                              (_opt-lambda3680736866_
                               _out36869_
                               _rename36871_
                               _dphi36873_))))
                        _g40433_))
                ((fx= _g40432_ 2)
                 (apply (lambda (_out36875_ _rename36876_)
                          (let ((_dphi36878_ '0))
                            (_opt-lambda3680736866_
                             _out36875_
                             _rename36876_
                             _dphi36878_)))
                        _g40433_))
                ((fx= _g40432_ 3)
                 (apply (lambda (_out36880_ _rename36881_ _dphi36882_)
                          (_opt-lambda3680736866_
                           _out36880_
                           _rename36881_
                           _dphi36882_))
                        _g40433_))
                (else (error "No clause matching arguments" _g40433_)))))))
  (define gx#core-expand-module%
    (lambda (_stx36737_)
      (let ((_make-context36739_
             (lambda (_id36790_)
               (let ((_super36792_ (gx#current-expander-context)))
                 (let ((_bind-id36794_ (gx#stx-e _id36790_)))
                   (let ((_mod-id36796_
                          (if (gx#module-context? _super36792_)
                              (make-symbol
                               (gx#expander-context-id _super36792_)
                               '"::"
                               _bind-id36794_)
                              _bind-id36794_)))
                     (let ((_ns36798_ (symbol->string _mod-id36796_)))
                       (let ((_path36805_
                              (if (gx#module-context? _super36792_)
                                  (let ((_path36800_
                                         (gx#module-context-path
                                          _super36792_)))
                                    (if (let ((_$e36802_ (pair? _path36800_)))
                                          (if _$e36802_
                                              _$e36802_
                                              (null? _path36800_)))
                                        (cons _bind-id36794_ _path36800_)
                                        (if (not _path36800_)
                                            _bind-id36794_
                                            (cons _bind-id36794_
                                                  (cons _path36800_ '())))))
                                  _bind-id36794_)))
                         (let ()
                           (gx#make-module-context
                            _mod-id36796_
                            _super36792_
                            _ns36798_
                            _path36805_))))))))))
        (let ((_e3674036750_ _stx36737_))
          (let ((_E3674236754_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e3674036750_))))
            (let ((_E3674136786_
                   (lambda ()
                     (if (gx#stx-pair? _e3674036750_)
                         (let ((_e3674336758_ (gx#syntax-e _e3674036750_)))
                           (let ((_hd3674436761_ (##car _e3674336758_))
                                 (_tl3674536763_ (##cdr _e3674336758_)))
                             (if (gx#stx-pair? _tl3674536763_)
                                 (let ((_e3674636766_
                                        (gx#syntax-e _tl3674536763_)))
                                   (let ((_hd3674736769_ (##car _e3674636766_))
                                         (_tl3674836771_
                                          (##cdr _e3674636766_)))
                                     (let ((_id36774_ _hd3674736769_))
                                       (let ((_body36776_ _tl3674836771_))
                                         (if (if (gx#identifier? _id36774_)
                                                 (gx#stx-list? _body36776_)
                                                 '#f)
                                             (let ((_ctx36778_
                                                    (_make-context36739_
                                                     _id36774_)))
                                               (let ((_body36780_
                                                      (gx#core-expand-module-begin
                                                       _body36776_
                                                       _ctx36778_)))
                                                 (let ((_body36782_
                                                        (gx#core-quote-syntax
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body36780_)
                                                         (gx#stx-source
                                                          _stx36737_))))
                                                   (let ()
                                                     (begin
                                                       (gx#module-context-e-set!
                                                        _ctx36778_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body36782_))))
                                                       (gx#module-context-code-set!
                                                        _ctx36778_
                                                        _body36782_)
                                                       (gx#core-bind-syntax!
                                                        _id36774_
                                                        _ctx36778_)
                                                       (gx#core-quote-syntax
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax
                                                          _id36774_)
                                                         _body36782_)
                                                        (gx#stx-source
                                                         _stx36737_)))))))
                                             (_E3674236754_))))))
                                 (_E3674236754_))))
                         (_E3674236754_)))))
              (let () (_E3674136786_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body36733_ _ctx36734_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature! 'gerbil-module '#t)
           (gx#core-expand-module-body _body36733_)))
       gx#current-expander-context
       _ctx36734_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body36529_)
      (let ((_expand-special36531_
             (lambda (_hd36660_ _K36661_ _rest36662_ _r36663_)
               (let ((_e3666436681_ _hd36660_))
                 (let ((_E3667636685_
                        (lambda ()
                          (_K36661_
                           _rest36662_
                           (cons (gx#core-expand-top _hd36660_) _r36663_)))))
                   (let ((_E3666636697_
                          (lambda ()
                            (if (gx#stx-pair? _e3666436681_)
                                (let ((_e3667736689_
                                       (gx#syntax-e _e3666436681_)))
                                  (let ((_hd3667836692_ (##car _e3667736689_))
                                        (_tl3667936694_ (##cdr _e3667736689_)))
                                    (if (if (gx#identifier? _hd3667836692_)
                                            (gx#core-identifier=?
                                             _hd3667836692_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K36661_
                                             _rest36662_
                                             (cons _hd36660_ _r36663_))
                                            (_E3667636685_))
                                        (_E3667636685_))))
                                (_E3667636685_)))))
                     (let ((_E3666536729_
                            (lambda ()
                              (if (gx#stx-pair? _e3666436681_)
                                  (let ((_e3666736701_
                                         (gx#syntax-e _e3666436681_)))
                                    (let ((_hd3666836704_
                                           (##car _e3666736701_))
                                          (_tl3666936706_
                                           (##cdr _e3666736701_)))
                                      (if (if (gx#identifier? _hd3666836704_)
                                              (gx#core-identifier=?
                                               _hd3666836704_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl3666936706_)
                                              (let ((_e3667036709_
                                                     (gx#syntax-e
                                                      _tl3666936706_)))
                                                (let ((_hd3667136712_
                                                       (##car _e3667036709_))
                                                      (_tl3667236714_
                                                       (##cdr _e3667036709_)))
                                                  (let ((_hd-bind36717_
                                                         _hd3667136712_))
                                                    (if (gx#stx-pair?
                                                         _tl3667236714_)
                                                        (let ((_e3667336719_
                                                               (gx#syntax-e
                                                                _tl3667236714_)))
                                                          (let ((_hd3667436722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3667336719_))
                        (_tl3667536724_ (##cdr _e3667336719_)))
                    (let ((_expr36727_ _hd3667436722_))
                      (if (gx#stx-null? _tl3667536724_)
                          (if (gx#core-bind-values? _hd-bind36717_)
                              (begin
                                (gx#core-bind-values! _hd-bind36717_)
                                (_K36661_
                                 _rest36662_
                                 (cons _hd36660_ _r36663_)))
                              (_E3666636697_))
                          (_E3666636697_)))))
                (_E3666636697_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E3666636697_))
                                          (_E3666636697_))))
                                  (_E3666636697_)))))
                       (let () (_E3666536729_)))))))))
        (let ((_expand-body36532_
               (lambda (_rbody36534_)
                 ((letrec ((_lp36536_
                            (lambda (_rest36538_ _body36539_)
                              (let ((_rest3654036548_ _rest36538_))
                                (let ((_E3654336552_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest3654036548_))))
                                  (let ((_else3654236556_
                                         (lambda () _body36539_)))
                                    (let ((_K3654436648_
                                           (lambda (_rest36559_ _hd36560_)
                                             (let ((_e3656136582_ _hd36560_))
                                               (let ((_E3657736586_
                                                      (lambda ()
                                                        (_lp36536_
                                                         _rest36559_
                                                         (cons (gx#core-expand-expression
                                                                _hd36560_)
                                                               _body36539_)))))
                                                 (let ((_E3657336600_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e3656136582_)
                                                              (let ((_e3657836590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e3656136582_)))
                        (let ((_hd3657936593_ (##car _e3657836590_))
                              (_tl3658036595_ (##cdr _e3657836590_)))
                          (let ((_form36598_ _hd3657936593_))
                            (if (gx#core-bound-identifier?
                                 _form36598_
                                 gx#special-form-binding?)
                                (_lp36536_
                                 _rest36559_
                                 (cons _hd36560_ _body36539_))
                                (_E3657736586_)))))
                      (_E3657736586_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E3656336612_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e3656136582_)
                        (let ((_e3657436604_ (gx#syntax-e _e3656136582_)))
                          (let ((_hd3657536607_ (##car _e3657436604_))
                                (_tl3657636609_ (##cdr _e3657436604_)))
                            (if (if (gx#identifier? _hd3657536607_)
                                    (gx#core-identifier=?
                                     _hd3657536607_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp36536_
                                     _rest36559_
                                     (cons (gx#core-expand-export% _hd36560_)
                                           _body36539_))
                                    (_E3657336600_))
                                (_E3657336600_))))
                        (_E3657336600_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E3656236644_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3656136582_)
                          (let ((_e3656436616_ (gx#syntax-e _e3656136582_)))
                            (let ((_hd3656536619_ (##car _e3656436616_))
                                  (_tl3656636621_ (##cdr _e3656436616_)))
                              (if (if (gx#identifier? _hd3656536619_)
                                      (gx#core-identifier=?
                                       _hd3656536619_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl3656636621_)
                                      (let ((_e3656736624_
                                             (gx#syntax-e _tl3656636621_)))
                                        (let ((_hd3656836627_
                                               (##car _e3656736624_))
                                              (_tl3656936629_
                                               (##cdr _e3656736624_)))
                                          (let ((_hd-bind36632_
                                                 _hd3656836627_))
                                            (if (gx#stx-pair? _tl3656936629_)
                                                (let ((_e3657036634_
                                                       (gx#syntax-e
                                                        _tl3656936629_)))
                                                  (let ((_hd3657136637_
                                                         (##car _e3657036634_))
                                                        (_tl3657236639_
                                                         (##cdr _e3657036634_)))
                                                    (let ((_expr36642_
                                                           _hd3657136637_))
                                                      (if (gx#stx-null?
                                                           _tl3657236639_)
                                                          (if '#t
                                                              (_lp36536_
                                                               _rest36559_
                                                               (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind36632_)
                               (gx#core-expand-expression _expr36642_))
                              (gx#stx-source _hd36560_))
                             _body36539_))
                      (_E3656336612_))
                  (_E3656336612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E3656336612_)))))
                                      (_E3656336612_))
                                  (_E3656336612_))))
                          (_E3656336612_)))))
               (let () (_E3656236644_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest3654036548_)
                                          (let ((_hd3654536651_
                                                 (##car _rest3654036548_))
                                                (_tl3654636653_
                                                 (##cdr _rest3654036548_)))
                                            (let ((_hd36656_ _hd3654536651_))
                                              (let ((_rest36658_
                                                     _tl3654636653_))
                                                (_K3654436648_
                                                 _rest36658_
                                                 _hd36656_))))
                                          (_else3654236556_)))))))))
                    _lp36536_)
                  _rbody36534_
                  '()))))
          (_expand-body36532_
           (gx#core-expand-block
            (cons '%#begin-module _body36529_)
            _expand-special36531_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx36372_
             _expanded?36373_
             _method36374_
             _current-phi36375_
             _expand136376_)
      (letrec ((_K36378_
                (lambda (_rest36496_ _r36497_)
                  (let ((_e3649836505_ _rest36496_))
                    (let ((_E3650036509_ (lambda () _r36497_)))
                      (let ((_E3649936525_
                             (lambda ()
                               (if (gx#stx-pair? _e3649836505_)
                                   (let ((_e3650136513_
                                          (gx#syntax-e _e3649836505_)))
                                     (let ((_hd3650236516_
                                            (##car _e3650136513_))
                                           (_tl3650336518_
                                            (##cdr _e3650136513_)))
                                       (let ((_hd36521_ _hd3650236516_))
                                         (let ((_rest36523_ _tl3650336518_))
                                           (if '#t
                                               (_step36379_
                                                _hd36521_
                                                _rest36523_
                                                _r36497_)
                                               (_E3650036509_))))))
                                   (_E3650036509_)))))
                        (let () (_E3649936525_)))))))
               (_step36379_
                (lambda (_hd36410_ _rest36411_ _r36412_)
                  (let ((_e3641336431_ _hd36410_))
                    (let ((_E3642636435_
                           (lambda ()
                             (if (_expanded?36373_ (gx#stx-e _hd36410_))
                                 (_K36378_
                                  _rest36411_
                                  (cons (gx#stx-e _hd36410_) _r36412_))
                                 (_expand136376_
                                  _hd36410_
                                  _K36378_
                                  _rest36411_
                                  _r36412_)))))
                      (let ((_E3642236451_
                             (lambda ()
                               (if (gx#stx-pair? _e3641336431_)
                                   (let ((_e3642736439_
                                          (gx#syntax-e _e3641336431_)))
                                     (let ((_hd3642836442_
                                            (##car _e3642736439_))
                                           (_tl3642936444_
                                            (##cdr _e3642736439_)))
                                       (let ((_macro36447_ _hd3642836442_))
                                         (let ((_body36449_ _tl3642936444_))
                                           (if (gx#core-bound-identifier?
                                                _macro36447_
                                                gx#syntax-binding?)
                                               (_K36378_
                                                (cons (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _macro36447_)
                                                       _hd36410_
                                                       _method36374_)
                                                      _rest36411_)
                                                _r36412_)
                                               (_E3642636435_))))))
                                   (_E3642636435_)))))
                        (let ((_E3641536465_
                               (lambda ()
                                 (if (gx#stx-pair? _e3641336431_)
                                     (let ((_e3642336455_
                                            (gx#syntax-e _e3641336431_)))
                                       (let ((_hd3642436458_
                                              (##car _e3642336455_))
                                             (_tl3642536460_
                                              (##cdr _e3642336455_)))
                                         (if (eq? (gx#stx-e _hd3642436458_)
                                                  'begin:)
                                             (let ((_body36463_
                                                    _tl3642536460_))
                                               (if '#t
                                                   (_K36378_
                                                    (gx#stx-foldr
                                                     cons
                                                     _rest36411_
                                                     _body36463_)
                                                    _r36412_)
                                                   (_E3642236451_)))
                                             (_E3642236451_))))
                                     (_E3642236451_)))))
                          (let ((_E3641436492_
                                 (lambda ()
                                   (if (gx#stx-pair? _e3641336431_)
                                       (let ((_e3641636469_
                                              (gx#syntax-e _e3641336431_)))
                                         (let ((_hd3641736472_
                                                (##car _e3641636469_))
                                               (_tl3641836474_
                                                (##cdr _e3641636469_)))
                                           (if (eq? (gx#stx-e _hd3641736472_)
                                                    'phi:)
                                               (if (gx#stx-pair?
                                                    _tl3641836474_)
                                                   (let ((_e3641936477_
                                                          (gx#syntax-e
                                                           _tl3641836474_)))
                                                     (let ((_hd3642036480_
                                                            (##car _e3641936477_))
                                                           (_tl3642136482_
                                                            (##cdr _e3641936477_)))
                                                       (let ((_dphi36485_
                                                              _hd3642036480_))
                                                         (let ((_body36487_
                                                                _tl3642136482_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi36485_)
                                                               (let ((_rbody36490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K36378_ _body36487_ '()))
                               _current-phi36375_
                               (fx+ (gx#stx-e _dphi36485_)
                                    (_current-phi36375_)))))
                         (_K36378_
                          _rest36411_
                          (foldr cons _r36412_ _rbody36490_)))
                       (_E3641536465_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3641536465_))
                                               (_E3641536465_))))
                                       (_E3641536465_)))))
                            (let () (_E3641436492_))))))))))
        (let ((_e3638036387_ _stx36372_))
          (let ((_E3638236391_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e3638036387_))))
            (let ((_E3638136406_
                   (lambda ()
                     (if (gx#stx-pair? _e3638036387_)
                         (let ((_e3638336395_ (gx#syntax-e _e3638036387_)))
                           (let ((_hd3638436398_ (##car _e3638336395_))
                                 (_tl3638536400_ (##cdr _e3638336395_)))
                             (let ((_body36403_ _tl3638536400_))
                               (if '#t
                                   (if (_current-phi36375_)
                                       (_K36378_ _body36403_ '())
                                       (call-with-parameters
                                        (lambda () (_K36378_ _body36403_ '()))
                                        _current-phi36375_
                                        (gx#current-expander-phi)))
                                   (_E3638236391_)))))
                         (_E3638236391_)))))
              (let () (_E3638136406_))))))))
  (define gx#core-expand-import%
    (let ((_opt-lambda3590936362_
           (lambda (_stx35911_ _internal-expand?35912_)
             (let ((_import135915_
                    (lambda (_ctx36346_ _K36347_ _rest36348_ _r36349_)
                      (let ((_dphi36351_
                             (fx- (gx#current-import-expander-phi)
                                  (gx#current-expander-phi))))
                        (_K36347_
                         _rest36348_
                         (cons (gx#make-import-set
                                _ctx36346_
                                _dphi36351_
                                (map (lambda (_g3635236354_)
                                       (gx#core-module-export->import
                                        _g3635236354_
                                        '#f
                                        _dphi36351_))
                                     (gx#module-context-export _ctx36346_)))
                               _r36349_))))))
               (let ((_import-spec?35916_
                      (lambda (_hd36303_)
                        (let ((_e3630436314_ _hd36303_))
                          (let ((_E3630636318_ (lambda () '#f)))
                            (let ((_E3630536342_
                                   (lambda ()
                                     (if (gx#stx-pair? _e3630436314_)
                                         (let ((_e3630736322_
                                                (gx#syntax-e _e3630436314_)))
                                           (let ((_hd3630836325_
                                                  (##car _e3630736322_))
                                                 (_tl3630936327_
                                                  (##cdr _e3630736322_)))
                                             (if (eq? (gx#stx-e _hd3630836325_)
                                                      'spec:)
                                                 (if (gx#stx-pair?
                                                      _tl3630936327_)
                                                     (let ((_e3631036330_
                                                            (gx#syntax-e
                                                             _tl3630936327_)))
                                                       (let ((_hd3631136333_
                                                              (##car _e3631036330_))
                                                             (_tl3631236335_
                                                              (##cdr _e3631036330_)))
                                                         (let ((_spath36338_
                                                                _hd3631136333_))
                                                           (let ((_specs36340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl3631236335_))
                     (if '#t '#t (_E3630636318_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E3630636318_))
                                                 (_E3630636318_))))
                                         (_E3630636318_)))))
                              (let () (_E3630536342_))))))))
                 (let ((_import-submodule?35917_
                        (lambda (_hd36260_)
                          (let ((_e3626136271_ _hd36260_))
                            (let ((_E3626336275_ (lambda () '#f)))
                              (let ((_E3626236299_
                                     (lambda ()
                                       (if (gx#stx-pair? _e3626136271_)
                                           (let ((_e3626436279_
                                                  (gx#syntax-e _e3626136271_)))
                                             (let ((_hd3626536282_
                                                    (##car _e3626436279_))
                                                   (_tl3626636284_
                                                    (##cdr _e3626436279_)))
                                               (if (eq? (gx#stx-e
                                                         _hd3626536282_)
                                                        'in:)
                                                   (if (gx#stx-pair?
                                                        _tl3626636284_)
                                                       (let ((_e3626736287_
                                                              (gx#syntax-e
                                                               _tl3626636284_)))
                                                         (let ((_hd3626836290_
                                                                (##car _e3626736287_))
                                                               (_tl3626936292_
                                                                (##cdr _e3626736287_)))
                                                           (let ((_top36295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd3626836290_))
                     (let ((_sub36297_ _tl3626936292_))
                       (if '#t '#t (_E3626336275_))))))
               (_E3626336275_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3626336275_))))
                                           (_E3626336275_)))))
                                (let () (_E3626236299_))))))))
                   (let ((_import-runtime?35918_
                          (lambda (_hd36217_)
                            (let ((_e3621836228_ _hd36217_))
                              (let ((_E3622036232_ (lambda () '#f)))
                                (let ((_E3621936256_
                                       (lambda ()
                                         (if (gx#stx-pair? _e3621836228_)
                                             (let ((_e3622136236_
                                                    (gx#syntax-e
                                                     _e3621836228_)))
                                               (let ((_hd3622236239_
                                                      (##car _e3622136236_))
                                                     (_tl3622336241_
                                                      (##cdr _e3622136236_)))
                                                 (if (eq? (gx#stx-e
                                                           _hd3622236239_)
                                                          'runtime:)
                                                     (if (gx#stx-pair?
                                                          _tl3622336241_)
                                                         (let ((_e3622436244_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3622336241_)))
                   (let ((_hd3622536247_ (##car _e3622436244_))
                         (_tl3622636249_ (##cdr _e3622436244_)))
                     (let ((_top36252_ _hd3622536247_))
                       (let ((_spath36254_ _tl3622636249_))
                         (if '#t '#t (_E3622036232_))))))
                 (_E3622036232_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E3622036232_))))
                                             (_E3622036232_)))))
                                  (let () (_E3621936256_))))))))
                     (let ((_import-spec-source35922_
                            (lambda (_spath35988_)
                              (gx#core-import-nested-module
                               _spath35988_
                               _stx35911_))))
                       (let ((_import!35923_
                              (lambda (_rbody35936_)
                                (let ((_current-ctx35938_
                                       (gx#current-expander-context)))
                                  (let ((_deps35939_ (make-hash-table-eq)))
                                    (let ((_bind!35940_
                                           (lambda (_hd35986_)
                                             (begin
                                               (gx#core-bind-import!
                                                _hd35986_
                                                _current-ctx35938_)
                                               (if (if (fxpositive?
                                                        (gx#module-import-phi
                                                         _hd35986_))
                                                       (fxzero? (gx#module-export-phi
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#module-import-source _hd35986_)))
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (hash-put!
                                                    _deps35939_
                                                    (gx#module-export-context
                                                     (gx#module-import-source
                                                      _hd35986_))
                                                    '#t)
                                                   '#!void)))))
                                      (let ((_fold-e35941_
                                             (lambda (_in35983_ _r35984_)
                                               (if (gx#module-import?
                                                    _in35983_)
                                                   (cons _in35983_ _r35984_)
                                                   (if (gx#import-set?
                                                        _in35983_)
                                                       (foldl cons
                                                              _r35984_
                                                              (gx#import-set-imports
                                                               _in35983_))
                                                       _r35984_)))))
                                        ((letrec ((_lp35943_
                                                   (lambda (_rest35945_
                                                            _body35946_)
                                                     (let ((_rest3594735955_
                                                            _rest35945_))
                                                       (let ((_E3595035959_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _rest3594735955_))))
                 (let ((_else3594935965_
                        (lambda ()
                          (begin
                            (if (gx#module-context? _current-ctx35938_)
                                (gx#module-context-import-set!
                                 _current-ctx35938_
                                 (foldl _fold-e35941_
                                        (gx#module-context-import
                                         _current-ctx35938_)
                                        _body35946_))
                                '#!void)
                            (hash-for-each
                             (lambda (_ctx35963_ _g40434_)
                               (gx#eval-module _ctx35963_))
                             _deps35939_)
                            _body35946_))))
                   (let ((_K3595135971_
                          (lambda (_rest35968_ _hd35969_)
                            (begin
                              (if (gx#module-import? _hd35969_)
                                  (_bind!35940_ _hd35969_)
                                  (if (gx#import-set? _hd35969_)
                                      (for-each
                                       _bind!35940_
                                       (gx#import-set-imports _hd35969_))
                                      (if (gx#module-context? _hd35969_)
                                          '#!void
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Unexpected import"
                                           _stx35911_
                                           _hd35969_))))
                              (_lp35943_
                               _rest35968_
                               (cons _hd35969_ _body35946_))))))
                     (if (##pair? _rest3594735955_)
                         (let ((_hd3595235974_ (##car _rest3594735955_))
                               (_tl3595335976_ (##cdr _rest3594735955_)))
                           (let ((_hd35979_ _hd3595235974_))
                             (let ((_rest35981_ _tl3595335976_))
                               (_K3595135971_ _rest35981_ _hd35979_))))
                         (_else3594935965_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _lp35943_)
                                         _rbody35936_
                                         '()))))))))
                         (let ((_expanded-import?35924_
                                (lambda (_e35928_)
                                  (let ((_$e35930_ (gx#import-set? _e35928_)))
                                    (if _$e35930_
                                        _$e35930_
                                        (let ((_$e35933_
                                               (gx#module-import? _e35928_)))
                                          (if _$e35933_
                                              _$e35933_
                                              (gx#module-context?
                                               _e35928_))))))))
                           (let ((_import-submodule35919_
                                  (lambda (_hd36184_
                                           _K36185_
                                           _rest36186_
                                           _r36187_)
                                    (let ((_e3618836195_ _hd36184_))
                                      (let ((_E3619036199_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e3618836195_))))
                                        (let ((_E3618936213_
                                               (lambda ()
                                                 (if (gx#stx-pair?
                                                      _e3618836195_)
                                                     (let ((_e3619136203_
                                                            (gx#syntax-e
                                                             _e3618836195_)))
                                                       (let ((_hd3619236206_
                                                              (##car _e3619136203_))
                                                             (_tl3619336208_
                                                              (##cdr _e3619136203_)))
                                                         (let ((_spath36211_
                                                                _tl3619336208_))
                                                           (if '#t
                                                               (_import135915_
                                                                (_import-spec-source35922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _spath36211_)
                        _K36185_
                        _rest36186_
                        _r36187_)
                       (_E3619036199_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E3619036199_)))))
                                          (let () (_E3618936213_))))))))
                             (let ((_import-runtime35920_
                                    (lambda (_hd36151_
                                             _K36152_
                                             _rest36153_
                                             _r36154_)
                                      (let ((_e3615536162_ _hd36151_))
                                        (let ((_E3615736166_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e3615536162_))))
                                          (let ((_E3615636180_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e3615536162_)
                                                       (let ((_e3615836170_
                                                              (gx#syntax-e
                                                               _e3615536162_)))
                                                         (let ((_hd3615936173_
                                                                (##car _e3615836170_))
                                                               (_tl3616036175_
                                                                (##cdr _e3615836170_)))
                                                           (let ((_spath36178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl3616036175_))
                     (if '#t
                         (_K36152_
                          _rest36153_
                          (cons (_import-spec-source35922_ _spath36178_)
                                _r36154_))
                         (_E3615736166_)))))
               (_E3615736166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E3615636180_))))))))
                               (let ((_import-spec35921_
                                      (lambda (_hd35990_
                                               _K35991_
                                               _rest35992_
                                               _r35993_)
                                        (let ((_e3599436011_ _hd35990_))
                                          (let ((_E3600336015_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e3599436011_))))
                                            (let ((_E3599636125_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e3599436011_)
                                                         (let ((_e3600436019_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e3599436011_)))
                   (let ((_hd3600536022_ (##car _e3600436019_))
                         (_tl3600636024_ (##cdr _e3600436019_)))
                     (if (gx#stx-pair? _tl3600636024_)
                         (let ((_e3600736027_ (gx#syntax-e _tl3600636024_)))
                           (let ((_hd3600836030_ (##car _e3600736027_))
                                 (_tl3600936032_ (##cdr _e3600736027_)))
                             (let ((_path36035_ _hd3600836030_))
                               (let ((_specs36037_ _tl3600936032_))
                                 (if '#t
                                     (let ((_src-ctx36039_
                                            (_import-spec-source35922_
                                             _path36035_))
                                           (_exports36040_ (make-hash-table))
                                           (_specs36041_
                                            (gx#syntax->list _specs36037_)))
                                       (begin
                                         (for-each
                                          (lambda (_out36043_)
                                            (hash-put!
                                             _exports36040_
                                             (cons (gx#module-export-phi
                                                    _out36043_)
                                                   (gx#module-export-name
                                                    _out36043_))
                                             _out36043_))
                                          (gx#module-context-export
                                           _src-ctx36039_))
                                         (_K35991_
                                          _rest35992_
                                          (foldl (lambda (_spec36045_ _r36046_)
                                                   (let ((_e3604736063_
                                                          _spec36045_))
                                                     (let ((_E3604936067_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _e3604736063_))))
                                                       (let ((_E3604836121_
                                                              (lambda ()
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e3604736063_)
                            (let ((_e3605036071_ (gx#syntax-e _e3604736063_)))
                              (let ((_hd3605136074_ (##car _e3605036071_))
                                    (_tl3605236076_ (##cdr _e3605036071_)))
                                (let ((_phi36079_ _hd3605136074_))
                                  (if (gx#stx-pair? _tl3605236076_)
                                      (let ((_e3605336081_
                                             (gx#syntax-e _tl3605236076_)))
                                        (let ((_hd3605436084_
                                               (##car _e3605336081_))
                                              (_tl3605536086_
                                               (##cdr _e3605336081_)))
                                          (let ((_name36089_ _hd3605436084_))
                                            (if (gx#stx-pair? _tl3605536086_)
                                                (let ((_e3605636091_
                                                       (gx#syntax-e
                                                        _tl3605536086_)))
                                                  (let ((_hd3605736094_
                                                         (##car _e3605636091_))
                                                        (_tl3605836096_
                                                         (##cdr _e3605636091_)))
                                                    (let ((_src-phi36099_
                                                           _hd3605736094_))
                                                      (if (gx#stx-pair?
                                                           _tl3605836096_)
                                                          (let ((_e3605936101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3605836096_)))
                    (let ((_hd3606036104_ (##car _e3605936101_))
                          (_tl3606136106_ (##cdr _e3605936101_)))
                      (let ((_src-name36109_ _hd3606036104_))
                        (if (gx#stx-null? _tl3606136106_)
                            (if (if (gx#stx-fixnum? _src-phi36099_)
                                    (if (gx#identifier? _src-name36109_)
                                        (if (gx#stx-fixnum? _phi36079_)
                                            (gx#identifier? _name36089_)
                                            '#f)
                                        '#f)
                                    '#f)
                                (let ((_src-phi36111_
                                       (gx#stx-e _src-phi36099_))
                                      (_src-name36112_
                                       (gx#core-identifier-key
                                        _src-name36109_))
                                      (_phi36113_ (gx#stx-e _phi36079_))
                                      (_name36114_
                                       (gx#core-identifier-key _name36089_)))
                                  (let ((_$e36116_
                                         (hash-get
                                          _exports36040_
                                          (cons _src-phi36111_
                                                _src-name36112_))))
                                    (if _$e36116_
                                        ((lambda (_out36119_)
                                           (cons (gx#core-module-export->import
                                                  _out36119_
                                                  _name36114_
                                                  (fx- _phi36113_
                                                       _src-phi36111_))
                                                 _r36046_))
                                         _$e36116_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _stx35911_
                                         _hd35990_))))
                                (_E3604936067_))
                            (_E3604936067_)))))
                  (_E3604936067_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E3604936067_)))))
                                      (_E3604936067_)))))
                            (_E3604936067_)))))
                 (let () (_E3604836121_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r35993_
                                                 _specs36041_))))
                                     (_E3600336015_))))))
                         (_E3600336015_))))
                 (_E3600336015_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_E3599536147_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e3599436011_)
                                                           (let ((_e3599736129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e3599436011_)))
                     (let ((_hd3599836132_ (##car _e3599736129_))
                           (_tl3599936134_ (##cdr _e3599736129_)))
                       (if (gx#stx-pair? _tl3599936134_)
                           (let ((_e3600036137_ (gx#syntax-e _tl3599936134_)))
                             (let ((_hd3600136140_ (##car _e3600036137_))
                                   (_tl3600236142_ (##cdr _e3600036137_)))
                               (let ((_path36145_ _hd3600136140_))
                                 (if (gx#stx-null? _tl3600236142_)
                                     (if '#t
                                         (_K35991_
                                          _rest35992_
                                          (cons (_import-spec-source35922_
                                                 _path36145_)
                                                _r35993_))
                                         (_E3599636125_))
                                     (_E3599636125_)))))
                           (_E3599636125_))))
                   (_E3599636125_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E3599536147_)))))))))
                                 (let ((_expand135914_
                                        (lambda (_hd36357_
                                                 _K36358_
                                                 _rest36359_
                                                 _r36360_)
                                          (if (gx#core-bound-module? _hd36357_)
                                              (_import135915_
                                               (gx#syntax-local-e _hd36357_)
                                               _K36358_
                                               _rest36359_
                                               _r36360_)
                                              (if (gx#core-library-module-path?
                                                   _hd36357_)
                                                  (_import135915_
                                                   (gx#import-module
                                                    (gx#core-resolve-library-module-path
                                                     _hd36357_))
                                                   _K36358_
                                                   _rest36359_
                                                   _r36360_)
                                                  (if (gx#stx-string?
                                                       _hd36357_)
                                                      (_import135915_
                                                       (gx#import-module
                                                        (gx#core-resolve-module-path
                                                         _hd36357_
                                                         (gx#stx-source
                                                          _stx35911_)))
                                                       _K36358_
                                                       _rest36359_
                                                       _r36360_)
                                                      (if (gx#module-context?
                                                           (gx#stx-e
                                                            _hd36357_))
                                                          (_K36358_
                                                           _rest36359_
                                                           (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd36357_)
                         _r36360_))
                  (if (_import-spec?35916_ _hd36357_)
                      (_import-spec35921_
                       _hd36357_
                       _K36358_
                       _rest36359_
                       _r36360_)
                      (if (_import-submodule?35917_ _hd36357_)
                          (_import-submodule35919_
                           _hd36357_
                           _K36358_
                           _rest36359_
                           _r36360_)
                          (if (_import-runtime?35918_ _hd36357_)
                              (_import-runtime35920_
                               _hd36357_
                               _K36358_
                               _rest36359_
                               _r36360_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; illegal import"
                               _stx35911_
                               _hd36357_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let ((_rbody35926_
                                          (gx#core-expand-import/export
                                           _stx35911_
                                           _expanded-import?35924_
                                           'apply-import-expander
                                           gx#current-import-expander-phi
                                           _expand135914_)))
                                     (if _internal-expand?35912_
                                         (reverse _rbody35926_)
                                         (gx#core-quote-syntax
                                          (gx#core-cons
                                           '%#import
                                           (_import!35923_ _rbody35926_))
                                          (gx#stx-source
                                           _stx35911_))))))))))))))))))
      (lambda _g40436_
        (let ((_g40435_ (length _g40436_)))
          (cond ((fx= _g40435_ 1)
                 (apply (lambda (_stx36365_)
                          (let ((_internal-expand?36367_ '#f))
                            (_opt-lambda3590936362_
                             _stx36365_
                             _internal-expand?36367_)))
                        _g40436_))
                ((fx= _g40435_ 2)
                 (apply (lambda (_stx36369_ _internal-expand?36370_)
                          (_opt-lambda3590936362_
                           _stx36369_
                           _internal-expand?36370_))
                        _g40436_))
                (else (error "No clause matching arguments" _g40436_)))))))
  (define gx#core-import-nested-module
    (lambda (_spath35838_ _where35839_)
      (let ((_e3584035847_ _spath35838_))
        (let ((_E3584235851_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3584035847_))))
          (let ((_E3584135906_
                 (lambda ()
                   (if (gx#stx-pair? _e3584035847_)
                       (let ((_e3584335855_ (gx#syntax-e _e3584035847_)))
                         (let ((_hd3584435858_ (##car _e3584335855_))
                               (_tl3584535860_ (##cdr _e3584335855_)))
                           (let ((_origin35863_ _hd3584435858_))
                             (let ((_sub35865_ _tl3584535860_))
                               (if '#t
                                   (let ((_origin-ctx35867_
                                          (if (gx#stx-false? _origin35863_)
                                              (gx#current-expander-context)
                                              (gx#import-module
                                               _origin35863_))))
                                     ((letrec ((_lp35869_
                                                (lambda (_rest35871_
                                                         _ctx35872_)
                                                  (let ((_e3587335880_
                                                         _rest35871_))
                                                    (let ((_E3587535884_
                                                           (lambda ()
                                                             _ctx35872_)))
                                                      (let ((_E3587435902_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e3587335880_)
                           (let ((_e3587635888_ (gx#syntax-e _e3587335880_)))
                             (let ((_hd3587735891_ (##car _e3587635888_))
                                   (_tl3587835893_ (##cdr _e3587635888_)))
                               (let ((_id35896_ _hd3587735891_))
                                 (let ((_rest35898_ _tl3587835893_))
                                   (if '#t
                                       (let ((_bind35900_
                                              (gx#resolve-identifier
                                               _id35896_
                                               '0
                                               _ctx35872_)))
                                         (begin
                                           (if (if (gx#syntax-binding?
                                                    _bind35900_)
                                                   (gx#module-context?
                                                    (gx#syntax-binding-e
                                                     _bind35900_))
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where35839_
                                                _spath35838_
                                                _id35896_))
                                           (_lp35869_
                                            _rest35898_
                                            (gx#syntax-binding-e
                                             _bind35900_))))
                                       (_E3587535884_))))))
                           (_E3587535884_)))))
                (let () (_E3587435902_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp35869_)
                                      _sub35865_
                                      _origin-ctx35867_))
                                   (_E3584235851_))))))
                       (_E3584235851_)))))
            (let () (_E3584135906_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd35836_)
      (gx#core-expand-import%
       (cons 'import-internal% (cons _hd35836_ '()))
       '#t)))
  (define gx#core-expand-export%
    (let ((_opt-lambda3541835826_
           (lambda (_stx35420_ _internal-expand?35421_)
             (let ((_make-export35423_
                    (let ((_opt-lambda3578235797_
                           (lambda (_bind35784_
                                    _phi35785_
                                    _ctx35786_
                                    _name35787_)
                             (let ((_key35789_ (gx#binding-key _bind35784_)))
                               (let ((_export-key35791_
                                      (if _name35787_
                                          (gx#core-identifier-key _name35787_)
                                          _key35789_)))
                                 (let ()
                                   (gx#make-module-export
                                    _ctx35786_
                                    _key35789_
                                    _phi35785_
                                    _export-key35791_
                                    (let ((_$e35794_
                                           (gx#extern-binding? _bind35784_)))
                                      (if _$e35794_
                                          _$e35794_
                                          (gx#import-binding?
                                           _bind35784_))))))))))
                      (lambda _g40438_
                        (let ((_g40437_ (length _g40438_)))
                          (cond ((fx= _g40437_ 1)
                                 (apply (lambda (_bind35800_)
                                          (let ((_phi35802_
                                                 (gx#current-export-expander-phi)))
                                            (let ((_ctx35804_
                                                   (gx#current-expander-context)))
                                              (let ((_name35806_ '#f))
                                                (_opt-lambda3578235797_
                                                 _bind35800_
                                                 _phi35802_
                                                 _ctx35804_
                                                 _name35806_)))))
                                        _g40438_))
                                ((fx= _g40437_ 2)
                                 (apply (lambda (_bind35808_ _phi35809_)
                                          (let ((_ctx35811_
                                                 (gx#current-expander-context)))
                                            (let ((_name35813_ '#f))
                                              (_opt-lambda3578235797_
                                               _bind35808_
                                               _phi35809_
                                               _ctx35811_
                                               _name35813_))))
                                        _g40438_))
                                ((fx= _g40437_ 3)
                                 (apply (lambda (_bind35815_
                                                 _phi35816_
                                                 _ctx35817_)
                                          (let ((_name35819_ '#f))
                                            (_opt-lambda3578235797_
                                             _bind35815_
                                             _phi35816_
                                             _ctx35817_
                                             _name35819_)))
                                        _g40438_))
                                ((fx= _g40437_ 4)
                                 (apply (lambda (_bind35821_
                                                 _phi35822_
                                                 _ctx35823_
                                                 _name35824_)
                                          (_opt-lambda3578235797_
                                           _bind35821_
                                           _phi35822_
                                           _ctx35823_
                                           _name35824_))
                                        _g40438_))
                                (else
                                 (error "No clause matching arguments"
                                        _g40438_))))))))
               (let ((_export-imports35425_
                      (lambda (_src35446_ _r35447_)
                        (let ((_current-ctx35449_
                               (gx#current-expander-context)))
                          (let ((_current-phi35450_
                                 (gx#current-export-expander-phi)))
                            (let ((_import->export35451_
                                   (lambda (_in35459_)
                                     (let ((_in3546035468_ _in35459_))
                                       (let ((_E3546235472_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _in3546035468_))))
                                         (let ((_K3546335479_
                                                (lambda (_phi35475_
                                                         _key35476_
                                                         _out35477_)
                                                  (if (fx= _phi35475_
                                                           _current-phi35450_)
                                                      (if (eq? _src35446_
                                                               (gx#module-export-context
                                                                _out35477_))
                                                          (gx#make-module-export
                                                           _current-ctx35449_
                                                           _key35476_
                                                           _phi35475_
                                                           _key35476_
                                                           '#t)
                                                          '#f)
                                                      '#f))))
                                           (if (direct-struct-instance?
                                                gx#module-import::t
                                                _in3546035468_)
                                               (let ((_e3546435482_
                                                      (##vector-ref
                                                       _in3546035468_
                                                       '1)))
                                                 (let ((_out35485_
                                                        _e3546435482_))
                                                   (let ((_e3546535487_
                                                          (##vector-ref
                                                           _in3546035468_
                                                           '2)))
                                                     (let ((_key35490_
                                                            _e3546535487_))
                                                       (let ((_e3546635492_
                                                              (##vector-ref
                                                               _in3546035468_
                                                               '3)))
                                                         (let ((_phi35495_
                                                                _e3546635492_))
                                                           (_K3546335479_
                                                            _phi35495_
                                                            _key35490_
                                                            _out35485_)))))))
                                               (_E3546235472_))))))))
                              (let ((_fold-e35452_
                                     (lambda (_in35454_ _r35455_)
                                       (let ((_out35457_
                                              (_import->export35451_
                                               _in35454_)))
                                         (if _out35457_
                                             (cons _out35457_ _r35455_)
                                             _r35455_)))))
                                (cons (gx#make-export-set
                                       _src35446_
                                       _current-phi35450_
                                       (foldl _fold-e35452_
                                              '()
                                              (gx#module-context-import
                                               _current-ctx35449_)))
                                      _r35447_))))))))
                 (let ((_export!35426_
                        (lambda (_rbody35436_)
                          (let ((_current-ctx35438_
                                 (gx#current-expander-context)))
                            (let ((_fold-e35439_
                                   (lambda (_out35443_ _r35444_)
                                     (if (gx#module-export? _out35443_)
                                         (cons _out35443_ _r35444_)
                                         (if (gx#export-set? _out35443_)
                                             (foldl cons
                                                    _r35444_
                                                    (gx#export-set-exports
                                                     _out35443_))
                                             _r35444_)))))
                              (let ((_body35441_ (reverse _rbody35436_)))
                                (begin
                                  (gx#module-context-export-set!
                                   _current-ctx35438_
                                   (foldl _fold-e35439_
                                          (gx#module-context-export
                                           _current-ctx35438_)
                                          _body35441_))
                                  _body35441_)))))))
                   (let ((_expanded-export?35427_
                          (lambda (_e35431_)
                            (let ((_$e35433_ (gx#module-export? _e35431_)))
                              (if _$e35433_
                                  _$e35433_
                                  (gx#export-set? _e35431_))))))
                     (let ((_expand135424_
                            (lambda (_hd35497_ _K35498_ _rest35499_ _r35500_)
                              (let ((_e3550135533_ _hd35497_))
                                (let ((_E3552835537_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; illegal export"
                                          _stx35420_
                                          _hd35497_))))
                                  (let ((_E3551835616_
                                         (lambda ()
                                           (if (gx#stx-pair? _e3550135533_)
                                               (let ((_e3552935541_
                                                      (gx#syntax-e
                                                       _e3550135533_)))
                                                 (let ((_hd3553035544_
                                                        (##car _e3552935541_))
                                                       (_tl3553135546_
                                                        (##cdr _e3552935541_)))
                                                   (if (eq? (gx#stx-e
                                                             _hd3553035544_)
                                                            'import:)
                                                       (let ((_in35549_
                                                              _tl3553135546_))
                                                         (if (gx#stx-list?
                                                              _in35549_)
                                                             ((letrec ((_lp35551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_in-rest35553_ _r35554_)
                                  (let ((_e3555535562_ _in-rest35553_))
                                    (let ((_E3555735566_
                                           (lambda ()
                                             (_K35498_ _rest35499_ _r35554_))))
                                      (let ((_E3555635612_
                                             (lambda ()
                                               (if (gx#stx-pair? _e3555535562_)
                                                   (let ((_e3555835570_
                                                          (gx#syntax-e
                                                           _e3555535562_)))
                                                     (let ((_hd3555935573_
                                                            (##car _e3555835570_))
                                                           (_tl3556035575_
                                                            (##cdr _e3555835570_)))
                                                       (let ((_hd35578_
                                                              _hd3555935573_))
                                                         (let ((_in-rest35580_
                                                                _tl3556035575_))
                                                           (if '#t
                                                               (let ((_src35610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (gx#core-bound-module? _hd35578_)
                                  (gx#syntax-local-e _hd35578_)
                                  (if (gx#core-library-module-path? _hd35578_)
                                      (gx#import-module
                                       (gx#core-resolve-library-module-path
                                        _hd35578_))
                                      (if (gx#stx-string? _hd35578_)
                                          (gx#import-module
                                           (gx#core-resolve-module-path
                                            _hd35578_
                                            (gx#stx-source _stx35420_)))
                                          (let ((_e3558135588_ _hd35578_))
                                            (let ((_E3558335592_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; illegal re-export"
                                                      _stx35420_
                                                      _hd35578_))))
                                              (let ((_E3558235606_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e3558135588_)
                                                           (let ((_e3558435596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e3558135588_)))
                     (let ((_hd3558535599_ (##car _e3558435596_))
                           (_tl3558635601_ (##cdr _e3558435596_)))
                       (if (eq? (gx#stx-e _hd3558535599_) 'in:)
                           (let ((_spath35604_ _tl3558635601_))
                             (if '#t
                                 (gx#core-import-nested-module
                                  _spath35604_
                                  _stx35420_)
                                 (_E3558335592_)))
                           (_E3558335592_))))
                   (_E3558335592_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (_E3558235606_))))))))))
                         (_lp35551_
                          _in-rest35580_
                          (_export-imports35425_ _src35610_ _r35554_)))
                       (_E3555735566_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3555735566_)))))
                                        (let () (_E3555635612_))))))))
                        _lp35551_)
                      _in35549_
                      _r35500_)
                     (_E3552835537_)))
               (_E3552835537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E3552835537_)))))
                                    (let ((_E3550535655_
                                           (lambda ()
                                             (if (gx#stx-pair? _e3550135533_)
                                                 (let ((_e3551935620_
                                                        (gx#syntax-e
                                                         _e3550135533_)))
                                                   (let ((_hd3552035623_
                                                          (##car _e3551935620_))
                                                         (_tl3552135625_
                                                          (##cdr _e3551935620_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd3552035623_)
                                                              'rename:)
                                                         (if (gx#stx-pair?
                                                              _tl3552135625_)
                                                             (let ((_e3552235628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl3552135625_)))
                       (let ((_hd3552335631_ (##car _e3552235628_))
                             (_tl3552435633_ (##cdr _e3552235628_)))
                         (let ((_id35636_ _hd3552335631_))
                           (if (gx#stx-pair? _tl3552435633_)
                               (let ((_e3552535638_
                                      (gx#syntax-e _tl3552435633_)))
                                 (let ((_hd3552635641_ (##car _e3552535638_))
                                       (_tl3552735643_ (##cdr _e3552535638_)))
                                   (let ((_name35646_ _hd3552635641_))
                                     (if (gx#stx-null? _tl3552735643_)
                                         (if '#t
                                             (let ((_phi35648_
                                                    (gx#current-export-expander-phi)))
                                               (let ((_$e35650_
                                                      (gx#core-resolve-identifier
                                                       _id35636_
                                                       _phi35648_)))
                                                 (if _$e35650_
                                                     ((lambda (_bind35653_)
                                                        (_K35498_
                                                         _rest35499_
                                                         (cons (_make-export35423_
                                                                _bind35653_
                                                                _phi35648_
                                                                (gx#current-expander-context)
                                                                _name35646_)
                                                               _r35500_)))
                                                      _$e35650_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Reference to unbound identifier"
                                                      _stx35420_
                                                      _hd35497_
                                                      _id35636_))))
                                             (_E3551835616_))
                                         (_E3551835616_)))))
                               (_E3551835616_)))))
                     (_E3551835616_))
                 (_E3551835616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E3551835616_)))))
                                      (let ((_E3550435704_
                                             (lambda ()
                                               (if (gx#stx-pair? _e3550135533_)
                                                   (let ((_e3550635659_
                                                          (gx#syntax-e
                                                           _e3550135533_)))
                                                     (let ((_hd3550735662_
                                                            (##car _e3550635659_))
                                                           (_tl3550835664_
                                                            (##cdr _e3550635659_)))
                                                       (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3550735662_)
                        'spec:)
                   (if (gx#stx-pair? _tl3550835664_)
                       (let ((_e3550935667_ (gx#syntax-e _tl3550835664_)))
                         (let ((_hd3551035670_ (##car _e3550935667_))
                               (_tl3551135672_ (##cdr _e3550935667_)))
                           (let ((_phi35675_ _hd3551035670_))
                             (if (gx#stx-pair? _tl3551135672_)
                                 (let ((_e3551235677_
                                        (gx#syntax-e _tl3551135672_)))
                                   (let ((_hd3551335680_ (##car _e3551235677_))
                                         (_tl3551435682_
                                          (##cdr _e3551235677_)))
                                     (let ((_id35685_ _hd3551335680_))
                                       (if (gx#stx-pair? _tl3551435682_)
                                           (let ((_e3551535687_
                                                  (gx#syntax-e
                                                   _tl3551435682_)))
                                             (let ((_hd3551635690_
                                                    (##car _e3551535687_))
                                                   (_tl3551735692_
                                                    (##cdr _e3551535687_)))
                                               (let ((_name35695_
                                                      _hd3551635690_))
                                                 (if (gx#stx-null?
                                                      _tl3551735692_)
                                                     (if (if (gx#stx-fixnum?
                                                              _phi35675_)
                                                             (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id35685_)
                         (gx#identifier? _name35695_)
                         '#f)
                     '#f)
                 (let ((_phi35697_ (gx#stx-e _phi35675_)))
                   (let ((_$e35699_
                          (gx#core-resolve-identifier _id35685_ _phi35697_)))
                     (if _$e35699_
                         ((lambda (_bind35702_)
                            (_K35498_
                             _rest35499_
                             (cons (_make-export35423_
                                    _bind35702_
                                    _phi35697_
                                    (gx#current-expander-context)
                                    _name35695_)
                                   _r35500_)))
                          _$e35699_)
                         (gx#raise-syntax-error
                          '#f
                          '"Reference to unbound identifier"
                          _stx35420_
                          _hd35497_
                          _id35685_))))
                 (_E3550535655_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E3550535655_)))))
                                           (_E3550535655_)))))
                                 (_E3550535655_)))))
                       (_E3550535655_))
                   (_E3550535655_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E3550535655_)))))
                                        (let ((_E3550335715_
                                               (lambda ()
                                                 (let ((_id35708_
                                                        _e3550135533_))
                                                   (if (gx#identifier?
                                                        _id35708_)
                                                       (let ((_$e35710_
                                                              (gx#core-resolve-identifier
                                                               _id35708_
                                                               (gx#current-export-expander-phi))))
                                                         (if _$e35710_
                                                             ((lambda (_bind35713_)
                                                                (_K35498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest35499_
                         (cons (_make-export35423_ _bind35713_) _r35500_)))
                      _$e35710_)
                     (gx#raise-syntax-error
                      '#f
                      '"Reference to unbound identifier"
                      _stx35420_
                      _hd35497_)))
               (_E3550435704_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_E3550235779_
                                                 (lambda ()
                                                   (if (eq? (gx#stx-e
                                                             _e3550135533_)
                                                            '#t)
                                                       (if '#t
                                                           (let ((_current-ctx35719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#current-expander-context)))
                     (let ((_current-phi35721_
                            (gx#current-export-expander-phi)))
                       (let ((_phi-ctx35723_
                              (gx#core-context-shift
                               _current-ctx35719_
                               _current-phi35721_)))
                         (let ((_phi-bind35725_
                                (hash->list
                                 (gx#expander-context-table _phi-ctx35723_))))
                           (let ()
                             ((letrec ((_lp35728_
                                        (lambda (_bind-rest35730_ _set35731_)
                                          (let ((_bind-rest3573235742_
                                                 _bind-rest35730_))
                                            (let ((_E3573535746_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _bind-rest3573235742_))))
                                              (let ((_else3573435750_
                                                     (lambda ()
                                                       (_K35498_
                                                        _rest35499_
                                                        (cons (gx#make-export-set
                                                               '#f
                                                               _current-phi35721_
                                                               _set35731_)
                                                              _r35500_)))))
                                                (let ((_K3573635760_
                                                       (lambda (_bind-rest35753_
                                                                _bind35754_
                                                                _key35755_)
                                                         (if (let ((_$e35757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#import-binding? _bind35754_)))
                       (if _$e35757_
                           _$e35757_
                           (gx#private-feature-binding? _bind35754_)))
                     (_lp35728_ _bind-rest35753_ _set35731_)
                     (_lp35728_
                      _bind-rest35753_
                      (cons (_make-export35423_
                             _bind35754_
                             _current-phi35721_
                             _current-ctx35719_)
                            _set35731_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _bind-rest3573235742_)
                                                      (let ((_hd3573735763_
                                                             (##car _bind-rest3573235742_))
                                                            (_tl3573835765_
                                                             (##cdr _bind-rest3573235742_)))
                                                        (if (##pair? _hd3573735763_)
                                                            (let ((_hd3573935768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##car _hd3573735763_))
                          (_tl3574035770_ (##cdr _hd3573735763_)))
                      (let ((_key35773_ _hd3573935768_))
                        (let ((_bind35775_ _tl3574035770_))
                          (let ((_bind-rest35777_ _tl3573835765_))
                            (_K3573635760_
                             _bind-rest35777_
                             _bind35775_
                             _key35773_)))))
                    (_else3573435750_)))
              (_else3573435750_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp35728_)
                              _phi-bind35725_
                              '()))))))
                   (_E3550335715_))
               (_E3550335715_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E3550235779_))))))))))))
                       (let ((_rbody35429_
                              (gx#core-expand-import/export
                               _stx35420_
                               gx#module-export?
                               'apply-export-expander
                               gx#current-export-expander-phi
                               _expand135424_)))
                         (if _internal-expand?35421_
                             (reverse _rbody35429_)
                             (gx#core-quote-syntax
                              (gx#core-cons
                               '%#export
                               (_export!35426_ _rbody35429_))
                              (gx#stx-source _stx35420_))))))))))))
      (lambda _g40440_
        (let ((_g40439_ (length _g40440_)))
          (cond ((fx= _g40439_ 1)
                 (apply (lambda (_stx35829_)
                          (let ((_internal-expand?35831_ '#f))
                            (_opt-lambda3541835826_
                             _stx35829_
                             _internal-expand?35831_)))
                        _g40440_))
                ((fx= _g40439_ 2)
                 (apply (lambda (_stx35833_ _internal-expand?35834_)
                          (_opt-lambda3541835826_
                           _stx35833_
                           _internal-expand?35834_))
                        _g40440_))
                (else (error "No clause matching arguments" _g40440_)))))))
  (define gx#core-expand-export-source
    (lambda (_hd35417_)
      (gx#core-expand-export% (cons 'export-macro% (cons _hd35417_ '())) '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx35387_)
      (let ((_e3538835395_ _stx35387_))
        (let ((_E3539035399_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e3538835395_))))
          (let ((_E3538935413_
                 (lambda ()
                   (if (gx#stx-pair? _e3538835395_)
                       (let ((_e3539135403_ (gx#syntax-e _e3538835395_)))
                         (let ((_hd3539235406_ (##car _e3539135403_))
                               (_tl3539335408_ (##cdr _e3539135403_)))
                           (let ((_body35411_ _tl3539335408_))
                             (if (gx#identifier-list? _body35411_)
                                 (begin
                                   (gx#stx-for-each
                                    gx#core-bind-feature!
                                    _body35411_)
                                   (gx#core-quote-syntax
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map
                                      gx#core-quote-syntax
                                      _body35411_))
                                    (gx#stx-source _stx35387_)))
                                 (_E3539035399_)))))
                       (_E3539035399_)))))
            (let () (_E3538935413_)))))))
  (define gx#core-bind-feature!
    (let ((_opt-lambda3535135358_
           (lambda (_id35353_ _private?35354_ _phi35355_ _ctx35356_)
             (gx#core-bind-syntax!
              _id35353_
              ((if _private?35354_
                   gx#make-private-feature-expander
                   gx#make-feature-expander)
               (gx#stx-e _id35353_))
              _private?35354_
              _phi35355_
              _ctx35356_))))
      (lambda _g40442_
        (let ((_g40441_ (length _g40442_)))
          (cond ((fx= _g40441_ 1)
                 (apply (lambda (_id35361_)
                          (let ((_private?35363_ '#f))
                            (let ((_phi35365_ (gx#current-expander-phi)))
                              (let ((_ctx35367_ (gx#current-expander-context)))
                                (_opt-lambda3535135358_
                                 _id35361_
                                 _private?35363_
                                 _phi35365_
                                 _ctx35367_)))))
                        _g40442_))
                ((fx= _g40441_ 2)
                 (apply (lambda (_id35369_ _private?35370_)
                          (let ((_phi35372_ (gx#current-expander-phi)))
                            (let ((_ctx35374_ (gx#current-expander-context)))
                              (_opt-lambda3535135358_
                               _id35369_
                               _private?35370_
                               _phi35372_
                               _ctx35374_))))
                        _g40442_))
                ((fx= _g40441_ 3)
                 (apply (lambda (_id35376_ _private?35377_ _phi35378_)
                          (let ((_ctx35380_ (gx#current-expander-context)))
                            (_opt-lambda3535135358_
                             _id35376_
                             _private?35377_
                             _phi35378_
                             _ctx35380_)))
                        _g40442_))
                ((fx= _g40441_ 4)
                 (apply (lambda (_id35382_
                                 _private?35383_
                                 _phi35384_
                                 _ctx35385_)
                          (_opt-lambda3535135358_
                           _id35382_
                           _private?35383_
                           _phi35384_
                           _ctx35385_))
                        _g40442_))
                (else (error "No clause matching arguments" _g40442_))))))))
