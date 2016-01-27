(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gx#syntax-pattern::t
    (make-struct-type
     'gx#syntax-pattern::t
     gx#expander::t
     '2
     'syntax-pattern
     '()
     '#f))
  (define gx#syntax-pattern? (make-struct-predicate gx#syntax-pattern::t))
  (define gx#make-syntax-pattern
    (lambda _$args12217_
      (apply make-struct-instance gx#syntax-pattern::t _$args12217_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (begin)
  (define gx#syntax-pattern::apply-macro-expander
    (let ((_@super12212_
           (let ((_$super12206_
                  (make-promise
                   (lambda ()
                     (let ((_$e12203_
                            (struct-find-next-method
                             gx#syntax-pattern::t
                             'apply-macro-expander)))
                       (if _$e12203_
                           _$e12203_
                           (error '"Cannot find super method"
                                  gx#syntax-pattern::t
                                  'apply-macro-expander)))))))
             (lambda _$args12209_
               (apply (force _$super12206_) _$args12209_)))))
      (lambda (_self12214_ _stx12215_)
        (gx#raise-syntax-error
         '#f
         '"Identifier used out of context"
         _stx12215_))))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx11811_)
      (let ((_generate11813_
             (lambda (_e12040_)
               (let ((_BUG12042_
                      (lambda (_q12200_)
                        (error '"BUG: syntax; generate"
                               _stx11811_
                               _e12040_
                               _q12200_))))
                 (let ((_local-pattern-e12043_
                        (lambda (_pat12198_)
                          (gx#syntax-local-rewrap
                           (gx#syntax-pattern-id _pat12198_)))))
                   (let ((_getvar12044_
                          (lambda (_q12195_ _vars12196_)
                            (assgetq _q12195_ _vars12196_ _BUG12042_))))
                     (let ((_getarg12045_
                            (lambda (_arg12161_ _vars12162_)
                              (let ((_arg1216312170_ _arg12161_))
                                (let ((_E1216512174_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1216312170_))))
                                  (let ((_K1216612183_
                                         (lambda (_e12177_ _tag12178_)
                                           (let ((_$e12180_ _tag12178_))
                                             (if (eq? _$e12180_ 'ref)
                                                 (_getvar12044_
                                                  _e12177_
                                                  _vars12162_)
                                                 (if (eq? _$e12180_ 'pattern)
                                                     (_local-pattern-e12043_
                                                      _e12177_)
                                                     (_BUG12042_
                                                      _arg12161_)))))))
                                    (if (##pair? _arg1216312170_)
                                        (let ((_hd1216712186_
                                               (##car _arg1216312170_))
                                              (_tl1216812188_
                                               (##cdr _arg1216312170_)))
                                          (let ((_tag12191_ _hd1216712186_))
                                            (let ((_e12193_ _tl1216812188_))
                                              (_K1216612183_
                                               _e12193_
                                               _tag12191_))))
                                        (_E1216512174_))))))))
                       ((letrec ((_recur12047_
                                  (lambda (_e12049_ _vars12050_)
                                    (let ((_e1205112058_ _e12049_))
                                      (let ((_E1205312062_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1205112058_))))
                                        (let ((_K1205412149_
                                               (lambda (_body12065_ _tag12066_)
                                                 (let ((_$e12068_ _tag12066_))
                                                   (if (eq? _$e12068_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body12065_)
                                                       (if (eq? _$e12068_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body12065_))
                                                           (if (eq? _$e12068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e12043_ _body12065_)
                       (if (eq? _$e12068_ 'ref)
                           (_getvar12044_ _body12065_ _vars12050_)
                           (if (eq? _$e12068_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur12047_ (car _body12065_) _vars12050_)
                                (_recur12047_ (cdr _body12065_) _vars12050_))
                               (if (eq? _$e12068_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur12047_ _body12065_ _vars12050_))
                                   (if (eq? _$e12068_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur12047_ _body12065_ _vars12050_))
                                       (if (eq? _$e12068_ 'splice)
                                           (let ((_body1207012081_
                                                  _body12065_))
                                             (let ((_E1207212085_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1207012081_))))
                                               (let ((_K1207312123_
                                                      (lambda (_args12088_
                                                               _iv12089_
                                                               _hd12090_
                                                               _depth12091_)
                                                        (let ((_targets12097_
                                                               (map (lambda (_g1209212094_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg12045_ _g1209212094_ _vars12050_))
                            _args12088_)))
                  (let ((_fold-in12099_ (gx#gentemps _args12088_)))
                    (let ((_fold-out12101_ (gx#genident)))
                      (let ((_lambda-args12103_
                             (foldr cons
                                    (cons _fold-out12101_ '())
                                    _fold-in12099_)))
                        (let ((_lambda-body12120_
                               (if (fx> _depth12091_ '1)
                                   (let ((_r-args12111_
                                          (map (lambda (_arg12105_)
                                                 (cons 'ref (cdr _arg12105_)))
                                               _args12088_))
                                         (_r-vars12112_
                                          (foldr (lambda (_arg12107_
                                                          _var12108_
                                                          _r12109_)
                                                   (cons (cons (cdr _arg12107_)
                                                               _var12108_)
                                                         _r12109_))
                                                 _vars12050_
                                                 _args12088_
                                                 _fold-in12099_)))
                                     (_recur12047_
                                      (cons* 'splice
                                             (fx1- _depth12091_)
                                             _hd12090_
                                             (cons 'var _fold-out12101_)
                                             _r-args12111_)
                                      _r-vars12112_))
                                   (let ((_hd-vars12118_
                                          (foldr (lambda (_arg12114_
                                                          _var12115_
                                                          _r12116_)
                                                   (cons (cons (cdr _arg12114_)
                                                               _var12115_)
                                                         _r12116_))
                                                 _vars12050_
                                                 _args12088_
                                                 _fold-in12099_)))
                                     (gx#core-list
                                      'cons
                                      (_recur12047_ _hd12090_ _hd-vars12118_)
                                      _fold-out12101_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets12097_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets12097_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args12103_
                               _lambda-body12120_)
                              (_recur12047_ _iv12089_ _vars12050_)
                              _targets12097_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1207012081_)
                                                     (let ((_hd1207412126_
                                                            (##car _body1207012081_))
                                                           (_tl1207512128_
                                                            (##cdr _body1207012081_)))
                                                       (let ((_depth12131_
                                                              _hd1207412126_))
                                                         (if (##pair? _tl1207512128_)
                                                             (let ((_hd1207612133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1207512128_))
                           (_tl1207712135_ (##cdr _tl1207512128_)))
                       (let ((_hd12138_ _hd1207612133_))
                         (if (##pair? _tl1207712135_)
                             (let ((_hd1207812140_ (##car _tl1207712135_))
                                   (_tl1207912142_ (##cdr _tl1207712135_)))
                               (let ((_iv12145_ _hd1207812140_))
                                 (let ((_args12147_ _tl1207912142_))
                                   (_K1207312123_
                                    _args12147_
                                    _iv12145_
                                    _hd12138_
                                    _depth12131_))))
                             (_E1207212085_))))
                     (_E1207212085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1207212085_)))))
                                           (if (eq? _$e12068_ 'var)
                                               _body12065_
                                               (_BUG12042_
                                                _e12049_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1205112058_)
                                              (let ((_hd1205512152_
                                                     (##car _e1205112058_))
                                                    (_tl1205612154_
                                                     (##cdr _e1205112058_)))
                                                (let ((_tag12157_
                                                       _hd1205512152_))
                                                  (let ((_body12159_
                                                         _tl1205612154_))
                                                    (_K1205412149_
                                                     _body12159_
                                                     _tag12157_))))
                                              (_E1205312062_))))))))
                          _recur12047_)
                        _e12040_
                        '()))))))))
        (let ((_parse11814_
               (lambda (_e11855_)
                 (let ((_make-cons11857_
                        (lambda (_hd12032_ _tl12033_)
                          (let ((_g12626_ _hd12032_) (_g12628_ _tl12033_))
                            (begin
                              (let ((_g12627_ (values-count _g12626_)))
                                (if (not (fx= _g12627_ 2))
                                    (error "Context expects 2 values"
                                           _g12627_)))
                              (let ((_g12629_ (values-count _g12628_)))
                                (if (not (fx= _g12629_ 2))
                                    (error "Context expects 2 values"
                                           _g12629_)))
                              (let ((_hd-e12035_ (values-ref _g12626_ 0))
                                    (_hd-vars12036_ (values-ref _g12626_ 1)))
                                (let ((_tl-e12037_ (values-ref _g12628_ 0))
                                      (_tl-vars12038_ (values-ref _g12628_ 1)))
                                  (values (cons* 'cons _hd-e12035_ _tl-e12037_)
                                          (append _hd-vars12036_
                                                  _tl-vars12038_)))))))))
                   (let ((_make-splice11858_
                          (lambda (_where11971_
                                   _depth11972_
                                   _hd11973_
                                   _tl11974_)
                            (let ((_g12622_ _hd11973_) (_g12624_ _tl11974_))
                              (begin
                                (let ((_g12623_ (values-count _g12622_)))
                                  (if (not (fx= _g12623_ 2))
                                      (error "Context expects 2 values"
                                             _g12623_)))
                                (let ((_g12625_ (values-count _g12624_)))
                                  (if (not (fx= _g12625_ 2))
                                      (error "Context expects 2 values"
                                             _g12625_)))
                                (let ((_hd-e11976_ (values-ref _g12622_ 0))
                                      (_hd-vars11977_ (values-ref _g12622_ 1)))
                                  (let ((_tl-e11978_ (values-ref _g12624_ 0))
                                        (_tl-vars11979_
                                         (values-ref _g12624_ 1)))
                                    ((letrec ((_lp11981_
                                               (lambda (_rest11983_
                                                        _targets11984_
                                                        _vars11985_)
                                                 (let ((_rest1198611996_
                                                        _rest11983_))
                                                   (let ((_E1198912000_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1198611996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1198812004_
                                                            (lambda ()
                                                              (if (null? _targets11984_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx11811_
                           _where11971_)
                          (values (cons* 'splice
                                         _depth11972_
                                         _hd-e11976_
                                         _tl-e11978_
                                         _targets11984_)
                                  _vars11985_)))))
               (let ((_K1199012013_
                      (lambda (_rest12007_ _hd-pat12008_ _hd-depth*12009_)
                        (let ((_hd-depth12011_
                               (fx- _hd-depth*12009_ _depth11972_)))
                          (if (fxpositive? _hd-depth12011_)
                              (_lp11981_
                               _rest12007_
                               (cons (cons 'ref _hd-pat12008_) _targets11984_)
                               (cons (cons _hd-depth12011_ _hd-pat12008_)
                                     _vars11985_))
                              (if (fxzero? _hd-depth12011_)
                                  (_lp11981_
                                   _rest12007_
                                   (cons (cons 'pattern _hd-pat12008_)
                                         _targets11984_)
                                   _vars11985_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx11811_
                                   _where11971_)))))))
                 (if (##pair? _rest1198611996_)
                     (let ((_hd1199112016_ (##car _rest1198611996_))
                           (_tl1199212018_ (##cdr _rest1198611996_)))
                       (if (##pair? _hd1199112016_)
                           (let ((_hd1199312021_ (##car _hd1199112016_))
                                 (_tl1199412023_ (##cdr _hd1199112016_)))
                             (let ((_hd-depth*12026_ _hd1199312021_))
                               (let ((_hd-pat12028_ _tl1199412023_))
                                 (let ((_rest12030_ _tl1199212018_))
                                   (_K1199012013_
                                    _rest12030_
                                    _hd-pat12028_
                                    _hd-depth*12026_)))))
                           (_else1198812004_)))
                     (_else1198812004_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp11981_)
                                     _hd-vars11977_
                                     '()
                                     _tl-vars11979_))))))))
                     (letrec ((_recur11859_
                               (lambda (_e11864_ _is-e?11865_)
                                 (if (_is-e?11865_ _e11864_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx11811_)
                                     (if (gx#syntax-local-pattern? _e11864_)
                                         (let ((_pat11867_
                                                (gx#syntax-local-e _e11864_)))
                                           (let ((_depth11869_
                                                  (gx#syntax-pattern-depth
                                                   _pat11867_)))
                                             (let ()
                                               (if (fxpositive? _depth11869_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat11867_)
                   (cons (cons _depth11869_ _pat11867_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat11867_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e11864_)
                                             (values (cons 'term _e11864_) '())
                                             (if (gx#stx-pair? _e11864_)
                                                 (let ((_e1187111878_
                                                        _e11864_))
                                                   (let ((_E1187311882_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1187111878_))))
                                                     (let ((_E1187211961_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1187111878_)
                          (let ((_e1187411886_ (gx#syntax-e _e1187111878_)))
                            (let ((_hd1187511889_ (##car _e1187411886_))
                                  (_tl1187611891_ (##cdr _e1187411886_)))
                              (let ((_hd11894_ _hd1187511889_))
                                (let ((_rest11896_ _tl1187611891_))
                                  (if '#t
                                      (if (_is-e?11865_ _hd11894_)
                                          (let ((_e1189711904_ _rest11896_))
                                            (let ((_E1189911908_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx11811_
                                                      _e11864_))))
                                              (let ((_E1189811922_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1189711904_)
                                                           (let ((_e1190011912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1189711904_)))
                     (let ((_hd1190111915_ (##car _e1190011912_))
                           (_tl1190211917_ (##cdr _e1190011912_)))
                       (let ((_rest11920_ _hd1190111915_))
                         (if (gx#stx-null? _tl1190211917_)
                             (if '#t
                                 (_recur11859_ _rest11920_ false)
                                 (_E1189911908_))
                             (_E1189911908_)))))
                   (_E1189911908_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1189811922_)))))
                                          ((letrec ((_lp11926_
                                                     (lambda (_rest11928_
                                                              _depth11929_)
                                                       (let ((_e1193011937_
                                                              _rest11928_))
                                                         (let ((_E1193211941_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth11929_)
                              (_make-splice11858_
                               _e11864_
                               _depth11929_
                               (_recur11859_ _hd11894_ _is-e?11865_)
                               (_recur11859_ _rest11928_ _is-e?11865_))
                              (_make-cons11857_
                               (_recur11859_ _hd11894_ _is-e?11865_)
                               (_recur11859_ _rest11928_ _is-e?11865_))))))
                   (let ((_E1193111957_
                          (lambda ()
                            (if (gx#stx-pair? _e1193011937_)
                                (let ((_e1193311945_
                                       (gx#syntax-e _e1193011937_)))
                                  (let ((_hd1193411948_ (##car _e1193311945_))
                                        (_tl1193511950_ (##cdr _e1193311945_)))
                                    (let ((_rest-hd11953_ _hd1193411948_))
                                      (let ((_rest-tl11955_ _tl1193511950_))
                                        (if '#t
                                            (if (_is-e?11865_ _rest-hd11953_)
                                                (_lp11926_
                                                 _rest-tl11955_
                                                 (fx1+ _depth11929_))
                                                (if (fxpositive? _depth11929_)
                                                    (_make-splice11858_
                                                     _e11864_
                                                     _depth11929_
                                                     (_recur11859_
                                                      _hd11894_
                                                      _is-e?11865_)
                                                     (_recur11859_
                                                      _rest11928_
                                                      _is-e?11865_))
                                                    (_make-cons11857_
                                                     (_recur11859_
                                                      _hd11894_
                                                      _is-e?11865_)
                                                     (_recur11859_
                                                      _rest11928_
                                                      _is-e?11865_))))
                                            (_E1193211941_))))))
                                (_E1193211941_)))))
                     (let () (_E1193111957_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp11926_)
                                           _rest11896_
                                           '0))
                                      (_E1187311882_))))))
                          (_E1187311882_)))))
               (let () (_E1187211961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e11864_)
                                                     (let ((_g12616_
                                                            (_recur11859_
                                                             (vector->list
                                                              (gx#stx-unwrap
                                                               _e11864_))
                                                             _is-e?11865_)))
                                                       (begin
                                                         (let ((_g12617_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g12616_)))
                   (if (not (fx= _g12617_ 2))
                       (error "Context expects 2 values" _g12617_)))
                 (let ((_e11965_ (values-ref _g12616_ 0))
                       (_vars11966_ (values-ref _g12616_ 1)))
                   (values (cons 'vector _e11965_) _vars11966_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e11864_)
                                                         (let ((_g12618_
                                                                (_recur11859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap _e11864_))
                         _is-e?11865_)))
                   (begin
                     (let ((_g12619_ (values-count _g12618_)))
                       (if (not (fx= _g12619_ 2))
                           (error "Context expects 2 values" _g12619_)))
                     (let ((_e11968_ (values-ref _g12618_ 0))
                           (_vars11969_ (values-ref _g12618_ 1)))
                       (values (cons 'box _e11968_) _vars11969_))))
                 (values (cons 'datum _e11864_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g12620_ (_recur11859_ _e11855_ gx#ellipsis?)))
                         (begin
                           (let ((_g12621_ (values-count _g12620_)))
                             (if (not (fx= _g12621_ 2))
                                 (error "Context expects 2 values" _g12621_)))
                           (let ((_tree11861_ (values-ref _g12620_ 0))
                                 (_vars11862_ (values-ref _g12620_ 1)))
                             (if (null? _vars11862_)
                                 _tree11861_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx11811_
                                  _vars11862_)))))))))))
          (let ((_e1181511825_ _stx11811_))
            (let ((_E1181711829_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx11811_))))
              (let ((_E1181611851_
                     (lambda ()
                       (if (gx#stx-pair? _e1181511825_)
                           (let ((_e1181811833_ (gx#syntax-e _e1181511825_)))
                             (let ((_hd1181911836_ (##car _e1181811833_))
                                   (_tl1182011838_ (##cdr _e1181811833_)))
                               (if (gx#stx-pair? _tl1182011838_)
                                   (let ((_e1182111841_
                                          (gx#syntax-e _tl1182011838_)))
                                     (let ((_hd1182211844_
                                            (##car _e1182111841_))
                                           (_tl1182311846_
                                            (##cdr _e1182111841_)))
                                       (let ((_form11849_ _hd1182211844_))
                                         (if (gx#stx-null? _tl1182311846_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate11813_
                                                   (_parse11814_ _form11849_))
                                                  (gx#stx-source _stx11811_))
                                                 (_E1181711829_))
                                             (_E1181711829_)))))
                                   (_E1181711829_))))
                           (_E1181711829_)))))
                (let () (_E1181611851_)))))))))
  (define gx#macro-expand-syntax-case
    (let ((_opt-lambda1108111782_
           (lambda (_stx11083_
                    _identifier=?11084_
                    _unwrap-e11085_
                    _wrap-e11086_)
             (let ((_generate-body11089_
                    (lambda (_bindings11633_ _body11634_)
                      ((letrec ((_recur11636_
                                 (lambda (_rest11638_)
                                   (let ((_rest1163911647_ _rest11638_))
                                     (let ((_E1164211651_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _rest1163911647_))))
                                       (let ((_else1164111655_
                                              (lambda () _body11634_)))
                                         (let ((_K1164311661_
                                                (lambda (_rest11658_ _hd11659_)
                                                  (gx#core-list
                                                   'let-values
                                                   (cons _hd11659_ '())
                                                   (_recur11636_
                                                    _rest11658_)))))
                                           (if (##pair? _rest1163911647_)
                                               (let ((_hd1164411664_
                                                      (##car _rest1163911647_))
                                                     (_tl1164511666_
                                                      (##cdr _rest1163911647_)))
                                                 (let ((_hd11669_
                                                        _hd1164411664_))
                                                   (let ((_rest11671_
                                                          _tl1164511666_))
                                                     (_K1164311661_
                                                      _rest11671_
                                                      _hd11669_))))
                                               (_else1164111655_)))))))))
                         _recur11636_)
                       _bindings11633_))))
               (let ((_generate-match11091_
                      (lambda (_where11255_
                               _target11256_
                               _hd11257_
                               _mvars11258_
                               _K11259_
                               _E11260_)
                        (let ((_BUG11262_
                               (lambda (_q11494_)
                                 (error '"BUG: syntax-case; generate"
                                        _stx11083_
                                        _hd11257_
                                        _q11494_))))
                          (let ((_splice-rlen11264_
                                 (lambda (_e11310_)
                                   ((letrec ((_lp11312_
                                              (lambda (_e11314_ _n11315_)
                                                (let ((_e1131611323_ _e11314_))
                                                  (let ((_E1131811327_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1131611323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1131911336_
                                                           (lambda (_body11330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tag11331_)
                     (let ((_$e11333_ _tag11331_))
                       (if (eq? _$e11333_ 'splice)
                           (gx#raise-syntax-error
                            '#f
                            '"Ambiguous pattern"
                            _stx11083_
                            _where11255_)
                           (if (eq? _$e11333_ 'cons)
                               (_lp11312_ (cdr _body11330_) (fx1+ _n11315_))
                               _n11315_))))))
              (if (##pair? _e1131611323_)
                  (let ((_hd1132011339_ (##car _e1131611323_))
                        (_tl1132111341_ (##cdr _e1131611323_)))
                    (let ((_tag11344_ _hd1132011339_))
                      (let ((_body11346_ _tl1132111341_))
                        (_K1131911336_ _body11346_ _tag11344_))))
                  (_E1131811327_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp11312_)
                                    _e11310_
                                    '0))))
                            (let ((_splice-vars11265_
                                   (lambda (_e11272_)
                                     ((letrec ((_recur11274_
                                                (lambda (_e11276_ _vars11277_)
                                                  (let ((_e1127811285_
                                                         _e11276_))
                                                    (let ((_E1128011289_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e1127811285_))))
              (let ((_K1128111298_
                     (lambda (_body11292_ _tag11293_)
                       (let ((_$e11295_ _tag11293_))
                         (if (eq? _$e11295_ 'var)
                             (cons _body11292_ _vars11277_)
                             (if (memq _$e11295_ '(cons splice))
                                 (_recur11274_
                                  (cdr _body11292_)
                                  (_recur11274_ (car _body11292_) _vars11277_))
                                 (if (memq _$e11295_ '(vector box))
                                     (_recur11274_ _body11292_ _vars11277_)
                                     _vars11277_)))))))
                (if (##pair? _e1127811285_)
                    (let ((_hd1128211301_ (##car _e1127811285_))
                          (_tl1128311303_ (##cdr _e1127811285_)))
                      (let ((_tag11306_ _hd1128211301_))
                        (let ((_body11308_ _tl1128311303_))
                          (_K1128111298_ _body11308_ _tag11306_))))
                    (_E1128011289_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _recur11274_)
                                      _e11272_
                                      '()))))
                              (let ((_make-body11266_
                                     (lambda (_vars11268_)
                                       (cons _K11259_
                                             (map (lambda (_mvar11270_)
                                                    (assgetq (car _mvar11270_)
                                                             _vars11268_
                                                             _BUG11262_))
                                                  _mvars11258_)))))
                                (letrec ((_recur11263_
                                          (lambda (_e11348_
                                                   _vars11349_
                                                   _target11350_
                                                   _E11351_
                                                   _k11352_)
                                            (let ((_e1135311360_ _e11348_))
                                              (let ((_E1135511364_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _e1135311360_))))
                                                (let ((_K1135611482_
                                                       (lambda (_body11367_
                                                                _tag11368_)
                                                         (let ((_$e11370_
                                                                _tag11368_))
                                                           (if (eq? _$e11370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'any)
                       (_k11352_ _vars11349_)
                       (if (eq? _$e11370_ 'id)
                           (gx#core-list
                            'if
                            (gx#core-list 'identifier? _target11350_)
                            (gx#core-list
                             'if
                             (gx#core-list
                              _identifier=?11084_
                              (gx#core-list _wrap-e11086_ _body11367_)
                              _target11350_)
                             (_k11352_ _vars11349_)
                             _E11351_)
                            _E11351_)
                           (if (eq? _$e11370_ 'var)
                               (_k11352_
                                (cons (cons _body11367_ _target11350_)
                                      _vars11349_))
                               (if (eq? _$e11370_ 'cons)
                                   (let ((_$e11373_ (gx#genident 'e))
                                         (_$hd11374_ (gx#genident 'hd))
                                         (_$tl11375_ (gx#genident 'tl)))
                                     (gx#core-list
                                      'if
                                      (gx#core-list 'stx-pair? _target11350_)
                                      (gx#core-list
                                       'let-values
                                       (cons (cons (cons _$e11373_ '())
                                                   (cons (gx#core-list
                                                          _unwrap-e11085_
                                                          _target11350_)
                                                         '()))
                                             '())
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$hd11374_ '())
                                                    (cons (gx#core-list
                                                           '##car
                                                           _$e11373_)
                                                          '()))
                                              (cons (cons (cons _$tl11375_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '##cdr
                         _$e11373_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (let ((_body1137611383_ _body11367_))
                                          (let ((_E1137811387_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _body1137611383_))))
                                            (let ((_K1137911395_
                                                   (lambda (_tl11390_
                                                            _hd11391_)
                                                     (_recur11263_
                                                      _hd11391_
                                                      _vars11349_
                                                      _$hd11374_
                                                      _E11351_
                                                      (lambda (_vars11393_)
                                                        (_recur11263_
                                                         _tl11390_
                                                         _vars11393_
                                                         _$tl11375_
                                                         _E11351_
                                                         _k11352_))))))
                                              (if (##pair? _body1137611383_)
                                                  (let ((_hd1138011398_
                                                         (##car _body1137611383_))
                                                        (_tl1138111400_
                                                         (##cdr _body1137611383_)))
                                                    (let ((_hd11403_
                                                           _hd1138011398_))
                                                      (let ((_tl11405_
                                                             _tl1138111400_))
                                                        (_K1137911395_
                                                         _tl11405_
                                                         _hd11403_))))
                                                  (_E1137811387_)))))))
                                      _E11351_))
                                   (if (eq? _$e11370_ 'splice)
                                       (let ((_body1140611413_ _body11367_))
                                         (let ((_E1140811417_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _body1140611413_))))
                                           (let ((_K1140911466_
                                                  (lambda (_tl11420_ _hd11421_)
                                                    (let ((_rlen11423_
                                                           (_splice-rlen11264_
                                                            _tl11420_)))
                                                      (let ((_$target11425_
                                                             (gx#genident
                                                              'target)))
                                                        (let ((_$hd11427_
                                                               (gx#genident
                                                                'hd)))
                                                          (let ((_$tl11429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'tl)))
                    (let ((_$lp11431_ (gx#genident 'loop)))
                      (let ((_$lp-e11433_ (gx#genident 'e)))
                        (let ((_$lp-hd11435_ (gx#genident 'lp-hd)))
                          (let ((_$lp-tl11437_ (gx#genident 'lp-tl)))
                            (let ((_svars11439_
                                   (_splice-vars11265_ _hd11421_)))
                              (let ((_lvars11441_ (gx#gentemps _svars11439_)))
                                (let ((_tlvars11443_
                                       (gx#gentemps _svars11439_)))
                                  (let ((_linit11447_
                                         (map (lambda (_var11445_)
                                                (gx#core-list 'quote '()))
                                              _lvars11441_)))
                                    (let ()
                                      (let ((_make-loop11450_
                                             (lambda (_vars11452_)
                                               (gx#core-list
                                                'letrec-values
                                                (cons (cons (cons _$lp11431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gx#core-list
                           'lambda%
                           (cons _$hd11427_ _lvars11441_)
                           (gx#core-list
                            'if
                            (gx#core-list 'stx-pair? _$hd11427_)
                            (gx#core-list
                             'let-values
                             (cons (cons (cons _$lp-e11433_ '())
                                         (cons (gx#core-list
                                                _unwrap-e11085_
                                                _$hd11427_)
                                               '()))
                                   '())
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-hd11435_ '())
                                          (cons (gx#core-list
                                                 '##car
                                                 _$lp-e11433_)
                                                '()))
                                    (cons (cons (cons _$lp-tl11437_ '())
                                                (cons (gx#core-list
                                                       '##cdr
                                                       _$lp-e11433_)
                                                      '()))
                                          '()))
                              (_recur11263_
                               _hd11421_
                               '()
                               _$lp-hd11435_
                               _E11351_
                               (lambda (_hdvars11454_)
                                 (cons* _$lp11431_
                                        _$lp-tl11437_
                                        (map (lambda (_svar11456_ _lvar11457_)
                                               (gx#core-list
                                                'cons
                                                (assgetq _svar11456_
                                                         _hdvars11454_
                                                         _BUG11262_)
                                                _lvar11457_))
                                             _svars11439_
                                             _lvars11441_))))))
                            (gx#core-list
                             'let-values
                             (map (lambda (_lvar11459_ _tlvar11460_)
                                    (cons (cons _tlvar11460_ '())
                                          (cons (gx#core-list
                                                 'reverse
                                                 _lvar11459_)
                                                '())))
                                  _lvars11441_
                                  _tlvars11443_)
                             (_k11352_
                              (foldl (lambda (_svar11462_
                                              _tlvar11463_
                                              _r11464_)
                                       (cons (cons _svar11462_ _tlvar11463_)
                                             _r11464_))
                                     _vars11452_
                                     _svars11439_
                                     _tlvars11443_)))))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons* _$lp11431_
                                                       _$target11425_
                                                       _linit11447_)))))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-pair/null?
                                          _target11350_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'fx>=
                                           (gx#core-list
                                            'stx-length
                                            _target11350_)
                                           _rlen11423_)
                                          (gx#core-list
                                           'let-values
                                           (cons (cons (cons _$target11425_
                                                             (cons _$tl11429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (gx#core-list
                      'syntax-split-splice
                      _target11350_
                      _rlen11423_)
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (_recur11263_
                                            _tl11420_
                                            _vars11349_
                                            _$tl11429_
                                            _E11351_
                                            _make-loop11450_))
                                          _E11351_)
                                         _E11351_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _body1140611413_)
                                                 (let ((_hd1141011469_
                                                        (##car _body1140611413_))
                                                       (_tl1141111471_
                                                        (##cdr _body1140611413_)))
                                                   (let ((_hd11474_
                                                          _hd1141011469_))
                                                     (let ((_tl11476_
                                                            _tl1141111471_))
                                                       (_K1140911466_
                                                        _tl11476_
                                                        _hd11474_))))
                                                 (_E1140811417_)))))
                                       (if (eq? _$e11370_ 'null)
                                           (gx#core-list
                                            'if
                                            (gx#core-list
                                             'stx-null?
                                             _target11350_)
                                            (_k11352_ _vars11349_)
                                            _E11351_)
                                           (if (eq? _$e11370_ 'vector)
                                               (let ((_$e11478_
                                                      (gx#genident 'e)))
                                                 (gx#core-list
                                                  'if
                                                  (gx#core-list
                                                   'stx-vector?
                                                   _target11350_)
                                                  (gx#core-list
                                                   'let-values
                                                   (cons (cons (cons _$e11478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (gx#core-list
                              'vector->list
                              (gx#core-list _unwrap-e11085_ _target11350_))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_recur11263_
                                                    _body11367_
                                                    _vars11349_
                                                    _$e11478_
                                                    _E11351_
                                                    _k11352_))
                                                  _E11351_))
                                               (if (eq? _$e11370_ 'box)
                                                   (let ((_$e11480_
                                                          (gx#genident 'e)))
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       'stx-box?
                                                       _target11350_)
                                                      (gx#core-list
                                                       'let-values
                                                       (cons (cons (cons _$e11480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (gx#core-list
                                  'unbox
                                  (gx#core-list _unwrap-e11085_ _target11350_))
                                 '()))
                     '())
               (_recur11263_
                _body11367_
                _vars11349_
                _$e11480_
                _E11351_
                _k11352_))
              _E11351_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _$e11370_ 'datum)
                                                       (gx#core-list
                                                        'if
                                                        (gx#core-list
                                                         'stx-datum?
                                                         _target11350_)
                                                        (gx#core-list
                                                         'if
                                                         (gx#core-list
                                                          'equal?
                                                          (gx#core-list
                                                           'stx-e
                                                           _target11350_)
                                                          _body11367_)
                                                         (_k11352_ _vars11349_)
                                                         _E11351_)
                                                        _E11351_)
                                                       (_BUG11262_
                                                        _e11348_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _e1135311360_)
                                                      (let ((_hd1135711485_
                                                             (##car _e1135311360_))
                                                            (_tl1135811487_
                                                             (##cdr _e1135311360_)))
                                                        (let ((_tag11490_
                                                               _hd1135711485_))
                                                          (let ((_body11492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1135811487_))
                    (_K1135611482_ _body11492_ _tag11490_))))
              (_E1135511364_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_recur11263_
                                   _hd11257_
                                   '()
                                   _target11256_
                                   _E11260_
                                   _make-body11266_)))))))))
                 (let ((_parse-clause11092_
                        (lambda (_hd11161_ _ids11162_)
                          ((letrec ((_recur11164_
                                     (lambda (_e11166_
                                              _vars11167_
                                              _depth11168_)
                                       (if (gx#identifier? _e11166_)
                                           (if (gx#underscore? _e11166_)
                                               (values '(any) _vars11167_)
                                               (if (gx#ellipsis? _e11166_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced ellipsis"
                                                    _stx11083_
                                                    _hd11161_)
                                                   (if (find (lambda (_id11170_)
                                                               (gx#bound-identifier=?
                                                                _e11166_
                                                                _id11170_))
                                                             _ids11162_)
                                                       (values (cons 'id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e11166_)
                       _vars11167_)
               (if (find (lambda (_var11172_)
                           (gx#bound-identifier=? _e11166_ (car _var11172_)))
                         _vars11167_)
                   (gx#raise-syntax-error
                    '#f
                    '"Duplicate pattern variable"
                    _stx11083_
                    _e11166_)
                   (values (cons 'var _e11166_)
                           (cons (cons _e11166_ _depth11168_) _vars11167_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair? _e11166_)
                                               (let ((_e1117311180_ _e11166_))
                                                 (let ((_E1117511184_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e1117311180_))))
                                                   (let ((_E1117411245_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1117311180_)
                        (let ((_e1117611188_ (gx#syntax-e _e1117311180_)))
                          (let ((_hd1117711191_ (##car _e1117611188_))
                                (_tl1117811193_ (##cdr _e1117611188_)))
                            (let ((_hd11196_ _hd1117711191_))
                              (let ((_rest11198_ _tl1117811193_))
                                (if '#t
                                    (let ((_make-pair11213_
                                           (lambda (_tag11200_
                                                    _hd11201_
                                                    _tl11202_)
                                             (let ((_hd-depth11204_
                                                    (if (eq? _tag11200_
                                                             'splice)
                                                        (fx1+ _depth11168_)
                                                        _depth11168_)))
                                               (let ((_g12632_
                                                      (_recur11164_
                                                       _hd11201_
                                                       _vars11167_
                                                       _hd-depth11204_)))
                                                 (begin
                                                   (let ((_g12633_
                                                          (values-count
                                                           _g12632_)))
                                                     (if (not (fx= _g12633_ 2))
                                                         (error "Context expects 2 values"
                                                                _g12633_)))
                                                   (let ((_hd11206_
                                                          (values-ref
                                                           _g12632_
                                                           0))
                                                         (_vars11207_
                                                          (values-ref
                                                           _g12632_
                                                           1)))
                                                     (let ((_g12634_
                                                            (_recur11164_
                                                             _tl11202_
                                                             _vars11207_
                                                             _depth11168_)))
                                                       (begin
                                                         (let ((_g12635_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g12634_)))
                   (if (not (fx= _g12635_ 2))
                       (error "Context expects 2 values" _g12635_)))
                 (let ((_tl11209_ (values-ref _g12634_ 0))
                       (_vars11210_ (values-ref _g12634_ 1)))
                   (let ()
                     (values (cons* _tag11200_ _hd11206_ _tl11209_)
                             _vars11210_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ((_e1121411221_ _rest11198_))
                                        (let ((_E1121611225_
                                               (lambda ()
                                                 (_make-pair11213_
                                                  'cons
                                                  _hd11196_
                                                  _rest11198_))))
                                          (let ((_E1121511241_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e1121411221_)
                                                       (let ((_e1121711229_
                                                              (gx#syntax-e
                                                               _e1121411221_)))
                                                         (let ((_hd1121811232_
                                                                (##car _e1121711229_))
                                                               (_tl1121911234_
                                                                (##cdr _e1121711229_)))
                                                           (let ((_rest-hd11237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1121811232_))
                     (let ((_rest-tl11239_ _tl1121911234_))
                       (if '#t
                           (if (gx#ellipsis? _rest-hd11237_)
                               (_make-pair11213_
                                'splice
                                _hd11196_
                                _rest-tl11239_)
                               (_make-pair11213_ 'cons _hd11196_ _rest11198_))
                           (_E1121611225_))))))
               (_E1121611225_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E1121511241_))))))
                                    (_E1117511184_))))))
                        (_E1117511184_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E1117411245_)))))
                                               (if (gx#stx-null? _e11166_)
                                                   (values '(null) _vars11167_)
                                                   (if (gx#stx-vector?
                                                        _e11166_)
                                                       (let ((_g12636_
                                                              (_recur11164_
                                                               (vector->list
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e11166_))
                       _vars11167_
                       _depth11168_)))
                 (begin
                   (let ((_g12637_ (values-count _g12636_)))
                     (if (not (fx= _g12637_ 2))
                         (error "Context expects 2 values" _g12637_)))
                   (let ((_e11249_ (values-ref _g12636_ 0))
                         (_vars11250_ (values-ref _g12636_ 1)))
                     (values (cons 'vector _e11249_) _vars11250_))))
               (if (gx#stx-box? _e11166_)
                   (let ((_g12638_
                          (_recur11164_
                           (unbox (gx#syntax-e _e11166_))
                           _vars11167_
                           _depth11168_)))
                     (begin
                       (let ((_g12639_ (values-count _g12638_)))
                         (if (not (fx= _g12639_ 2))
                             (error "Context expects 2 values" _g12639_)))
                       (let ((_e11252_ (values-ref _g12638_ 0))
                             (_vars11253_ (values-ref _g12638_ 1)))
                         (values (cons 'box _e11252_) _vars11253_))))
                   (if (gx#stx-datum? _e11166_)
                       (values (cons 'datum (gx#stx-e _e11166_)) _vars11167_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad pattern"
                        _stx11083_
                        _e11166_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             _recur11164_)
                           _hd11161_
                           '()
                           '0))))
                   (let ((_generate-clause11090_
                          (lambda (_target11496_
                                   _ids11497_
                                   _clause11498_
                                   _E11499_)
                            (let ((_generate111501_
                                   (lambda (_hd11588_
                                            _fender11589_
                                            _body11590_)
                                     (let ((_g12630_
                                            (_parse-clause11092_
                                             _hd11588_
                                             _ids11497_)))
                                       (begin
                                         (let ((_g12631_
                                                (values-count _g12630_)))
                                           (if (not (fx= _g12631_ 2))
                                               (error "Context expects 2 values"
                                                      _g12631_)))
                                         (let ((_e11592_
                                                (values-ref _g12630_ 0))
                                               (_mvars11593_
                                                (values-ref _g12630_ 1)))
                                           (let ((_pvars11595_
                                                  (map gx#syntax-local-rewrap
                                                       (gx#gentemps
                                                        _mvars11593_))))
                                             (let ((_E11597_
                                                    (cons _E11499_
                                                          (cons _target11496_
                                                                '()))))
                                               (let ((_K11630_
                                                      (gx#core-list
                                                       'lambda%
                                                       _pvars11595_
                                                       (gx#core-list
                                                        'let-syntax
                                                        (map (lambda (_mvar11599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _pvar11600_)
                       (let ((_mvar1160111608_ _mvar11599_))
                         (let ((_E1160311612_
                                (lambda ()
                                  (error '"No clause matching"
                                         _mvar1160111608_))))
                           (let ((_K1160411618_
                                  (lambda (_depth11615_ _id11616_)
                                    (cons _id11616_
                                          (cons (gx#core-list
                                                 'make-syntax-pattern
                                                 (gx#core-list
                                                  'quote
                                                  _id11616_)
                                                 (gx#core-list
                                                  'quote
                                                  _pvar11600_)
                                                 _depth11615_)
                                                '())))))
                             (if (##pair? _mvar1160111608_)
                                 (let ((_hd1160511621_
                                        (##car _mvar1160111608_))
                                       (_tl1160611623_
                                        (##cdr _mvar1160111608_)))
                                   (let ((_id11626_ _hd1160511621_))
                                     (let ((_depth11628_ _tl1160611623_))
                                       (_K1160411618_
                                        _depth11628_
                                        _id11626_))))
                                 (_E1160311612_))))))
                     _mvars11593_
                     _pvars11595_)
                (if (true? _fender11589_)
                    _body11590_
                    (gx#core-list 'if _fender11589_ _body11590_ _E11597_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (_generate-match11091_
                                                    _hd11588_
                                                    _target11496_
                                                    _e11592_
                                                    _mvars11593_
                                                    _K11630_
                                                    _E11597_)))))))))))
                              (let ((_e1150211522_ _clause11498_))
                                (let ((_E1151111526_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _e1150211522_))))
                                  (let ((_E1150411560_
                                         (lambda ()
                                           (if (gx#stx-pair? _e1150211522_)
                                               (let ((_e1151211530_
                                                      (gx#syntax-e
                                                       _e1150211522_)))
                                                 (let ((_hd1151311533_
                                                        (##car _e1151211530_))
                                                       (_tl1151411535_
                                                        (##cdr _e1151211530_)))
                                                   (let ((_hd11538_
                                                          _hd1151311533_))
                                                     (if (gx#stx-pair?
                                                          _tl1151411535_)
                                                         (let ((_e1151511540_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1151411535_)))
                   (let ((_hd1151611543_ (##car _e1151511540_))
                         (_tl1151711545_ (##cdr _e1151511540_)))
                     (let ((_fender11548_ _hd1151611543_))
                       (if (gx#stx-pair? _tl1151711545_)
                           (let ((_e1151811550_ (gx#syntax-e _tl1151711545_)))
                             (let ((_hd1151911553_ (##car _e1151811550_))
                                   (_tl1152011555_ (##cdr _e1151811550_)))
                               (let ((_body11558_ _hd1151911553_))
                                 (if (gx#stx-null? _tl1152011555_)
                                     (if '#t
                                         (_generate111501_
                                          _hd11538_
                                          _fender11548_
                                          _body11558_)
                                         (_E1151111526_))
                                     (_E1151111526_)))))
                           (_E1151111526_)))))
                 (_E1151111526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1151111526_)))))
                                    (let ((_E1150311584_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1150211522_)
                                                 (let ((_e1150511564_
                                                        (gx#syntax-e
                                                         _e1150211522_)))
                                                   (let ((_hd1150611567_
                                                          (##car _e1150511564_))
                                                         (_tl1150711569_
                                                          (##cdr _e1150511564_)))
                                                     (let ((_hd11572_
                                                            _hd1150611567_))
                                                       (if (gx#stx-pair?
                                                            _tl1150711569_)
                                                           (let ((_e1150811574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1150711569_)))
                     (let ((_hd1150911577_ (##car _e1150811574_))
                           (_tl1151011579_ (##cdr _e1150811574_)))
                       (let ((_body11582_ _hd1150911577_))
                         (if (gx#stx-null? _tl1151011579_)
                             (if '#t
                                 (_generate111501_ _hd11572_ '#t _body11582_)
                                 (_E1150411560_))
                             (_E1150411560_)))))
                   (_E1150411560_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1150411560_)))))
                                      (let () (_E1150311584_))))))))))
                     (let ((_generate-bindings11088_
                            (lambda (_target11673_
                                     _ids11674_
                                     _clauses11675_
                                     _clause-ids11676_
                                     _E11677_)
                              (let ((_generate111679_
                                     (lambda (_clause11778_
                                              _clause-id11779_
                                              _E11780_)
                                       (cons (cons _clause-id11779_ '())
                                             (cons (gx#core-list
                                                    'lambda%
                                                    (cons _target11673_ '())
                                                    (_generate-clause11090_
                                                     _target11673_
                                                     _ids11674_
                                                     _clause11778_
                                                     _E11780_))
                                                   '())))))
                                ((letrec ((_lp11681_
                                           (lambda (_rest11683_
                                                    _rest-ids11684_
                                                    _bindings11685_)
                                             (let ((_rest1168611694_
                                                    _rest11683_))
                                               (let ((_E1168911698_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest1168611694_))))
                                                 (let ((_else1168811702_
                                                        (lambda ()
                                                          _bindings11685_)))
                                                   (let ((_K1169011766_
                                                          (lambda (_rest11705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause11706_)
                    (let ((_rest-ids1170711714_ _rest-ids11684_))
                      (let ((_E1170911718_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest-ids1170711714_))))
                        (let ((_K1171011754_
                               (lambda (_rest-ids11721_ _clause-id11722_)
                                 (let ((_rest-ids1172311731_ _rest-ids11721_))
                                   (let ((_E1172611735_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1172311731_))))
                                     (let ((_else1172511739_
                                            (lambda ()
                                              (cons (_generate111679_
                                                     _clause11706_
                                                     _clause-id11722_
                                                     _E11677_)
                                                    _bindings11685_))))
                                       (let ((_K1172711744_
                                              (lambda (_next-clause-id11742_)
                                                (_lp11681_
                                                 _rest11705_
                                                 _rest-ids11721_
                                                 (cons (_generate111679_
                                                        _clause11706_
                                                        _clause-id11722_
                                                        _next-clause-id11742_)
                                                       _bindings11685_)))))
                                         (if (##pair? _rest-ids1172311731_)
                                             (let ((_hd1172811747_
                                                    (##car _rest-ids1172311731_))
                                                   (_tl1172911749_
                                                    (##cdr _rest-ids1172311731_)))
                                               (let ((_next-clause-id11752_
                                                      _hd1172811747_))
                                                 (_K1172711744_
                                                  _next-clause-id11752_)))
                                             (_else1172511739_)))))))))
                          (if (##pair? _rest-ids1170711714_)
                              (let ((_hd1171111757_
                                     (##car _rest-ids1170711714_))
                                    (_tl1171211759_
                                     (##cdr _rest-ids1170711714_)))
                                (let ((_clause-id11762_ _hd1171111757_))
                                  (let ((_rest-ids11764_ _tl1171211759_))
                                    (_K1171011754_
                                     _rest-ids11764_
                                     _clause-id11762_))))
                              (_E1170911718_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest1168611694_)
                                                         (let ((_hd1169111769_
                                                                (##car _rest1168611694_))
                                                               (_tl1169211771_
                                                                (##cdr _rest1168611694_)))
                                                           (let ((_clause11774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1169111769_))
                     (let ((_rest11776_ _tl1169211771_))
                       (_K1169011766_ _rest11776_ _clause11774_))))
                 (_else1168811702_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp11681_)
                                 _clauses11675_
                                 _clause-ids11676_
                                 '())))))
                       (let ((_e1109311106_ _stx11083_))
                         (let ((_E1109511110_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e1109311106_))))
                           (let ((_E1109411157_
                                  (lambda ()
                                    (if (gx#stx-pair? _e1109311106_)
                                        (let ((_e1109611114_
                                               (gx#syntax-e _e1109311106_)))
                                          (let ((_hd1109711117_
                                                 (##car _e1109611114_))
                                                (_tl1109811119_
                                                 (##cdr _e1109611114_)))
                                            (if (gx#stx-pair? _tl1109811119_)
                                                (let ((_e1109911122_
                                                       (gx#syntax-e
                                                        _tl1109811119_)))
                                                  (let ((_hd1110011125_
                                                         (##car _e1109911122_))
                                                        (_tl1110111127_
                                                         (##cdr _e1109911122_)))
                                                    (let ((_expr11130_
                                                           _hd1110011125_))
                                                      (if (gx#stx-pair?
                                                           _tl1110111127_)
                                                          (let ((_e1110211132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1110111127_)))
                    (let ((_hd1110311135_ (##car _e1110211132_))
                          (_tl1110411137_ (##cdr _e1110211132_)))
                      (let ((_ids11140_ _hd1110311135_))
                        (let ((_clauses11142_ _tl1110411137_))
                          (if '#t
                              (if (not (gx#identifier-list? _ids11140_))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad template identifier list"
                                   _stx11083_
                                   _ids11140_)
                                  (if (not (gx#stx-list? _clauses11142_))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _stx11083_)
                                      (let ((_ids11144_
                                             (gx#syntax->list _ids11140_)))
                                        (let ((_clauses11146_
                                               (gx#syntax->list
                                                _clauses11142_)))
                                          (let ((_clause-ids11148_
                                                 (gx#gentemps _clauses11146_)))
                                            (let ((_E11150_ (gx#genident)))
                                              (let ((_target11152_
                                                     (gx#genident)))
                                                (let ((_first11154_
                                                       (if (null? _clauses11146_)
                                                           _E11150_
                                                           (car _clause-ids11148_))))
                                                  (let ()
                                                    (gx#stx-wrap-source
                                                     (gx#core-list
                                                      'let-values
                                                      (cons (cons (cons _E11150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (gx#core-list
                                 'lambda%
                                 (cons _target11152_ '())
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _target11152_))
                                '()))
                    '())
              (_generate-body11089_
               (_generate-bindings11088_
                _target11152_
                _ids11144_
                _clauses11146_
                _clause-ids11148_
                _E11150_)
               (cons _first11154_ (cons _expr11130_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx11083_)))))))))))
                              (_E1109511110_))))))
                  (_E1109511110_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1109511110_))))
                                        (_E1109511110_)))))
                             (let () (_E1109411157_)))))))))))))
      (lambda _g12641_
        (let ((_g12640_ (length _g12641_)))
          (cond ((fx= _g12640_ 1)
                 (apply (lambda (_stx11785_)
                          (let ((_identifier=?11787_ 'free-identifier=?))
                            (let ((_unwrap-e11789_ 'syntax-e))
                              (let ((_wrap-e11791_ 'quote-syntax))
                                (_opt-lambda1108111782_
                                 _stx11785_
                                 _identifier=?11787_
                                 _unwrap-e11789_
                                 _wrap-e11791_)))))
                        _g12641_))
                ((fx= _g12640_ 2)
                 (apply (lambda (_stx11793_ _identifier=?11794_)
                          (let ((_unwrap-e11796_ 'syntax-e))
                            (let ((_wrap-e11798_ 'quote-syntax))
                              (_opt-lambda1108111782_
                               _stx11793_
                               _identifier=?11794_
                               _unwrap-e11796_
                               _wrap-e11798_))))
                        _g12641_))
                ((fx= _g12640_ 3)
                 (apply (lambda (_stx11800_
                                 _identifier=?11801_
                                 _unwrap-e11802_)
                          (let ((_wrap-e11804_ 'quote-syntax))
                            (_opt-lambda1108111782_
                             _stx11800_
                             _identifier=?11801_
                             _unwrap-e11802_
                             _wrap-e11804_)))
                        _g12641_))
                ((fx= _g12640_ 4)
                 (apply (lambda (_stx11806_
                                 _identifier=?11807_
                                 _unwrap-e11808_
                                 _wrap-e11809_)
                          (_opt-lambda1108111782_
                           _stx11806_
                           _identifier=?11807_
                           _unwrap-e11808_
                           _wrap-e11809_))
                        _g12641_))
                (else (error "No clause matching arguments" _g12641_)))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx11080_)
      (if (gx#identifier? _stx11080_)
          (gx#syntax-pattern? (gx#syntax-local-e _stx11080_ false))
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd11038_ . _rest11039_)
      (let ((_len11041_ (length _hd11038_)))
        ((letrec ((_lp11043_
                   (lambda (_rest11045_)
                     (let ((_rest1104611054_ _rest11045_))
                       (let ((_E1104911058_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1104611054_))))
                         (let ((_else1104811062_ (lambda () (void))))
                           (let ((_K1105011068_
                                  (lambda (_rest11065_ _hd11066_)
                                    (if (fx= _len11041_ (length _hd11066_))
                                        (_lp11043_ _rest11065_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd11066_)))))
                             (if (##pair? _rest1104611054_)
                                 (let ((_hd1105111071_
                                        (##car _rest1104611054_))
                                       (_tl1105211073_
                                        (##cdr _rest1104611054_)))
                                   (let ((_hd11076_ _hd1105111071_))
                                     (let ((_rest11078_ _tl1105211073_))
                                       (_K1105011068_ _rest11078_ _hd11076_))))
                                 (_else1104811062_)))))))))
           _lp11043_)
         _rest11039_))))
  (define gx#syntax-split-splice
    (lambda (_stx10996_ _n10997_)
      ((letrec ((_lp10999_
                 (lambda (_rest11001_ _r11002_)
                   (if (gx#stx-pair? _rest11001_)
                       (let ((_g1100311010_ (gx#syntax-e _rest11001_)))
                         (let ((_E1100511014_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1100311010_))))
                           (let ((_K1100611020_
                                  (lambda (_rest11017_ _hd11018_)
                                    (_lp10999_
                                     _rest11017_
                                     (cons _hd11018_ _r11002_)))))
                             (if (##pair? _g1100311010_)
                                 (let ((_hd1100711023_ (##car _g1100311010_))
                                       (_tl1100811025_ (##cdr _g1100311010_)))
                                   (let ((_hd11028_ _hd1100711023_))
                                     (let ((_rest11030_ _tl1100811025_))
                                       (_K1100611020_ _rest11030_ _hd11028_))))
                                 (_E1100511014_)))))
                       ((letrec ((_lp11032_
                                  (lambda (_n11034_ _l11035_ _r11036_)
                                    (if (null? _l11035_)
                                        (values _l11035_ _r11036_)
                                        (if (fxpositive? _n11034_)
                                            (_lp11032_
                                             (fx1- _n11034_)
                                             (cdr _l11035_)
                                             (cons (car _l11035_) _r11036_))
                                            (values (reverse _l11035_)
                                                    _r11036_))))))
                          _lp11032_)
                        _n10997_
                        _r11002_
                        _rest11001_)))))
         _lp10999_)
       _stx10996_
       '()))))
