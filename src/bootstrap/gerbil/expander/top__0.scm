(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708289481)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx167256_)
        (letrec ((_expand-special167258_
                  (lambda (_hd167260_ _K167261_ _rest167262_ _r167263_)
                    (_K167261_
                     _rest167262_
                     (cons (gx#core-expand-top _hd167260_) _r167263_)))))
          (gx#core-expand-block__0 _stx167256_ _expand-special167258_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx167009_)
        (letrec ((_expand-special167011_
                  (lambda (_hd167131_ _K167132_ _rest167133_ _r167134_)
                    (let* ((_K167138_
                            (lambda (_e167136_)
                              (_K167132_
                               _rest167133_
                               (cons _e167136_ _r167134_))))
                           (_e167139167168_ _hd167131_)
                           (_E167163167172_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e167139167168_)))
                           (_E167159167184_
                            (lambda ()
                              (if (gx#stx-pair? _e167139167168_)
                                  (let ((_e167164167176_
                                         (gx#syntax-e _e167139167168_)))
                                    (let ((_hd167165167179_
                                           (##car _e167164167176_))
                                          (_tl167166167181_
                                           (##cdr _e167164167176_)))
                                      (if (and (gx#identifier?
                                                _hd167165167179_)
                                               (gx#core-identifier=?
                                                _hd167165167179_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K167138_
                                               (gx#core-expand-define-runtime%
                                                _hd167131_))
                                              (_E167163167172_))
                                          (_E167163167172_))))
                                  (_E167163167172_))))
                           (_E167155167196_
                            (lambda ()
                              (if (gx#stx-pair? _e167139167168_)
                                  (let ((_e167160167188_
                                         (gx#syntax-e _e167139167168_)))
                                    (let ((_hd167161167191_
                                           (##car _e167160167188_))
                                          (_tl167162167193_
                                           (##cdr _e167160167188_)))
                                      (if (and (gx#identifier?
                                                _hd167161167191_)
                                               (gx#core-identifier=?
                                                _hd167161167191_
                                                '%#define-alias))
                                          (if '#t
                                              (_K167138_
                                               (gx#core-expand-define-alias%
                                                _hd167131_))
                                              (_E167159167184_))
                                          (_E167159167184_))))
                                  (_E167159167184_))))
                           (_E167145167208_
                            (lambda ()
                              (if (gx#stx-pair? _e167139167168_)
                                  (let ((_e167156167200_
                                         (gx#syntax-e _e167139167168_)))
                                    (let ((_hd167157167203_
                                           (##car _e167156167200_))
                                          (_tl167158167205_
                                           (##cdr _e167156167200_)))
                                      (if (and (gx#identifier?
                                                _hd167157167203_)
                                               (gx#core-identifier=?
                                                _hd167157167203_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K167138_
                                               (gx#core-expand-define-syntax%
                                                _hd167131_))
                                              (_E167155167196_))
                                          (_E167155167196_))))
                                  (_E167155167196_))))
                           (_E167141167240_
                            (lambda ()
                              (if (gx#stx-pair? _e167139167168_)
                                  (let ((_e167146167212_
                                         (gx#syntax-e _e167139167168_)))
                                    (let ((_hd167147167215_
                                           (##car _e167146167212_))
                                          (_tl167148167217_
                                           (##cdr _e167146167212_)))
                                      (if (and (gx#identifier?
                                                _hd167147167215_)
                                               (gx#core-identifier=?
                                                _hd167147167215_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl167148167217_)
                                              (let ((_e167149167220_
                                                     (gx#syntax-e
                                                      _tl167148167217_)))
                                                (let ((_hd167150167223_
                                                       (##car _e167149167220_))
                                                      (_tl167151167225_
                                                       (##cdr _e167149167220_)))
                                                  (let ((_hd-bind167228_
                                                         _hd167150167223_))
                                                    (if (gx#stx-pair?
                                                         _tl167151167225_)
                                                        (let ((_e167152167230_
                                                               (gx#syntax-e
                                                                _tl167151167225_)))
                                                          (let ((_hd167153167233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e167152167230_))
                        (_tl167154167235_ (##cdr _e167152167230_)))
                    (let ((_expr167238_ _hd167153167233_))
                      (if (gx#stx-null? _tl167154167235_)
                          (if (gx#core-bind-values? _hd-bind167228_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind167228_)
                                (_K167138_ _hd167131_))
                              (_E167145167208_))
                          (_E167145167208_)))))
                (_E167145167208_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E167145167208_))
                                          (_E167145167208_))))
                                  (_E167145167208_))))
                           (_E167140167252_
                            (lambda ()
                              (if (gx#stx-pair? _e167139167168_)
                                  (let ((_e167142167244_
                                         (gx#syntax-e _e167139167168_)))
                                    (let ((_hd167143167247_
                                           (##car _e167142167244_))
                                          (_tl167144167249_
                                           (##cdr _e167142167244_)))
                                      (if (and (gx#identifier?
                                                _hd167143167247_)
                                               (gx#core-identifier=?
                                                _hd167143167247_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K167138_
                                               (gx#core-expand-begin-syntax%
                                                _hd167131_))
                                              (_E167141167240_))
                                          (_E167141167240_))))
                                  (_E167141167240_)))))
                      (_E167140167252_))))
                 (_eval-body167012_
                  (lambda (_rbody167020_)
                    (let _lp167022_ ((_rest167024_ _rbody167020_)
                                     (_body167025_ '())
                                     (_ebody167026_ '()))
                      (let* ((_rest167027167035_ _rest167024_)
                             (_else167029167043_
                              (lambda ()
                                (values _body167025_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody167026_)
                                          (gx#stx-source _stx167009_))))))
                             (_K167031167119_
                              (lambda (_rest167046_ _hd167047_)
                                (let* ((_e167048167065_ _hd167047_)
                                       (_E167060167069_
                                        (lambda ()
                                          (_lp167022_
                                           _rest167046_
                                           (cons _hd167047_ _body167025_)
                                           (cons _hd167047_ _ebody167026_))))
                                       (_E167050167081_
                                        (lambda ()
                                          (if (gx#stx-pair? _e167048167065_)
                                              (let ((_e167061167073_
                                                     (gx#syntax-e
                                                      _e167048167065_)))
                                                (let ((_hd167062167076_
                                                       (##car _e167061167073_))
                                                      (_tl167063167078_
                                                       (##cdr _e167061167073_)))
                                                  (if (and (gx#identifier?
                                                            _hd167062167076_)
                                                           (gx#core-identifier=?
                                                            _hd167062167076_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp167022_
                                                           _rest167046_
                                                           (cons _hd167047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body167025_)
                   _ebody167026_)
                  (_E167060167069_))
              (_E167060167069_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E167060167069_))))
                                       (_E167049167115_
                                        (lambda ()
                                          (if (gx#stx-pair? _e167048167065_)
                                              (let ((_e167051167085_
                                                     (gx#syntax-e
                                                      _e167048167065_)))
                                                (let ((_hd167052167088_
                                                       (##car _e167051167085_))
                                                      (_tl167053167090_
                                                       (##cdr _e167051167085_)))
                                                  (if (and (gx#identifier?
                                                            _hd167052167088_)
                                                           (gx#core-identifier=?
                                                            _hd167052167088_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl167053167090_)
                                                          (let ((_e167054167093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl167053167090_)))
                    (let ((_hd167055167096_ (##car _e167054167093_))
                          (_tl167056167098_ (##cdr _e167054167093_)))
                      (let ((_hd-bind167101_ _hd167055167096_))
                        (if (gx#stx-pair? _tl167056167098_)
                            (let ((_e167057167103_
                                   (gx#syntax-e _tl167056167098_)))
                              (let ((_hd167058167106_ (##car _e167057167103_))
                                    (_tl167059167108_ (##cdr _e167057167103_)))
                                (let ((_expr167111_ _hd167058167106_))
                                  (if (gx#stx-null? _tl167059167108_)
                                      (if '#t
                                          (let ((_ehd167113_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind167101_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr167111_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd167047_))))
                                            (_lp167022_
                                             _rest167046_
                                             (cons _ehd167113_ _body167025_)
                                             (cons _ehd167113_ _ebody167026_)))
                                          (_E167050167081_))
                                      (_E167050167081_)))))
                            (_E167050167081_)))))
                  (_E167050167081_))
              (_E167050167081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E167050167081_)))))
                                  (_E167049167115_)))))
                        (if (##pair? _rest167027167035_)
                            (let ((_hd167032167122_ (##car _rest167027167035_))
                                  (_tl167033167124_
                                   (##cdr _rest167027167035_)))
                              (let* ((_hd167127_ _hd167032167122_)
                                     (_rest167129_ _tl167033167124_))
                                (_K167031167119_ _rest167129_ _hd167127_)))
                            (_else167029167043_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody167015_
                     (gx#core-expand-block__1
                      _stx167009_
                      _expand-special167011_
                      '#f))
                    (_g171346_ (_eval-body167012_ _rbody167015_)))
               (begin
                 (let ((_g171347_
                        (if (##values? _g171346_)
                            (##vector-length _g171346_)
                            1)))
                   (if (not (##fx= _g171347_ 2))
                       (error "Context expects 2 values" _g171347_)))
                 (let ((_expanded-body167017_ (##vector-ref _g171346_ 0))
                       (_value167018_ (##vector-ref _g171346_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body167017_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value167018_ '())))
                    (gx#stx-source _stx167009_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx166979_)
        (let* ((_e166980166987_ _stx166979_)
               (_E166982166991_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166980166987_)))
               (_E166981167005_
                (lambda ()
                  (if (gx#stx-pair? _e166980166987_)
                      (let ((_e166983166995_ (gx#syntax-e _e166980166987_)))
                        (let ((_hd166984166998_ (##car _e166983166995_))
                              (_tl166985167000_ (##cdr _e166983166995_)))
                          (let ((_body167003_ _tl166985167000_))
                            (if (gx#stx-list? _body167003_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body167003_)
                                 (gx#stx-source _stx166979_))
                                (_E166982166991_)))))
                      (_E166982166991_)))))
          (_E166981167005_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx166977_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx166977_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx166923_)
        (let* ((_e166924166937_ _stx166923_)
               (_E166926166941_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166924166937_)))
               (_E166925166973_
                (lambda ()
                  (if (gx#stx-pair? _e166924166937_)
                      (let ((_e166927166945_ (gx#syntax-e _e166924166937_)))
                        (let ((_hd166928166948_ (##car _e166927166945_))
                              (_tl166929166950_ (##cdr _e166927166945_)))
                          (if (gx#stx-pair? _tl166929166950_)
                              (let ((_e166930166953_
                                     (gx#syntax-e _tl166929166950_)))
                                (let ((_hd166931166956_
                                       (##car _e166930166953_))
                                      (_tl166932166958_
                                       (##cdr _e166930166953_)))
                                  (let ((_ann166961_ _hd166931166956_))
                                    (if (gx#stx-pair? _tl166932166958_)
                                        (let ((_e166933166963_
                                               (gx#syntax-e _tl166932166958_)))
                                          (let ((_hd166934166966_
                                                 (##car _e166933166963_))
                                                (_tl166935166968_
                                                 (##cdr _e166933166963_)))
                                            (let ((_expr166971_
                                                   _hd166934166966_))
                                              (if (gx#stx-null?
                                                   _tl166935166968_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann166961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr166971_)
                                 '())))
               (gx#stx-source _stx166923_))
              (_E166926166941_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166926166941_)))))
                                        (_E166926166941_)))))
                              (_E166926166941_))))
                      (_E166926166941_)))))
          (_E166925166973_))))
    (define gx#core-expand-local-block
      (lambda (_stx166647_ _body166648_)
        (letrec ((_expand-special166650_
                  (lambda (_hd166918_ _K166919_ _rest166920_ _r166921_)
                    (_K166919_
                     '()
                     (cons (_expand-internal166651_ _hd166918_ _rest166920_)
                           _r166921_))))
                 (_expand-internal166651_
                  (lambda (_hd166914_ _rest166915_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal166653_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd166914_ _rest166915_))
                          (gx#stx-source _stx166647_))
                         _expand-internal-special166652_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj171340
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj171340)
                       __obj171340))))
                 (_expand-internal-special166652_
                  (lambda (_hd166809_ _K166810_ _rest166811_ _r166812_)
                    (let* ((_e166813166838_ _hd166809_)
                           (_E166833166842_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e166813166838_)))
                           (_E166829166854_
                            (lambda ()
                              (if (gx#stx-pair? _e166813166838_)
                                  (let ((_e166834166846_
                                         (gx#syntax-e _e166813166838_)))
                                    (let ((_hd166835166849_
                                           (##car _e166834166846_))
                                          (_tl166836166851_
                                           (##cdr _e166834166846_)))
                                      (if (and (gx#identifier?
                                                _hd166835166849_)
                                               (gx#core-identifier=?
                                                _hd166835166849_
                                                '%#declare))
                                          (if '#t
                                              (_K166810_
                                               _rest166811_
                                               (cons (gx#core-expand-declare%
                                                      _hd166809_)
                                                     _r166812_))
                                              (_E166833166842_))
                                          (_E166833166842_))))
                                  (_E166833166842_))))
                           (_E166825166866_
                            (lambda ()
                              (if (gx#stx-pair? _e166813166838_)
                                  (let ((_e166830166858_
                                         (gx#syntax-e _e166813166838_)))
                                    (let ((_hd166831166861_
                                           (##car _e166830166858_))
                                          (_tl166832166863_
                                           (##cdr _e166830166858_)))
                                      (if (and (gx#identifier?
                                                _hd166831166861_)
                                               (gx#core-identifier=?
                                                _hd166831166861_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd166809_)
                                                (_K166810_
                                                 _rest166811_
                                                 _r166812_))
                                              (_E166829166854_))
                                          (_E166829166854_))))
                                  (_E166829166854_))))
                           (_E166815166878_
                            (lambda ()
                              (if (gx#stx-pair? _e166813166838_)
                                  (let ((_e166826166870_
                                         (gx#syntax-e _e166813166838_)))
                                    (let ((_hd166827166873_
                                           (##car _e166826166870_))
                                          (_tl166828166875_
                                           (##cdr _e166826166870_)))
                                      (if (and (gx#identifier?
                                                _hd166827166873_)
                                               (gx#core-identifier=?
                                                _hd166827166873_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd166809_)
                                                (_K166810_
                                                 _rest166811_
                                                 _r166812_))
                                              (_E166825166866_))
                                          (_E166825166866_))))
                                  (_E166825166866_))))
                           (_E166814166910_
                            (lambda ()
                              (if (gx#stx-pair? _e166813166838_)
                                  (let ((_e166816166882_
                                         (gx#syntax-e _e166813166838_)))
                                    (let ((_hd166817166885_
                                           (##car _e166816166882_))
                                          (_tl166818166887_
                                           (##cdr _e166816166882_)))
                                      (if (and (gx#identifier?
                                                _hd166817166885_)
                                               (gx#core-identifier=?
                                                _hd166817166885_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl166818166887_)
                                              (let ((_e166819166890_
                                                     (gx#syntax-e
                                                      _tl166818166887_)))
                                                (let ((_hd166820166893_
                                                       (##car _e166819166890_))
                                                      (_tl166821166895_
                                                       (##cdr _e166819166890_)))
                                                  (let ((_hd-bind166898_
                                                         _hd166820166893_))
                                                    (if (gx#stx-pair?
                                                         _tl166821166895_)
                                                        (let ((_e166822166900_
                                                               (gx#syntax-e
                                                                _tl166821166895_)))
                                                          (let ((_hd166823166903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e166822166900_))
                        (_tl166824166905_ (##cdr _e166822166900_)))
                    (let ((_expr166908_ _hd166823166903_))
                      (if (gx#stx-null? _tl166824166905_)
                          (if (gx#core-bind-values? _hd-bind166898_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind166898_)
                                (_K166810_
                                 _rest166811_
                                 (cons _hd166809_ _r166812_)))
                              (_E166815166878_))
                          (_E166815166878_)))))
                (_E166815166878_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E166815166878_))
                                          (_E166815166878_))))
                                  (_E166815166878_)))))
                      (_E166814166910_))))
                 (_wrap-internal166653_
                  (lambda (_rbody166655_)
                    (let _lp166657_ ((_rest166659_ _rbody166655_)
                                     (_decls166660_ '())
                                     (_bind166661_ '())
                                     (_body166662_ '()))
                      (let* ((_e166663166670_ _rest166659_)
                             (_E166665166719_
                              (lambda ()
                                (let* ((_body166714_
                                        (let* ((_body166673166683_
                                                _body166662_)
                                               (_else166676166691_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body166662_)
                                                   (gx#stx-source
                                                    _stx166647_)))))
                                          (let ((_K166681166711_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx166647_)))
                                                (_K166678166697_
                                                 (lambda (_expr166695_)
                                                   _expr166695_)))
                                            (let ((_try-match166675166707_
                                                   (lambda ()
                                                     (if (##pair? _body166673166683_)
                                                         (let ((_tl166680166702_
                                                                (##cdr _body166673166683_))
                                                               (_hd166679166700_
                                                                (##car _body166673166683_)))
                                                           (if (##null? _tl166680166702_)
                                                               (let ((_expr166705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd166679166700_))
                         (_K166678166697_ _expr166705_))
                       (_else166676166691_)))
                 (_else166676166691_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body166673166683_)
                                                  (_K166681166711_)
                                                  (_try-match166675166707_))))))
                                       (_body166716_
                                        (if (null? _bind166661_)
                                            _body166714_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind166661_
                                                         (cons _body166714_
                                                               '())))
                                             (gx#stx-source _stx166647_)))))
                                  (if (null? _decls166660_)
                                      _body166716_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls166660_
                                                   (cons _body166716_ '())))
                                       (gx#stx-source _stx166647_))))))
                             (_E166664166805_
                              (lambda ()
                                (if (gx#stx-pair? _e166663166670_)
                                    (let ((_e166666166723_
                                           (gx#syntax-e _e166663166670_)))
                                      (let ((_hd166667166726_
                                             (##car _e166666166723_))
                                            (_tl166668166728_
                                             (##cdr _e166666166723_)))
                                        (let* ((_hd166731_ _hd166667166726_)
                                               (_rest166733_ _tl166668166728_))
                                          (if '#t
                                              (let* ((_e166734166751_
                                                      _hd166731_)
                                                     (_E166746166755_
                                                      (lambda ()
                                                        (if (null? _bind166661_)
                                                            (_lp166657_
                                                             _rest166733_
                                                             _decls166660_
                                                             _bind166661_
                                                             (cons _hd166731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body166662_))
                    (_lp166657_
                     _rest166733_
                     _decls166660_
                     (cons (cons '#f (cons _hd166731_ '())) _bind166661_)
                     _body166662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E166736166769_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e166734166751_)
                                                            (let ((_e166747166759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e166734166751_)))
                      (let ((_hd166748166762_ (##car _e166747166759_))
                            (_tl166749166764_ (##cdr _e166747166759_)))
                        (if (and (gx#identifier? _hd166748166762_)
                                 (gx#core-identifier=?
                                  _hd166748166762_
                                  '%#declare))
                            (let ((_xdecls166767_ _tl166749166764_))
                              (if '#t
                                  (_lp166657_
                                   _rest166733_
                                   (gx#stx-foldr
                                    cons
                                    _decls166660_
                                    _xdecls166767_)
                                   _bind166661_
                                   _body166662_)
                                  (_E166746166755_)))
                            (_E166746166755_))))
                    (_E166746166755_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E166735166801_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e166734166751_)
                                                            (let ((_e166737166773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e166734166751_)))
                      (let ((_hd166738166776_ (##car _e166737166773_))
                            (_tl166739166778_ (##cdr _e166737166773_)))
                        (if (and (gx#identifier? _hd166738166776_)
                                 (gx#core-identifier=?
                                  _hd166738166776_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl166739166778_)
                                (let ((_e166740166781_
                                       (gx#syntax-e _tl166739166778_)))
                                  (let ((_hd166741166784_
                                         (##car _e166740166781_))
                                        (_tl166742166786_
                                         (##cdr _e166740166781_)))
                                    (let ((_hd-bind166789_ _hd166741166784_))
                                      (if (gx#stx-pair? _tl166742166786_)
                                          (let ((_e166743166791_
                                                 (gx#syntax-e
                                                  _tl166742166786_)))
                                            (let ((_hd166744166794_
                                                   (##car _e166743166791_))
                                                  (_tl166745166796_
                                                   (##cdr _e166743166791_)))
                                              (let ((_expr166799_
                                                     _hd166744166794_))
                                                (if (gx#stx-null?
                                                     _tl166745166796_)
                                                    (if '#t
                                                        (_lp166657_
                                                         _rest166733_
                                                         _decls166660_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind166789_)
                             (cons (gx#core-expand-expression _expr166799_)
                                   '()))
                       _bind166661_)
                 _body166662_)
                (_E166736166769_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E166736166769_)))))
                                          (_E166736166769_)))))
                                (_E166736166769_))
                            (_E166736166769_))))
                    (_E166736166769_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E166735166801_))
                                              (_E166665166719_)))))
                                    (_E166665166719_)))))
                        (_E166664166805_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body166648_)
            (gx#stx-source _stx166647_))
           _expand-special166650_))))
    (define gx#core-expand-declare%
      (lambda (_stx166585_)
        (let* ((_e166586166593_ _stx166585_)
               (_E166588166597_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166586166593_)))
               (_E166587166643_
                (lambda ()
                  (if (gx#stx-pair? _e166586166593_)
                      (let ((_e166589166601_ (gx#syntax-e _e166586166593_)))
                        (let ((_hd166590166604_ (##car _e166589166601_))
                              (_tl166591166606_ (##cdr _e166589166601_)))
                          (let ((_body166609_ _tl166591166606_))
                            (if (gx#stx-list? _body166609_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl166611_)
                                     (let* ((_e166612166619_ _decl166611_)
                                            (_E166614166623_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e166612166619_)))
                                            (_E166613166639_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e166612166619_)
                                                   (let ((_e166615166627_
                                                          (gx#syntax-e
                                                           _e166612166619_)))
                                                     (let ((_hd166616166630_
                                                            (##car _e166615166627_))
                                                           (_tl166617166632_
                                                            (##cdr _e166615166627_)))
                                                       (let* ((_head166635_
                                                               _hd166616166630_)
                                                              (_args166637_
                                                               _tl166617166632_))
                                                         (if (gx#stx-list?
                                                              _args166637_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl166611_)
                                                             (_E166614166623_)))))
                                                   (_E166614166623_)))))
                                       (_E166613166639_)))
                                   _body166609_))
                                 (gx#stx-source _stx166585_))
                                (_E166588166597_)))))
                      (_E166588166597_)))))
          (_E166587166643_))))
    (define gx#core-expand-extern%
      (lambda (_stx166489_)
        (let* ((_e166490166497_ _stx166489_)
               (_E166492166501_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166490166497_)))
               (_E166491166581_
                (lambda ()
                  (if (gx#stx-pair? _e166490166497_)
                      (let ((_e166493166505_ (gx#syntax-e _e166490166497_)))
                        (let ((_hd166494166508_ (##car _e166493166505_))
                              (_tl166495166510_ (##cdr _e166493166505_)))
                          (let ((_body166513_ _tl166495166510_))
                            (if '#t
                                (let _lp166515_ ((_rest166517_ _body166513_)
                                                 (_r166518_ '()))
                                  (let* ((_e166519166533_ _rest166517_)
                                         (_E166531166537_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx166489_)))
                                         (_E166521166541_
                                          (lambda ()
                                            (if (gx#stx-null? _e166519166533_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r166518_))
                                                     (gx#stx-source
                                                      _stx166489_))
                                                    (_E166531166537_))
                                                (_E166531166537_))))
                                         (_E166520166577_
                                          (lambda ()
                                            (if (gx#stx-pair? _e166519166533_)
                                                (let ((_e166522166545_
                                                       (gx#syntax-e
                                                        _e166519166533_)))
                                                  (let ((_hd166523166548_
                                                         (##car _e166522166545_))
                                                        (_tl166524166550_
                                                         (##cdr _e166522166545_)))
                                                    (if (gx#stx-pair?
                                                         _hd166523166548_)
                                                        (let ((_e166525166553_
                                                               (gx#syntax-e
                                                                _hd166523166548_)))
                                                          (let ((_hd166526166556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e166525166553_))
                        (_tl166527166558_ (##cdr _e166525166553_)))
                    (let ((_id166561_ _hd166526166556_))
                      (if (gx#stx-pair? _tl166527166558_)
                          (let ((_e166528166563_
                                 (gx#syntax-e _tl166527166558_)))
                            (let ((_hd166529166566_ (##car _e166528166563_))
                                  (_tl166530166568_ (##cdr _e166528166563_)))
                              (let ((_eid166571_ _hd166529166566_))
                                (if (gx#stx-null? _tl166530166568_)
                                    (let ((_rest166573_ _tl166524166550_))
                                      (if (and (gx#identifier? _id166561_)
                                               (gx#identifier? _eid166571_))
                                          (let ((_eid166575_
                                                 (gx#stx-e _eid166571_)))
                                            (gx#core-bind-extern!__0
                                             _id166561_
                                             _eid166575_)
                                            (_lp166515_
                                             _rest166573_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id166561_)
                                                         (cons _eid166575_
                                                               '()))
                                                   _r166518_)))
                                          (_E166521166541_)))
                                    (_E166521166541_)))))
                          (_E166521166541_)))))
                (_E166521166541_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E166521166541_)))))
                                    (_E166520166577_)))
                                (_E166492166501_)))))
                      (_E166492166501_)))))
          (_E166491166581_))))
    (define gx#core-expand-define-values%
      (lambda (_stx166435_)
        (let* ((_e166436166449_ _stx166435_)
               (_E166438166453_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166436166449_)))
               (_E166437166485_
                (lambda ()
                  (if (gx#stx-pair? _e166436166449_)
                      (let ((_e166439166457_ (gx#syntax-e _e166436166449_)))
                        (let ((_hd166440166460_ (##car _e166439166457_))
                              (_tl166441166462_ (##cdr _e166439166457_)))
                          (if (gx#stx-pair? _tl166441166462_)
                              (let ((_e166442166465_
                                     (gx#syntax-e _tl166441166462_)))
                                (let ((_hd166443166468_
                                       (##car _e166442166465_))
                                      (_tl166444166470_
                                       (##cdr _e166442166465_)))
                                  (let ((_hd166473_ _hd166443166468_))
                                    (if (gx#stx-pair? _tl166444166470_)
                                        (let ((_e166445166475_
                                               (gx#syntax-e _tl166444166470_)))
                                          (let ((_hd166446166478_
                                                 (##car _e166445166475_))
                                                (_tl166447166480_
                                                 (##cdr _e166445166475_)))
                                            (let ((_expr166483_
                                                   _hd166446166478_))
                                              (if (gx#stx-null?
                                                   _tl166447166480_)
                                                  (if (gx#core-bind-values?
                                                       _hd166473_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd166473_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd166473_)
                             (cons (gx#core-expand-expression _expr166483_)
                                   '())))
                 (gx#stx-source _stx166435_)))
              (_E166438166453_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166438166453_)))))
                                        (_E166438166453_)))))
                              (_E166438166453_))))
                      (_E166438166453_)))))
          (_E166437166485_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx166379_)
        (let* ((_e166380166393_ _stx166379_)
               (_E166382166397_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166380166393_)))
               (_E166381166431_
                (lambda ()
                  (if (gx#stx-pair? _e166380166393_)
                      (let ((_e166383166401_ (gx#syntax-e _e166380166393_)))
                        (let ((_hd166384166404_ (##car _e166383166401_))
                              (_tl166385166406_ (##cdr _e166383166401_)))
                          (if (gx#stx-pair? _tl166385166406_)
                              (let ((_e166386166409_
                                     (gx#syntax-e _tl166385166406_)))
                                (let ((_hd166387166412_
                                       (##car _e166386166409_))
                                      (_tl166388166414_
                                       (##cdr _e166386166409_)))
                                  (let ((_id166417_ _hd166387166412_))
                                    (if (gx#stx-pair? _tl166388166414_)
                                        (let ((_e166389166419_
                                               (gx#syntax-e _tl166388166414_)))
                                          (let ((_hd166390166422_
                                                 (##car _e166389166419_))
                                                (_tl166391166424_
                                                 (##cdr _e166389166419_)))
                                            (let ((_binding-id166427_
                                                   _hd166390166422_))
                                              (if (gx#stx-null?
                                                   _tl166391166424_)
                                                  (if (and (gx#identifier?
                                                            _id166417_)
                                                           (gx#identifier?
                                                            _binding-id166427_))
                                                      (let ((_eid166429_
                                                             (gx#stx-e
                                                              _binding-id166427_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id166417_
                                                         _eid166429_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id166417_)
                             (cons _eid166429_ '())))))
              (_E166382166397_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166382166397_)))))
                                        (_E166382166397_)))))
                              (_E166382166397_))))
                      (_E166382166397_)))))
          (_E166381166431_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx166322_)
        (let* ((_e166323166336_ _stx166322_)
               (_E166325166340_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166323166336_)))
               (_E166324166375_
                (lambda ()
                  (if (gx#stx-pair? _e166323166336_)
                      (let ((_e166326166344_ (gx#syntax-e _e166323166336_)))
                        (let ((_hd166327166347_ (##car _e166326166344_))
                              (_tl166328166349_ (##cdr _e166326166344_)))
                          (if (gx#stx-pair? _tl166328166349_)
                              (let ((_e166329166352_
                                     (gx#syntax-e _tl166328166349_)))
                                (let ((_hd166330166355_
                                       (##car _e166329166352_))
                                      (_tl166331166357_
                                       (##cdr _e166329166352_)))
                                  (let ((_id166360_ _hd166330166355_))
                                    (if (gx#stx-pair? _tl166331166357_)
                                        (let ((_e166332166362_
                                               (gx#syntax-e _tl166331166357_)))
                                          (let ((_hd166333166365_
                                                 (##car _e166332166362_))
                                                (_tl166334166367_
                                                 (##cdr _e166332166362_)))
                                            (let ((_expr166370_
                                                   _hd166333166365_))
                                              (if (gx#stx-null?
                                                   _tl166334166367_)
                                                  (if (gx#identifier?
                                                       _id166360_)
                                                      (let ((_g171348_
                                                             (gx#core-expand-expression+1
                                                              _expr166370_)))
                                                        (begin
                                                          (let ((_g171349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g171348_)
                             (##vector-length _g171348_)
                             1)))
                    (if (not (##fx= _g171349_ 2))
                        (error "Context expects 2 values" _g171349_)))
                  (let ((_e-stx166372_ (##vector-ref _g171348_ 0))
                        (_e166373_ (##vector-ref _g171348_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id166360_ _e166373_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id166360_)
                                   (cons _e-stx166372_ '())))
                       (gx#stx-source _stx166322_))))))
              (_E166325166340_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166325166340_)))))
                                        (_E166325166340_)))))
                              (_E166325166340_))))
                      (_E166325166340_)))))
          (_E166324166375_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx166266_)
        (let* ((_e166267166280_ _stx166266_)
               (_E166269166284_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166267166280_)))
               (_E166268166318_
                (lambda ()
                  (if (gx#stx-pair? _e166267166280_)
                      (let ((_e166270166288_ (gx#syntax-e _e166267166280_)))
                        (let ((_hd166271166291_ (##car _e166270166288_))
                              (_tl166272166293_ (##cdr _e166270166288_)))
                          (if (gx#stx-pair? _tl166272166293_)
                              (let ((_e166273166296_
                                     (gx#syntax-e _tl166272166293_)))
                                (let ((_hd166274166299_
                                       (##car _e166273166296_))
                                      (_tl166275166301_
                                       (##cdr _e166273166296_)))
                                  (let ((_id166304_ _hd166274166299_))
                                    (if (gx#stx-pair? _tl166275166301_)
                                        (let ((_e166276166306_
                                               (gx#syntax-e _tl166275166301_)))
                                          (let ((_hd166277166309_
                                                 (##car _e166276166306_))
                                                (_tl166278166311_
                                                 (##cdr _e166276166306_)))
                                            (let ((_alias-id166314_
                                                   _hd166277166309_))
                                              (if (gx#stx-null?
                                                   _tl166278166311_)
                                                  (if (and (gx#identifier?
                                                            _id166304_)
                                                           (gx#identifier?
                                                            _alias-id166314_))
                                                      (let ((_alias-id166316_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id166314_)))
                                                        (gx#core-bind-alias!__0
                                                         _id166304_
                                                         _alias-id166316_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id166304_)
                             (cons _alias-id166316_ '())))))
              (_E166269166284_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E166269166284_)))))
                                        (_E166269166284_)))))
                              (_E166269166284_))))
                      (_E166269166284_)))))
          (_E166268166318_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx166209_ _wrap?166210_)
        (let* ((_e166211166221_ _stx166209_)
               (_E166213166225_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166211166221_)))
               (_E166212166252_
                (lambda ()
                  (if (gx#stx-pair? _e166211166221_)
                      (let ((_e166214166229_ (gx#syntax-e _e166211166221_)))
                        (let ((_hd166215166232_ (##car _e166214166229_))
                              (_tl166216166234_ (##cdr _e166214166229_)))
                          (if (gx#stx-pair? _tl166216166234_)
                              (let ((_e166217166237_
                                     (gx#syntax-e _tl166216166234_)))
                                (let ((_hd166218166240_
                                       (##car _e166217166237_))
                                      (_tl166219166242_
                                       (##cdr _e166217166237_)))
                                  (let* ((_hd166245_ _hd166218166240_)
                                         (_body166247_ _tl166219166242_))
                                    (if (gx#core-bind-values? _hd166245_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd166245_)
                                           (let ((_body166250_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd166245_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx166209_
                                                               _body166247_)
                                                              '()))))
                                             (if _wrap?166210_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body166250_)
                                                  (gx#stx-source _stx166209_))
                                                 _body166250_)))
                                         gx#current-expander-context
                                         (let ((__obj171341
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj171341)
                                           __obj171341))
                                        (_E166213166225_)))))
                              (_E166213166225_))))
                      (_E166213166225_)))))
          (_E166212166252_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx166259_)
        (let ((_wrap?166261_ '#t))
          (gx#core-expand-lambda%__% _stx166259_ _wrap?166261_))))
    (define gx#core-expand-lambda%
      (lambda _g171351_
        (let ((_g171350_ (##length _g171351_)))
          (cond ((##fx= _g171350_ 1)
                 (apply (lambda (_stx166259_)
                          (gx#core-expand-lambda%__0 _stx166259_))
                        _g171351_))
                ((##fx= _g171350_ 2)
                 (apply (lambda (_stx166263_ _wrap?166264_)
                          (gx#core-expand-lambda%__%
                           _stx166263_
                           _wrap?166264_))
                        _g171351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g171351_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx166173_)
        (let* ((_e166174166181_ _stx166173_)
               (_E166176166185_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166174166181_)))
               (_E166175166204_
                (lambda ()
                  (if (gx#stx-pair? _e166174166181_)
                      (let ((_e166177166189_ (gx#syntax-e _e166174166181_)))
                        (let ((_hd166178166192_ (##car _e166177166189_))
                              (_tl166179166194_ (##cdr _e166177166189_)))
                          (let ((_clauses166197_ _tl166179166194_))
                            (if (gx#stx-list? _clauses166197_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause166199_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause166199_)
                                       (let ((_$e166201_
                                              (gx#stx-source _clause166199_)))
                                         (if _$e166201_
                                             _$e166201_
                                             (gx#stx-source _stx166173_))))
                                      '#f))
                                   _clauses166197_))
                                 (gx#stx-source _stx166173_))
                                (_E166176166185_)))))
                      (_E166176166185_)))))
          (_E166175166204_))))
    (define gx#core-expand-let-values%
      (lambda (_stx166127_)
        (let* ((_e166128166138_ _stx166127_)
               (_E166130166142_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166128166138_)))
               (_E166129166169_
                (lambda ()
                  (if (gx#stx-pair? _e166128166138_)
                      (let ((_e166131166146_ (gx#syntax-e _e166128166138_)))
                        (let ((_hd166132166149_ (##car _e166131166146_))
                              (_tl166133166151_ (##cdr _e166131166146_)))
                          (if (gx#stx-pair? _tl166133166151_)
                              (let ((_e166134166154_
                                     (gx#syntax-e _tl166133166151_)))
                                (let ((_hd166135166157_
                                       (##car _e166134166154_))
                                      (_tl166136166159_
                                       (##cdr _e166134166154_)))
                                  (let* ((_hd166162_ _hd166135166157_)
                                         (_body166164_ _tl166136166159_))
                                    (if (gx#core-expand-let-bind? _hd166162_)
                                        (let ((_expressions166166_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd166162_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd166162_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd166162_
                                                           _expressions166166_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx166127_
                         _body166164_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx166127_)))
                                           gx#current-expander-context
                                           (let ((__obj171342
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj171342)
                                             __obj171342)))
                                        (_E166130166142_)))))
                              (_E166130166142_))))
                      (_E166130166142_)))))
          (_E166129166169_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx166072_ _form166073_)
        (let* ((_e166074166084_ _stx166072_)
               (_E166076166088_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e166074166084_)))
               (_E166075166113_
                (lambda ()
                  (if (gx#stx-pair? _e166074166084_)
                      (let ((_e166077166092_ (gx#syntax-e _e166074166084_)))
                        (let ((_hd166078166095_ (##car _e166077166092_))
                              (_tl166079166097_ (##cdr _e166077166092_)))
                          (if (gx#stx-pair? _tl166079166097_)
                              (let ((_e166080166100_
                                     (gx#syntax-e _tl166079166097_)))
                                (let ((_hd166081166103_
                                       (##car _e166080166100_))
                                      (_tl166082166105_
                                       (##cdr _e166080166100_)))
                                  (let* ((_hd166108_ _hd166081166103_)
                                         (_body166110_ _tl166082166105_))
                                    (if (gx#core-expand-let-bind? _hd166108_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd166108_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form166073_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd166108_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd166108_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx166072_
                                                               _body166110_)
                                                              '())))
                                            (gx#stx-source _stx166072_)))
                                         gx#current-expander-context
                                         (let ((__obj171343
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj171343)
                                           __obj171343))
                                        (_E166076166088_)))))
                              (_E166076166088_))))
                      (_E166076166088_)))))
          (_E166075166113_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx166120_)
        (let ((_form166122_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx166120_ _form166122_))))
    (define gx#core-expand-letrec-values%
      (lambda _g171353_
        (let ((_g171352_ (##length _g171353_)))
          (cond ((##fx= _g171352_ 1)
                 (apply (lambda (_stx166120_)
                          (gx#core-expand-letrec-values%__0 _stx166120_))
                        _g171353_))
                ((##fx= _g171352_ 2)
                 (apply (lambda (_stx166124_ _form166125_)
                          (gx#core-expand-letrec-values%__%
                           _stx166124_
                           _form166125_))
                        _g171353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g171353_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx166069_)
        (gx#core-expand-letrec-values%__% _stx166069_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx166026_)
        (if (gx#stx-list? _stx166026_)
            (gx#stx-andmap
             (lambda (_bind166028_)
               (let* ((_e166029166039_ _bind166028_)
                      (_E166031166043_ (lambda () '#f))
                      (_E166030166065_
                       (lambda ()
                         (if (gx#stx-pair? _e166029166039_)
                             (let ((_e166032166047_
                                    (gx#syntax-e _e166029166039_)))
                               (let ((_hd166033166050_ (##car _e166032166047_))
                                     (_tl166034166052_
                                      (##cdr _e166032166047_)))
                                 (let ((_hd166055_ _hd166033166050_))
                                   (if (gx#stx-pair? _tl166034166052_)
                                       (let ((_e166035166057_
                                              (gx#syntax-e _tl166034166052_)))
                                         (let ((_hd166036166060_
                                                (##car _e166035166057_))
                                               (_tl166037166062_
                                                (##cdr _e166035166057_)))
                                           (if (gx#stx-null? _tl166037166062_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd166055_)
                                                   (_E166031166043_))
                                               (_E166031166043_))))
                                       (_E166031166043_)))))
                             (_E166031166043_)))))
                 (_E166030166065_)))
             _stx166026_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind165985_)
        (let* ((_e165986165996_ _bind165985_)
               (_E165988166000_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165986165996_)))
               (_E165987166022_
                (lambda ()
                  (if (gx#stx-pair? _e165986165996_)
                      (let ((_e165989166004_ (gx#syntax-e _e165986165996_)))
                        (let ((_hd165990166007_ (##car _e165989166004_))
                              (_tl165991166009_ (##cdr _e165989166004_)))
                          (if (gx#stx-pair? _tl165991166009_)
                              (let ((_e165992166012_
                                     (gx#syntax-e _tl165991166009_)))
                                (let ((_hd165993166015_
                                       (##car _e165992166012_))
                                      (_tl165994166017_
                                       (##cdr _e165992166012_)))
                                  (let ((_expr166020_ _hd165993166015_))
                                    (if (gx#stx-null? _tl165994166017_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr166020_)
                                            (_E165988166000_))
                                        (_E165988166000_)))))
                              (_E165988166000_))))
                      (_E165988166000_)))))
          (_E165987166022_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind165944_)
        (let* ((_e165945165955_ _bind165944_)
               (_E165947165959_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165945165955_)))
               (_E165946165981_
                (lambda ()
                  (if (gx#stx-pair? _e165945165955_)
                      (let ((_e165948165963_ (gx#syntax-e _e165945165955_)))
                        (let ((_hd165949165966_ (##car _e165948165963_))
                              (_tl165950165968_ (##cdr _e165948165963_)))
                          (let ((_hd165971_ _hd165949165966_))
                            (if (gx#stx-pair? _tl165950165968_)
                                (let ((_e165951165973_
                                       (gx#syntax-e _tl165950165968_)))
                                  (let ((_hd165952165976_
                                         (##car _e165951165973_))
                                        (_tl165953165978_
                                         (##cdr _e165951165973_)))
                                    (if (gx#stx-null? _tl165953165978_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd165971_)
                                            (_E165947165959_))
                                        (_E165947165959_))))
                                (_E165947165959_)))))
                      (_E165947165959_)))))
          (_E165946165981_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind165902_ _expr165903_)
        (let* ((_e165904165914_ _bind165902_)
               (_E165906165918_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165904165914_)))
               (_E165905165940_
                (lambda ()
                  (if (gx#stx-pair? _e165904165914_)
                      (let ((_e165907165922_ (gx#syntax-e _e165904165914_)))
                        (let ((_hd165908165925_ (##car _e165907165922_))
                              (_tl165909165927_ (##cdr _e165907165922_)))
                          (let ((_hd165930_ _hd165908165925_))
                            (if (gx#stx-pair? _tl165909165927_)
                                (let ((_e165910165932_
                                       (gx#syntax-e _tl165909165927_)))
                                  (let ((_hd165911165935_
                                         (##car _e165910165932_))
                                        (_tl165912165937_
                                         (##cdr _e165910165932_)))
                                    (if (gx#stx-null? _tl165912165937_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd165930_)
                                                  (cons _expr165903_ '()))
                                            (_E165906165918_))
                                        (_E165906165918_))))
                                (_E165906165918_)))))
                      (_E165906165918_)))))
          (_E165905165940_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx165856_)
        (let* ((_e165857165867_ _stx165856_)
               (_E165859165871_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165857165867_)))
               (_E165858165898_
                (lambda ()
                  (if (gx#stx-pair? _e165857165867_)
                      (let ((_e165860165875_ (gx#syntax-e _e165857165867_)))
                        (let ((_hd165861165878_ (##car _e165860165875_))
                              (_tl165862165880_ (##cdr _e165860165875_)))
                          (if (gx#stx-pair? _tl165862165880_)
                              (let ((_e165863165883_
                                     (gx#syntax-e _tl165862165880_)))
                                (let ((_hd165864165886_
                                       (##car _e165863165883_))
                                      (_tl165865165888_
                                       (##cdr _e165863165883_)))
                                  (let* ((_hd165891_ _hd165864165886_)
                                         (_body165893_ _tl165865165888_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd165891_)
                                        (let ((_expanders165895_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd165891_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd165891_
                                              _expanders165895_)
                                             (gx#core-expand-local-block
                                              _stx165856_
                                              _body165893_))
                                           gx#current-expander-context
                                           (let ((__obj171344
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj171344)
                                             __obj171344)))
                                        (_E165859165871_)))))
                              (_E165859165871_))))
                      (_E165859165871_)))))
          (_E165858165898_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx165805_)
        (let* ((_e165806165816_ _stx165805_)
               (_E165808165820_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165806165816_)))
               (_E165807165852_
                (lambda ()
                  (if (gx#stx-pair? _e165806165816_)
                      (let ((_e165809165824_ (gx#syntax-e _e165806165816_)))
                        (let ((_hd165810165827_ (##car _e165809165824_))
                              (_tl165811165829_ (##cdr _e165809165824_)))
                          (if (gx#stx-pair? _tl165811165829_)
                              (let ((_e165812165832_
                                     (gx#syntax-e _tl165811165829_)))
                                (let ((_hd165813165835_
                                       (##car _e165812165832_))
                                      (_tl165814165837_
                                       (##cdr _e165812165832_)))
                                  (let* ((_hd165840_ _hd165813165835_)
                                         (_body165842_ _tl165814165837_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd165840_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd165840_
                                            (make-list
                                             (gx#stx-length _hd165840_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g165844165847_
                                                     _g165845165849_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g165844165847_
                                               _g165845165849_
                                               '#t))
                                            _hd165840_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd165840_))
                                           (gx#core-expand-local-block
                                            _stx165805_
                                            _body165842_))
                                         gx#current-expander-context
                                         (let ((__obj171345
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj171345)
                                           __obj171345))
                                        (_E165808165820_)))))
                              (_E165808165820_))))
                      (_E165808165820_)))))
          (_E165807165852_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx165762_)
        (if (gx#stx-list? _stx165762_)
            (gx#stx-andmap
             (lambda (_bind165764_)
               (let* ((_e165765165775_ _bind165764_)
                      (_E165767165779_ (lambda () '#f))
                      (_E165766165801_
                       (lambda ()
                         (if (gx#stx-pair? _e165765165775_)
                             (let ((_e165768165783_
                                    (gx#syntax-e _e165765165775_)))
                               (let ((_hd165769165786_ (##car _e165768165783_))
                                     (_tl165770165788_
                                      (##cdr _e165768165783_)))
                                 (let ((_hd165791_ _hd165769165786_))
                                   (if (gx#stx-pair? _tl165770165788_)
                                       (let ((_e165771165793_
                                              (gx#syntax-e _tl165770165788_)))
                                         (let ((_hd165772165796_
                                                (##car _e165771165793_))
                                               (_tl165773165798_
                                                (##cdr _e165771165793_)))
                                           (if (gx#stx-null? _tl165773165798_)
                                               (if '#t
                                                   (gx#identifier? _hd165791_)
                                                   (_E165767165779_))
                                               (_E165767165779_))))
                                       (_E165767165779_)))))
                             (_E165767165779_)))))
                 (_E165766165801_)))
             _stx165762_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind165719_)
        (let* ((_e165720165730_ _bind165719_)
               (_E165722165734_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165720165730_)))
               (_E165721165758_
                (lambda ()
                  (if (gx#stx-pair? _e165720165730_)
                      (let ((_e165723165738_ (gx#syntax-e _e165720165730_)))
                        (let ((_hd165724165741_ (##car _e165723165738_))
                              (_tl165725165743_ (##cdr _e165723165738_)))
                          (if (gx#stx-pair? _tl165725165743_)
                              (let ((_e165726165746_
                                     (gx#syntax-e _tl165725165743_)))
                                (let ((_hd165727165749_
                                       (##car _e165726165746_))
                                      (_tl165728165751_
                                       (##cdr _e165726165746_)))
                                  (let ((_expr165754_ _hd165727165749_))
                                    (if (gx#stx-null? _tl165728165751_)
                                        (if '#t
                                            (let ((_g171354_
                                                   (gx#core-expand-expression+1
                                                    _expr165754_)))
                                              (begin
                                                (let ((_g171355_
                                                       (if (##values?
                                                            _g171354_)
                                                           (##vector-length
                                                            _g171354_)
                                                           1)))
                                                  (if (not (##fx= _g171355_ 2))
                                                      (error "Context expects 2 values"
                                                             _g171355_)))
                                                (let ((_e165756_
                                                       (##vector-ref
                                                        _g171354_
                                                        1)))
                                                  _e165756_)))
                                            (_E165722165734_))
                                        (_E165722165734_)))))
                              (_E165722165734_))))
                      (_E165722165734_)))))
          (_E165721165758_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind165664_ _e165665_ _rebind?165666_)
        (let* ((_e165667165677_ _bind165664_)
               (_E165669165681_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165667165677_)))
               (_E165668165703_
                (lambda ()
                  (if (gx#stx-pair? _e165667165677_)
                      (let ((_e165670165685_ (gx#syntax-e _e165667165677_)))
                        (let ((_hd165671165688_ (##car _e165670165685_))
                              (_tl165672165690_ (##cdr _e165670165685_)))
                          (let ((_id165693_ _hd165671165688_))
                            (if (gx#stx-pair? _tl165672165690_)
                                (let ((_e165673165695_
                                       (gx#syntax-e _tl165672165690_)))
                                  (let ((_hd165674165698_
                                         (##car _e165673165695_))
                                        (_tl165675165700_
                                         (##cdr _e165673165695_)))
                                    (if (gx#stx-null? _tl165675165700_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id165693_
                                             _e165665_
                                             _rebind?165666_)
                                            (_E165669165681_))
                                        (_E165669165681_))))
                                (_E165669165681_)))))
                      (_E165669165681_)))))
          (_E165668165703_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind165710_ _e165711_)
        (let ((_rebind?165713_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind165710_
           _e165711_
           _rebind?165713_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g171357_
        (let ((_g171356_ (##length _g171357_)))
          (cond ((##fx= _g171356_ 2)
                 (apply (lambda (_bind165710_ _e165711_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind165710_
                           _e165711_))
                        _g171357_))
                ((##fx= _g171356_ 3)
                 (apply (lambda (_bind165715_ _e165716_ _rebind?165717_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind165715_
                           _e165716_
                           _rebind?165717_))
                        _g171357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g171357_))))))
    (define gx#core-expand-expression%
      (lambda (_stx165622_)
        (let* ((_e165623165633_ _stx165622_)
               (_E165625165637_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165623165633_)))
               (_E165624165659_
                (lambda ()
                  (if (gx#stx-pair? _e165623165633_)
                      (let ((_e165626165641_ (gx#syntax-e _e165623165633_)))
                        (let ((_hd165627165644_ (##car _e165626165641_))
                              (_tl165628165646_ (##cdr _e165626165641_)))
                          (if (gx#stx-pair? _tl165628165646_)
                              (let ((_e165629165649_
                                     (gx#syntax-e _tl165628165646_)))
                                (let ((_hd165630165652_
                                       (##car _e165629165649_))
                                      (_tl165631165654_
                                       (##cdr _e165629165649_)))
                                  (let ((_expr165657_ _hd165630165652_))
                                    (if (gx#stx-null? _tl165631165654_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr165657_)
                                            (_E165625165637_))
                                        (_E165625165637_)))))
                              (_E165625165637_))))
                      (_E165625165637_)))))
          (_E165624165659_))))
    (define gx#core-expand-quote%
      (lambda (_stx165581_)
        (let* ((_e165582165592_ _stx165581_)
               (_E165584165596_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165582165592_)))
               (_E165583165618_
                (lambda ()
                  (if (gx#stx-pair? _e165582165592_)
                      (let ((_e165585165600_ (gx#syntax-e _e165582165592_)))
                        (let ((_hd165586165603_ (##car _e165585165600_))
                              (_tl165587165605_ (##cdr _e165585165600_)))
                          (if (gx#stx-pair? _tl165587165605_)
                              (let ((_e165588165608_
                                     (gx#syntax-e _tl165587165605_)))
                                (let ((_hd165589165611_
                                       (##car _e165588165608_))
                                      (_tl165590165613_
                                       (##cdr _e165588165608_)))
                                  (let ((_e165616_ _hd165589165611_))
                                    (if (gx#stx-null? _tl165590165613_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e165616_)
                                                         '()))
                                             (gx#stx-source _stx165581_))
                                            (_E165584165596_))
                                        (_E165584165596_)))))
                              (_E165584165596_))))
                      (_E165584165596_)))))
          (_E165583165618_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx165540_)
        (let* ((_e165541165551_ _stx165540_)
               (_E165543165555_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165541165551_)))
               (_E165542165577_
                (lambda ()
                  (if (gx#stx-pair? _e165541165551_)
                      (let ((_e165544165559_ (gx#syntax-e _e165541165551_)))
                        (let ((_hd165545165562_ (##car _e165544165559_))
                              (_tl165546165564_ (##cdr _e165544165559_)))
                          (if (gx#stx-pair? _tl165546165564_)
                              (let ((_e165547165567_
                                     (gx#syntax-e _tl165546165564_)))
                                (let ((_hd165548165570_
                                       (##car _e165547165567_))
                                      (_tl165549165572_
                                       (##cdr _e165547165567_)))
                                  (let ((_e165575_ _hd165548165570_))
                                    (if (gx#stx-null? _tl165549165572_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e165575_)
                                                         '()))
                                             (gx#stx-source _stx165540_))
                                            (_E165543165555_))
                                        (_E165543165555_)))))
                              (_E165543165555_))))
                      (_E165543165555_)))))
          (_E165542165577_))))
    (define gx#core-expand-call%
      (lambda (_stx165497_)
        (let* ((_e165498165508_ _stx165497_)
               (_E165500165512_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165498165508_)))
               (_E165499165536_
                (lambda ()
                  (if (gx#stx-pair? _e165498165508_)
                      (let ((_e165501165516_ (gx#syntax-e _e165498165508_)))
                        (let ((_hd165502165519_ (##car _e165501165516_))
                              (_tl165503165521_ (##cdr _e165501165516_)))
                          (if (gx#stx-pair? _tl165503165521_)
                              (let ((_e165504165524_
                                     (gx#syntax-e _tl165503165521_)))
                                (let ((_hd165505165527_
                                       (##car _e165504165524_))
                                      (_tl165506165529_
                                       (##cdr _e165504165524_)))
                                  (let* ((_rator165532_ _hd165505165527_)
                                         (_args165534_ _tl165506165529_))
                                    (if (gx#stx-list? _args165534_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator165532_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args165534_))
                                         (gx#stx-source _stx165497_))
                                        (_E165500165512_)))))
                              (_E165500165512_))))
                      (_E165500165512_)))))
          (_E165499165536_))))
    (define gx#core-expand-if%
      (lambda (_stx165430_)
        (let* ((_e165431165447_ _stx165430_)
               (_E165433165451_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165431165447_)))
               (_E165432165493_
                (lambda ()
                  (if (gx#stx-pair? _e165431165447_)
                      (let ((_e165434165455_ (gx#syntax-e _e165431165447_)))
                        (let ((_hd165435165458_ (##car _e165434165455_))
                              (_tl165436165460_ (##cdr _e165434165455_)))
                          (if (gx#stx-pair? _tl165436165460_)
                              (let ((_e165437165463_
                                     (gx#syntax-e _tl165436165460_)))
                                (let ((_hd165438165466_
                                       (##car _e165437165463_))
                                      (_tl165439165468_
                                       (##cdr _e165437165463_)))
                                  (let ((_test165471_ _hd165438165466_))
                                    (if (gx#stx-pair? _tl165439165468_)
                                        (let ((_e165440165473_
                                               (gx#syntax-e _tl165439165468_)))
                                          (let ((_hd165441165476_
                                                 (##car _e165440165473_))
                                                (_tl165442165478_
                                                 (##cdr _e165440165473_)))
                                            (let ((_K165481_ _hd165441165476_))
                                              (if (gx#stx-pair?
                                                   _tl165442165478_)
                                                  (let ((_e165443165483_
                                                         (gx#syntax-e
                                                          _tl165442165478_)))
                                                    (let ((_hd165444165486_
                                                           (##car _e165443165483_))
                                                          (_tl165445165488_
                                                           (##cdr _e165443165483_)))
                                                      (let ((_E165491_
                                                             _hd165444165486_))
                                                        (if (gx#stx-null?
                                                             _tl165445165488_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test165471_)
                                     (cons (gx#core-expand-expression
                                            _K165481_)
                                           (cons (gx#core-expand-expression
                                                  _E165491_)
                                                 '()))))
                         (gx#stx-source _stx165430_))
                        (_E165433165451_))
                    (_E165433165451_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165433165451_)))))
                                        (_E165433165451_)))))
                              (_E165433165451_))))
                      (_E165433165451_)))))
          (_E165432165493_))))
    (define gx#core-expand-ref%
      (lambda (_stx165389_)
        (let* ((_e165390165400_ _stx165389_)
               (_E165392165404_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165390165400_)))
               (_E165391165426_
                (lambda ()
                  (if (gx#stx-pair? _e165390165400_)
                      (let ((_e165393165408_ (gx#syntax-e _e165390165400_)))
                        (let ((_hd165394165411_ (##car _e165393165408_))
                              (_tl165395165413_ (##cdr _e165393165408_)))
                          (if (gx#stx-pair? _tl165395165413_)
                              (let ((_e165396165416_
                                     (gx#syntax-e _tl165395165413_)))
                                (let ((_hd165397165419_
                                       (##car _e165396165416_))
                                      (_tl165398165421_
                                       (##cdr _e165396165416_)))
                                  (let ((_id165424_ _hd165397165419_))
                                    (if (gx#stx-null? _tl165398165421_)
                                        (if (gx#identifier? _id165424_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id165424_
                                                          _stx165389_)
                                                         '()))
                                             (gx#stx-source _stx165389_))
                                            (_E165392165404_))
                                        (_E165392165404_)))))
                              (_E165392165404_))))
                      (_E165392165404_)))))
          (_E165391165426_))))
    (define gx#core-expand-setq%
      (lambda (_stx165335_)
        (let* ((_e165336165349_ _stx165335_)
               (_E165338165353_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165336165349_)))
               (_E165337165385_
                (lambda ()
                  (if (gx#stx-pair? _e165336165349_)
                      (let ((_e165339165357_ (gx#syntax-e _e165336165349_)))
                        (let ((_hd165340165360_ (##car _e165339165357_))
                              (_tl165341165362_ (##cdr _e165339165357_)))
                          (if (gx#stx-pair? _tl165341165362_)
                              (let ((_e165342165365_
                                     (gx#syntax-e _tl165341165362_)))
                                (let ((_hd165343165368_
                                       (##car _e165342165365_))
                                      (_tl165344165370_
                                       (##cdr _e165342165365_)))
                                  (let ((_id165373_ _hd165343165368_))
                                    (if (gx#stx-pair? _tl165344165370_)
                                        (let ((_e165345165375_
                                               (gx#syntax-e _tl165344165370_)))
                                          (let ((_hd165346165378_
                                                 (##car _e165345165375_))
                                                (_tl165347165380_
                                                 (##cdr _e165345165375_)))
                                            (let ((_expr165383_
                                                   _hd165346165378_))
                                              (if (gx#stx-null?
                                                   _tl165347165380_)
                                                  (if (gx#identifier?
                                                       _id165373_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id165373_
                            _stx165335_)
                           (cons (gx#core-expand-expression _expr165383_)
                                 '())))
               (gx#stx-source _stx165335_))
              (_E165338165353_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165338165353_)))))
                                        (_E165338165353_)))))
                              (_E165338165353_))))
                      (_E165338165353_)))))
          (_E165337165385_))))
    (define gx#macro-expand-extern
      (lambda (_stx165183_)
        (letrec ((_generate165185_
                  (lambda (_body165215_)
                    (let _lp165217_ ((_rest165219_ _body165215_)
                                     (_ns165220_
                                      (gx#core-context-namespace__0))
                                     (_r165221_ '()))
                      (let* ((_e165222165237_ _rest165219_)
                             (_E165235165241_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e165222165237_)))
                             (_E165231165245_
                              (lambda ()
                                (if (gx#stx-null? _e165222165237_)
                                    (if '#t
                                        (reverse _r165221_)
                                        (_E165235165241_))
                                    (_E165235165241_))))
                             (_E165224165302_
                              (lambda ()
                                (if (gx#stx-pair? _e165222165237_)
                                    (let ((_e165232165249_
                                           (gx#syntax-e _e165222165237_)))
                                      (let ((_hd165233165252_
                                             (##car _e165232165249_))
                                            (_tl165234165254_
                                             (##cdr _e165232165249_)))
                                        (let* ((_hd165257_ _hd165233165252_)
                                               (_rest165259_ _tl165234165254_))
                                          (if '#t
                                              (if (gx#identifier? _hd165257_)
                                                  (_lp165217_
                                                   _rest165259_
                                                   _ns165220_
                                                   (cons (cons _hd165257_
                                                               (cons (if _ns165220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd165257_
                                  _ns165220_
                                  '"#"
                                  _hd165257_)
                                 _hd165257_)
                             '()))
                 _r165221_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e165260165270_
                                                          _hd165257_)
                                                         (_E165262165274_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e165260165270_)))
                                                         (_E165261165298_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e165260165270_)
                        (let ((_e165263165278_ (gx#syntax-e _e165260165270_)))
                          (let ((_hd165264165281_ (##car _e165263165278_))
                                (_tl165265165283_ (##cdr _e165263165278_)))
                            (let ((_id165286_ _hd165264165281_))
                              (if (gx#stx-pair? _tl165265165283_)
                                  (let ((_e165266165288_
                                         (gx#syntax-e _tl165265165283_)))
                                    (let ((_hd165267165291_
                                           (##car _e165266165288_))
                                          (_tl165268165293_
                                           (##cdr _e165266165288_)))
                                      (let ((_eid165296_ _hd165267165291_))
                                        (if (gx#stx-null? _tl165268165293_)
                                            (if (and (gx#identifier?
                                                      _id165286_)
                                                     (gx#identifier?
                                                      _eid165296_))
                                                (_lp165217_
                                                 _rest165259_
                                                 _ns165220_
                                                 (cons (cons _id165286_
                                                             (cons _eid165296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r165221_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E165262165274_))
                                            (_E165262165274_)))))
                                  (_E165262165274_)))))
                        (_E165262165274_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E165261165298_)))
                                              (_E165231165245_)))))
                                    (_E165231165245_))))
                             (_E165223165331_
                              (lambda ()
                                (if (gx#stx-pair? _e165222165237_)
                                    (let ((_e165225165306_
                                           (gx#syntax-e _e165222165237_)))
                                      (let ((_hd165226165309_
                                             (##car _e165225165306_))
                                            (_tl165227165311_
                                             (##cdr _e165225165306_)))
                                        (if (eq? (gx#stx-e _hd165226165309_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl165227165311_)
                                                (let ((_e165228165314_
                                                       (gx#syntax-e
                                                        _tl165227165311_)))
                                                  (let ((_hd165229165317_
                                                         (##car _e165228165314_))
                                                        (_tl165230165319_
                                                         (##cdr _e165228165314_)))
                                                    (let* ((_ns165322_
                                                            _hd165229165317_)
                                                           (_rest165324_
                                                            _tl165230165319_))
                                                      (if '#t
                                                          (let ((_ns165329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns165322_)
                             (symbol->string (gx#stx-e _ns165322_))
                             (if (or (gx#stx-string? _ns165322_)
                                     (gx#stx-false? _ns165322_))
                                 (gx#stx-e _ns165322_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx165183_
                                  _ns165322_)))))
                    (_lp165217_ _rest165324_ _ns165329_ _r165221_))
                  (_E165224165302_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E165224165302_))
                                            (_E165224165302_))))
                                    (_E165224165302_)))))
                        (_E165223165331_))))))
          (let* ((_e165186165193_ _stx165183_)
                 (_E165188165197_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e165186165193_)))
                 (_E165187165211_
                  (lambda ()
                    (if (gx#stx-pair? _e165186165193_)
                        (let ((_e165189165201_ (gx#syntax-e _e165186165193_)))
                          (let ((_hd165190165204_ (##car _e165189165201_))
                                (_tl165191165206_ (##cdr _e165189165201_)))
                            (let ((_body165209_ _tl165191165206_))
                              (if (gx#stx-list? _body165209_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate165185_ _body165209_))
                                  (_E165188165197_)))))
                        (_E165188165197_)))))
            (_E165187165211_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx165129_)
        (let* ((_e165130165143_ _stx165129_)
               (_E165132165147_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165130165143_)))
               (_E165131165179_
                (lambda ()
                  (if (gx#stx-pair? _e165130165143_)
                      (let ((_e165133165151_ (gx#syntax-e _e165130165143_)))
                        (let ((_hd165134165154_ (##car _e165133165151_))
                              (_tl165135165156_ (##cdr _e165133165151_)))
                          (if (gx#stx-pair? _tl165135165156_)
                              (let ((_e165136165159_
                                     (gx#syntax-e _tl165135165156_)))
                                (let ((_hd165137165162_
                                       (##car _e165136165159_))
                                      (_tl165138165164_
                                       (##cdr _e165136165159_)))
                                  (let ((_hd165167_ _hd165137165162_))
                                    (if (gx#stx-pair? _tl165138165164_)
                                        (let ((_e165139165169_
                                               (gx#syntax-e _tl165138165164_)))
                                          (let ((_hd165140165172_
                                                 (##car _e165139165169_))
                                                (_tl165141165174_
                                                 (##cdr _e165139165169_)))
                                            (let ((_expr165177_
                                                   _hd165140165172_))
                                              (if (gx#stx-null?
                                                   _tl165141165174_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd165167_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd165167_)
                          (cons _expr165177_ '())))
              (_E165132165147_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165132165147_)))))
                                        (_E165132165147_)))))
                              (_E165132165147_))))
                      (_E165132165147_)))))
          (_E165131165179_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx165075_)
        (let* ((_e165076165089_ _stx165075_)
               (_E165078165093_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165076165089_)))
               (_E165077165125_
                (lambda ()
                  (if (gx#stx-pair? _e165076165089_)
                      (let ((_e165079165097_ (gx#syntax-e _e165076165089_)))
                        (let ((_hd165080165100_ (##car _e165079165097_))
                              (_tl165081165102_ (##cdr _e165079165097_)))
                          (if (gx#stx-pair? _tl165081165102_)
                              (let ((_e165082165105_
                                     (gx#syntax-e _tl165081165102_)))
                                (let ((_hd165083165108_
                                       (##car _e165082165105_))
                                      (_tl165084165110_
                                       (##cdr _e165082165105_)))
                                  (let ((_hd165113_ _hd165083165108_))
                                    (if (gx#stx-pair? _tl165084165110_)
                                        (let ((_e165085165115_
                                               (gx#syntax-e _tl165084165110_)))
                                          (let ((_hd165086165118_
                                                 (##car _e165085165115_))
                                                (_tl165087165120_
                                                 (##cdr _e165085165115_)))
                                            (let ((_expr165123_
                                                   _hd165086165118_))
                                              (if (gx#stx-null?
                                                   _tl165087165120_)
                                                  (if (gx#identifier?
                                                       _hd165113_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd165113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr165123_ '())))
              (_E165078165093_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165078165093_)))))
                                        (_E165078165093_)))))
                              (_E165078165093_))))
                      (_E165078165093_)))))
          (_E165077165125_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx165021_)
        (let* ((_e165022165035_ _stx165021_)
               (_E165024165039_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e165022165035_)))
               (_E165023165071_
                (lambda ()
                  (if (gx#stx-pair? _e165022165035_)
                      (let ((_e165025165043_ (gx#syntax-e _e165022165035_)))
                        (let ((_hd165026165046_ (##car _e165025165043_))
                              (_tl165027165048_ (##cdr _e165025165043_)))
                          (if (gx#stx-pair? _tl165027165048_)
                              (let ((_e165028165051_
                                     (gx#syntax-e _tl165027165048_)))
                                (let ((_hd165029165054_
                                       (##car _e165028165051_))
                                      (_tl165030165056_
                                       (##cdr _e165028165051_)))
                                  (let ((_id165059_ _hd165029165054_))
                                    (if (gx#stx-pair? _tl165030165056_)
                                        (let ((_e165031165061_
                                               (gx#syntax-e _tl165030165056_)))
                                          (let ((_hd165032165064_
                                                 (##car _e165031165061_))
                                                (_tl165033165066_
                                                 (##cdr _e165031165061_)))
                                            (let ((_alias-id165069_
                                                   _hd165032165064_))
                                              (if (gx#stx-null?
                                                   _tl165033165066_)
                                                  (if (and (gx#identifier?
                                                            _id165059_)
                                                           (gx#identifier?
                                                            _alias-id165069_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id165059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id165069_ '())))
              (_E165024165039_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E165024165039_)))))
                                        (_E165024165039_)))))
                              (_E165024165039_))))
                      (_E165024165039_)))))
          (_E165023165071_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx164978_)
        (let* ((_e164979164989_ _stx164978_)
               (_E164981164993_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164979164989_)))
               (_E164980165017_
                (lambda ()
                  (if (gx#stx-pair? _e164979164989_)
                      (let ((_e164982164997_ (gx#syntax-e _e164979164989_)))
                        (let ((_hd164983165000_ (##car _e164982164997_))
                              (_tl164984165002_ (##cdr _e164982164997_)))
                          (if (gx#stx-pair? _tl164984165002_)
                              (let ((_e164985165005_
                                     (gx#syntax-e _tl164984165002_)))
                                (let ((_hd164986165008_
                                       (##car _e164985165005_))
                                      (_tl164987165010_
                                       (##cdr _e164985165005_)))
                                  (let* ((_hd165013_ _hd164986165008_)
                                         (_body165015_ _tl164987165010_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd165013_)
                                             (gx#stx-list? _body165015_)
                                             (not (gx#stx-null? _body165015_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd165013_)
                                         _body165015_)
                                        (_E164981164993_)))))
                              (_E164981164993_))))
                      (_E164981164993_)))))
          (_E164980165017_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx164914_)
        (letrec ((_generate164916_
                  (lambda (_clause164946_)
                    (let* ((_e164947164954_ _clause164946_)
                           (_E164949164958_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx164914_
                               _clause164946_)))
                           (_E164948164974_
                            (lambda ()
                              (if (gx#stx-pair? _e164947164954_)
                                  (let ((_e164950164962_
                                         (gx#syntax-e _e164947164954_)))
                                    (let ((_hd164951164965_
                                           (##car _e164950164962_))
                                          (_tl164952164967_
                                           (##cdr _e164950164962_)))
                                      (let* ((_hd164970_ _hd164951164965_)
                                             (_body164972_ _tl164952164967_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd164970_)
                                                 (gx#stx-list? _body164972_)
                                                 (not (gx#stx-null?
                                                       _body164972_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd164970_)
                                                   _body164972_)
                                             (gx#stx-source _clause164946_))
                                            (_E164949164958_)))))
                                  (_E164949164958_)))))
                      (_E164948164974_)))))
          (let* ((_e164917164924_ _stx164914_)
                 (_E164919164928_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e164917164924_)))
                 (_E164918164942_
                  (lambda ()
                    (if (gx#stx-pair? _e164917164924_)
                        (let ((_e164920164932_ (gx#syntax-e _e164917164924_)))
                          (let ((_hd164921164935_ (##car _e164920164932_))
                                (_tl164922164937_ (##cdr _e164920164932_)))
                            (let ((_clauses164940_ _tl164922164937_))
                              (if (gx#stx-list? _clauses164940_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate164916_
                                    _clauses164940_))
                                  (_E164919164928_)))))
                        (_E164919164928_)))))
            (_E164918164942_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx164815_ _form164816_)
        (letrec ((_generate164818_
                  (lambda (_bind164861_)
                    (let* ((_e164862164872_ _bind164861_)
                           (_E164864164876_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx164815_
                               _bind164861_)))
                           (_E164863164900_
                            (lambda ()
                              (if (gx#stx-pair? _e164862164872_)
                                  (let ((_e164865164880_
                                         (gx#syntax-e _e164862164872_)))
                                    (let ((_hd164866164883_
                                           (##car _e164865164880_))
                                          (_tl164867164885_
                                           (##cdr _e164865164880_)))
                                      (let ((_ids164888_ _hd164866164883_))
                                        (if (gx#stx-pair? _tl164867164885_)
                                            (let ((_e164868164890_
                                                   (gx#syntax-e
                                                    _tl164867164885_)))
                                              (let ((_hd164869164893_
                                                     (##car _e164868164890_))
                                                    (_tl164870164895_
                                                     (##cdr _e164868164890_)))
                                                (let ((_expr164898_
                                                       _hd164869164893_))
                                                  (if (gx#stx-null?
                                                       _tl164870164895_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids164888_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids164888_)
                        (cons _expr164898_ '()))
                  (_E164864164876_))
              (_E164864164876_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E164864164876_)))))
                                  (_E164864164876_)))))
                      (_E164863164900_)))))
          (let* ((_e164819164829_ _stx164815_)
                 (_E164821164833_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e164819164829_)))
                 (_E164820164857_
                  (lambda ()
                    (if (gx#stx-pair? _e164819164829_)
                        (let ((_e164822164837_ (gx#syntax-e _e164819164829_)))
                          (let ((_hd164823164840_ (##car _e164822164837_))
                                (_tl164824164842_ (##cdr _e164822164837_)))
                            (if (gx#stx-pair? _tl164824164842_)
                                (let ((_e164825164845_
                                       (gx#syntax-e _tl164824164842_)))
                                  (let ((_hd164826164848_
                                         (##car _e164825164845_))
                                        (_tl164827164850_
                                         (##cdr _e164825164845_)))
                                    (let* ((_hd164853_ _hd164826164848_)
                                           (_body164855_ _tl164827164850_))
                                      (if (and (gx#stx-list? _hd164853_)
                                               (gx#stx-list? _body164855_)
                                               (not (gx#stx-null?
                                                     _body164855_)))
                                          (gx#core-cons*
                                           _form164816_
                                           (gx#stx-map1
                                            _generate164818_
                                            _hd164853_)
                                           _body164855_)
                                          (_E164821164833_)))))
                                (_E164821164833_))))
                        (_E164821164833_)))))
            (_E164820164857_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx164907_)
        (let ((_form164909_ '%#let-values))
          (gx#macro-expand-let-values__% _stx164907_ _form164909_))))
    (define gx#macro-expand-let-values
      (lambda _g171359_
        (let ((_g171358_ (##length _g171359_)))
          (cond ((##fx= _g171358_ 1)
                 (apply (lambda (_stx164907_)
                          (gx#macro-expand-let-values__0 _stx164907_))
                        _g171359_))
                ((##fx= _g171358_ 2)
                 (apply (lambda (_stx164911_ _form164912_)
                          (gx#macro-expand-let-values__%
                           _stx164911_
                           _form164912_))
                        _g171359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g171359_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx164812_)
        (gx#macro-expand-let-values__% _stx164812_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx164810_)
        (gx#macro-expand-let-values__% _stx164810_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx164701_)
        (let* ((_e164702164728_ _stx164701_)
               (_E164714164732_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e164702164728_)))
               (_E164704164774_
                (lambda ()
                  (if (gx#stx-pair? _e164702164728_)
                      (let ((_e164715164736_ (gx#syntax-e _e164702164728_)))
                        (let ((_hd164716164739_ (##car _e164715164736_))
                              (_tl164717164741_ (##cdr _e164715164736_)))
                          (if (gx#stx-pair? _tl164717164741_)
                              (let ((_e164718164744_
                                     (gx#syntax-e _tl164717164741_)))
                                (let ((_hd164719164747_
                                       (##car _e164718164744_))
                                      (_tl164720164749_
                                       (##cdr _e164718164744_)))
                                  (let ((_test164752_ _hd164719164747_))
                                    (if (gx#stx-pair? _tl164720164749_)
                                        (let ((_e164721164754_
                                               (gx#syntax-e _tl164720164749_)))
                                          (let ((_hd164722164757_
                                                 (##car _e164721164754_))
                                                (_tl164723164759_
                                                 (##cdr _e164721164754_)))
                                            (let ((_K164762_ _hd164722164757_))
                                              (if (gx#stx-pair?
                                                   _tl164723164759_)
                                                  (let ((_e164724164764_
                                                         (gx#syntax-e
                                                          _tl164723164759_)))
                                                    (let ((_hd164725164767_
                                                           (##car _e164724164764_))
                                                          (_tl164726164769_
                                                           (##cdr _e164724164764_)))
                                                      (let ((_E164772_
                                                             _hd164725164767_))
                                                        (if (gx#stx-null?
                                                             _tl164726164769_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test164752_
                         _K164762_
                         _E164772_)
                        (_E164714164732_))
                    (_E164714164732_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E164714164732_)))))
                                        (_E164714164732_)))))
                              (_E164714164732_))))
                      (_E164714164732_))))
               (_E164703164806_
                (lambda ()
                  (if (gx#stx-pair? _e164702164728_)
                      (let ((_e164705164778_ (gx#syntax-e _e164702164728_)))
                        (let ((_hd164706164781_ (##car _e164705164778_))
                              (_tl164707164783_ (##cdr _e164705164778_)))
                          (if (gx#stx-pair? _tl164707164783_)
                              (let ((_e164708164786_
                                     (gx#syntax-e _tl164707164783_)))
                                (let ((_hd164709164789_
                                       (##car _e164708164786_))
                                      (_tl164710164791_
                                       (##cdr _e164708164786_)))
                                  (let ((_test164794_ _hd164709164789_))
                                    (if (gx#stx-pair? _tl164710164791_)
                                        (let ((_e164711164796_
                                               (gx#syntax-e _tl164710164791_)))
                                          (let ((_hd164712164799_
                                                 (##car _e164711164796_))
                                                (_tl164713164801_
                                                 (##cdr _e164711164796_)))
                                            (let ((_K164804_ _hd164712164799_))
                                              (if (gx#stx-null?
                                                   _tl164713164801_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test164794_
                                                       _K164804_
                                                       '#!void)
                                                      (_E164704164774_))
                                                  (_E164704164774_)))))
                                        (_E164704164774_)))))
                              (_E164704164774_))))
                      (_E164704164774_)))))
          (_E164703164806_))))
    (define gx#free-identifier=?
      (lambda (_xid164689_ _yid164690_)
        (let ((_xe164692_ (gx#resolve-identifier__0 _xid164689_))
              (_ye164693_ (gx#resolve-identifier__0 _yid164690_)))
          (if (and _xe164692_ _ye164693_)
              (let ((_$e164695_ (eq? _xe164692_ _ye164693_)))
                (if _$e164695_
                    _$e164695_
                    (if (##structure-instance-of? _xe164692_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye164693_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe164692_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye164693_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe164692_ _ye164693_)
                  '#f
                  (gx#stx-eq? _xid164689_ _yid164690_))))))
    (define gx#bound-identifier=?
      (lambda (_xid164673_ _yid164674_)
        (letrec ((_context164676_
                  (lambda (_e164687_)
                    (if (##structure-direct-instance-of?
                         _e164687_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e164687_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks164677_
                  (lambda (_e164685_)
                    (if (symbol? _e164685_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e164685_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e164685_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e164685_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap164678_
                  (lambda (_e164683_)
                    (if (symbol? _e164683_)
                        _e164683_
                        (gx#syntax-local-unwrap _e164683_)))))
          (let ((_x164680_ (_unwrap164678_ _xid164673_))
                (_y164681_ (_unwrap164678_ _yid164674_)))
            (if (gx#stx-eq? _x164680_ _y164681_)
                (if (eq? (_context164676_ _x164680_)
                         (_context164676_ _y164681_))
                    (equal? (_marks164677_ _x164680_)
                            (_marks164677_ _y164681_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx164671_)
        (if (gx#identifier? _stx164671_)
            (gx#core-identifier=? _stx164671_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx164669_)
        (if (gx#identifier? _stx164669_)
            (gx#core-identifier=? _stx164669_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x164667_)
        (if (gx#identifier? _x164667_)
            (if (not (gx#underscore? _x164667_)) _x164667_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx164613_ _where164614_)
        (let _lp164616_ ((_rest164618_ (gx#syntax->list _stx164613_)))
          (let* ((_rest164619164627_ _rest164618_)
                 (_else164621164635_ (lambda () '#t))
                 (_K164623164645_
                  (lambda (_rest164638_ _hd164639_)
                    (if (not (gx#identifier? _hd164639_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where164614_
                         _hd164639_)
                        (if (find (lambda (_g164640164642_)
                                    (gx#bound-identifier=?
                                     _g164640164642_
                                     _hd164639_))
                                  _rest164638_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where164614_
                             _hd164639_)
                            (_lp164616_ _rest164638_))))))
            (if (##pair? _rest164619164627_)
                (let ((_hd164624164648_ (##car _rest164619164627_))
                      (_tl164625164650_ (##cdr _rest164619164627_)))
                  (let* ((_hd164653_ _hd164624164648_)
                         (_rest164655_ _tl164625164650_))
                    (_K164623164645_ _rest164655_ _hd164653_)))
                (_else164621164635_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx164660_)
        (let ((_where164662_ _stx164660_))
          (gx#check-duplicate-identifiers__% _stx164660_ _where164662_))))
    (define gx#check-duplicate-identifiers
      (lambda _g171361_
        (let ((_g171360_ (##length _g171361_)))
          (cond ((##fx= _g171360_ 1)
                 (apply (lambda (_stx164660_)
                          (gx#check-duplicate-identifiers__0 _stx164660_))
                        _g171361_))
                ((##fx= _g171360_ 2)
                 (apply (lambda (_stx164664_ _where164665_)
                          (gx#check-duplicate-identifiers__%
                           _stx164664_
                           _where164665_))
                        _g171361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g171361_))))))
    (define gx#core-bind-values?
      (lambda (_stx164605_)
        (gx#stx-andmap
         (lambda (_x164607_)
           (let ((_$e164609_ (gx#identifier? _x164607_)))
             (if _$e164609_ _$e164609_ (gx#stx-false? _x164607_))))
         _stx164605_)))
    (define gx#core-bind-values!__%
      (lambda (_stx164569_ _rebind?164570_ _phi164571_ _ctx164572_)
        (gx#stx-for-each1
         (lambda (_id164574_)
           (if (gx#identifier? _id164574_)
               (gx#core-bind-runtime!__%
                _id164574_
                _rebind?164570_
                _phi164571_
                _ctx164572_)
               '#!void))
         _stx164569_)))
    (define gx#core-bind-values!__0
      (lambda (_stx164579_)
        (let* ((_rebind?164581_ '#f)
               (_phi164583_ (gx#current-expander-phi))
               (_ctx164585_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx164579_
           _rebind?164581_
           _phi164583_
           _ctx164585_))))
    (define gx#core-bind-values!__1
      (lambda (_stx164587_ _rebind?164588_)
        (let* ((_phi164590_ (gx#current-expander-phi))
               (_ctx164592_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx164587_
           _rebind?164588_
           _phi164590_
           _ctx164592_))))
    (define gx#core-bind-values!__2
      (lambda (_stx164594_ _rebind?164595_ _phi164596_)
        (let ((_ctx164598_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx164594_
           _rebind?164595_
           _phi164596_
           _ctx164598_))))
    (define gx#core-bind-values!
      (lambda _g171363_
        (let ((_g171362_ (##length _g171363_)))
          (cond ((##fx= _g171362_ 1)
                 (apply (lambda (_stx164579_)
                          (gx#core-bind-values!__0 _stx164579_))
                        _g171363_))
                ((##fx= _g171362_ 2)
                 (apply (lambda (_stx164587_ _rebind?164588_)
                          (gx#core-bind-values!__1
                           _stx164587_
                           _rebind?164588_))
                        _g171363_))
                ((##fx= _g171362_ 3)
                 (apply (lambda (_stx164594_ _rebind?164595_ _phi164596_)
                          (gx#core-bind-values!__2
                           _stx164594_
                           _rebind?164595_
                           _phi164596_))
                        _g171363_))
                ((##fx= _g171362_ 4)
                 (apply (lambda (_stx164600_
                                 _rebind?164601_
                                 _phi164602_
                                 _ctx164603_)
                          (gx#core-bind-values!__%
                           _stx164600_
                           _rebind?164601_
                           _phi164602_
                           _ctx164603_))
                        _g171363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g171363_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx164564_)
        (gx#stx-map1
         (lambda (_x164566_)
           (if (gx#identifier? _x164566_)
               (gx#core-quote-syntax__0 _x164566_)
               '#f))
         _stx164564_)))
    (define gx#core-runtime-ref?
      (lambda (_stx164557_)
        (if (gx#identifier? _stx164557_)
            (let* ((_bind164559_ (gx#resolve-identifier__0 _stx164557_))
                   (_$e164561_ (not _bind164559_)))
              (if _$e164561_
                  _$e164561_
                  (##structure-instance-of?
                   _bind164559_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id164549_ _form164550_)
        (let ((_bind164552_ (gx#resolve-identifier__0 _id164549_)))
          (if (##structure-instance-of? _bind164552_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id164549_)
              (if (not _bind164552_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id164549_)))
                      (gx#core-quote-syntax__0 _id164549_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form164550_
                       _id164549_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form164550_
                   _id164549_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id164508_ _rebind?164509_ _phi164510_ _ctx164511_)
        (let* ((_key164513_ (gx#core-identifier-key _id164508_))
               (_eid164515_
                (gx#make-binding-id__%
                 _key164513_
                 '#f
                 _phi164510_
                 _ctx164511_))
               (_bind164517_
                (if (##structure-instance-of?
                     _ctx164511_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid164515_
                     _key164513_
                     _phi164510_
                     _ctx164511_)
                    (if (##structure-instance-of?
                         _ctx164511_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid164515_
                         _key164513_
                         _phi164510_)
                        (if (##structure-instance-of?
                             _ctx164511_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid164515_
                             _key164513_
                             _phi164510_)
                            (##structure
                             gx#runtime-binding::t
                             _eid164515_
                             _key164513_
                             _phi164510_))))))
          (gx#bind-identifier!__%
           _id164508_
           _bind164517_
           _rebind?164509_
           _phi164510_
           _ctx164511_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id164523_)
        (let* ((_rebind?164525_ '#f)
               (_phi164527_ (gx#current-expander-phi))
               (_ctx164529_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id164523_
           _rebind?164525_
           _phi164527_
           _ctx164529_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id164531_ _rebind?164532_)
        (let* ((_phi164534_ (gx#current-expander-phi))
               (_ctx164536_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id164531_
           _rebind?164532_
           _phi164534_
           _ctx164536_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id164538_ _rebind?164539_ _phi164540_)
        (let ((_ctx164542_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id164538_
           _rebind?164539_
           _phi164540_
           _ctx164542_))))
    (define gx#core-bind-runtime!
      (lambda _g171365_
        (let ((_g171364_ (##length _g171365_)))
          (cond ((##fx= _g171364_ 1)
                 (apply (lambda (_id164523_)
                          (gx#core-bind-runtime!__0 _id164523_))
                        _g171365_))
                ((##fx= _g171364_ 2)
                 (apply (lambda (_id164531_ _rebind?164532_)
                          (gx#core-bind-runtime!__1
                           _id164531_
                           _rebind?164532_))
                        _g171365_))
                ((##fx= _g171364_ 3)
                 (apply (lambda (_id164538_ _rebind?164539_ _phi164540_)
                          (gx#core-bind-runtime!__2
                           _id164538_
                           _rebind?164539_
                           _phi164540_))
                        _g171365_))
                ((##fx= _g171364_ 4)
                 (apply (lambda (_id164544_
                                 _rebind?164545_
                                 _phi164546_
                                 _ctx164547_)
                          (gx#core-bind-runtime!__%
                           _id164544_
                           _rebind?164545_
                           _phi164546_
                           _ctx164547_))
                        _g171365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g171365_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id164463_ _eid164464_ _rebind?164465_ _phi164466_ _ctx164467_)
        (let* ((_key164469_ (gx#core-identifier-key _id164463_))
               (_bind164471_
                (if (##structure-instance-of?
                     _ctx164467_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid164464_
                     _key164469_
                     _phi164466_
                     _ctx164467_)
                    (if (##structure-instance-of?
                         _ctx164467_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid164464_
                         _key164469_
                         _phi164466_)
                        (##structure
                         gx#runtime-binding::t
                         _eid164464_
                         _key164469_
                         _phi164466_)))))
          (gx#bind-identifier!__%
           _id164463_
           _bind164471_
           _rebind?164465_
           _phi164466_
           _ctx164467_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id164477_ _eid164478_)
        (let* ((_rebind?164480_ '#f)
               (_phi164482_ (gx#current-expander-phi))
               (_ctx164484_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id164477_
           _eid164478_
           _rebind?164480_
           _phi164482_
           _ctx164484_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id164486_ _eid164487_ _rebind?164488_)
        (let* ((_phi164490_ (gx#current-expander-phi))
               (_ctx164492_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id164486_
           _eid164487_
           _rebind?164488_
           _phi164490_
           _ctx164492_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id164494_ _eid164495_ _rebind?164496_ _phi164497_)
        (let ((_ctx164499_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id164494_
           _eid164495_
           _rebind?164496_
           _phi164497_
           _ctx164499_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g171367_
        (let ((_g171366_ (##length _g171367_)))
          (cond ((##fx= _g171366_ 2)
                 (apply (lambda (_id164477_ _eid164478_)
                          (gx#core-bind-runtime-reference!__0
                           _id164477_
                           _eid164478_))
                        _g171367_))
                ((##fx= _g171366_ 3)
                 (apply (lambda (_id164486_ _eid164487_ _rebind?164488_)
                          (gx#core-bind-runtime-reference!__1
                           _id164486_
                           _eid164487_
                           _rebind?164488_))
                        _g171367_))
                ((##fx= _g171366_ 4)
                 (apply (lambda (_id164494_
                                 _eid164495_
                                 _rebind?164496_
                                 _phi164497_)
                          (gx#core-bind-runtime-reference!__2
                           _id164494_
                           _eid164495_
                           _rebind?164496_
                           _phi164497_))
                        _g171367_))
                ((##fx= _g171366_ 5)
                 (apply (lambda (_id164501_
                                 _eid164502_
                                 _rebind?164503_
                                 _phi164504_
                                 _ctx164505_)
                          (gx#core-bind-runtime-reference!__%
                           _id164501_
                           _eid164502_
                           _rebind?164503_
                           _phi164504_
                           _ctx164505_))
                        _g171367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g171367_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id164423_ _eid164424_ _rebind?164425_ _phi164426_ _ctx164427_)
        (gx#bind-identifier!__%
         _id164423_
         (##structure
          gx#extern-binding::t
          _eid164424_
          (gx#core-identifier-key _id164423_)
          _phi164426_)
         _rebind?164425_
         _phi164426_
         _ctx164427_)))
    (define gx#core-bind-extern!__0
      (lambda (_id164432_ _eid164433_)
        (let* ((_rebind?164435_ '#f)
               (_phi164437_ (gx#current-expander-phi))
               (_ctx164439_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id164432_
           _eid164433_
           _rebind?164435_
           _phi164437_
           _ctx164439_))))
    (define gx#core-bind-extern!__1
      (lambda (_id164441_ _eid164442_ _rebind?164443_)
        (let* ((_phi164445_ (gx#current-expander-phi))
               (_ctx164447_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id164441_
           _eid164442_
           _rebind?164443_
           _phi164445_
           _ctx164447_))))
    (define gx#core-bind-extern!__2
      (lambda (_id164449_ _eid164450_ _rebind?164451_ _phi164452_)
        (let ((_ctx164454_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id164449_
           _eid164450_
           _rebind?164451_
           _phi164452_
           _ctx164454_))))
    (define gx#core-bind-extern!
      (lambda _g171369_
        (let ((_g171368_ (##length _g171369_)))
          (cond ((##fx= _g171368_ 2)
                 (apply (lambda (_id164432_ _eid164433_)
                          (gx#core-bind-extern!__0 _id164432_ _eid164433_))
                        _g171369_))
                ((##fx= _g171368_ 3)
                 (apply (lambda (_id164441_ _eid164442_ _rebind?164443_)
                          (gx#core-bind-extern!__1
                           _id164441_
                           _eid164442_
                           _rebind?164443_))
                        _g171369_))
                ((##fx= _g171368_ 4)
                 (apply (lambda (_id164449_
                                 _eid164450_
                                 _rebind?164451_
                                 _phi164452_)
                          (gx#core-bind-extern!__2
                           _id164449_
                           _eid164450_
                           _rebind?164451_
                           _phi164452_))
                        _g171369_))
                ((##fx= _g171368_ 5)
                 (apply (lambda (_id164456_
                                 _eid164457_
                                 _rebind?164458_
                                 _phi164459_
                                 _ctx164460_)
                          (gx#core-bind-extern!__%
                           _id164456_
                           _eid164457_
                           _rebind?164458_
                           _phi164459_
                           _ctx164460_))
                        _g171369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g171369_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id164377_ _e164378_ _rebind?164379_ _phi164380_ _ctx164381_)
        (gx#bind-identifier!__%
         _id164377_
         (let ((_key164386_ (gx#core-identifier-key _id164377_))
               (_e164387_
                (if (or (##structure-instance-of? _e164378_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e164378_
                         'gx#expander-context::t))
                    _e164378_
                    (##structure
                     gx#user-expander::t
                     _e164378_
                     _ctx164381_
                     _phi164380_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key164386_ '#t _phi164380_ _ctx164381_)
            _key164386_
            _phi164380_
            _e164387_))
         _rebind?164379_
         _phi164380_
         _ctx164381_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id164392_ _e164393_)
        (let* ((_rebind?164395_ '#f)
               (_phi164397_ (gx#current-expander-phi))
               (_ctx164399_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id164392_
           _e164393_
           _rebind?164395_
           _phi164397_
           _ctx164399_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id164401_ _e164402_ _rebind?164403_)
        (let* ((_phi164405_ (gx#current-expander-phi))
               (_ctx164407_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id164401_
           _e164402_
           _rebind?164403_
           _phi164405_
           _ctx164407_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id164409_ _e164410_ _rebind?164411_ _phi164412_)
        (let ((_ctx164414_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id164409_
           _e164410_
           _rebind?164411_
           _phi164412_
           _ctx164414_))))
    (define gx#core-bind-syntax!
      (lambda _g171371_
        (let ((_g171370_ (##length _g171371_)))
          (cond ((##fx= _g171370_ 2)
                 (apply (lambda (_id164392_ _e164393_)
                          (gx#core-bind-syntax!__0 _id164392_ _e164393_))
                        _g171371_))
                ((##fx= _g171370_ 3)
                 (apply (lambda (_id164401_ _e164402_ _rebind?164403_)
                          (gx#core-bind-syntax!__1
                           _id164401_
                           _e164402_
                           _rebind?164403_))
                        _g171371_))
                ((##fx= _g171370_ 4)
                 (apply (lambda (_id164409_
                                 _e164410_
                                 _rebind?164411_
                                 _phi164412_)
                          (gx#core-bind-syntax!__2
                           _id164409_
                           _e164410_
                           _rebind?164411_
                           _phi164412_))
                        _g171371_))
                ((##fx= _g171370_ 5)
                 (apply (lambda (_id164416_
                                 _e164417_
                                 _rebind?164418_
                                 _phi164419_
                                 _ctx164420_)
                          (gx#core-bind-syntax!__%
                           _id164416_
                           _e164417_
                           _rebind?164418_
                           _phi164419_
                           _ctx164420_))
                        _g171371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g171371_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id164360_ _e164361_ _rebind?164362_)
        (gx#core-bind-syntax!__%
         _id164360_
         _e164361_
         _rebind?164362_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id164367_ _e164368_)
        (let ((_rebind?164370_ '#f))
          (gx#core-bind-root-syntax!__%
           _id164367_
           _e164368_
           _rebind?164370_))))
    (define gx#core-bind-root-syntax!
      (lambda _g171373_
        (let ((_g171372_ (##length _g171373_)))
          (cond ((##fx= _g171372_ 2)
                 (apply (lambda (_id164367_ _e164368_)
                          (gx#core-bind-root-syntax!__0 _id164367_ _e164368_))
                        _g171373_))
                ((##fx= _g171372_ 3)
                 (apply (lambda (_id164372_ _e164373_ _rebind?164374_)
                          (gx#core-bind-root-syntax!__%
                           _id164372_
                           _e164373_
                           _rebind?164374_))
                        _g171373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g171373_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id164318_
               _alias-id164319_
               _rebind?164320_
               _phi164321_
               _ctx164322_)
        (gx#bind-identifier!__%
         _id164318_
         (let ((_key164324_ (gx#core-identifier-key _id164318_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key164324_ '#t _phi164321_ _ctx164322_)
            _key164324_
            _phi164321_
            _alias-id164319_))
         _rebind?164320_
         _phi164321_
         _ctx164322_)))
    (define gx#core-bind-alias!__0
      (lambda (_id164329_ _alias-id164330_)
        (let* ((_rebind?164332_ '#f)
               (_phi164334_ (gx#current-expander-phi))
               (_ctx164336_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id164329_
           _alias-id164330_
           _rebind?164332_
           _phi164334_
           _ctx164336_))))
    (define gx#core-bind-alias!__1
      (lambda (_id164338_ _alias-id164339_ _rebind?164340_)
        (let* ((_phi164342_ (gx#current-expander-phi))
               (_ctx164344_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id164338_
           _alias-id164339_
           _rebind?164340_
           _phi164342_
           _ctx164344_))))
    (define gx#core-bind-alias!__2
      (lambda (_id164346_ _alias-id164347_ _rebind?164348_ _phi164349_)
        (let ((_ctx164351_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id164346_
           _alias-id164347_
           _rebind?164348_
           _phi164349_
           _ctx164351_))))
    (define gx#core-bind-alias!
      (lambda _g171375_
        (let ((_g171374_ (##length _g171375_)))
          (cond ((##fx= _g171374_ 2)
                 (apply (lambda (_id164329_ _alias-id164330_)
                          (gx#core-bind-alias!__0 _id164329_ _alias-id164330_))
                        _g171375_))
                ((##fx= _g171374_ 3)
                 (apply (lambda (_id164338_ _alias-id164339_ _rebind?164340_)
                          (gx#core-bind-alias!__1
                           _id164338_
                           _alias-id164339_
                           _rebind?164340_))
                        _g171375_))
                ((##fx= _g171374_ 4)
                 (apply (lambda (_id164346_
                                 _alias-id164347_
                                 _rebind?164348_
                                 _phi164349_)
                          (gx#core-bind-alias!__2
                           _id164346_
                           _alias-id164347_
                           _rebind?164348_
                           _phi164349_))
                        _g171375_))
                ((##fx= _g171374_ 5)
                 (apply (lambda (_id164353_
                                 _alias-id164354_
                                 _rebind?164355_
                                 _phi164356_
                                 _ctx164357_)
                          (gx#core-bind-alias!__%
                           _id164353_
                           _alias-id164354_
                           _rebind?164355_
                           _phi164356_
                           _ctx164357_))
                        _g171375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g171375_))))))
    (define gx#make-binding-id__%
      (lambda (_key164275_ _syntax?164276_ _phi164277_ _ctx164278_)
        (if (uninterned-symbol? _key164275_)
            (gensym 'L)
            (if (pair? _key164275_)
                (gensym (car _key164275_))
                (if (##structure-instance-of? _ctx164278_ 'gx#top-context::t)
                    (let ((_ns164280_
                           (gx#core-context-namespace__% _ctx164278_)))
                      (if (and (fxzero? _phi164277_) (not _syntax?164276_))
                          (if _ns164280_
                              (make-symbol__1 _ns164280_ '"#" _key164275_)
                              _key164275_)
                          (if _syntax?164276_
                              (make-symbol__1
                               (let ((_$e164282_ _ns164280_))
                                 (if _$e164282_ _$e164282_ '""))
                               '"[:"
                               (number->string _phi164277_)
                               '":]#"
                               _key164275_)
                              (make-symbol__1
                               (let ((_$e164285_ _ns164280_))
                                 (if _$e164285_ _$e164285_ '""))
                               '"["
                               (number->string _phi164277_)
                               '"]#"
                               _key164275_))))
                    (gensym _key164275_))))))
    (define gx#make-binding-id__0
      (lambda (_key164291_)
        (let* ((_syntax?164293_ '#f)
               (_phi164295_ (gx#current-expander-phi))
               (_ctx164297_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key164291_
           _syntax?164293_
           _phi164295_
           _ctx164297_))))
    (define gx#make-binding-id__1
      (lambda (_key164299_ _syntax?164300_)
        (let* ((_phi164302_ (gx#current-expander-phi))
               (_ctx164304_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key164299_
           _syntax?164300_
           _phi164302_
           _ctx164304_))))
    (define gx#make-binding-id__2
      (lambda (_key164306_ _syntax?164307_ _phi164308_)
        (let ((_ctx164310_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key164306_
           _syntax?164307_
           _phi164308_
           _ctx164310_))))
    (define gx#make-binding-id
      (lambda _g171377_
        (let ((_g171376_ (##length _g171377_)))
          (cond ((##fx= _g171376_ 1)
                 (apply (lambda (_key164291_)
                          (gx#make-binding-id__0 _key164291_))
                        _g171377_))
                ((##fx= _g171376_ 2)
                 (apply (lambda (_key164299_ _syntax?164300_)
                          (gx#make-binding-id__1 _key164299_ _syntax?164300_))
                        _g171377_))
                ((##fx= _g171376_ 3)
                 (apply (lambda (_key164306_ _syntax?164307_ _phi164308_)
                          (gx#make-binding-id__2
                           _key164306_
                           _syntax?164307_
                           _phi164308_))
                        _g171377_))
                ((##fx= _g171376_ 4)
                 (apply (lambda (_key164312_
                                 _syntax?164313_
                                 _phi164314_
                                 _ctx164315_)
                          (gx#make-binding-id__%
                           _key164312_
                           _syntax?164313_
                           _phi164314_
                           _ctx164315_))
                        _g171377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g171377_))))))))
