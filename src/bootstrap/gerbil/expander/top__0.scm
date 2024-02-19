(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708334575)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx167410_)
        (letrec ((_expand-special167412_
                  (lambda (_hd167414_ _K167415_ _rest167416_ _r167417_)
                    (_K167415_
                     _rest167416_
                     (cons (gx#core-expand-top _hd167414_) _r167417_)))))
          (gx#core-expand-block__0 _stx167410_ _expand-special167412_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx167163_)
        (letrec ((_expand-special167165_
                  (lambda (_hd167285_ _K167286_ _rest167287_ _r167288_)
                    (let* ((_K167292_
                            (lambda (_e167290_)
                              (_K167286_
                               _rest167287_
                               (cons _e167290_ _r167288_))))
                           (_e167293167322_ _hd167285_)
                           (_E167317167326_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e167293167322_)))
                           (_E167313167338_
                            (lambda ()
                              (if (gx#stx-pair? _e167293167322_)
                                  (let ((_e167318167330_
                                         (gx#syntax-e _e167293167322_)))
                                    (let ((_hd167319167333_
                                           (##car _e167318167330_))
                                          (_tl167320167335_
                                           (##cdr _e167318167330_)))
                                      (if (and (gx#identifier?
                                                _hd167319167333_)
                                               (gx#core-identifier=?
                                                _hd167319167333_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K167292_
                                               (gx#core-expand-define-runtime%
                                                _hd167285_))
                                              (_E167317167326_))
                                          (_E167317167326_))))
                                  (_E167317167326_))))
                           (_E167309167350_
                            (lambda ()
                              (if (gx#stx-pair? _e167293167322_)
                                  (let ((_e167314167342_
                                         (gx#syntax-e _e167293167322_)))
                                    (let ((_hd167315167345_
                                           (##car _e167314167342_))
                                          (_tl167316167347_
                                           (##cdr _e167314167342_)))
                                      (if (and (gx#identifier?
                                                _hd167315167345_)
                                               (gx#core-identifier=?
                                                _hd167315167345_
                                                '%#define-alias))
                                          (if '#t
                                              (_K167292_
                                               (gx#core-expand-define-alias%
                                                _hd167285_))
                                              (_E167313167338_))
                                          (_E167313167338_))))
                                  (_E167313167338_))))
                           (_E167299167362_
                            (lambda ()
                              (if (gx#stx-pair? _e167293167322_)
                                  (let ((_e167310167354_
                                         (gx#syntax-e _e167293167322_)))
                                    (let ((_hd167311167357_
                                           (##car _e167310167354_))
                                          (_tl167312167359_
                                           (##cdr _e167310167354_)))
                                      (if (and (gx#identifier?
                                                _hd167311167357_)
                                               (gx#core-identifier=?
                                                _hd167311167357_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K167292_
                                               (gx#core-expand-define-syntax%
                                                _hd167285_))
                                              (_E167309167350_))
                                          (_E167309167350_))))
                                  (_E167309167350_))))
                           (_E167295167394_
                            (lambda ()
                              (if (gx#stx-pair? _e167293167322_)
                                  (let ((_e167300167366_
                                         (gx#syntax-e _e167293167322_)))
                                    (let ((_hd167301167369_
                                           (##car _e167300167366_))
                                          (_tl167302167371_
                                           (##cdr _e167300167366_)))
                                      (if (and (gx#identifier?
                                                _hd167301167369_)
                                               (gx#core-identifier=?
                                                _hd167301167369_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl167302167371_)
                                              (let ((_e167303167374_
                                                     (gx#syntax-e
                                                      _tl167302167371_)))
                                                (let ((_hd167304167377_
                                                       (##car _e167303167374_))
                                                      (_tl167305167379_
                                                       (##cdr _e167303167374_)))
                                                  (let ((_hd-bind167382_
                                                         _hd167304167377_))
                                                    (if (gx#stx-pair?
                                                         _tl167305167379_)
                                                        (let ((_e167306167384_
                                                               (gx#syntax-e
                                                                _tl167305167379_)))
                                                          (let ((_hd167307167387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e167306167384_))
                        (_tl167308167389_ (##cdr _e167306167384_)))
                    (let ((_expr167392_ _hd167307167387_))
                      (if (gx#stx-null? _tl167308167389_)
                          (if (gx#core-bind-values? _hd-bind167382_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind167382_)
                                (_K167292_ _hd167285_))
                              (_E167299167362_))
                          (_E167299167362_)))))
                (_E167299167362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E167299167362_))
                                          (_E167299167362_))))
                                  (_E167299167362_))))
                           (_E167294167406_
                            (lambda ()
                              (if (gx#stx-pair? _e167293167322_)
                                  (let ((_e167296167398_
                                         (gx#syntax-e _e167293167322_)))
                                    (let ((_hd167297167401_
                                           (##car _e167296167398_))
                                          (_tl167298167403_
                                           (##cdr _e167296167398_)))
                                      (if (and (gx#identifier?
                                                _hd167297167401_)
                                               (gx#core-identifier=?
                                                _hd167297167401_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K167292_
                                               (gx#core-expand-begin-syntax%
                                                _hd167285_))
                                              (_E167295167394_))
                                          (_E167295167394_))))
                                  (_E167295167394_)))))
                      (_E167294167406_))))
                 (_eval-body167166_
                  (lambda (_rbody167174_)
                    (let _lp167176_ ((_rest167178_ _rbody167174_)
                                     (_body167179_ '())
                                     (_ebody167180_ '()))
                      (let* ((_rest167181167189_ _rest167178_)
                             (_else167183167197_
                              (lambda ()
                                (values _body167179_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody167180_)
                                          (gx#stx-source _stx167163_))))))
                             (_K167185167273_
                              (lambda (_rest167200_ _hd167201_)
                                (let* ((_e167202167219_ _hd167201_)
                                       (_E167214167223_
                                        (lambda ()
                                          (_lp167176_
                                           _rest167200_
                                           (cons _hd167201_ _body167179_)
                                           (cons _hd167201_ _ebody167180_))))
                                       (_E167204167235_
                                        (lambda ()
                                          (if (gx#stx-pair? _e167202167219_)
                                              (let ((_e167215167227_
                                                     (gx#syntax-e
                                                      _e167202167219_)))
                                                (let ((_hd167216167230_
                                                       (##car _e167215167227_))
                                                      (_tl167217167232_
                                                       (##cdr _e167215167227_)))
                                                  (if (and (gx#identifier?
                                                            _hd167216167230_)
                                                           (gx#core-identifier=?
                                                            _hd167216167230_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp167176_
                                                           _rest167200_
                                                           (cons _hd167201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body167179_)
                   _ebody167180_)
                  (_E167214167223_))
              (_E167214167223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E167214167223_))))
                                       (_E167203167269_
                                        (lambda ()
                                          (if (gx#stx-pair? _e167202167219_)
                                              (let ((_e167205167239_
                                                     (gx#syntax-e
                                                      _e167202167219_)))
                                                (let ((_hd167206167242_
                                                       (##car _e167205167239_))
                                                      (_tl167207167244_
                                                       (##cdr _e167205167239_)))
                                                  (if (and (gx#identifier?
                                                            _hd167206167242_)
                                                           (gx#core-identifier=?
                                                            _hd167206167242_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl167207167244_)
                                                          (let ((_e167208167247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl167207167244_)))
                    (let ((_hd167209167250_ (##car _e167208167247_))
                          (_tl167210167252_ (##cdr _e167208167247_)))
                      (let ((_hd-bind167255_ _hd167209167250_))
                        (if (gx#stx-pair? _tl167210167252_)
                            (let ((_e167211167257_
                                   (gx#syntax-e _tl167210167252_)))
                              (let ((_hd167212167260_ (##car _e167211167257_))
                                    (_tl167213167262_ (##cdr _e167211167257_)))
                                (let ((_expr167265_ _hd167212167260_))
                                  (if (gx#stx-null? _tl167213167262_)
                                      (if '#t
                                          (let ((_ehd167267_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind167255_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr167265_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd167201_))))
                                            (_lp167176_
                                             _rest167200_
                                             (cons _ehd167267_ _body167179_)
                                             (cons _ehd167267_ _ebody167180_)))
                                          (_E167204167235_))
                                      (_E167204167235_)))))
                            (_E167204167235_)))))
                  (_E167204167235_))
              (_E167204167235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E167204167235_)))))
                                  (_E167203167269_)))))
                        (if (##pair? _rest167181167189_)
                            (let ((_hd167186167276_ (##car _rest167181167189_))
                                  (_tl167187167278_
                                   (##cdr _rest167181167189_)))
                              (let* ((_hd167281_ _hd167186167276_)
                                     (_rest167283_ _tl167187167278_))
                                (_K167185167273_ _rest167283_ _hd167281_)))
                            (_else167183167197_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody167169_
                     (gx#core-expand-block__1
                      _stx167163_
                      _expand-special167165_
                      '#f))
                    (_g171500_ (_eval-body167166_ _rbody167169_)))
               (begin
                 (let ((_g171501_
                        (if (##values? _g171500_)
                            (##vector-length _g171500_)
                            1)))
                   (if (not (##fx= _g171501_ 2))
                       (error "Context expects 2 values" _g171501_)))
                 (let ((_expanded-body167171_ (##vector-ref _g171500_ 0))
                       (_value167172_ (##vector-ref _g171500_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body167171_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value167172_ '())))
                    (gx#stx-source _stx167163_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx167133_)
        (let* ((_e167134167141_ _stx167133_)
               (_E167136167145_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167134167141_)))
               (_E167135167159_
                (lambda ()
                  (if (gx#stx-pair? _e167134167141_)
                      (let ((_e167137167149_ (gx#syntax-e _e167134167141_)))
                        (let ((_hd167138167152_ (##car _e167137167149_))
                              (_tl167139167154_ (##cdr _e167137167149_)))
                          (let ((_body167157_ _tl167139167154_))
                            (if (gx#stx-list? _body167157_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body167157_)
                                 (gx#stx-source _stx167133_))
                                (_E167136167145_)))))
                      (_E167136167145_)))))
          (_E167135167159_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx167131_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx167131_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx167077_)
        (let* ((_e167078167091_ _stx167077_)
               (_E167080167095_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e167078167091_)))
               (_E167079167127_
                (lambda ()
                  (if (gx#stx-pair? _e167078167091_)
                      (let ((_e167081167099_ (gx#syntax-e _e167078167091_)))
                        (let ((_hd167082167102_ (##car _e167081167099_))
                              (_tl167083167104_ (##cdr _e167081167099_)))
                          (if (gx#stx-pair? _tl167083167104_)
                              (let ((_e167084167107_
                                     (gx#syntax-e _tl167083167104_)))
                                (let ((_hd167085167110_
                                       (##car _e167084167107_))
                                      (_tl167086167112_
                                       (##cdr _e167084167107_)))
                                  (let ((_ann167115_ _hd167085167110_))
                                    (if (gx#stx-pair? _tl167086167112_)
                                        (let ((_e167087167117_
                                               (gx#syntax-e _tl167086167112_)))
                                          (let ((_hd167088167120_
                                                 (##car _e167087167117_))
                                                (_tl167089167122_
                                                 (##cdr _e167087167117_)))
                                            (let ((_expr167125_
                                                   _hd167088167120_))
                                              (if (gx#stx-null?
                                                   _tl167089167122_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann167115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr167125_)
                                 '())))
               (gx#stx-source _stx167077_))
              (_E167080167095_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E167080167095_)))))
                                        (_E167080167095_)))))
                              (_E167080167095_))))
                      (_E167080167095_)))))
          (_E167079167127_))))
    (define gx#core-expand-local-block
      (lambda (_stx166801_ _body166802_)
        (letrec ((_expand-special166804_
                  (lambda (_hd167072_ _K167073_ _rest167074_ _r167075_)
                    (_K167073_
                     '()
                     (cons (_expand-internal166805_ _hd167072_ _rest167074_)
                           _r167075_))))
                 (_expand-internal166805_
                  (lambda (_hd167068_ _rest167069_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal166807_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd167068_ _rest167069_))
                          (gx#stx-source _stx166801_))
                         _expand-internal-special166806_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj171494
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj171494)
                       __obj171494))))
                 (_expand-internal-special166806_
                  (lambda (_hd166963_ _K166964_ _rest166965_ _r166966_)
                    (let* ((_e166967166992_ _hd166963_)
                           (_E166987166996_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e166967166992_)))
                           (_E166983167008_
                            (lambda ()
                              (if (gx#stx-pair? _e166967166992_)
                                  (let ((_e166988167000_
                                         (gx#syntax-e _e166967166992_)))
                                    (let ((_hd166989167003_
                                           (##car _e166988167000_))
                                          (_tl166990167005_
                                           (##cdr _e166988167000_)))
                                      (if (and (gx#identifier?
                                                _hd166989167003_)
                                               (gx#core-identifier=?
                                                _hd166989167003_
                                                '%#declare))
                                          (if '#t
                                              (_K166964_
                                               _rest166965_
                                               (cons (gx#core-expand-declare%
                                                      _hd166963_)
                                                     _r166966_))
                                              (_E166987166996_))
                                          (_E166987166996_))))
                                  (_E166987166996_))))
                           (_E166979167020_
                            (lambda ()
                              (if (gx#stx-pair? _e166967166992_)
                                  (let ((_e166984167012_
                                         (gx#syntax-e _e166967166992_)))
                                    (let ((_hd166985167015_
                                           (##car _e166984167012_))
                                          (_tl166986167017_
                                           (##cdr _e166984167012_)))
                                      (if (and (gx#identifier?
                                                _hd166985167015_)
                                               (gx#core-identifier=?
                                                _hd166985167015_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd166963_)
                                                (_K166964_
                                                 _rest166965_
                                                 _r166966_))
                                              (_E166983167008_))
                                          (_E166983167008_))))
                                  (_E166983167008_))))
                           (_E166969167032_
                            (lambda ()
                              (if (gx#stx-pair? _e166967166992_)
                                  (let ((_e166980167024_
                                         (gx#syntax-e _e166967166992_)))
                                    (let ((_hd166981167027_
                                           (##car _e166980167024_))
                                          (_tl166982167029_
                                           (##cdr _e166980167024_)))
                                      (if (and (gx#identifier?
                                                _hd166981167027_)
                                               (gx#core-identifier=?
                                                _hd166981167027_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd166963_)
                                                (_K166964_
                                                 _rest166965_
                                                 _r166966_))
                                              (_E166979167020_))
                                          (_E166979167020_))))
                                  (_E166979167020_))))
                           (_E166968167064_
                            (lambda ()
                              (if (gx#stx-pair? _e166967166992_)
                                  (let ((_e166970167036_
                                         (gx#syntax-e _e166967166992_)))
                                    (let ((_hd166971167039_
                                           (##car _e166970167036_))
                                          (_tl166972167041_
                                           (##cdr _e166970167036_)))
                                      (if (and (gx#identifier?
                                                _hd166971167039_)
                                               (gx#core-identifier=?
                                                _hd166971167039_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl166972167041_)
                                              (let ((_e166973167044_
                                                     (gx#syntax-e
                                                      _tl166972167041_)))
                                                (let ((_hd166974167047_
                                                       (##car _e166973167044_))
                                                      (_tl166975167049_
                                                       (##cdr _e166973167044_)))
                                                  (let ((_hd-bind167052_
                                                         _hd166974167047_))
                                                    (if (gx#stx-pair?
                                                         _tl166975167049_)
                                                        (let ((_e166976167054_
                                                               (gx#syntax-e
                                                                _tl166975167049_)))
                                                          (let ((_hd166977167057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e166976167054_))
                        (_tl166978167059_ (##cdr _e166976167054_)))
                    (let ((_expr167062_ _hd166977167057_))
                      (if (gx#stx-null? _tl166978167059_)
                          (if (gx#core-bind-values? _hd-bind167052_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind167052_)
                                (_K166964_
                                 _rest166965_
                                 (cons _hd166963_ _r166966_)))
                              (_E166969167032_))
                          (_E166969167032_)))))
                (_E166969167032_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E166969167032_))
                                          (_E166969167032_))))
                                  (_E166969167032_)))))
                      (_E166968167064_))))
                 (_wrap-internal166807_
                  (lambda (_rbody166809_)
                    (let _lp166811_ ((_rest166813_ _rbody166809_)
                                     (_decls166814_ '())
                                     (_bind166815_ '())
                                     (_body166816_ '()))
                      (let* ((_e166817166824_ _rest166813_)
                             (_E166819166873_
                              (lambda ()
                                (let* ((_body166868_
                                        (let* ((_body166827166837_
                                                _body166816_)
                                               (_else166830166845_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body166816_)
                                                   (gx#stx-source
                                                    _stx166801_)))))
                                          (let ((_K166835166865_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx166801_)))
                                                (_K166832166851_
                                                 (lambda (_expr166849_)
                                                   _expr166849_)))
                                            (let ((_try-match166829166861_
                                                   (lambda ()
                                                     (if (##pair? _body166827166837_)
                                                         (let ((_tl166834166856_
                                                                (##cdr _body166827166837_))
                                                               (_hd166833166854_
                                                                (##car _body166827166837_)))
                                                           (if (##null? _tl166834166856_)
                                                               (let ((_expr166859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd166833166854_))
                         (_K166832166851_ _expr166859_))
                       (_else166830166845_)))
                 (_else166830166845_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body166827166837_)
                                                  (_K166835166865_)
                                                  (_try-match166829166861_))))))
                                       (_body166870_
                                        (if (null? _bind166815_)
                                            _body166868_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind166815_
                                                         (cons _body166868_
                                                               '())))
                                             (gx#stx-source _stx166801_)))))
                                  (if (null? _decls166814_)
                                      _body166870_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls166814_
                                                   (cons _body166870_ '())))
                                       (gx#stx-source _stx166801_))))))
                             (_E166818166959_
                              (lambda ()
                                (if (gx#stx-pair? _e166817166824_)
                                    (let ((_e166820166877_
                                           (gx#syntax-e _e166817166824_)))
                                      (let ((_hd166821166880_
                                             (##car _e166820166877_))
                                            (_tl166822166882_
                                             (##cdr _e166820166877_)))
                                        (let* ((_hd166885_ _hd166821166880_)
                                               (_rest166887_ _tl166822166882_))
                                          (if '#t
                                              (let* ((_e166888166905_
                                                      _hd166885_)
                                                     (_E166900166909_
                                                      (lambda ()
                                                        (if (null? _bind166815_)
                                                            (_lp166811_
                                                             _rest166887_
                                                             _decls166814_
                                                             _bind166815_
                                                             (cons _hd166885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body166816_))
                    (_lp166811_
                     _rest166887_
                     _decls166814_
                     (cons (cons '#f (cons _hd166885_ '())) _bind166815_)
                     _body166816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E166890166923_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e166888166905_)
                                                            (let ((_e166901166913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e166888166905_)))
                      (let ((_hd166902166916_ (##car _e166901166913_))
                            (_tl166903166918_ (##cdr _e166901166913_)))
                        (if (and (gx#identifier? _hd166902166916_)
                                 (gx#core-identifier=?
                                  _hd166902166916_
                                  '%#declare))
                            (let ((_xdecls166921_ _tl166903166918_))
                              (if '#t
                                  (_lp166811_
                                   _rest166887_
                                   (gx#stx-foldr
                                    cons
                                    _decls166814_
                                    _xdecls166921_)
                                   _bind166815_
                                   _body166816_)
                                  (_E166900166909_)))
                            (_E166900166909_))))
                    (_E166900166909_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E166889166955_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e166888166905_)
                                                            (let ((_e166891166927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e166888166905_)))
                      (let ((_hd166892166930_ (##car _e166891166927_))
                            (_tl166893166932_ (##cdr _e166891166927_)))
                        (if (and (gx#identifier? _hd166892166930_)
                                 (gx#core-identifier=?
                                  _hd166892166930_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl166893166932_)
                                (let ((_e166894166935_
                                       (gx#syntax-e _tl166893166932_)))
                                  (let ((_hd166895166938_
                                         (##car _e166894166935_))
                                        (_tl166896166940_
                                         (##cdr _e166894166935_)))
                                    (let ((_hd-bind166943_ _hd166895166938_))
                                      (if (gx#stx-pair? _tl166896166940_)
                                          (let ((_e166897166945_
                                                 (gx#syntax-e
                                                  _tl166896166940_)))
                                            (let ((_hd166898166948_
                                                   (##car _e166897166945_))
                                                  (_tl166899166950_
                                                   (##cdr _e166897166945_)))
                                              (let ((_expr166953_
                                                     _hd166898166948_))
                                                (if (gx#stx-null?
                                                     _tl166899166950_)
                                                    (if '#t
                                                        (_lp166811_
                                                         _rest166887_
                                                         _decls166814_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind166943_)
                             (cons (gx#core-expand-expression _expr166953_)
                                   '()))
                       _bind166815_)
                 _body166816_)
                (_E166890166923_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E166890166923_)))))
                                          (_E166890166923_)))))
                                (_E166890166923_))
                            (_E166890166923_))))
                    (_E166890166923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E166889166955_))
                                              (_E166819166873_)))))
                                    (_E166819166873_)))))
                        (_E166818166959_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body166802_)
            (gx#stx-source _stx166801_))
           _expand-special166804_))))
    (define gx#core-expand-declare%
      (lambda (_stx166739_)
        (let* ((_e166740166747_ _stx166739_)
               (_E166742166751_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166740166747_)))
               (_E166741166797_
                (lambda ()
                  (if (gx#stx-pair? _e166740166747_)
                      (let ((_e166743166755_ (gx#syntax-e _e166740166747_)))
                        (let ((_hd166744166758_ (##car _e166743166755_))
                              (_tl166745166760_ (##cdr _e166743166755_)))
                          (let ((_body166763_ _tl166745166760_))
                            (if (gx#stx-list? _body166763_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl166765_)
                                     (let* ((_e166766166773_ _decl166765_)
                                            (_E166768166777_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e166766166773_)))
                                            (_E166767166793_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e166766166773_)
                                                   (let ((_e166769166781_
                                                          (gx#syntax-e
                                                           _e166766166773_)))
                                                     (let ((_hd166770166784_
                                                            (##car _e166769166781_))
                                                           (_tl166771166786_
                                                            (##cdr _e166769166781_)))
                                                       (let* ((_head166789_
                                                               _hd166770166784_)
                                                              (_args166791_
                                                               _tl166771166786_))
                                                         (if (gx#stx-list?
                                                              _args166791_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl166765_)
                                                             (_E166768166777_)))))
                                                   (_E166768166777_)))))
                                       (_E166767166793_)))
                                   _body166763_))
                                 (gx#stx-source _stx166739_))
                                (_E166742166751_)))))
                      (_E166742166751_)))))
          (_E166741166797_))))
    (define gx#core-expand-extern%
      (lambda (_stx166643_)
        (let* ((_e166644166651_ _stx166643_)
               (_E166646166655_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166644166651_)))
               (_E166645166735_
                (lambda ()
                  (if (gx#stx-pair? _e166644166651_)
                      (let ((_e166647166659_ (gx#syntax-e _e166644166651_)))
                        (let ((_hd166648166662_ (##car _e166647166659_))
                              (_tl166649166664_ (##cdr _e166647166659_)))
                          (let ((_body166667_ _tl166649166664_))
                            (if '#t
                                (let _lp166669_ ((_rest166671_ _body166667_)
                                                 (_r166672_ '()))
                                  (let* ((_e166673166687_ _rest166671_)
                                         (_E166685166691_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx166643_)))
                                         (_E166675166695_
                                          (lambda ()
                                            (if (gx#stx-null? _e166673166687_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r166672_))
                                                     (gx#stx-source
                                                      _stx166643_))
                                                    (_E166685166691_))
                                                (_E166685166691_))))
                                         (_E166674166731_
                                          (lambda ()
                                            (if (gx#stx-pair? _e166673166687_)
                                                (let ((_e166676166699_
                                                       (gx#syntax-e
                                                        _e166673166687_)))
                                                  (let ((_hd166677166702_
                                                         (##car _e166676166699_))
                                                        (_tl166678166704_
                                                         (##cdr _e166676166699_)))
                                                    (if (gx#stx-pair?
                                                         _hd166677166702_)
                                                        (let ((_e166679166707_
                                                               (gx#syntax-e
                                                                _hd166677166702_)))
                                                          (let ((_hd166680166710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e166679166707_))
                        (_tl166681166712_ (##cdr _e166679166707_)))
                    (let ((_id166715_ _hd166680166710_))
                      (if (gx#stx-pair? _tl166681166712_)
                          (let ((_e166682166717_
                                 (gx#syntax-e _tl166681166712_)))
                            (let ((_hd166683166720_ (##car _e166682166717_))
                                  (_tl166684166722_ (##cdr _e166682166717_)))
                              (let ((_eid166725_ _hd166683166720_))
                                (if (gx#stx-null? _tl166684166722_)
                                    (let ((_rest166727_ _tl166678166704_))
                                      (if (and (gx#identifier? _id166715_)
                                               (gx#identifier? _eid166725_))
                                          (let ((_eid166729_
                                                 (gx#stx-e _eid166725_)))
                                            (gx#core-bind-extern!__0
                                             _id166715_
                                             _eid166729_)
                                            (_lp166669_
                                             _rest166727_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id166715_)
                                                         (cons _eid166729_
                                                               '()))
                                                   _r166672_)))
                                          (_E166675166695_)))
                                    (_E166675166695_)))))
                          (_E166675166695_)))))
                (_E166675166695_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E166675166695_)))))
                                    (_E166674166731_)))
                                (_E166646166655_)))))
                      (_E166646166655_)))))
          (_E166645166735_))))
    (define gx#core-expand-define-values%
      (lambda (_stx166589_)
        (let* ((_e166590166603_ _stx166589_)
               (_E166592166607_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166590166603_)))
               (_E166591166639_
                (lambda ()
                  (if (gx#stx-pair? _e166590166603_)
                      (let ((_e166593166611_ (gx#syntax-e _e166590166603_)))
                        (let ((_hd166594166614_ (##car _e166593166611_))
                              (_tl166595166616_ (##cdr _e166593166611_)))
                          (if (gx#stx-pair? _tl166595166616_)
                              (let ((_e166596166619_
                                     (gx#syntax-e _tl166595166616_)))
                                (let ((_hd166597166622_
                                       (##car _e166596166619_))
                                      (_tl166598166624_
                                       (##cdr _e166596166619_)))
                                  (let ((_hd166627_ _hd166597166622_))
                                    (if (gx#stx-pair? _tl166598166624_)
                                        (let ((_e166599166629_
                                               (gx#syntax-e _tl166598166624_)))
                                          (let ((_hd166600166632_
                                                 (##car _e166599166629_))
                                                (_tl166601166634_
                                                 (##cdr _e166599166629_)))
                                            (let ((_expr166637_
                                                   _hd166600166632_))
                                              (if (gx#stx-null?
                                                   _tl166601166634_)
                                                  (if (gx#core-bind-values?
                                                       _hd166627_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd166627_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd166627_)
                             (cons (gx#core-expand-expression _expr166637_)
                                   '())))
                 (gx#stx-source _stx166589_)))
              (_E166592166607_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166592166607_)))))
                                        (_E166592166607_)))))
                              (_E166592166607_))))
                      (_E166592166607_)))))
          (_E166591166639_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx166533_)
        (let* ((_e166534166547_ _stx166533_)
               (_E166536166551_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166534166547_)))
               (_E166535166585_
                (lambda ()
                  (if (gx#stx-pair? _e166534166547_)
                      (let ((_e166537166555_ (gx#syntax-e _e166534166547_)))
                        (let ((_hd166538166558_ (##car _e166537166555_))
                              (_tl166539166560_ (##cdr _e166537166555_)))
                          (if (gx#stx-pair? _tl166539166560_)
                              (let ((_e166540166563_
                                     (gx#syntax-e _tl166539166560_)))
                                (let ((_hd166541166566_
                                       (##car _e166540166563_))
                                      (_tl166542166568_
                                       (##cdr _e166540166563_)))
                                  (let ((_id166571_ _hd166541166566_))
                                    (if (gx#stx-pair? _tl166542166568_)
                                        (let ((_e166543166573_
                                               (gx#syntax-e _tl166542166568_)))
                                          (let ((_hd166544166576_
                                                 (##car _e166543166573_))
                                                (_tl166545166578_
                                                 (##cdr _e166543166573_)))
                                            (let ((_binding-id166581_
                                                   _hd166544166576_))
                                              (if (gx#stx-null?
                                                   _tl166545166578_)
                                                  (if (and (gx#identifier?
                                                            _id166571_)
                                                           (gx#identifier?
                                                            _binding-id166581_))
                                                      (let ((_eid166583_
                                                             (gx#stx-e
                                                              _binding-id166581_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id166571_
                                                         _eid166583_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id166571_)
                             (cons _eid166583_ '())))))
              (_E166536166551_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166536166551_)))))
                                        (_E166536166551_)))))
                              (_E166536166551_))))
                      (_E166536166551_)))))
          (_E166535166585_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx166476_)
        (let* ((_e166477166490_ _stx166476_)
               (_E166479166494_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166477166490_)))
               (_E166478166529_
                (lambda ()
                  (if (gx#stx-pair? _e166477166490_)
                      (let ((_e166480166498_ (gx#syntax-e _e166477166490_)))
                        (let ((_hd166481166501_ (##car _e166480166498_))
                              (_tl166482166503_ (##cdr _e166480166498_)))
                          (if (gx#stx-pair? _tl166482166503_)
                              (let ((_e166483166506_
                                     (gx#syntax-e _tl166482166503_)))
                                (let ((_hd166484166509_
                                       (##car _e166483166506_))
                                      (_tl166485166511_
                                       (##cdr _e166483166506_)))
                                  (let ((_id166514_ _hd166484166509_))
                                    (if (gx#stx-pair? _tl166485166511_)
                                        (let ((_e166486166516_
                                               (gx#syntax-e _tl166485166511_)))
                                          (let ((_hd166487166519_
                                                 (##car _e166486166516_))
                                                (_tl166488166521_
                                                 (##cdr _e166486166516_)))
                                            (let ((_expr166524_
                                                   _hd166487166519_))
                                              (if (gx#stx-null?
                                                   _tl166488166521_)
                                                  (if (gx#identifier?
                                                       _id166514_)
                                                      (let ((_g171502_
                                                             (gx#core-expand-expression+1
                                                              _expr166524_)))
                                                        (begin
                                                          (let ((_g171503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g171502_)
                             (##vector-length _g171502_)
                             1)))
                    (if (not (##fx= _g171503_ 2))
                        (error "Context expects 2 values" _g171503_)))
                  (let ((_e-stx166526_ (##vector-ref _g171502_ 0))
                        (_e166527_ (##vector-ref _g171502_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id166514_ _e166527_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id166514_)
                                   (cons _e-stx166526_ '())))
                       (gx#stx-source _stx166476_))))))
              (_E166479166494_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166479166494_)))))
                                        (_E166479166494_)))))
                              (_E166479166494_))))
                      (_E166479166494_)))))
          (_E166478166529_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx166420_)
        (let* ((_e166421166434_ _stx166420_)
               (_E166423166438_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166421166434_)))
               (_E166422166472_
                (lambda ()
                  (if (gx#stx-pair? _e166421166434_)
                      (let ((_e166424166442_ (gx#syntax-e _e166421166434_)))
                        (let ((_hd166425166445_ (##car _e166424166442_))
                              (_tl166426166447_ (##cdr _e166424166442_)))
                          (if (gx#stx-pair? _tl166426166447_)
                              (let ((_e166427166450_
                                     (gx#syntax-e _tl166426166447_)))
                                (let ((_hd166428166453_
                                       (##car _e166427166450_))
                                      (_tl166429166455_
                                       (##cdr _e166427166450_)))
                                  (let ((_id166458_ _hd166428166453_))
                                    (if (gx#stx-pair? _tl166429166455_)
                                        (let ((_e166430166460_
                                               (gx#syntax-e _tl166429166455_)))
                                          (let ((_hd166431166463_
                                                 (##car _e166430166460_))
                                                (_tl166432166465_
                                                 (##cdr _e166430166460_)))
                                            (let ((_alias-id166468_
                                                   _hd166431166463_))
                                              (if (gx#stx-null?
                                                   _tl166432166465_)
                                                  (if (and (gx#identifier?
                                                            _id166458_)
                                                           (gx#identifier?
                                                            _alias-id166468_))
                                                      (let ((_alias-id166470_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id166468_)))
                                                        (gx#core-bind-alias!__0
                                                         _id166458_
                                                         _alias-id166470_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id166458_)
                             (cons _alias-id166470_ '())))))
              (_E166423166438_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166423166438_)))))
                                        (_E166423166438_)))))
                              (_E166423166438_))))
                      (_E166423166438_)))))
          (_E166422166472_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx166363_ _wrap?166364_)
        (let* ((_e166365166375_ _stx166363_)
               (_E166367166379_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166365166375_)))
               (_E166366166406_
                (lambda ()
                  (if (gx#stx-pair? _e166365166375_)
                      (let ((_e166368166383_ (gx#syntax-e _e166365166375_)))
                        (let ((_hd166369166386_ (##car _e166368166383_))
                              (_tl166370166388_ (##cdr _e166368166383_)))
                          (if (gx#stx-pair? _tl166370166388_)
                              (let ((_e166371166391_
                                     (gx#syntax-e _tl166370166388_)))
                                (let ((_hd166372166394_
                                       (##car _e166371166391_))
                                      (_tl166373166396_
                                       (##cdr _e166371166391_)))
                                  (let* ((_hd166399_ _hd166372166394_)
                                         (_body166401_ _tl166373166396_))
                                    (if (gx#core-bind-values? _hd166399_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd166399_)
                                           (let ((_body166404_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd166399_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx166363_
                                                               _body166401_)
                                                              '()))))
                                             (if _wrap?166364_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body166404_)
                                                  (gx#stx-source _stx166363_))
                                                 _body166404_)))
                                         gx#current-expander-context
                                         (let ((__obj171495
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj171495)
                                           __obj171495))
                                        (_E166367166379_)))))
                              (_E166367166379_))))
                      (_E166367166379_)))))
          (_E166366166406_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx166413_)
        (let ((_wrap?166415_ '#t))
          (gx#core-expand-lambda%__% _stx166413_ _wrap?166415_))))
    (define gx#core-expand-lambda%
      (lambda _g171505_
        (let ((_g171504_ (##length _g171505_)))
          (cond ((##fx= _g171504_ 1)
                 (apply (lambda (_stx166413_)
                          (gx#core-expand-lambda%__0 _stx166413_))
                        _g171505_))
                ((##fx= _g171504_ 2)
                 (apply (lambda (_stx166417_ _wrap?166418_)
                          (gx#core-expand-lambda%__%
                           _stx166417_
                           _wrap?166418_))
                        _g171505_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g171505_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx166327_)
        (let* ((_e166328166335_ _stx166327_)
               (_E166330166339_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166328166335_)))
               (_E166329166358_
                (lambda ()
                  (if (gx#stx-pair? _e166328166335_)
                      (let ((_e166331166343_ (gx#syntax-e _e166328166335_)))
                        (let ((_hd166332166346_ (##car _e166331166343_))
                              (_tl166333166348_ (##cdr _e166331166343_)))
                          (let ((_clauses166351_ _tl166333166348_))
                            (if (gx#stx-list? _clauses166351_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause166353_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause166353_)
                                       (let ((_$e166355_
                                              (gx#stx-source _clause166353_)))
                                         (if _$e166355_
                                             _$e166355_
                                             (gx#stx-source _stx166327_))))
                                      '#f))
                                   _clauses166351_))
                                 (gx#stx-source _stx166327_))
                                (_E166330166339_)))))
                      (_E166330166339_)))))
          (_E166329166358_))))
    (define gx#core-expand-let-values%
      (lambda (_stx166281_)
        (let* ((_e166282166292_ _stx166281_)
               (_E166284166296_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166282166292_)))
               (_E166283166323_
                (lambda ()
                  (if (gx#stx-pair? _e166282166292_)
                      (let ((_e166285166300_ (gx#syntax-e _e166282166292_)))
                        (let ((_hd166286166303_ (##car _e166285166300_))
                              (_tl166287166305_ (##cdr _e166285166300_)))
                          (if (gx#stx-pair? _tl166287166305_)
                              (let ((_e166288166308_
                                     (gx#syntax-e _tl166287166305_)))
                                (let ((_hd166289166311_
                                       (##car _e166288166308_))
                                      (_tl166290166313_
                                       (##cdr _e166288166308_)))
                                  (let* ((_hd166316_ _hd166289166311_)
                                         (_body166318_ _tl166290166313_))
                                    (if (gx#core-expand-let-bind? _hd166316_)
                                        (let ((_expressions166320_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd166316_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd166316_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd166316_
                                                           _expressions166320_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx166281_
                         _body166318_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx166281_)))
                                           gx#current-expander-context
                                           (let ((__obj171496
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj171496)
                                             __obj171496)))
                                        (_E166284166296_)))))
                              (_E166284166296_))))
                      (_E166284166296_)))))
          (_E166283166323_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx166226_ _form166227_)
        (let* ((_e166228166238_ _stx166226_)
               (_E166230166242_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166228166238_)))
               (_E166229166267_
                (lambda ()
                  (if (gx#stx-pair? _e166228166238_)
                      (let ((_e166231166246_ (gx#syntax-e _e166228166238_)))
                        (let ((_hd166232166249_ (##car _e166231166246_))
                              (_tl166233166251_ (##cdr _e166231166246_)))
                          (if (gx#stx-pair? _tl166233166251_)
                              (let ((_e166234166254_
                                     (gx#syntax-e _tl166233166251_)))
                                (let ((_hd166235166257_
                                       (##car _e166234166254_))
                                      (_tl166236166259_
                                       (##cdr _e166234166254_)))
                                  (let* ((_hd166262_ _hd166235166257_)
                                         (_body166264_ _tl166236166259_))
                                    (if (gx#core-expand-let-bind? _hd166262_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd166262_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form166227_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd166262_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd166262_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx166226_
                                                               _body166264_)
                                                              '())))
                                            (gx#stx-source _stx166226_)))
                                         gx#current-expander-context
                                         (let ((__obj171497
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj171497)
                                           __obj171497))
                                        (_E166230166242_)))))
                              (_E166230166242_))))
                      (_E166230166242_)))))
          (_E166229166267_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx166274_)
        (let ((_form166276_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx166274_ _form166276_))))
    (define gx#core-expand-letrec-values%
      (lambda _g171507_
        (let ((_g171506_ (##length _g171507_)))
          (cond ((##fx= _g171506_ 1)
                 (apply (lambda (_stx166274_)
                          (gx#core-expand-letrec-values%__0 _stx166274_))
                        _g171507_))
                ((##fx= _g171506_ 2)
                 (apply (lambda (_stx166278_ _form166279_)
                          (gx#core-expand-letrec-values%__%
                           _stx166278_
                           _form166279_))
                        _g171507_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g171507_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx166223_)
        (gx#core-expand-letrec-values%__% _stx166223_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx166180_)
        (if (gx#stx-list? _stx166180_)
            (gx#stx-andmap
             (lambda (_bind166182_)
               (let* ((_e166183166193_ _bind166182_)
                      (_E166185166197_ (lambda () '#f))
                      (_E166184166219_
                       (lambda ()
                         (if (gx#stx-pair? _e166183166193_)
                             (let ((_e166186166201_
                                    (gx#syntax-e _e166183166193_)))
                               (let ((_hd166187166204_ (##car _e166186166201_))
                                     (_tl166188166206_
                                      (##cdr _e166186166201_)))
                                 (let ((_hd166209_ _hd166187166204_))
                                   (if (gx#stx-pair? _tl166188166206_)
                                       (let ((_e166189166211_
                                              (gx#syntax-e _tl166188166206_)))
                                         (let ((_hd166190166214_
                                                (##car _e166189166211_))
                                               (_tl166191166216_
                                                (##cdr _e166189166211_)))
                                           (if (gx#stx-null? _tl166191166216_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd166209_)
                                                   (_E166185166197_))
                                               (_E166185166197_))))
                                       (_E166185166197_)))))
                             (_E166185166197_)))))
                 (_E166184166219_)))
             _stx166180_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind166139_)
        (let* ((_e166140166150_ _bind166139_)
               (_E166142166154_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166140166150_)))
               (_E166141166176_
                (lambda ()
                  (if (gx#stx-pair? _e166140166150_)
                      (let ((_e166143166158_ (gx#syntax-e _e166140166150_)))
                        (let ((_hd166144166161_ (##car _e166143166158_))
                              (_tl166145166163_ (##cdr _e166143166158_)))
                          (if (gx#stx-pair? _tl166145166163_)
                              (let ((_e166146166166_
                                     (gx#syntax-e _tl166145166163_)))
                                (let ((_hd166147166169_
                                       (##car _e166146166166_))
                                      (_tl166148166171_
                                       (##cdr _e166146166166_)))
                                  (let ((_expr166174_ _hd166147166169_))
                                    (if (gx#stx-null? _tl166148166171_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr166174_)
                                            (_E166142166154_))
                                        (_E166142166154_)))))
                              (_E166142166154_))))
                      (_E166142166154_)))))
          (_E166141166176_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind166098_)
        (let* ((_e166099166109_ _bind166098_)
               (_E166101166113_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166099166109_)))
               (_E166100166135_
                (lambda ()
                  (if (gx#stx-pair? _e166099166109_)
                      (let ((_e166102166117_ (gx#syntax-e _e166099166109_)))
                        (let ((_hd166103166120_ (##car _e166102166117_))
                              (_tl166104166122_ (##cdr _e166102166117_)))
                          (let ((_hd166125_ _hd166103166120_))
                            (if (gx#stx-pair? _tl166104166122_)
                                (let ((_e166105166127_
                                       (gx#syntax-e _tl166104166122_)))
                                  (let ((_hd166106166130_
                                         (##car _e166105166127_))
                                        (_tl166107166132_
                                         (##cdr _e166105166127_)))
                                    (if (gx#stx-null? _tl166107166132_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd166125_)
                                            (_E166101166113_))
                                        (_E166101166113_))))
                                (_E166101166113_)))))
                      (_E166101166113_)))))
          (_E166100166135_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind166056_ _expr166057_)
        (let* ((_e166058166068_ _bind166056_)
               (_E166060166072_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166058166068_)))
               (_E166059166094_
                (lambda ()
                  (if (gx#stx-pair? _e166058166068_)
                      (let ((_e166061166076_ (gx#syntax-e _e166058166068_)))
                        (let ((_hd166062166079_ (##car _e166061166076_))
                              (_tl166063166081_ (##cdr _e166061166076_)))
                          (let ((_hd166084_ _hd166062166079_))
                            (if (gx#stx-pair? _tl166063166081_)
                                (let ((_e166064166086_
                                       (gx#syntax-e _tl166063166081_)))
                                  (let ((_hd166065166089_
                                         (##car _e166064166086_))
                                        (_tl166066166091_
                                         (##cdr _e166064166086_)))
                                    (if (gx#stx-null? _tl166066166091_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd166084_)
                                                  (cons _expr166057_ '()))
                                            (_E166060166072_))
                                        (_E166060166072_))))
                                (_E166060166072_)))))
                      (_E166060166072_)))))
          (_E166059166094_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx166010_)
        (let* ((_e166011166021_ _stx166010_)
               (_E166013166025_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166011166021_)))
               (_E166012166052_
                (lambda ()
                  (if (gx#stx-pair? _e166011166021_)
                      (let ((_e166014166029_ (gx#syntax-e _e166011166021_)))
                        (let ((_hd166015166032_ (##car _e166014166029_))
                              (_tl166016166034_ (##cdr _e166014166029_)))
                          (if (gx#stx-pair? _tl166016166034_)
                              (let ((_e166017166037_
                                     (gx#syntax-e _tl166016166034_)))
                                (let ((_hd166018166040_
                                       (##car _e166017166037_))
                                      (_tl166019166042_
                                       (##cdr _e166017166037_)))
                                  (let* ((_hd166045_ _hd166018166040_)
                                         (_body166047_ _tl166019166042_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd166045_)
                                        (let ((_expanders166049_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd166045_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd166045_
                                              _expanders166049_)
                                             (gx#core-expand-local-block
                                              _stx166010_
                                              _body166047_))
                                           gx#current-expander-context
                                           (let ((__obj171498
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj171498)
                                             __obj171498)))
                                        (_E166013166025_)))))
                              (_E166013166025_))))
                      (_E166013166025_)))))
          (_E166012166052_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx165959_)
        (let* ((_e165960165970_ _stx165959_)
               (_E165962165974_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165960165970_)))
               (_E165961166006_
                (lambda ()
                  (if (gx#stx-pair? _e165960165970_)
                      (let ((_e165963165978_ (gx#syntax-e _e165960165970_)))
                        (let ((_hd165964165981_ (##car _e165963165978_))
                              (_tl165965165983_ (##cdr _e165963165978_)))
                          (if (gx#stx-pair? _tl165965165983_)
                              (let ((_e165966165986_
                                     (gx#syntax-e _tl165965165983_)))
                                (let ((_hd165967165989_
                                       (##car _e165966165986_))
                                      (_tl165968165991_
                                       (##cdr _e165966165986_)))
                                  (let* ((_hd165994_ _hd165967165989_)
                                         (_body165996_ _tl165968165991_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd165994_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd165994_
                                            (make-list
                                             (gx#stx-length _hd165994_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g165998166001_
                                                     _g165999166003_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g165998166001_
                                               _g165999166003_
                                               '#t))
                                            _hd165994_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd165994_))
                                           (gx#core-expand-local-block
                                            _stx165959_
                                            _body165996_))
                                         gx#current-expander-context
                                         (let ((__obj171499
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj171499)
                                           __obj171499))
                                        (_E165962165974_)))))
                              (_E165962165974_))))
                      (_E165962165974_)))))
          (_E165961166006_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx165916_)
        (if (gx#stx-list? _stx165916_)
            (gx#stx-andmap
             (lambda (_bind165918_)
               (let* ((_e165919165929_ _bind165918_)
                      (_E165921165933_ (lambda () '#f))
                      (_E165920165955_
                       (lambda ()
                         (if (gx#stx-pair? _e165919165929_)
                             (let ((_e165922165937_
                                    (gx#syntax-e _e165919165929_)))
                               (let ((_hd165923165940_ (##car _e165922165937_))
                                     (_tl165924165942_
                                      (##cdr _e165922165937_)))
                                 (let ((_hd165945_ _hd165923165940_))
                                   (if (gx#stx-pair? _tl165924165942_)
                                       (let ((_e165925165947_
                                              (gx#syntax-e _tl165924165942_)))
                                         (let ((_hd165926165950_
                                                (##car _e165925165947_))
                                               (_tl165927165952_
                                                (##cdr _e165925165947_)))
                                           (if (gx#stx-null? _tl165927165952_)
                                               (if '#t
                                                   (gx#identifier? _hd165945_)
                                                   (_E165921165933_))
                                               (_E165921165933_))))
                                       (_E165921165933_)))))
                             (_E165921165933_)))))
                 (_E165920165955_)))
             _stx165916_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind165873_)
        (let* ((_e165874165884_ _bind165873_)
               (_E165876165888_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165874165884_)))
               (_E165875165912_
                (lambda ()
                  (if (gx#stx-pair? _e165874165884_)
                      (let ((_e165877165892_ (gx#syntax-e _e165874165884_)))
                        (let ((_hd165878165895_ (##car _e165877165892_))
                              (_tl165879165897_ (##cdr _e165877165892_)))
                          (if (gx#stx-pair? _tl165879165897_)
                              (let ((_e165880165900_
                                     (gx#syntax-e _tl165879165897_)))
                                (let ((_hd165881165903_
                                       (##car _e165880165900_))
                                      (_tl165882165905_
                                       (##cdr _e165880165900_)))
                                  (let ((_expr165908_ _hd165881165903_))
                                    (if (gx#stx-null? _tl165882165905_)
                                        (if '#t
                                            (let ((_g171508_
                                                   (gx#core-expand-expression+1
                                                    _expr165908_)))
                                              (begin
                                                (let ((_g171509_
                                                       (if (##values?
                                                            _g171508_)
                                                           (##vector-length
                                                            _g171508_)
                                                           1)))
                                                  (if (not (##fx= _g171509_ 2))
                                                      (error "Context expects 2 values"
                                                             _g171509_)))
                                                (let ((_e165910_
                                                       (##vector-ref
                                                        _g171508_
                                                        1)))
                                                  _e165910_)))
                                            (_E165876165888_))
                                        (_E165876165888_)))))
                              (_E165876165888_))))
                      (_E165876165888_)))))
          (_E165875165912_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind165818_ _e165819_ _rebind?165820_)
        (let* ((_e165821165831_ _bind165818_)
               (_E165823165835_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165821165831_)))
               (_E165822165857_
                (lambda ()
                  (if (gx#stx-pair? _e165821165831_)
                      (let ((_e165824165839_ (gx#syntax-e _e165821165831_)))
                        (let ((_hd165825165842_ (##car _e165824165839_))
                              (_tl165826165844_ (##cdr _e165824165839_)))
                          (let ((_id165847_ _hd165825165842_))
                            (if (gx#stx-pair? _tl165826165844_)
                                (let ((_e165827165849_
                                       (gx#syntax-e _tl165826165844_)))
                                  (let ((_hd165828165852_
                                         (##car _e165827165849_))
                                        (_tl165829165854_
                                         (##cdr _e165827165849_)))
                                    (if (gx#stx-null? _tl165829165854_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id165847_
                                             _e165819_
                                             _rebind?165820_)
                                            (_E165823165835_))
                                        (_E165823165835_))))
                                (_E165823165835_)))))
                      (_E165823165835_)))))
          (_E165822165857_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind165864_ _e165865_)
        (let ((_rebind?165867_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind165864_
           _e165865_
           _rebind?165867_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g171511_
        (let ((_g171510_ (##length _g171511_)))
          (cond ((##fx= _g171510_ 2)
                 (apply (lambda (_bind165864_ _e165865_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind165864_
                           _e165865_))
                        _g171511_))
                ((##fx= _g171510_ 3)
                 (apply (lambda (_bind165869_ _e165870_ _rebind?165871_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind165869_
                           _e165870_
                           _rebind?165871_))
                        _g171511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g171511_))))))
    (define gx#core-expand-expression%
      (lambda (_stx165776_)
        (let* ((_e165777165787_ _stx165776_)
               (_E165779165791_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165777165787_)))
               (_E165778165813_
                (lambda ()
                  (if (gx#stx-pair? _e165777165787_)
                      (let ((_e165780165795_ (gx#syntax-e _e165777165787_)))
                        (let ((_hd165781165798_ (##car _e165780165795_))
                              (_tl165782165800_ (##cdr _e165780165795_)))
                          (if (gx#stx-pair? _tl165782165800_)
                              (let ((_e165783165803_
                                     (gx#syntax-e _tl165782165800_)))
                                (let ((_hd165784165806_
                                       (##car _e165783165803_))
                                      (_tl165785165808_
                                       (##cdr _e165783165803_)))
                                  (let ((_expr165811_ _hd165784165806_))
                                    (if (gx#stx-null? _tl165785165808_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr165811_)
                                            (_E165779165791_))
                                        (_E165779165791_)))))
                              (_E165779165791_))))
                      (_E165779165791_)))))
          (_E165778165813_))))
    (define gx#core-expand-quote%
      (lambda (_stx165735_)
        (let* ((_e165736165746_ _stx165735_)
               (_E165738165750_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165736165746_)))
               (_E165737165772_
                (lambda ()
                  (if (gx#stx-pair? _e165736165746_)
                      (let ((_e165739165754_ (gx#syntax-e _e165736165746_)))
                        (let ((_hd165740165757_ (##car _e165739165754_))
                              (_tl165741165759_ (##cdr _e165739165754_)))
                          (if (gx#stx-pair? _tl165741165759_)
                              (let ((_e165742165762_
                                     (gx#syntax-e _tl165741165759_)))
                                (let ((_hd165743165765_
                                       (##car _e165742165762_))
                                      (_tl165744165767_
                                       (##cdr _e165742165762_)))
                                  (let ((_e165770_ _hd165743165765_))
                                    (if (gx#stx-null? _tl165744165767_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e165770_)
                                                         '()))
                                             (gx#stx-source _stx165735_))
                                            (_E165738165750_))
                                        (_E165738165750_)))))
                              (_E165738165750_))))
                      (_E165738165750_)))))
          (_E165737165772_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx165694_)
        (let* ((_e165695165705_ _stx165694_)
               (_E165697165709_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165695165705_)))
               (_E165696165731_
                (lambda ()
                  (if (gx#stx-pair? _e165695165705_)
                      (let ((_e165698165713_ (gx#syntax-e _e165695165705_)))
                        (let ((_hd165699165716_ (##car _e165698165713_))
                              (_tl165700165718_ (##cdr _e165698165713_)))
                          (if (gx#stx-pair? _tl165700165718_)
                              (let ((_e165701165721_
                                     (gx#syntax-e _tl165700165718_)))
                                (let ((_hd165702165724_
                                       (##car _e165701165721_))
                                      (_tl165703165726_
                                       (##cdr _e165701165721_)))
                                  (let ((_e165729_ _hd165702165724_))
                                    (if (gx#stx-null? _tl165703165726_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e165729_)
                                                         '()))
                                             (gx#stx-source _stx165694_))
                                            (_E165697165709_))
                                        (_E165697165709_)))))
                              (_E165697165709_))))
                      (_E165697165709_)))))
          (_E165696165731_))))
    (define gx#core-expand-call%
      (lambda (_stx165651_)
        (let* ((_e165652165662_ _stx165651_)
               (_E165654165666_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165652165662_)))
               (_E165653165690_
                (lambda ()
                  (if (gx#stx-pair? _e165652165662_)
                      (let ((_e165655165670_ (gx#syntax-e _e165652165662_)))
                        (let ((_hd165656165673_ (##car _e165655165670_))
                              (_tl165657165675_ (##cdr _e165655165670_)))
                          (if (gx#stx-pair? _tl165657165675_)
                              (let ((_e165658165678_
                                     (gx#syntax-e _tl165657165675_)))
                                (let ((_hd165659165681_
                                       (##car _e165658165678_))
                                      (_tl165660165683_
                                       (##cdr _e165658165678_)))
                                  (let* ((_rator165686_ _hd165659165681_)
                                         (_args165688_ _tl165660165683_))
                                    (if (gx#stx-list? _args165688_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator165686_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args165688_))
                                         (gx#stx-source _stx165651_))
                                        (_E165654165666_)))))
                              (_E165654165666_))))
                      (_E165654165666_)))))
          (_E165653165690_))))
    (define gx#core-expand-if%
      (lambda (_stx165584_)
        (let* ((_e165585165601_ _stx165584_)
               (_E165587165605_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165585165601_)))
               (_E165586165647_
                (lambda ()
                  (if (gx#stx-pair? _e165585165601_)
                      (let ((_e165588165609_ (gx#syntax-e _e165585165601_)))
                        (let ((_hd165589165612_ (##car _e165588165609_))
                              (_tl165590165614_ (##cdr _e165588165609_)))
                          (if (gx#stx-pair? _tl165590165614_)
                              (let ((_e165591165617_
                                     (gx#syntax-e _tl165590165614_)))
                                (let ((_hd165592165620_
                                       (##car _e165591165617_))
                                      (_tl165593165622_
                                       (##cdr _e165591165617_)))
                                  (let ((_test165625_ _hd165592165620_))
                                    (if (gx#stx-pair? _tl165593165622_)
                                        (let ((_e165594165627_
                                               (gx#syntax-e _tl165593165622_)))
                                          (let ((_hd165595165630_
                                                 (##car _e165594165627_))
                                                (_tl165596165632_
                                                 (##cdr _e165594165627_)))
                                            (let ((_K165635_ _hd165595165630_))
                                              (if (gx#stx-pair?
                                                   _tl165596165632_)
                                                  (let ((_e165597165637_
                                                         (gx#syntax-e
                                                          _tl165596165632_)))
                                                    (let ((_hd165598165640_
                                                           (##car _e165597165637_))
                                                          (_tl165599165642_
                                                           (##cdr _e165597165637_)))
                                                      (let ((_E165645_
                                                             _hd165598165640_))
                                                        (if (gx#stx-null?
                                                             _tl165599165642_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test165625_)
                                     (cons (gx#core-expand-expression
                                            _K165635_)
                                           (cons (gx#core-expand-expression
                                                  _E165645_)
                                                 '()))))
                         (gx#stx-source _stx165584_))
                        (_E165587165605_))
                    (_E165587165605_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165587165605_)))))
                                        (_E165587165605_)))))
                              (_E165587165605_))))
                      (_E165587165605_)))))
          (_E165586165647_))))
    (define gx#core-expand-ref%
      (lambda (_stx165543_)
        (let* ((_e165544165554_ _stx165543_)
               (_E165546165558_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165544165554_)))
               (_E165545165580_
                (lambda ()
                  (if (gx#stx-pair? _e165544165554_)
                      (let ((_e165547165562_ (gx#syntax-e _e165544165554_)))
                        (let ((_hd165548165565_ (##car _e165547165562_))
                              (_tl165549165567_ (##cdr _e165547165562_)))
                          (if (gx#stx-pair? _tl165549165567_)
                              (let ((_e165550165570_
                                     (gx#syntax-e _tl165549165567_)))
                                (let ((_hd165551165573_
                                       (##car _e165550165570_))
                                      (_tl165552165575_
                                       (##cdr _e165550165570_)))
                                  (let ((_id165578_ _hd165551165573_))
                                    (if (gx#stx-null? _tl165552165575_)
                                        (if (gx#identifier? _id165578_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id165578_
                                                          _stx165543_)
                                                         '()))
                                             (gx#stx-source _stx165543_))
                                            (_E165546165558_))
                                        (_E165546165558_)))))
                              (_E165546165558_))))
                      (_E165546165558_)))))
          (_E165545165580_))))
    (define gx#core-expand-setq%
      (lambda (_stx165489_)
        (let* ((_e165490165503_ _stx165489_)
               (_E165492165507_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165490165503_)))
               (_E165491165539_
                (lambda ()
                  (if (gx#stx-pair? _e165490165503_)
                      (let ((_e165493165511_ (gx#syntax-e _e165490165503_)))
                        (let ((_hd165494165514_ (##car _e165493165511_))
                              (_tl165495165516_ (##cdr _e165493165511_)))
                          (if (gx#stx-pair? _tl165495165516_)
                              (let ((_e165496165519_
                                     (gx#syntax-e _tl165495165516_)))
                                (let ((_hd165497165522_
                                       (##car _e165496165519_))
                                      (_tl165498165524_
                                       (##cdr _e165496165519_)))
                                  (let ((_id165527_ _hd165497165522_))
                                    (if (gx#stx-pair? _tl165498165524_)
                                        (let ((_e165499165529_
                                               (gx#syntax-e _tl165498165524_)))
                                          (let ((_hd165500165532_
                                                 (##car _e165499165529_))
                                                (_tl165501165534_
                                                 (##cdr _e165499165529_)))
                                            (let ((_expr165537_
                                                   _hd165500165532_))
                                              (if (gx#stx-null?
                                                   _tl165501165534_)
                                                  (if (gx#identifier?
                                                       _id165527_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id165527_
                            _stx165489_)
                           (cons (gx#core-expand-expression _expr165537_)
                                 '())))
               (gx#stx-source _stx165489_))
              (_E165492165507_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165492165507_)))))
                                        (_E165492165507_)))))
                              (_E165492165507_))))
                      (_E165492165507_)))))
          (_E165491165539_))))
    (define gx#macro-expand-extern
      (lambda (_stx165337_)
        (letrec ((_generate165339_
                  (lambda (_body165369_)
                    (let _lp165371_ ((_rest165373_ _body165369_)
                                     (_ns165374_
                                      (gx#core-context-namespace__0))
                                     (_r165375_ '()))
                      (let* ((_e165376165391_ _rest165373_)
                             (_E165389165395_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e165376165391_)))
                             (_E165385165399_
                              (lambda ()
                                (if (gx#stx-null? _e165376165391_)
                                    (if '#t
                                        (reverse _r165375_)
                                        (_E165389165395_))
                                    (_E165389165395_))))
                             (_E165378165456_
                              (lambda ()
                                (if (gx#stx-pair? _e165376165391_)
                                    (let ((_e165386165403_
                                           (gx#syntax-e _e165376165391_)))
                                      (let ((_hd165387165406_
                                             (##car _e165386165403_))
                                            (_tl165388165408_
                                             (##cdr _e165386165403_)))
                                        (let* ((_hd165411_ _hd165387165406_)
                                               (_rest165413_ _tl165388165408_))
                                          (if '#t
                                              (if (gx#identifier? _hd165411_)
                                                  (_lp165371_
                                                   _rest165413_
                                                   _ns165374_
                                                   (cons (cons _hd165411_
                                                               (cons (if _ns165374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd165411_
                                  _ns165374_
                                  '"#"
                                  _hd165411_)
                                 _hd165411_)
                             '()))
                 _r165375_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e165414165424_
                                                          _hd165411_)
                                                         (_E165416165428_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e165414165424_)))
                                                         (_E165415165452_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e165414165424_)
                        (let ((_e165417165432_ (gx#syntax-e _e165414165424_)))
                          (let ((_hd165418165435_ (##car _e165417165432_))
                                (_tl165419165437_ (##cdr _e165417165432_)))
                            (let ((_id165440_ _hd165418165435_))
                              (if (gx#stx-pair? _tl165419165437_)
                                  (let ((_e165420165442_
                                         (gx#syntax-e _tl165419165437_)))
                                    (let ((_hd165421165445_
                                           (##car _e165420165442_))
                                          (_tl165422165447_
                                           (##cdr _e165420165442_)))
                                      (let ((_eid165450_ _hd165421165445_))
                                        (if (gx#stx-null? _tl165422165447_)
                                            (if (and (gx#identifier?
                                                      _id165440_)
                                                     (gx#identifier?
                                                      _eid165450_))
                                                (_lp165371_
                                                 _rest165413_
                                                 _ns165374_
                                                 (cons (cons _id165440_
                                                             (cons _eid165450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r165375_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E165416165428_))
                                            (_E165416165428_)))))
                                  (_E165416165428_)))))
                        (_E165416165428_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E165415165452_)))
                                              (_E165385165399_)))))
                                    (_E165385165399_))))
                             (_E165377165485_
                              (lambda ()
                                (if (gx#stx-pair? _e165376165391_)
                                    (let ((_e165379165460_
                                           (gx#syntax-e _e165376165391_)))
                                      (let ((_hd165380165463_
                                             (##car _e165379165460_))
                                            (_tl165381165465_
                                             (##cdr _e165379165460_)))
                                        (if (eq? (gx#stx-e _hd165380165463_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl165381165465_)
                                                (let ((_e165382165468_
                                                       (gx#syntax-e
                                                        _tl165381165465_)))
                                                  (let ((_hd165383165471_
                                                         (##car _e165382165468_))
                                                        (_tl165384165473_
                                                         (##cdr _e165382165468_)))
                                                    (let* ((_ns165476_
                                                            _hd165383165471_)
                                                           (_rest165478_
                                                            _tl165384165473_))
                                                      (if '#t
                                                          (let ((_ns165483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns165476_)
                             (symbol->string (gx#stx-e _ns165476_))
                             (if (or (gx#stx-string? _ns165476_)
                                     (gx#stx-false? _ns165476_))
                                 (gx#stx-e _ns165476_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx165337_
                                  _ns165476_)))))
                    (_lp165371_ _rest165478_ _ns165483_ _r165375_))
                  (_E165378165456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E165378165456_))
                                            (_E165378165456_))))
                                    (_E165378165456_)))))
                        (_E165377165485_))))))
          (let* ((_e165340165347_ _stx165337_)
                 (_E165342165351_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e165340165347_)))
                 (_E165341165365_
                  (lambda ()
                    (if (gx#stx-pair? _e165340165347_)
                        (let ((_e165343165355_ (gx#syntax-e _e165340165347_)))
                          (let ((_hd165344165358_ (##car _e165343165355_))
                                (_tl165345165360_ (##cdr _e165343165355_)))
                            (let ((_body165363_ _tl165345165360_))
                              (if (gx#stx-list? _body165363_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate165339_ _body165363_))
                                  (_E165342165351_)))))
                        (_E165342165351_)))))
            (_E165341165365_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx165283_)
        (let* ((_e165284165297_ _stx165283_)
               (_E165286165301_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165284165297_)))
               (_E165285165333_
                (lambda ()
                  (if (gx#stx-pair? _e165284165297_)
                      (let ((_e165287165305_ (gx#syntax-e _e165284165297_)))
                        (let ((_hd165288165308_ (##car _e165287165305_))
                              (_tl165289165310_ (##cdr _e165287165305_)))
                          (if (gx#stx-pair? _tl165289165310_)
                              (let ((_e165290165313_
                                     (gx#syntax-e _tl165289165310_)))
                                (let ((_hd165291165316_
                                       (##car _e165290165313_))
                                      (_tl165292165318_
                                       (##cdr _e165290165313_)))
                                  (let ((_hd165321_ _hd165291165316_))
                                    (if (gx#stx-pair? _tl165292165318_)
                                        (let ((_e165293165323_
                                               (gx#syntax-e _tl165292165318_)))
                                          (let ((_hd165294165326_
                                                 (##car _e165293165323_))
                                                (_tl165295165328_
                                                 (##cdr _e165293165323_)))
                                            (let ((_expr165331_
                                                   _hd165294165326_))
                                              (if (gx#stx-null?
                                                   _tl165295165328_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd165321_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd165321_)
                          (cons _expr165331_ '())))
              (_E165286165301_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165286165301_)))))
                                        (_E165286165301_)))))
                              (_E165286165301_))))
                      (_E165286165301_)))))
          (_E165285165333_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx165229_)
        (let* ((_e165230165243_ _stx165229_)
               (_E165232165247_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165230165243_)))
               (_E165231165279_
                (lambda ()
                  (if (gx#stx-pair? _e165230165243_)
                      (let ((_e165233165251_ (gx#syntax-e _e165230165243_)))
                        (let ((_hd165234165254_ (##car _e165233165251_))
                              (_tl165235165256_ (##cdr _e165233165251_)))
                          (if (gx#stx-pair? _tl165235165256_)
                              (let ((_e165236165259_
                                     (gx#syntax-e _tl165235165256_)))
                                (let ((_hd165237165262_
                                       (##car _e165236165259_))
                                      (_tl165238165264_
                                       (##cdr _e165236165259_)))
                                  (let ((_hd165267_ _hd165237165262_))
                                    (if (gx#stx-pair? _tl165238165264_)
                                        (let ((_e165239165269_
                                               (gx#syntax-e _tl165238165264_)))
                                          (let ((_hd165240165272_
                                                 (##car _e165239165269_))
                                                (_tl165241165274_
                                                 (##cdr _e165239165269_)))
                                            (let ((_expr165277_
                                                   _hd165240165272_))
                                              (if (gx#stx-null?
                                                   _tl165241165274_)
                                                  (if (gx#identifier?
                                                       _hd165267_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd165267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr165277_ '())))
              (_E165232165247_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165232165247_)))))
                                        (_E165232165247_)))))
                              (_E165232165247_))))
                      (_E165232165247_)))))
          (_E165231165279_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx165175_)
        (let* ((_e165176165189_ _stx165175_)
               (_E165178165193_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165176165189_)))
               (_E165177165225_
                (lambda ()
                  (if (gx#stx-pair? _e165176165189_)
                      (let ((_e165179165197_ (gx#syntax-e _e165176165189_)))
                        (let ((_hd165180165200_ (##car _e165179165197_))
                              (_tl165181165202_ (##cdr _e165179165197_)))
                          (if (gx#stx-pair? _tl165181165202_)
                              (let ((_e165182165205_
                                     (gx#syntax-e _tl165181165202_)))
                                (let ((_hd165183165208_
                                       (##car _e165182165205_))
                                      (_tl165184165210_
                                       (##cdr _e165182165205_)))
                                  (let ((_id165213_ _hd165183165208_))
                                    (if (gx#stx-pair? _tl165184165210_)
                                        (let ((_e165185165215_
                                               (gx#syntax-e _tl165184165210_)))
                                          (let ((_hd165186165218_
                                                 (##car _e165185165215_))
                                                (_tl165187165220_
                                                 (##cdr _e165185165215_)))
                                            (let ((_alias-id165223_
                                                   _hd165186165218_))
                                              (if (gx#stx-null?
                                                   _tl165187165220_)
                                                  (if (and (gx#identifier?
                                                            _id165213_)
                                                           (gx#identifier?
                                                            _alias-id165223_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id165213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id165223_ '())))
              (_E165178165193_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165178165193_)))))
                                        (_E165178165193_)))))
                              (_E165178165193_))))
                      (_E165178165193_)))))
          (_E165177165225_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx165132_)
        (let* ((_e165133165143_ _stx165132_)
               (_E165135165147_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165133165143_)))
               (_E165134165171_
                (lambda ()
                  (if (gx#stx-pair? _e165133165143_)
                      (let ((_e165136165151_ (gx#syntax-e _e165133165143_)))
                        (let ((_hd165137165154_ (##car _e165136165151_))
                              (_tl165138165156_ (##cdr _e165136165151_)))
                          (if (gx#stx-pair? _tl165138165156_)
                              (let ((_e165139165159_
                                     (gx#syntax-e _tl165138165156_)))
                                (let ((_hd165140165162_
                                       (##car _e165139165159_))
                                      (_tl165141165164_
                                       (##cdr _e165139165159_)))
                                  (let* ((_hd165167_ _hd165140165162_)
                                         (_body165169_ _tl165141165164_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd165167_)
                                             (gx#stx-list? _body165169_)
                                             (not (gx#stx-null? _body165169_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd165167_)
                                         _body165169_)
                                        (_E165135165147_)))))
                              (_E165135165147_))))
                      (_E165135165147_)))))
          (_E165134165171_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx165068_)
        (letrec ((_generate165070_
                  (lambda (_clause165100_)
                    (let* ((_e165101165108_ _clause165100_)
                           (_E165103165112_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx165068_
                               _clause165100_)))
                           (_E165102165128_
                            (lambda ()
                              (if (gx#stx-pair? _e165101165108_)
                                  (let ((_e165104165116_
                                         (gx#syntax-e _e165101165108_)))
                                    (let ((_hd165105165119_
                                           (##car _e165104165116_))
                                          (_tl165106165121_
                                           (##cdr _e165104165116_)))
                                      (let* ((_hd165124_ _hd165105165119_)
                                             (_body165126_ _tl165106165121_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd165124_)
                                                 (gx#stx-list? _body165126_)
                                                 (not (gx#stx-null?
                                                       _body165126_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd165124_)
                                                   _body165126_)
                                             (gx#stx-source _clause165100_))
                                            (_E165103165112_)))))
                                  (_E165103165112_)))))
                      (_E165102165128_)))))
          (let* ((_e165071165078_ _stx165068_)
                 (_E165073165082_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e165071165078_)))
                 (_E165072165096_
                  (lambda ()
                    (if (gx#stx-pair? _e165071165078_)
                        (let ((_e165074165086_ (gx#syntax-e _e165071165078_)))
                          (let ((_hd165075165089_ (##car _e165074165086_))
                                (_tl165076165091_ (##cdr _e165074165086_)))
                            (let ((_clauses165094_ _tl165076165091_))
                              (if (gx#stx-list? _clauses165094_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate165070_
                                    _clauses165094_))
                                  (_E165073165082_)))))
                        (_E165073165082_)))))
            (_E165072165096_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx164969_ _form164970_)
        (letrec ((_generate164972_
                  (lambda (_bind165015_)
                    (let* ((_e165016165026_ _bind165015_)
                           (_E165018165030_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx164969_
                               _bind165015_)))
                           (_E165017165054_
                            (lambda ()
                              (if (gx#stx-pair? _e165016165026_)
                                  (let ((_e165019165034_
                                         (gx#syntax-e _e165016165026_)))
                                    (let ((_hd165020165037_
                                           (##car _e165019165034_))
                                          (_tl165021165039_
                                           (##cdr _e165019165034_)))
                                      (let ((_ids165042_ _hd165020165037_))
                                        (if (gx#stx-pair? _tl165021165039_)
                                            (let ((_e165022165044_
                                                   (gx#syntax-e
                                                    _tl165021165039_)))
                                              (let ((_hd165023165047_
                                                     (##car _e165022165044_))
                                                    (_tl165024165049_
                                                     (##cdr _e165022165044_)))
                                                (let ((_expr165052_
                                                       _hd165023165047_))
                                                  (if (gx#stx-null?
                                                       _tl165024165049_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids165042_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids165042_)
                        (cons _expr165052_ '()))
                  (_E165018165030_))
              (_E165018165030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E165018165030_)))))
                                  (_E165018165030_)))))
                      (_E165017165054_)))))
          (let* ((_e164973164983_ _stx164969_)
                 (_E164975164987_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e164973164983_)))
                 (_E164974165011_
                  (lambda ()
                    (if (gx#stx-pair? _e164973164983_)
                        (let ((_e164976164991_ (gx#syntax-e _e164973164983_)))
                          (let ((_hd164977164994_ (##car _e164976164991_))
                                (_tl164978164996_ (##cdr _e164976164991_)))
                            (if (gx#stx-pair? _tl164978164996_)
                                (let ((_e164979164999_
                                       (gx#syntax-e _tl164978164996_)))
                                  (let ((_hd164980165002_
                                         (##car _e164979164999_))
                                        (_tl164981165004_
                                         (##cdr _e164979164999_)))
                                    (let* ((_hd165007_ _hd164980165002_)
                                           (_body165009_ _tl164981165004_))
                                      (if (and (gx#stx-list? _hd165007_)
                                               (gx#stx-list? _body165009_)
                                               (not (gx#stx-null?
                                                     _body165009_)))
                                          (gx#core-cons*
                                           _form164970_
                                           (gx#stx-map1
                                            _generate164972_
                                            _hd165007_)
                                           _body165009_)
                                          (_E164975164987_)))))
                                (_E164975164987_))))
                        (_E164975164987_)))))
            (_E164974165011_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx165061_)
        (let ((_form165063_ '%#let-values))
          (gx#macro-expand-let-values__% _stx165061_ _form165063_))))
    (define gx#macro-expand-let-values
      (lambda _g171513_
        (let ((_g171512_ (##length _g171513_)))
          (cond ((##fx= _g171512_ 1)
                 (apply (lambda (_stx165061_)
                          (gx#macro-expand-let-values__0 _stx165061_))
                        _g171513_))
                ((##fx= _g171512_ 2)
                 (apply (lambda (_stx165065_ _form165066_)
                          (gx#macro-expand-let-values__%
                           _stx165065_
                           _form165066_))
                        _g171513_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g171513_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx164966_)
        (gx#macro-expand-let-values__% _stx164966_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx164964_)
        (gx#macro-expand-let-values__% _stx164964_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx164855_)
        (let* ((_e164856164882_ _stx164855_)
               (_E164868164886_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164856164882_)))
               (_E164858164928_
                (lambda ()
                  (if (gx#stx-pair? _e164856164882_)
                      (let ((_e164869164890_ (gx#syntax-e _e164856164882_)))
                        (let ((_hd164870164893_ (##car _e164869164890_))
                              (_tl164871164895_ (##cdr _e164869164890_)))
                          (if (gx#stx-pair? _tl164871164895_)
                              (let ((_e164872164898_
                                     (gx#syntax-e _tl164871164895_)))
                                (let ((_hd164873164901_
                                       (##car _e164872164898_))
                                      (_tl164874164903_
                                       (##cdr _e164872164898_)))
                                  (let ((_test164906_ _hd164873164901_))
                                    (if (gx#stx-pair? _tl164874164903_)
                                        (let ((_e164875164908_
                                               (gx#syntax-e _tl164874164903_)))
                                          (let ((_hd164876164911_
                                                 (##car _e164875164908_))
                                                (_tl164877164913_
                                                 (##cdr _e164875164908_)))
                                            (let ((_K164916_ _hd164876164911_))
                                              (if (gx#stx-pair?
                                                   _tl164877164913_)
                                                  (let ((_e164878164918_
                                                         (gx#syntax-e
                                                          _tl164877164913_)))
                                                    (let ((_hd164879164921_
                                                           (##car _e164878164918_))
                                                          (_tl164880164923_
                                                           (##cdr _e164878164918_)))
                                                      (let ((_E164926_
                                                             _hd164879164921_))
                                                        (if (gx#stx-null?
                                                             _tl164880164923_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test164906_
                         _K164916_
                         _E164926_)
                        (_E164868164886_))
                    (_E164868164886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164868164886_)))))
                                        (_E164868164886_)))))
                              (_E164868164886_))))
                      (_E164868164886_))))
               (_E164857164960_
                (lambda ()
                  (if (gx#stx-pair? _e164856164882_)
                      (let ((_e164859164932_ (gx#syntax-e _e164856164882_)))
                        (let ((_hd164860164935_ (##car _e164859164932_))
                              (_tl164861164937_ (##cdr _e164859164932_)))
                          (if (gx#stx-pair? _tl164861164937_)
                              (let ((_e164862164940_
                                     (gx#syntax-e _tl164861164937_)))
                                (let ((_hd164863164943_
                                       (##car _e164862164940_))
                                      (_tl164864164945_
                                       (##cdr _e164862164940_)))
                                  (let ((_test164948_ _hd164863164943_))
                                    (if (gx#stx-pair? _tl164864164945_)
                                        (let ((_e164865164950_
                                               (gx#syntax-e _tl164864164945_)))
                                          (let ((_hd164866164953_
                                                 (##car _e164865164950_))
                                                (_tl164867164955_
                                                 (##cdr _e164865164950_)))
                                            (let ((_K164958_ _hd164866164953_))
                                              (if (gx#stx-null?
                                                   _tl164867164955_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test164948_
                                                       _K164958_
                                                       '#!void)
                                                      (_E164858164928_))
                                                  (_E164858164928_)))))
                                        (_E164858164928_)))))
                              (_E164858164928_))))
                      (_E164858164928_)))))
          (_E164857164960_))))
    (define gx#free-identifier=?
      (lambda (_xid164843_ _yid164844_)
        (let ((_xe164846_ (gx#resolve-identifier__0 _xid164843_))
              (_ye164847_ (gx#resolve-identifier__0 _yid164844_)))
          (if (and _xe164846_ _ye164847_)
              (let ((_$e164849_ (eq? _xe164846_ _ye164847_)))
                (if _$e164849_
                    _$e164849_
                    (if (##structure-instance-of? _xe164846_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye164847_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe164846_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye164847_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe164846_ _ye164847_)
                  '#f
                  (gx#stx-eq? _xid164843_ _yid164844_))))))
    (define gx#bound-identifier=?
      (lambda (_xid164827_ _yid164828_)
        (letrec ((_context164830_
                  (lambda (_e164841_)
                    (if (##structure-direct-instance-of?
                         _e164841_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e164841_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks164831_
                  (lambda (_e164839_)
                    (if (symbol? _e164839_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e164839_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e164839_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e164839_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap164832_
                  (lambda (_e164837_)
                    (if (symbol? _e164837_)
                        _e164837_
                        (gx#syntax-local-unwrap _e164837_)))))
          (let ((_x164834_ (_unwrap164832_ _xid164827_))
                (_y164835_ (_unwrap164832_ _yid164828_)))
            (if (gx#stx-eq? _x164834_ _y164835_)
                (if (eq? (_context164830_ _x164834_)
                         (_context164830_ _y164835_))
                    (equal? (_marks164831_ _x164834_)
                            (_marks164831_ _y164835_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx164825_)
        (if (gx#identifier? _stx164825_)
            (gx#core-identifier=? _stx164825_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx164823_)
        (if (gx#identifier? _stx164823_)
            (gx#core-identifier=? _stx164823_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x164821_)
        (if (gx#identifier? _x164821_)
            (if (not (gx#underscore? _x164821_)) _x164821_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx164767_ _where164768_)
        (let _lp164770_ ((_rest164772_ (gx#syntax->list _stx164767_)))
          (let* ((_rest164773164781_ _rest164772_)
                 (_else164775164789_ (lambda () '#t))
                 (_K164777164799_
                  (lambda (_rest164792_ _hd164793_)
                    (if (not (gx#identifier? _hd164793_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where164768_
                         _hd164793_)
                        (if (find (lambda (_g164794164796_)
                                    (gx#bound-identifier=?
                                     _g164794164796_
                                     _hd164793_))
                                  _rest164792_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where164768_
                             _hd164793_)
                            (_lp164770_ _rest164792_))))))
            (if (##pair? _rest164773164781_)
                (let ((_hd164778164802_ (##car _rest164773164781_))
                      (_tl164779164804_ (##cdr _rest164773164781_)))
                  (let* ((_hd164807_ _hd164778164802_)
                         (_rest164809_ _tl164779164804_))
                    (_K164777164799_ _rest164809_ _hd164807_)))
                (_else164775164789_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx164814_)
        (let ((_where164816_ _stx164814_))
          (gx#check-duplicate-identifiers__% _stx164814_ _where164816_))))
    (define gx#check-duplicate-identifiers
      (lambda _g171515_
        (let ((_g171514_ (##length _g171515_)))
          (cond ((##fx= _g171514_ 1)
                 (apply (lambda (_stx164814_)
                          (gx#check-duplicate-identifiers__0 _stx164814_))
                        _g171515_))
                ((##fx= _g171514_ 2)
                 (apply (lambda (_stx164818_ _where164819_)
                          (gx#check-duplicate-identifiers__%
                           _stx164818_
                           _where164819_))
                        _g171515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g171515_))))))
    (define gx#core-bind-values?
      (lambda (_stx164759_)
        (gx#stx-andmap
         (lambda (_x164761_)
           (let ((_$e164763_ (gx#identifier? _x164761_)))
             (if _$e164763_ _$e164763_ (gx#stx-false? _x164761_))))
         _stx164759_)))
    (define gx#core-bind-values!__%
      (lambda (_stx164723_ _rebind?164724_ _phi164725_ _ctx164726_)
        (gx#stx-for-each1
         (lambda (_id164728_)
           (if (gx#identifier? _id164728_)
               (gx#core-bind-runtime!__%
                _id164728_
                _rebind?164724_
                _phi164725_
                _ctx164726_)
               '#!void))
         _stx164723_)))
    (define gx#core-bind-values!__0
      (lambda (_stx164733_)
        (let* ((_rebind?164735_ '#f)
               (_phi164737_ (gx#current-expander-phi))
               (_ctx164739_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx164733_
           _rebind?164735_
           _phi164737_
           _ctx164739_))))
    (define gx#core-bind-values!__1
      (lambda (_stx164741_ _rebind?164742_)
        (let* ((_phi164744_ (gx#current-expander-phi))
               (_ctx164746_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx164741_
           _rebind?164742_
           _phi164744_
           _ctx164746_))))
    (define gx#core-bind-values!__2
      (lambda (_stx164748_ _rebind?164749_ _phi164750_)
        (let ((_ctx164752_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx164748_
           _rebind?164749_
           _phi164750_
           _ctx164752_))))
    (define gx#core-bind-values!
      (lambda _g171517_
        (let ((_g171516_ (##length _g171517_)))
          (cond ((##fx= _g171516_ 1)
                 (apply (lambda (_stx164733_)
                          (gx#core-bind-values!__0 _stx164733_))
                        _g171517_))
                ((##fx= _g171516_ 2)
                 (apply (lambda (_stx164741_ _rebind?164742_)
                          (gx#core-bind-values!__1
                           _stx164741_
                           _rebind?164742_))
                        _g171517_))
                ((##fx= _g171516_ 3)
                 (apply (lambda (_stx164748_ _rebind?164749_ _phi164750_)
                          (gx#core-bind-values!__2
                           _stx164748_
                           _rebind?164749_
                           _phi164750_))
                        _g171517_))
                ((##fx= _g171516_ 4)
                 (apply (lambda (_stx164754_
                                 _rebind?164755_
                                 _phi164756_
                                 _ctx164757_)
                          (gx#core-bind-values!__%
                           _stx164754_
                           _rebind?164755_
                           _phi164756_
                           _ctx164757_))
                        _g171517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g171517_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx164718_)
        (gx#stx-map1
         (lambda (_x164720_)
           (if (gx#identifier? _x164720_)
               (gx#core-quote-syntax__0 _x164720_)
               '#f))
         _stx164718_)))
    (define gx#core-runtime-ref?
      (lambda (_stx164711_)
        (if (gx#identifier? _stx164711_)
            (let* ((_bind164713_ (gx#resolve-identifier__0 _stx164711_))
                   (_$e164715_ (not _bind164713_)))
              (if _$e164715_
                  _$e164715_
                  (##structure-instance-of?
                   _bind164713_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id164703_ _form164704_)
        (let ((_bind164706_ (gx#resolve-identifier__0 _id164703_)))
          (if (##structure-instance-of? _bind164706_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id164703_)
              (if (not _bind164706_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id164703_)))
                      (gx#core-quote-syntax__0 _id164703_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form164704_
                       _id164703_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form164704_
                   _id164703_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id164662_ _rebind?164663_ _phi164664_ _ctx164665_)
        (let* ((_key164667_ (gx#core-identifier-key _id164662_))
               (_eid164669_
                (gx#make-binding-id__%
                 _key164667_
                 '#f
                 _phi164664_
                 _ctx164665_))
               (_bind164671_
                (if (##structure-instance-of?
                     _ctx164665_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid164669_
                     _key164667_
                     _phi164664_
                     _ctx164665_)
                    (if (##structure-instance-of?
                         _ctx164665_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid164669_
                         _key164667_
                         _phi164664_)
                        (if (##structure-instance-of?
                             _ctx164665_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid164669_
                             _key164667_
                             _phi164664_)
                            (##structure
                             gx#runtime-binding::t
                             _eid164669_
                             _key164667_
                             _phi164664_))))))
          (gx#bind-identifier!__%
           _id164662_
           _bind164671_
           _rebind?164663_
           _phi164664_
           _ctx164665_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id164677_)
        (let* ((_rebind?164679_ '#f)
               (_phi164681_ (gx#current-expander-phi))
               (_ctx164683_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id164677_
           _rebind?164679_
           _phi164681_
           _ctx164683_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id164685_ _rebind?164686_)
        (let* ((_phi164688_ (gx#current-expander-phi))
               (_ctx164690_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id164685_
           _rebind?164686_
           _phi164688_
           _ctx164690_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id164692_ _rebind?164693_ _phi164694_)
        (let ((_ctx164696_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id164692_
           _rebind?164693_
           _phi164694_
           _ctx164696_))))
    (define gx#core-bind-runtime!
      (lambda _g171519_
        (let ((_g171518_ (##length _g171519_)))
          (cond ((##fx= _g171518_ 1)
                 (apply (lambda (_id164677_)
                          (gx#core-bind-runtime!__0 _id164677_))
                        _g171519_))
                ((##fx= _g171518_ 2)
                 (apply (lambda (_id164685_ _rebind?164686_)
                          (gx#core-bind-runtime!__1
                           _id164685_
                           _rebind?164686_))
                        _g171519_))
                ((##fx= _g171518_ 3)
                 (apply (lambda (_id164692_ _rebind?164693_ _phi164694_)
                          (gx#core-bind-runtime!__2
                           _id164692_
                           _rebind?164693_
                           _phi164694_))
                        _g171519_))
                ((##fx= _g171518_ 4)
                 (apply (lambda (_id164698_
                                 _rebind?164699_
                                 _phi164700_
                                 _ctx164701_)
                          (gx#core-bind-runtime!__%
                           _id164698_
                           _rebind?164699_
                           _phi164700_
                           _ctx164701_))
                        _g171519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g171519_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id164617_ _eid164618_ _rebind?164619_ _phi164620_ _ctx164621_)
        (let* ((_key164623_ (gx#core-identifier-key _id164617_))
               (_bind164625_
                (if (##structure-instance-of?
                     _ctx164621_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid164618_
                     _key164623_
                     _phi164620_
                     _ctx164621_)
                    (if (##structure-instance-of?
                         _ctx164621_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid164618_
                         _key164623_
                         _phi164620_)
                        (##structure
                         gx#runtime-binding::t
                         _eid164618_
                         _key164623_
                         _phi164620_)))))
          (gx#bind-identifier!__%
           _id164617_
           _bind164625_
           _rebind?164619_
           _phi164620_
           _ctx164621_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id164631_ _eid164632_)
        (let* ((_rebind?164634_ '#f)
               (_phi164636_ (gx#current-expander-phi))
               (_ctx164638_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id164631_
           _eid164632_
           _rebind?164634_
           _phi164636_
           _ctx164638_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id164640_ _eid164641_ _rebind?164642_)
        (let* ((_phi164644_ (gx#current-expander-phi))
               (_ctx164646_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id164640_
           _eid164641_
           _rebind?164642_
           _phi164644_
           _ctx164646_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id164648_ _eid164649_ _rebind?164650_ _phi164651_)
        (let ((_ctx164653_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id164648_
           _eid164649_
           _rebind?164650_
           _phi164651_
           _ctx164653_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g171521_
        (let ((_g171520_ (##length _g171521_)))
          (cond ((##fx= _g171520_ 2)
                 (apply (lambda (_id164631_ _eid164632_)
                          (gx#core-bind-runtime-reference!__0
                           _id164631_
                           _eid164632_))
                        _g171521_))
                ((##fx= _g171520_ 3)
                 (apply (lambda (_id164640_ _eid164641_ _rebind?164642_)
                          (gx#core-bind-runtime-reference!__1
                           _id164640_
                           _eid164641_
                           _rebind?164642_))
                        _g171521_))
                ((##fx= _g171520_ 4)
                 (apply (lambda (_id164648_
                                 _eid164649_
                                 _rebind?164650_
                                 _phi164651_)
                          (gx#core-bind-runtime-reference!__2
                           _id164648_
                           _eid164649_
                           _rebind?164650_
                           _phi164651_))
                        _g171521_))
                ((##fx= _g171520_ 5)
                 (apply (lambda (_id164655_
                                 _eid164656_
                                 _rebind?164657_
                                 _phi164658_
                                 _ctx164659_)
                          (gx#core-bind-runtime-reference!__%
                           _id164655_
                           _eid164656_
                           _rebind?164657_
                           _phi164658_
                           _ctx164659_))
                        _g171521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g171521_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id164577_ _eid164578_ _rebind?164579_ _phi164580_ _ctx164581_)
        (gx#bind-identifier!__%
         _id164577_
         (##structure
          gx#extern-binding::t
          _eid164578_
          (gx#core-identifier-key _id164577_)
          _phi164580_)
         _rebind?164579_
         _phi164580_
         _ctx164581_)))
    (define gx#core-bind-extern!__0
      (lambda (_id164586_ _eid164587_)
        (let* ((_rebind?164589_ '#f)
               (_phi164591_ (gx#current-expander-phi))
               (_ctx164593_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id164586_
           _eid164587_
           _rebind?164589_
           _phi164591_
           _ctx164593_))))
    (define gx#core-bind-extern!__1
      (lambda (_id164595_ _eid164596_ _rebind?164597_)
        (let* ((_phi164599_ (gx#current-expander-phi))
               (_ctx164601_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id164595_
           _eid164596_
           _rebind?164597_
           _phi164599_
           _ctx164601_))))
    (define gx#core-bind-extern!__2
      (lambda (_id164603_ _eid164604_ _rebind?164605_ _phi164606_)
        (let ((_ctx164608_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id164603_
           _eid164604_
           _rebind?164605_
           _phi164606_
           _ctx164608_))))
    (define gx#core-bind-extern!
      (lambda _g171523_
        (let ((_g171522_ (##length _g171523_)))
          (cond ((##fx= _g171522_ 2)
                 (apply (lambda (_id164586_ _eid164587_)
                          (gx#core-bind-extern!__0 _id164586_ _eid164587_))
                        _g171523_))
                ((##fx= _g171522_ 3)
                 (apply (lambda (_id164595_ _eid164596_ _rebind?164597_)
                          (gx#core-bind-extern!__1
                           _id164595_
                           _eid164596_
                           _rebind?164597_))
                        _g171523_))
                ((##fx= _g171522_ 4)
                 (apply (lambda (_id164603_
                                 _eid164604_
                                 _rebind?164605_
                                 _phi164606_)
                          (gx#core-bind-extern!__2
                           _id164603_
                           _eid164604_
                           _rebind?164605_
                           _phi164606_))
                        _g171523_))
                ((##fx= _g171522_ 5)
                 (apply (lambda (_id164610_
                                 _eid164611_
                                 _rebind?164612_
                                 _phi164613_
                                 _ctx164614_)
                          (gx#core-bind-extern!__%
                           _id164610_
                           _eid164611_
                           _rebind?164612_
                           _phi164613_
                           _ctx164614_))
                        _g171523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g171523_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id164531_ _e164532_ _rebind?164533_ _phi164534_ _ctx164535_)
        (gx#bind-identifier!__%
         _id164531_
         (let ((_key164540_ (gx#core-identifier-key _id164531_))
               (_e164541_
                (if (or (##structure-instance-of? _e164532_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e164532_
                         'gx#expander-context::t))
                    _e164532_
                    (##structure
                     gx#user-expander::t
                     _e164532_
                     _ctx164535_
                     _phi164534_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key164540_ '#t _phi164534_ _ctx164535_)
            _key164540_
            _phi164534_
            _e164541_))
         _rebind?164533_
         _phi164534_
         _ctx164535_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id164546_ _e164547_)
        (let* ((_rebind?164549_ '#f)
               (_phi164551_ (gx#current-expander-phi))
               (_ctx164553_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id164546_
           _e164547_
           _rebind?164549_
           _phi164551_
           _ctx164553_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id164555_ _e164556_ _rebind?164557_)
        (let* ((_phi164559_ (gx#current-expander-phi))
               (_ctx164561_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id164555_
           _e164556_
           _rebind?164557_
           _phi164559_
           _ctx164561_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id164563_ _e164564_ _rebind?164565_ _phi164566_)
        (let ((_ctx164568_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id164563_
           _e164564_
           _rebind?164565_
           _phi164566_
           _ctx164568_))))
    (define gx#core-bind-syntax!
      (lambda _g171525_
        (let ((_g171524_ (##length _g171525_)))
          (cond ((##fx= _g171524_ 2)
                 (apply (lambda (_id164546_ _e164547_)
                          (gx#core-bind-syntax!__0 _id164546_ _e164547_))
                        _g171525_))
                ((##fx= _g171524_ 3)
                 (apply (lambda (_id164555_ _e164556_ _rebind?164557_)
                          (gx#core-bind-syntax!__1
                           _id164555_
                           _e164556_
                           _rebind?164557_))
                        _g171525_))
                ((##fx= _g171524_ 4)
                 (apply (lambda (_id164563_
                                 _e164564_
                                 _rebind?164565_
                                 _phi164566_)
                          (gx#core-bind-syntax!__2
                           _id164563_
                           _e164564_
                           _rebind?164565_
                           _phi164566_))
                        _g171525_))
                ((##fx= _g171524_ 5)
                 (apply (lambda (_id164570_
                                 _e164571_
                                 _rebind?164572_
                                 _phi164573_
                                 _ctx164574_)
                          (gx#core-bind-syntax!__%
                           _id164570_
                           _e164571_
                           _rebind?164572_
                           _phi164573_
                           _ctx164574_))
                        _g171525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g171525_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id164514_ _e164515_ _rebind?164516_)
        (gx#core-bind-syntax!__%
         _id164514_
         _e164515_
         _rebind?164516_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id164521_ _e164522_)
        (let ((_rebind?164524_ '#f))
          (gx#core-bind-root-syntax!__%
           _id164521_
           _e164522_
           _rebind?164524_))))
    (define gx#core-bind-root-syntax!
      (lambda _g171527_
        (let ((_g171526_ (##length _g171527_)))
          (cond ((##fx= _g171526_ 2)
                 (apply (lambda (_id164521_ _e164522_)
                          (gx#core-bind-root-syntax!__0 _id164521_ _e164522_))
                        _g171527_))
                ((##fx= _g171526_ 3)
                 (apply (lambda (_id164526_ _e164527_ _rebind?164528_)
                          (gx#core-bind-root-syntax!__%
                           _id164526_
                           _e164527_
                           _rebind?164528_))
                        _g171527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g171527_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id164472_
               _alias-id164473_
               _rebind?164474_
               _phi164475_
               _ctx164476_)
        (gx#bind-identifier!__%
         _id164472_
         (let ((_key164478_ (gx#core-identifier-key _id164472_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key164478_ '#t _phi164475_ _ctx164476_)
            _key164478_
            _phi164475_
            _alias-id164473_))
         _rebind?164474_
         _phi164475_
         _ctx164476_)))
    (define gx#core-bind-alias!__0
      (lambda (_id164483_ _alias-id164484_)
        (let* ((_rebind?164486_ '#f)
               (_phi164488_ (gx#current-expander-phi))
               (_ctx164490_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id164483_
           _alias-id164484_
           _rebind?164486_
           _phi164488_
           _ctx164490_))))
    (define gx#core-bind-alias!__1
      (lambda (_id164492_ _alias-id164493_ _rebind?164494_)
        (let* ((_phi164496_ (gx#current-expander-phi))
               (_ctx164498_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id164492_
           _alias-id164493_
           _rebind?164494_
           _phi164496_
           _ctx164498_))))
    (define gx#core-bind-alias!__2
      (lambda (_id164500_ _alias-id164501_ _rebind?164502_ _phi164503_)
        (let ((_ctx164505_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id164500_
           _alias-id164501_
           _rebind?164502_
           _phi164503_
           _ctx164505_))))
    (define gx#core-bind-alias!
      (lambda _g171529_
        (let ((_g171528_ (##length _g171529_)))
          (cond ((##fx= _g171528_ 2)
                 (apply (lambda (_id164483_ _alias-id164484_)
                          (gx#core-bind-alias!__0 _id164483_ _alias-id164484_))
                        _g171529_))
                ((##fx= _g171528_ 3)
                 (apply (lambda (_id164492_ _alias-id164493_ _rebind?164494_)
                          (gx#core-bind-alias!__1
                           _id164492_
                           _alias-id164493_
                           _rebind?164494_))
                        _g171529_))
                ((##fx= _g171528_ 4)
                 (apply (lambda (_id164500_
                                 _alias-id164501_
                                 _rebind?164502_
                                 _phi164503_)
                          (gx#core-bind-alias!__2
                           _id164500_
                           _alias-id164501_
                           _rebind?164502_
                           _phi164503_))
                        _g171529_))
                ((##fx= _g171528_ 5)
                 (apply (lambda (_id164507_
                                 _alias-id164508_
                                 _rebind?164509_
                                 _phi164510_
                                 _ctx164511_)
                          (gx#core-bind-alias!__%
                           _id164507_
                           _alias-id164508_
                           _rebind?164509_
                           _phi164510_
                           _ctx164511_))
                        _g171529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g171529_))))))
    (define gx#make-binding-id__%
      (lambda (_key164429_ _syntax?164430_ _phi164431_ _ctx164432_)
        (if (uninterned-symbol? _key164429_)
            (gensym 'L)
            (if (pair? _key164429_)
                (gensym (car _key164429_))
                (if (##structure-instance-of? _ctx164432_ 'gx#top-context::t)
                    (let ((_ns164434_
                           (gx#core-context-namespace__% _ctx164432_)))
                      (if (and (fxzero? _phi164431_) (not _syntax?164430_))
                          (if _ns164434_
                              (make-symbol__1 _ns164434_ '"#" _key164429_)
                              _key164429_)
                          (if _syntax?164430_
                              (make-symbol__1
                               (let ((_$e164436_ _ns164434_))
                                 (if _$e164436_ _$e164436_ '""))
                               '"[:"
                               (number->string _phi164431_)
                               '":]#"
                               _key164429_)
                              (make-symbol__1
                               (let ((_$e164439_ _ns164434_))
                                 (if _$e164439_ _$e164439_ '""))
                               '"["
                               (number->string _phi164431_)
                               '"]#"
                               _key164429_))))
                    (gensym _key164429_))))))
    (define gx#make-binding-id__0
      (lambda (_key164445_)
        (let* ((_syntax?164447_ '#f)
               (_phi164449_ (gx#current-expander-phi))
               (_ctx164451_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key164445_
           _syntax?164447_
           _phi164449_
           _ctx164451_))))
    (define gx#make-binding-id__1
      (lambda (_key164453_ _syntax?164454_)
        (let* ((_phi164456_ (gx#current-expander-phi))
               (_ctx164458_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key164453_
           _syntax?164454_
           _phi164456_
           _ctx164458_))))
    (define gx#make-binding-id__2
      (lambda (_key164460_ _syntax?164461_ _phi164462_)
        (let ((_ctx164464_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key164460_
           _syntax?164461_
           _phi164462_
           _ctx164464_))))
    (define gx#make-binding-id
      (lambda _g171531_
        (let ((_g171530_ (##length _g171531_)))
          (cond ((##fx= _g171530_ 1)
                 (apply (lambda (_key164445_)
                          (gx#make-binding-id__0 _key164445_))
                        _g171531_))
                ((##fx= _g171530_ 2)
                 (apply (lambda (_key164453_ _syntax?164454_)
                          (gx#make-binding-id__1 _key164453_ _syntax?164454_))
                        _g171531_))
                ((##fx= _g171530_ 3)
                 (apply (lambda (_key164460_ _syntax?164461_ _phi164462_)
                          (gx#make-binding-id__2
                           _key164460_
                           _syntax?164461_
                           _phi164462_))
                        _g171531_))
                ((##fx= _g171530_ 4)
                 (apply (lambda (_key164466_
                                 _syntax?164467_
                                 _phi164468_
                                 _ctx164469_)
                          (gx#make-binding-id__%
                           _key164466_
                           _syntax?164467_
                           _phi164468_
                           _ctx164469_))
                        _g171531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g171531_))))))))
