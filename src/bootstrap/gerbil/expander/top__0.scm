(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708352924)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx88632_)
        (letrec ((_expand-special88634_
                  (lambda (_hd88636_ _K88637_ _rest88638_ _r88639_)
                    (_K88637_
                     _rest88638_
                     (cons (gx#core-expand-top _hd88636_) _r88639_)))))
          (gx#core-expand-block__0 _stx88632_ _expand-special88634_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx88385_)
        (letrec ((_expand-special88387_
                  (lambda (_hd88507_ _K88508_ _rest88509_ _r88510_)
                    (let* ((_K88514_
                            (lambda (_e88512_)
                              (_K88508_ _rest88509_ (cons _e88512_ _r88510_))))
                           (_e8851588544_ _hd88507_)
                           (_E8853988548_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8851588544_)))
                           (_E8853588560_
                            (lambda ()
                              (if (gx#stx-pair? _e8851588544_)
                                  (let ((_e8854088552_
                                         (gx#syntax-e _e8851588544_)))
                                    (let ((_hd8854188555_
                                           (##car _e8854088552_))
                                          (_tl8854288557_
                                           (##cdr _e8854088552_)))
                                      (if (and (gx#identifier? _hd8854188555_)
                                               (gx#core-identifier=?
                                                _hd8854188555_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K88514_
                                               (gx#core-expand-define-runtime%
                                                _hd88507_))
                                              (_E8853988548_))
                                          (_E8853988548_))))
                                  (_E8853988548_))))
                           (_E8853188572_
                            (lambda ()
                              (if (gx#stx-pair? _e8851588544_)
                                  (let ((_e8853688564_
                                         (gx#syntax-e _e8851588544_)))
                                    (let ((_hd8853788567_
                                           (##car _e8853688564_))
                                          (_tl8853888569_
                                           (##cdr _e8853688564_)))
                                      (if (and (gx#identifier? _hd8853788567_)
                                               (gx#core-identifier=?
                                                _hd8853788567_
                                                '%#define-alias))
                                          (if '#t
                                              (_K88514_
                                               (gx#core-expand-define-alias%
                                                _hd88507_))
                                              (_E8853588560_))
                                          (_E8853588560_))))
                                  (_E8853588560_))))
                           (_E8852188584_
                            (lambda ()
                              (if (gx#stx-pair? _e8851588544_)
                                  (let ((_e8853288576_
                                         (gx#syntax-e _e8851588544_)))
                                    (let ((_hd8853388579_
                                           (##car _e8853288576_))
                                          (_tl8853488581_
                                           (##cdr _e8853288576_)))
                                      (if (and (gx#identifier? _hd8853388579_)
                                               (gx#core-identifier=?
                                                _hd8853388579_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K88514_
                                               (gx#core-expand-define-syntax%
                                                _hd88507_))
                                              (_E8853188572_))
                                          (_E8853188572_))))
                                  (_E8853188572_))))
                           (_E8851788616_
                            (lambda ()
                              (if (gx#stx-pair? _e8851588544_)
                                  (let ((_e8852288588_
                                         (gx#syntax-e _e8851588544_)))
                                    (let ((_hd8852388591_
                                           (##car _e8852288588_))
                                          (_tl8852488593_
                                           (##cdr _e8852288588_)))
                                      (if (and (gx#identifier? _hd8852388591_)
                                               (gx#core-identifier=?
                                                _hd8852388591_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8852488593_)
                                              (let ((_e8852588596_
                                                     (gx#syntax-e
                                                      _tl8852488593_)))
                                                (let ((_hd8852688599_
                                                       (##car _e8852588596_))
                                                      (_tl8852788601_
                                                       (##cdr _e8852588596_)))
                                                  (let ((_hd-bind88604_
                                                         _hd8852688599_))
                                                    (if (gx#stx-pair?
                                                         _tl8852788601_)
                                                        (let ((_e8852888606_
                                                               (gx#syntax-e
                                                                _tl8852788601_)))
                                                          (let ((_hd8852988609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8852888606_))
                        (_tl8853088611_ (##cdr _e8852888606_)))
                    (let ((_expr88614_ _hd8852988609_))
                      (if (gx#stx-null? _tl8853088611_)
                          (if (gx#core-bind-values? _hd-bind88604_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind88604_)
                                (_K88514_ _hd88507_))
                              (_E8852188584_))
                          (_E8852188584_)))))
                (_E8852188584_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8852188584_))
                                          (_E8852188584_))))
                                  (_E8852188584_))))
                           (_E8851688628_
                            (lambda ()
                              (if (gx#stx-pair? _e8851588544_)
                                  (let ((_e8851888620_
                                         (gx#syntax-e _e8851588544_)))
                                    (let ((_hd8851988623_
                                           (##car _e8851888620_))
                                          (_tl8852088625_
                                           (##cdr _e8851888620_)))
                                      (if (and (gx#identifier? _hd8851988623_)
                                               (gx#core-identifier=?
                                                _hd8851988623_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K88514_
                                               (gx#core-expand-begin-syntax%
                                                _hd88507_))
                                              (_E8851788616_))
                                          (_E8851788616_))))
                                  (_E8851788616_)))))
                      (_E8851688628_))))
                 (_eval-body88388_
                  (lambda (_rbody88396_)
                    (let _lp88398_ ((_rest88400_ _rbody88396_)
                                    (_body88401_ '())
                                    (_ebody88402_ '()))
                      (let* ((_rest8840388411_ _rest88400_)
                             (_else8840588419_
                              (lambda ()
                                (values _body88401_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody88402_)
                                          (gx#stx-source _stx88385_))))))
                             (_K8840788495_
                              (lambda (_rest88422_ _hd88423_)
                                (let* ((_e8842488441_ _hd88423_)
                                       (_E8843688445_
                                        (lambda ()
                                          (_lp88398_
                                           _rest88422_
                                           (cons _hd88423_ _body88401_)
                                           (cons _hd88423_ _ebody88402_))))
                                       (_E8842688457_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8842488441_)
                                              (let ((_e8843788449_
                                                     (gx#syntax-e
                                                      _e8842488441_)))
                                                (let ((_hd8843888452_
                                                       (##car _e8843788449_))
                                                      (_tl8843988454_
                                                       (##cdr _e8843788449_)))
                                                  (if (and (gx#identifier?
                                                            _hd8843888452_)
                                                           (gx#core-identifier=?
                                                            _hd8843888452_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp88398_
                                                           _rest88422_
                                                           (cons _hd88423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body88401_)
                   _ebody88402_)
                  (_E8843688445_))
              (_E8843688445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8843688445_))))
                                       (_E8842588491_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8842488441_)
                                              (let ((_e8842788461_
                                                     (gx#syntax-e
                                                      _e8842488441_)))
                                                (let ((_hd8842888464_
                                                       (##car _e8842788461_))
                                                      (_tl8842988466_
                                                       (##cdr _e8842788461_)))
                                                  (if (and (gx#identifier?
                                                            _hd8842888464_)
                                                           (gx#core-identifier=?
                                                            _hd8842888464_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8842988466_)
                                                          (let ((_e8843088469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8842988466_)))
                    (let ((_hd8843188472_ (##car _e8843088469_))
                          (_tl8843288474_ (##cdr _e8843088469_)))
                      (let ((_hd-bind88477_ _hd8843188472_))
                        (if (gx#stx-pair? _tl8843288474_)
                            (let ((_e8843388479_ (gx#syntax-e _tl8843288474_)))
                              (let ((_hd8843488482_ (##car _e8843388479_))
                                    (_tl8843588484_ (##cdr _e8843388479_)))
                                (let ((_expr88487_ _hd8843488482_))
                                  (if (gx#stx-null? _tl8843588484_)
                                      (if '#t
                                          (let ((_ehd88489_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind88477_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr88487_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd88423_))))
                                            (_lp88398_
                                             _rest88422_
                                             (cons _ehd88489_ _body88401_)
                                             (cons _ehd88489_ _ebody88402_)))
                                          (_E8842688457_))
                                      (_E8842688457_)))))
                            (_E8842688457_)))))
                  (_E8842688457_))
              (_E8842688457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8842688457_)))))
                                  (_E8842588491_)))))
                        (if (##pair? _rest8840388411_)
                            (let ((_hd8840888498_ (##car _rest8840388411_))
                                  (_tl8840988500_ (##cdr _rest8840388411_)))
                              (let* ((_hd88503_ _hd8840888498_)
                                     (_rest88505_ _tl8840988500_))
                                (_K8840788495_ _rest88505_ _hd88503_)))
                            (_else8840588419_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody88391_
                     (gx#core-expand-block__1
                      _stx88385_
                      _expand-special88387_
                      '#f))
                    (_g88655_ (_eval-body88388_ _rbody88391_)))
               (begin
                 (let ((_g88656_
                        (if (##values? _g88655_)
                            (##vector-length _g88655_)
                            1)))
                   (if (not (##fx= _g88656_ 2))
                       (error "Context expects 2 values" _g88656_)))
                 (let ((_expanded-body88393_ (##vector-ref _g88655_ 0))
                       (_value88394_ (##vector-ref _g88655_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body88393_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value88394_ '())))
                    (gx#stx-source _stx88385_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx88355_)
        (let* ((_e8835688363_ _stx88355_)
               (_E8835888367_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8835688363_)))
               (_E8835788381_
                (lambda ()
                  (if (gx#stx-pair? _e8835688363_)
                      (let ((_e8835988371_ (gx#syntax-e _e8835688363_)))
                        (let ((_hd8836088374_ (##car _e8835988371_))
                              (_tl8836188376_ (##cdr _e8835988371_)))
                          (let ((_body88379_ _tl8836188376_))
                            (if (gx#stx-list? _body88379_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body88379_)
                                 (gx#stx-source _stx88355_))
                                (_E8835888367_)))))
                      (_E8835888367_)))))
          (_E8835788381_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx88353_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx88353_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx88299_)
        (let* ((_e8830088313_ _stx88299_)
               (_E8830288317_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8830088313_)))
               (_E8830188349_
                (lambda ()
                  (if (gx#stx-pair? _e8830088313_)
                      (let ((_e8830388321_ (gx#syntax-e _e8830088313_)))
                        (let ((_hd8830488324_ (##car _e8830388321_))
                              (_tl8830588326_ (##cdr _e8830388321_)))
                          (if (gx#stx-pair? _tl8830588326_)
                              (let ((_e8830688329_
                                     (gx#syntax-e _tl8830588326_)))
                                (let ((_hd8830788332_ (##car _e8830688329_))
                                      (_tl8830888334_ (##cdr _e8830688329_)))
                                  (let ((_ann88337_ _hd8830788332_))
                                    (if (gx#stx-pair? _tl8830888334_)
                                        (let ((_e8830988339_
                                               (gx#syntax-e _tl8830888334_)))
                                          (let ((_hd8831088342_
                                                 (##car _e8830988339_))
                                                (_tl8831188344_
                                                 (##cdr _e8830988339_)))
                                            (let ((_expr88347_ _hd8831088342_))
                                              (if (gx#stx-null? _tl8831188344_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann88337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr88347_) '())))
               (gx#stx-source _stx88299_))
              (_E8830288317_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8830288317_)))))
                                        (_E8830288317_)))))
                              (_E8830288317_))))
                      (_E8830288317_)))))
          (_E8830188349_))))
    (define gx#core-expand-local-block
      (lambda (_stx88023_ _body88024_)
        (letrec ((_expand-special88026_
                  (lambda (_hd88294_ _K88295_ _rest88296_ _r88297_)
                    (_K88295_
                     '()
                     (cons (_expand-internal88027_ _hd88294_ _rest88296_)
                           _r88297_))))
                 (_expand-internal88027_
                  (lambda (_hd88290_ _rest88291_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal88029_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd88290_ _rest88291_))
                          (gx#stx-source _stx88023_))
                         _expand-internal-special88028_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj88649
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj88649)
                       __obj88649))))
                 (_expand-internal-special88028_
                  (lambda (_hd88185_ _K88186_ _rest88187_ _r88188_)
                    (let* ((_e8818988214_ _hd88185_)
                           (_E8820988218_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8818988214_)))
                           (_E8820588230_
                            (lambda ()
                              (if (gx#stx-pair? _e8818988214_)
                                  (let ((_e8821088222_
                                         (gx#syntax-e _e8818988214_)))
                                    (let ((_hd8821188225_
                                           (##car _e8821088222_))
                                          (_tl8821288227_
                                           (##cdr _e8821088222_)))
                                      (if (and (gx#identifier? _hd8821188225_)
                                               (gx#core-identifier=?
                                                _hd8821188225_
                                                '%#declare))
                                          (if '#t
                                              (_K88186_
                                               _rest88187_
                                               (cons (gx#core-expand-declare%
                                                      _hd88185_)
                                                     _r88188_))
                                              (_E8820988218_))
                                          (_E8820988218_))))
                                  (_E8820988218_))))
                           (_E8820188242_
                            (lambda ()
                              (if (gx#stx-pair? _e8818988214_)
                                  (let ((_e8820688234_
                                         (gx#syntax-e _e8818988214_)))
                                    (let ((_hd8820788237_
                                           (##car _e8820688234_))
                                          (_tl8820888239_
                                           (##cdr _e8820688234_)))
                                      (if (and (gx#identifier? _hd8820788237_)
                                               (gx#core-identifier=?
                                                _hd8820788237_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd88185_)
                                                (_K88186_
                                                 _rest88187_
                                                 _r88188_))
                                              (_E8820588230_))
                                          (_E8820588230_))))
                                  (_E8820588230_))))
                           (_E8819188254_
                            (lambda ()
                              (if (gx#stx-pair? _e8818988214_)
                                  (let ((_e8820288246_
                                         (gx#syntax-e _e8818988214_)))
                                    (let ((_hd8820388249_
                                           (##car _e8820288246_))
                                          (_tl8820488251_
                                           (##cdr _e8820288246_)))
                                      (if (and (gx#identifier? _hd8820388249_)
                                               (gx#core-identifier=?
                                                _hd8820388249_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd88185_)
                                                (_K88186_
                                                 _rest88187_
                                                 _r88188_))
                                              (_E8820188242_))
                                          (_E8820188242_))))
                                  (_E8820188242_))))
                           (_E8819088286_
                            (lambda ()
                              (if (gx#stx-pair? _e8818988214_)
                                  (let ((_e8819288258_
                                         (gx#syntax-e _e8818988214_)))
                                    (let ((_hd8819388261_
                                           (##car _e8819288258_))
                                          (_tl8819488263_
                                           (##cdr _e8819288258_)))
                                      (if (and (gx#identifier? _hd8819388261_)
                                               (gx#core-identifier=?
                                                _hd8819388261_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8819488263_)
                                              (let ((_e8819588266_
                                                     (gx#syntax-e
                                                      _tl8819488263_)))
                                                (let ((_hd8819688269_
                                                       (##car _e8819588266_))
                                                      (_tl8819788271_
                                                       (##cdr _e8819588266_)))
                                                  (let ((_hd-bind88274_
                                                         _hd8819688269_))
                                                    (if (gx#stx-pair?
                                                         _tl8819788271_)
                                                        (let ((_e8819888276_
                                                               (gx#syntax-e
                                                                _tl8819788271_)))
                                                          (let ((_hd8819988279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8819888276_))
                        (_tl8820088281_ (##cdr _e8819888276_)))
                    (let ((_expr88284_ _hd8819988279_))
                      (if (gx#stx-null? _tl8820088281_)
                          (if (gx#core-bind-values? _hd-bind88274_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind88274_)
                                (_K88186_
                                 _rest88187_
                                 (cons _hd88185_ _r88188_)))
                              (_E8819188254_))
                          (_E8819188254_)))))
                (_E8819188254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8819188254_))
                                          (_E8819188254_))))
                                  (_E8819188254_)))))
                      (_E8819088286_))))
                 (_wrap-internal88029_
                  (lambda (_rbody88031_)
                    (let _lp88033_ ((_rest88035_ _rbody88031_)
                                    (_decls88036_ '())
                                    (_bind88037_ '())
                                    (_body88038_ '()))
                      (let* ((_e8803988046_ _rest88035_)
                             (_E8804188095_
                              (lambda ()
                                (let* ((_body88090_
                                        (let* ((_body8804988059_ _body88038_)
                                               (_else8805288067_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body88038_)
                                                   (gx#stx-source
                                                    _stx88023_)))))
                                          (let ((_K8805788087_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx88023_)))
                                                (_K8805488073_
                                                 (lambda (_expr88071_)
                                                   _expr88071_)))
                                            (let ((_try-match8805188083_
                                                   (lambda ()
                                                     (if (##pair? _body8804988059_)
                                                         (let ((_tl8805688078_
                                                                (##cdr _body8804988059_))
                                                               (_hd8805588076_
                                                                (##car _body8804988059_)))
                                                           (if (##null? _tl8805688078_)
                                                               (let ((_expr88081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8805588076_))
                         (_K8805488073_ _expr88081_))
                       (_else8805288067_)))
                 (_else8805288067_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8804988059_)
                                                  (_K8805788087_)
                                                  (_try-match8805188083_))))))
                                       (_body88092_
                                        (if (null? _bind88037_)
                                            _body88090_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind88037_
                                                         (cons _body88090_
                                                               '())))
                                             (gx#stx-source _stx88023_)))))
                                  (if (null? _decls88036_)
                                      _body88092_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls88036_
                                                   (cons _body88092_ '())))
                                       (gx#stx-source _stx88023_))))))
                             (_E8804088181_
                              (lambda ()
                                (if (gx#stx-pair? _e8803988046_)
                                    (let ((_e8804288099_
                                           (gx#syntax-e _e8803988046_)))
                                      (let ((_hd8804388102_
                                             (##car _e8804288099_))
                                            (_tl8804488104_
                                             (##cdr _e8804288099_)))
                                        (let* ((_hd88107_ _hd8804388102_)
                                               (_rest88109_ _tl8804488104_))
                                          (if '#t
                                              (let* ((_e8811088127_ _hd88107_)
                                                     (_E8812288131_
                                                      (lambda ()
                                                        (if (null? _bind88037_)
                                                            (_lp88033_
                                                             _rest88109_
                                                             _decls88036_
                                                             _bind88037_
                                                             (cons _hd88107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body88038_))
                    (_lp88033_
                     _rest88109_
                     _decls88036_
                     (cons (cons '#f (cons _hd88107_ '())) _bind88037_)
                     _body88038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8811288145_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8811088127_)
                                                            (let ((_e8812388135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8811088127_)))
                      (let ((_hd8812488138_ (##car _e8812388135_))
                            (_tl8812588140_ (##cdr _e8812388135_)))
                        (if (and (gx#identifier? _hd8812488138_)
                                 (gx#core-identifier=?
                                  _hd8812488138_
                                  '%#declare))
                            (let ((_xdecls88143_ _tl8812588140_))
                              (if '#t
                                  (_lp88033_
                                   _rest88109_
                                   (gx#stx-foldr
                                    cons
                                    _decls88036_
                                    _xdecls88143_)
                                   _bind88037_
                                   _body88038_)
                                  (_E8812288131_)))
                            (_E8812288131_))))
                    (_E8812288131_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8811188177_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8811088127_)
                                                            (let ((_e8811388149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8811088127_)))
                      (let ((_hd8811488152_ (##car _e8811388149_))
                            (_tl8811588154_ (##cdr _e8811388149_)))
                        (if (and (gx#identifier? _hd8811488152_)
                                 (gx#core-identifier=?
                                  _hd8811488152_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8811588154_)
                                (let ((_e8811688157_
                                       (gx#syntax-e _tl8811588154_)))
                                  (let ((_hd8811788160_ (##car _e8811688157_))
                                        (_tl8811888162_ (##cdr _e8811688157_)))
                                    (let ((_hd-bind88165_ _hd8811788160_))
                                      (if (gx#stx-pair? _tl8811888162_)
                                          (let ((_e8811988167_
                                                 (gx#syntax-e _tl8811888162_)))
                                            (let ((_hd8812088170_
                                                   (##car _e8811988167_))
                                                  (_tl8812188172_
                                                   (##cdr _e8811988167_)))
                                              (let ((_expr88175_
                                                     _hd8812088170_))
                                                (if (gx#stx-null?
                                                     _tl8812188172_)
                                                    (if '#t
                                                        (_lp88033_
                                                         _rest88109_
                                                         _decls88036_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind88165_)
                             (cons (gx#core-expand-expression _expr88175_)
                                   '()))
                       _bind88037_)
                 _body88038_)
                (_E8811288145_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8811288145_)))))
                                          (_E8811288145_)))))
                                (_E8811288145_))
                            (_E8811288145_))))
                    (_E8811288145_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8811188177_))
                                              (_E8804188095_)))))
                                    (_E8804188095_)))))
                        (_E8804088181_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body88024_)
            (gx#stx-source _stx88023_))
           _expand-special88026_))))
    (define gx#core-expand-declare%
      (lambda (_stx87961_)
        (let* ((_e8796287969_ _stx87961_)
               (_E8796487973_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8796287969_)))
               (_E8796388019_
                (lambda ()
                  (if (gx#stx-pair? _e8796287969_)
                      (let ((_e8796587977_ (gx#syntax-e _e8796287969_)))
                        (let ((_hd8796687980_ (##car _e8796587977_))
                              (_tl8796787982_ (##cdr _e8796587977_)))
                          (let ((_body87985_ _tl8796787982_))
                            (if (gx#stx-list? _body87985_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl87987_)
                                     (let* ((_e8798887995_ _decl87987_)
                                            (_E8799087999_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8798887995_)))
                                            (_E8798988015_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8798887995_)
                                                   (let ((_e8799188003_
                                                          (gx#syntax-e
                                                           _e8798887995_)))
                                                     (let ((_hd8799288006_
                                                            (##car _e8799188003_))
                                                           (_tl8799388008_
                                                            (##cdr _e8799188003_)))
                                                       (let* ((_head88011_
                                                               _hd8799288006_)
                                                              (_args88013_
                                                               _tl8799388008_))
                                                         (if (gx#stx-list?
                                                              _args88013_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl87987_)
                                                             (_E8799087999_)))))
                                                   (_E8799087999_)))))
                                       (_E8798988015_)))
                                   _body87985_))
                                 (gx#stx-source _stx87961_))
                                (_E8796487973_)))))
                      (_E8796487973_)))))
          (_E8796388019_))))
    (define gx#core-expand-extern%
      (lambda (_stx87865_)
        (let* ((_e8786687873_ _stx87865_)
               (_E8786887877_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8786687873_)))
               (_E8786787957_
                (lambda ()
                  (if (gx#stx-pair? _e8786687873_)
                      (let ((_e8786987881_ (gx#syntax-e _e8786687873_)))
                        (let ((_hd8787087884_ (##car _e8786987881_))
                              (_tl8787187886_ (##cdr _e8786987881_)))
                          (let ((_body87889_ _tl8787187886_))
                            (if '#t
                                (let _lp87891_ ((_rest87893_ _body87889_)
                                                (_r87894_ '()))
                                  (let* ((_e8789587909_ _rest87893_)
                                         (_E8790787913_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx87865_)))
                                         (_E8789787917_
                                          (lambda ()
                                            (if (gx#stx-null? _e8789587909_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r87894_))
                                                     (gx#stx-source
                                                      _stx87865_))
                                                    (_E8790787913_))
                                                (_E8790787913_))))
                                         (_E8789687953_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8789587909_)
                                                (let ((_e8789887921_
                                                       (gx#syntax-e
                                                        _e8789587909_)))
                                                  (let ((_hd8789987924_
                                                         (##car _e8789887921_))
                                                        (_tl8790087926_
                                                         (##cdr _e8789887921_)))
                                                    (if (gx#stx-pair?
                                                         _hd8789987924_)
                                                        (let ((_e8790187929_
                                                               (gx#syntax-e
                                                                _hd8789987924_)))
                                                          (let ((_hd8790287932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8790187929_))
                        (_tl8790387934_ (##cdr _e8790187929_)))
                    (let ((_id87937_ _hd8790287932_))
                      (if (gx#stx-pair? _tl8790387934_)
                          (let ((_e8790487939_ (gx#syntax-e _tl8790387934_)))
                            (let ((_hd8790587942_ (##car _e8790487939_))
                                  (_tl8790687944_ (##cdr _e8790487939_)))
                              (let ((_eid87947_ _hd8790587942_))
                                (if (gx#stx-null? _tl8790687944_)
                                    (let ((_rest87949_ _tl8790087926_))
                                      (if (and (gx#identifier? _id87937_)
                                               (gx#identifier? _eid87947_))
                                          (let ((_eid87951_
                                                 (gx#stx-e _eid87947_)))
                                            (gx#core-bind-extern!__0
                                             _id87937_
                                             _eid87951_)
                                            (_lp87891_
                                             _rest87949_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id87937_)
                                                         (cons _eid87951_ '()))
                                                   _r87894_)))
                                          (_E8789787917_)))
                                    (_E8789787917_)))))
                          (_E8789787917_)))))
                (_E8789787917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8789787917_)))))
                                    (_E8789687953_)))
                                (_E8786887877_)))))
                      (_E8786887877_)))))
          (_E8786787957_))))
    (define gx#core-expand-define-values%
      (lambda (_stx87811_)
        (let* ((_e8781287825_ _stx87811_)
               (_E8781487829_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8781287825_)))
               (_E8781387861_
                (lambda ()
                  (if (gx#stx-pair? _e8781287825_)
                      (let ((_e8781587833_ (gx#syntax-e _e8781287825_)))
                        (let ((_hd8781687836_ (##car _e8781587833_))
                              (_tl8781787838_ (##cdr _e8781587833_)))
                          (if (gx#stx-pair? _tl8781787838_)
                              (let ((_e8781887841_
                                     (gx#syntax-e _tl8781787838_)))
                                (let ((_hd8781987844_ (##car _e8781887841_))
                                      (_tl8782087846_ (##cdr _e8781887841_)))
                                  (let ((_hd87849_ _hd8781987844_))
                                    (if (gx#stx-pair? _tl8782087846_)
                                        (let ((_e8782187851_
                                               (gx#syntax-e _tl8782087846_)))
                                          (let ((_hd8782287854_
                                                 (##car _e8782187851_))
                                                (_tl8782387856_
                                                 (##cdr _e8782187851_)))
                                            (let ((_expr87859_ _hd8782287854_))
                                              (if (gx#stx-null? _tl8782387856_)
                                                  (if (gx#core-bind-values?
                                                       _hd87849_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd87849_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd87849_)
                             (cons (gx#core-expand-expression _expr87859_)
                                   '())))
                 (gx#stx-source _stx87811_)))
              (_E8781487829_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8781487829_)))))
                                        (_E8781487829_)))))
                              (_E8781487829_))))
                      (_E8781487829_)))))
          (_E8781387861_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx87755_)
        (let* ((_e8775687769_ _stx87755_)
               (_E8775887773_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8775687769_)))
               (_E8775787807_
                (lambda ()
                  (if (gx#stx-pair? _e8775687769_)
                      (let ((_e8775987777_ (gx#syntax-e _e8775687769_)))
                        (let ((_hd8776087780_ (##car _e8775987777_))
                              (_tl8776187782_ (##cdr _e8775987777_)))
                          (if (gx#stx-pair? _tl8776187782_)
                              (let ((_e8776287785_
                                     (gx#syntax-e _tl8776187782_)))
                                (let ((_hd8776387788_ (##car _e8776287785_))
                                      (_tl8776487790_ (##cdr _e8776287785_)))
                                  (let ((_id87793_ _hd8776387788_))
                                    (if (gx#stx-pair? _tl8776487790_)
                                        (let ((_e8776587795_
                                               (gx#syntax-e _tl8776487790_)))
                                          (let ((_hd8776687798_
                                                 (##car _e8776587795_))
                                                (_tl8776787800_
                                                 (##cdr _e8776587795_)))
                                            (let ((_binding-id87803_
                                                   _hd8776687798_))
                                              (if (gx#stx-null? _tl8776787800_)
                                                  (if (and (gx#identifier?
                                                            _id87793_)
                                                           (gx#identifier?
                                                            _binding-id87803_))
                                                      (let ((_eid87805_
                                                             (gx#stx-e
                                                              _binding-id87803_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id87793_
                                                         _eid87805_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id87793_)
                             (cons _eid87805_ '())))))
              (_E8775887773_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8775887773_)))))
                                        (_E8775887773_)))))
                              (_E8775887773_))))
                      (_E8775887773_)))))
          (_E8775787807_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx87698_)
        (let* ((_e8769987712_ _stx87698_)
               (_E8770187716_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8769987712_)))
               (_E8770087751_
                (lambda ()
                  (if (gx#stx-pair? _e8769987712_)
                      (let ((_e8770287720_ (gx#syntax-e _e8769987712_)))
                        (let ((_hd8770387723_ (##car _e8770287720_))
                              (_tl8770487725_ (##cdr _e8770287720_)))
                          (if (gx#stx-pair? _tl8770487725_)
                              (let ((_e8770587728_
                                     (gx#syntax-e _tl8770487725_)))
                                (let ((_hd8770687731_ (##car _e8770587728_))
                                      (_tl8770787733_ (##cdr _e8770587728_)))
                                  (let ((_id87736_ _hd8770687731_))
                                    (if (gx#stx-pair? _tl8770787733_)
                                        (let ((_e8770887738_
                                               (gx#syntax-e _tl8770787733_)))
                                          (let ((_hd8770987741_
                                                 (##car _e8770887738_))
                                                (_tl8771087743_
                                                 (##cdr _e8770887738_)))
                                            (let ((_expr87746_ _hd8770987741_))
                                              (if (gx#stx-null? _tl8771087743_)
                                                  (if (gx#identifier?
                                                       _id87736_)
                                                      (let ((_g88657_
                                                             (gx#core-expand-expression+1
                                                              _expr87746_)))
                                                        (begin
                                                          (let ((_g88658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g88657_)
                             (##vector-length _g88657_)
                             1)))
                    (if (not (##fx= _g88658_ 2))
                        (error "Context expects 2 values" _g88658_)))
                  (let ((_e-stx87748_ (##vector-ref _g88657_ 0))
                        (_e87749_ (##vector-ref _g88657_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id87736_ _e87749_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id87736_)
                                   (cons _e-stx87748_ '())))
                       (gx#stx-source _stx87698_))))))
              (_E8770187716_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8770187716_)))))
                                        (_E8770187716_)))))
                              (_E8770187716_))))
                      (_E8770187716_)))))
          (_E8770087751_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx87642_)
        (let* ((_e8764387656_ _stx87642_)
               (_E8764587660_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8764387656_)))
               (_E8764487694_
                (lambda ()
                  (if (gx#stx-pair? _e8764387656_)
                      (let ((_e8764687664_ (gx#syntax-e _e8764387656_)))
                        (let ((_hd8764787667_ (##car _e8764687664_))
                              (_tl8764887669_ (##cdr _e8764687664_)))
                          (if (gx#stx-pair? _tl8764887669_)
                              (let ((_e8764987672_
                                     (gx#syntax-e _tl8764887669_)))
                                (let ((_hd8765087675_ (##car _e8764987672_))
                                      (_tl8765187677_ (##cdr _e8764987672_)))
                                  (let ((_id87680_ _hd8765087675_))
                                    (if (gx#stx-pair? _tl8765187677_)
                                        (let ((_e8765287682_
                                               (gx#syntax-e _tl8765187677_)))
                                          (let ((_hd8765387685_
                                                 (##car _e8765287682_))
                                                (_tl8765487687_
                                                 (##cdr _e8765287682_)))
                                            (let ((_alias-id87690_
                                                   _hd8765387685_))
                                              (if (gx#stx-null? _tl8765487687_)
                                                  (if (and (gx#identifier?
                                                            _id87680_)
                                                           (gx#identifier?
                                                            _alias-id87690_))
                                                      (let ((_alias-id87692_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id87690_)))
                                                        (gx#core-bind-alias!__0
                                                         _id87680_
                                                         _alias-id87692_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id87680_)
                             (cons _alias-id87692_ '())))))
              (_E8764587660_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8764587660_)))))
                                        (_E8764587660_)))))
                              (_E8764587660_))))
                      (_E8764587660_)))))
          (_E8764487694_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx87585_ _wrap?87586_)
        (let* ((_e8758787597_ _stx87585_)
               (_E8758987601_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8758787597_)))
               (_E8758887628_
                (lambda ()
                  (if (gx#stx-pair? _e8758787597_)
                      (let ((_e8759087605_ (gx#syntax-e _e8758787597_)))
                        (let ((_hd8759187608_ (##car _e8759087605_))
                              (_tl8759287610_ (##cdr _e8759087605_)))
                          (if (gx#stx-pair? _tl8759287610_)
                              (let ((_e8759387613_
                                     (gx#syntax-e _tl8759287610_)))
                                (let ((_hd8759487616_ (##car _e8759387613_))
                                      (_tl8759587618_ (##cdr _e8759387613_)))
                                  (let* ((_hd87621_ _hd8759487616_)
                                         (_body87623_ _tl8759587618_))
                                    (if (gx#core-bind-values? _hd87621_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd87621_)
                                           (let ((_body87626_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd87621_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx87585_
                                                               _body87623_)
                                                              '()))))
                                             (if _wrap?87586_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body87626_)
                                                  (gx#stx-source _stx87585_))
                                                 _body87626_)))
                                         gx#current-expander-context
                                         (let ((__obj88650
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88650)
                                           __obj88650))
                                        (_E8758987601_)))))
                              (_E8758987601_))))
                      (_E8758987601_)))))
          (_E8758887628_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx87635_)
        (let ((_wrap?87637_ '#t))
          (gx#core-expand-lambda%__% _stx87635_ _wrap?87637_))))
    (define gx#core-expand-lambda%
      (lambda _g88660_
        (let ((_g88659_ (##length _g88660_)))
          (cond ((##fx= _g88659_ 1)
                 (apply (lambda (_stx87635_)
                          (gx#core-expand-lambda%__0 _stx87635_))
                        _g88660_))
                ((##fx= _g88659_ 2)
                 (apply (lambda (_stx87639_ _wrap?87640_)
                          (gx#core-expand-lambda%__% _stx87639_ _wrap?87640_))
                        _g88660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g88660_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx87549_)
        (let* ((_e8755087557_ _stx87549_)
               (_E8755287561_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8755087557_)))
               (_E8755187580_
                (lambda ()
                  (if (gx#stx-pair? _e8755087557_)
                      (let ((_e8755387565_ (gx#syntax-e _e8755087557_)))
                        (let ((_hd8755487568_ (##car _e8755387565_))
                              (_tl8755587570_ (##cdr _e8755387565_)))
                          (let ((_clauses87573_ _tl8755587570_))
                            (if (gx#stx-list? _clauses87573_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause87575_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause87575_)
                                       (let ((_$e87577_
                                              (gx#stx-source _clause87575_)))
                                         (if _$e87577_
                                             _$e87577_
                                             (gx#stx-source _stx87549_))))
                                      '#f))
                                   _clauses87573_))
                                 (gx#stx-source _stx87549_))
                                (_E8755287561_)))))
                      (_E8755287561_)))))
          (_E8755187580_))))
    (define gx#core-expand-let-values%
      (lambda (_stx87503_)
        (let* ((_e8750487514_ _stx87503_)
               (_E8750687518_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8750487514_)))
               (_E8750587545_
                (lambda ()
                  (if (gx#stx-pair? _e8750487514_)
                      (let ((_e8750787522_ (gx#syntax-e _e8750487514_)))
                        (let ((_hd8750887525_ (##car _e8750787522_))
                              (_tl8750987527_ (##cdr _e8750787522_)))
                          (if (gx#stx-pair? _tl8750987527_)
                              (let ((_e8751087530_
                                     (gx#syntax-e _tl8750987527_)))
                                (let ((_hd8751187533_ (##car _e8751087530_))
                                      (_tl8751287535_ (##cdr _e8751087530_)))
                                  (let* ((_hd87538_ _hd8751187533_)
                                         (_body87540_ _tl8751287535_))
                                    (if (gx#core-expand-let-bind? _hd87538_)
                                        (let ((_expressions87542_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd87538_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd87538_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd87538_
                                                           _expressions87542_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx87503_
                         _body87540_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx87503_)))
                                           gx#current-expander-context
                                           (let ((__obj88651
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj88651)
                                             __obj88651)))
                                        (_E8750687518_)))))
                              (_E8750687518_))))
                      (_E8750687518_)))))
          (_E8750587545_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx87448_ _form87449_)
        (let* ((_e8745087460_ _stx87448_)
               (_E8745287464_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8745087460_)))
               (_E8745187489_
                (lambda ()
                  (if (gx#stx-pair? _e8745087460_)
                      (let ((_e8745387468_ (gx#syntax-e _e8745087460_)))
                        (let ((_hd8745487471_ (##car _e8745387468_))
                              (_tl8745587473_ (##cdr _e8745387468_)))
                          (if (gx#stx-pair? _tl8745587473_)
                              (let ((_e8745687476_
                                     (gx#syntax-e _tl8745587473_)))
                                (let ((_hd8745787479_ (##car _e8745687476_))
                                      (_tl8745887481_ (##cdr _e8745687476_)))
                                  (let* ((_hd87484_ _hd8745787479_)
                                         (_body87486_ _tl8745887481_))
                                    (if (gx#core-expand-let-bind? _hd87484_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd87484_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form87449_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd87484_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd87484_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx87448_
                                                               _body87486_)
                                                              '())))
                                            (gx#stx-source _stx87448_)))
                                         gx#current-expander-context
                                         (let ((__obj88652
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88652)
                                           __obj88652))
                                        (_E8745287464_)))))
                              (_E8745287464_))))
                      (_E8745287464_)))))
          (_E8745187489_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx87496_)
        (let ((_form87498_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx87496_ _form87498_))))
    (define gx#core-expand-letrec-values%
      (lambda _g88662_
        (let ((_g88661_ (##length _g88662_)))
          (cond ((##fx= _g88661_ 1)
                 (apply (lambda (_stx87496_)
                          (gx#core-expand-letrec-values%__0 _stx87496_))
                        _g88662_))
                ((##fx= _g88661_ 2)
                 (apply (lambda (_stx87500_ _form87501_)
                          (gx#core-expand-letrec-values%__%
                           _stx87500_
                           _form87501_))
                        _g88662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g88662_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx87445_)
        (gx#core-expand-letrec-values%__% _stx87445_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx87402_)
        (if (gx#stx-list? _stx87402_)
            (gx#stx-andmap
             (lambda (_bind87404_)
               (let* ((_e8740587415_ _bind87404_)
                      (_E8740787419_ (lambda () '#f))
                      (_E8740687441_
                       (lambda ()
                         (if (gx#stx-pair? _e8740587415_)
                             (let ((_e8740887423_ (gx#syntax-e _e8740587415_)))
                               (let ((_hd8740987426_ (##car _e8740887423_))
                                     (_tl8741087428_ (##cdr _e8740887423_)))
                                 (let ((_hd87431_ _hd8740987426_))
                                   (if (gx#stx-pair? _tl8741087428_)
                                       (let ((_e8741187433_
                                              (gx#syntax-e _tl8741087428_)))
                                         (let ((_hd8741287436_
                                                (##car _e8741187433_))
                                               (_tl8741387438_
                                                (##cdr _e8741187433_)))
                                           (if (gx#stx-null? _tl8741387438_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd87431_)
                                                   (_E8740787419_))
                                               (_E8740787419_))))
                                       (_E8740787419_)))))
                             (_E8740787419_)))))
                 (_E8740687441_)))
             _stx87402_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind87361_)
        (let* ((_e8736287372_ _bind87361_)
               (_E8736487376_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8736287372_)))
               (_E8736387398_
                (lambda ()
                  (if (gx#stx-pair? _e8736287372_)
                      (let ((_e8736587380_ (gx#syntax-e _e8736287372_)))
                        (let ((_hd8736687383_ (##car _e8736587380_))
                              (_tl8736787385_ (##cdr _e8736587380_)))
                          (if (gx#stx-pair? _tl8736787385_)
                              (let ((_e8736887388_
                                     (gx#syntax-e _tl8736787385_)))
                                (let ((_hd8736987391_ (##car _e8736887388_))
                                      (_tl8737087393_ (##cdr _e8736887388_)))
                                  (let ((_expr87396_ _hd8736987391_))
                                    (if (gx#stx-null? _tl8737087393_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr87396_)
                                            (_E8736487376_))
                                        (_E8736487376_)))))
                              (_E8736487376_))))
                      (_E8736487376_)))))
          (_E8736387398_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind87320_)
        (let* ((_e8732187331_ _bind87320_)
               (_E8732387335_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8732187331_)))
               (_E8732287357_
                (lambda ()
                  (if (gx#stx-pair? _e8732187331_)
                      (let ((_e8732487339_ (gx#syntax-e _e8732187331_)))
                        (let ((_hd8732587342_ (##car _e8732487339_))
                              (_tl8732687344_ (##cdr _e8732487339_)))
                          (let ((_hd87347_ _hd8732587342_))
                            (if (gx#stx-pair? _tl8732687344_)
                                (let ((_e8732787349_
                                       (gx#syntax-e _tl8732687344_)))
                                  (let ((_hd8732887352_ (##car _e8732787349_))
                                        (_tl8732987354_ (##cdr _e8732787349_)))
                                    (if (gx#stx-null? _tl8732987354_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd87347_)
                                            (_E8732387335_))
                                        (_E8732387335_))))
                                (_E8732387335_)))))
                      (_E8732387335_)))))
          (_E8732287357_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind87278_ _expr87279_)
        (let* ((_e8728087290_ _bind87278_)
               (_E8728287294_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8728087290_)))
               (_E8728187316_
                (lambda ()
                  (if (gx#stx-pair? _e8728087290_)
                      (let ((_e8728387298_ (gx#syntax-e _e8728087290_)))
                        (let ((_hd8728487301_ (##car _e8728387298_))
                              (_tl8728587303_ (##cdr _e8728387298_)))
                          (let ((_hd87306_ _hd8728487301_))
                            (if (gx#stx-pair? _tl8728587303_)
                                (let ((_e8728687308_
                                       (gx#syntax-e _tl8728587303_)))
                                  (let ((_hd8728787311_ (##car _e8728687308_))
                                        (_tl8728887313_ (##cdr _e8728687308_)))
                                    (if (gx#stx-null? _tl8728887313_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd87306_)
                                                  (cons _expr87279_ '()))
                                            (_E8728287294_))
                                        (_E8728287294_))))
                                (_E8728287294_)))))
                      (_E8728287294_)))))
          (_E8728187316_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx87232_)
        (let* ((_e8723387243_ _stx87232_)
               (_E8723587247_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8723387243_)))
               (_E8723487274_
                (lambda ()
                  (if (gx#stx-pair? _e8723387243_)
                      (let ((_e8723687251_ (gx#syntax-e _e8723387243_)))
                        (let ((_hd8723787254_ (##car _e8723687251_))
                              (_tl8723887256_ (##cdr _e8723687251_)))
                          (if (gx#stx-pair? _tl8723887256_)
                              (let ((_e8723987259_
                                     (gx#syntax-e _tl8723887256_)))
                                (let ((_hd8724087262_ (##car _e8723987259_))
                                      (_tl8724187264_ (##cdr _e8723987259_)))
                                  (let* ((_hd87267_ _hd8724087262_)
                                         (_body87269_ _tl8724187264_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87267_)
                                        (let ((_expanders87271_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd87267_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd87267_
                                              _expanders87271_)
                                             (gx#core-expand-local-block
                                              _stx87232_
                                              _body87269_))
                                           gx#current-expander-context
                                           (let ((__obj88653
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj88653)
                                             __obj88653)))
                                        (_E8723587247_)))))
                              (_E8723587247_))))
                      (_E8723587247_)))))
          (_E8723487274_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx87181_)
        (let* ((_e8718287192_ _stx87181_)
               (_E8718487196_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8718287192_)))
               (_E8718387228_
                (lambda ()
                  (if (gx#stx-pair? _e8718287192_)
                      (let ((_e8718587200_ (gx#syntax-e _e8718287192_)))
                        (let ((_hd8718687203_ (##car _e8718587200_))
                              (_tl8718787205_ (##cdr _e8718587200_)))
                          (if (gx#stx-pair? _tl8718787205_)
                              (let ((_e8718887208_
                                     (gx#syntax-e _tl8718787205_)))
                                (let ((_hd8718987211_ (##car _e8718887208_))
                                      (_tl8719087213_ (##cdr _e8718887208_)))
                                  (let* ((_hd87216_ _hd8718987211_)
                                         (_body87218_ _tl8719087213_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87216_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd87216_
                                            (make-list__%
                                             (gx#stx-length _hd87216_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8722087223_
                                                     _g8722187225_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8722087223_
                                               _g8722187225_
                                               '#t))
                                            _hd87216_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd87216_))
                                           (gx#core-expand-local-block
                                            _stx87181_
                                            _body87218_))
                                         gx#current-expander-context
                                         (let ((__obj88654
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88654)
                                           __obj88654))
                                        (_E8718487196_)))))
                              (_E8718487196_))))
                      (_E8718487196_)))))
          (_E8718387228_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx87138_)
        (if (gx#stx-list? _stx87138_)
            (gx#stx-andmap
             (lambda (_bind87140_)
               (let* ((_e8714187151_ _bind87140_)
                      (_E8714387155_ (lambda () '#f))
                      (_E8714287177_
                       (lambda ()
                         (if (gx#stx-pair? _e8714187151_)
                             (let ((_e8714487159_ (gx#syntax-e _e8714187151_)))
                               (let ((_hd8714587162_ (##car _e8714487159_))
                                     (_tl8714687164_ (##cdr _e8714487159_)))
                                 (let ((_hd87167_ _hd8714587162_))
                                   (if (gx#stx-pair? _tl8714687164_)
                                       (let ((_e8714787169_
                                              (gx#syntax-e _tl8714687164_)))
                                         (let ((_hd8714887172_
                                                (##car _e8714787169_))
                                               (_tl8714987174_
                                                (##cdr _e8714787169_)))
                                           (if (gx#stx-null? _tl8714987174_)
                                               (if '#t
                                                   (gx#identifier? _hd87167_)
                                                   (_E8714387155_))
                                               (_E8714387155_))))
                                       (_E8714387155_)))))
                             (_E8714387155_)))))
                 (_E8714287177_)))
             _stx87138_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind87095_)
        (let* ((_e8709687106_ _bind87095_)
               (_E8709887110_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8709687106_)))
               (_E8709787134_
                (lambda ()
                  (if (gx#stx-pair? _e8709687106_)
                      (let ((_e8709987114_ (gx#syntax-e _e8709687106_)))
                        (let ((_hd8710087117_ (##car _e8709987114_))
                              (_tl8710187119_ (##cdr _e8709987114_)))
                          (if (gx#stx-pair? _tl8710187119_)
                              (let ((_e8710287122_
                                     (gx#syntax-e _tl8710187119_)))
                                (let ((_hd8710387125_ (##car _e8710287122_))
                                      (_tl8710487127_ (##cdr _e8710287122_)))
                                  (let ((_expr87130_ _hd8710387125_))
                                    (if (gx#stx-null? _tl8710487127_)
                                        (if '#t
                                            (let ((_g88663_
                                                   (gx#core-expand-expression+1
                                                    _expr87130_)))
                                              (begin
                                                (let ((_g88664_
                                                       (if (##values? _g88663_)
                                                           (##vector-length
                                                            _g88663_)
                                                           1)))
                                                  (if (not (##fx= _g88664_ 2))
                                                      (error "Context expects 2 values"
                                                             _g88664_)))
                                                (let ((_e87132_
                                                       (##vector-ref
                                                        _g88663_
                                                        1)))
                                                  _e87132_)))
                                            (_E8709887110_))
                                        (_E8709887110_)))))
                              (_E8709887110_))))
                      (_E8709887110_)))))
          (_E8709787134_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind87040_ _e87041_ _rebind?87042_)
        (let* ((_e8704387053_ _bind87040_)
               (_E8704587057_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8704387053_)))
               (_E8704487079_
                (lambda ()
                  (if (gx#stx-pair? _e8704387053_)
                      (let ((_e8704687061_ (gx#syntax-e _e8704387053_)))
                        (let ((_hd8704787064_ (##car _e8704687061_))
                              (_tl8704887066_ (##cdr _e8704687061_)))
                          (let ((_id87069_ _hd8704787064_))
                            (if (gx#stx-pair? _tl8704887066_)
                                (let ((_e8704987071_
                                       (gx#syntax-e _tl8704887066_)))
                                  (let ((_hd8705087074_ (##car _e8704987071_))
                                        (_tl8705187076_ (##cdr _e8704987071_)))
                                    (if (gx#stx-null? _tl8705187076_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id87069_
                                             _e87041_
                                             _rebind?87042_)
                                            (_E8704587057_))
                                        (_E8704587057_))))
                                (_E8704587057_)))))
                      (_E8704587057_)))))
          (_E8704487079_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind87086_ _e87087_)
        (let ((_rebind?87089_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind87086_
           _e87087_
           _rebind?87089_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g88666_
        (let ((_g88665_ (##length _g88666_)))
          (cond ((##fx= _g88665_ 2)
                 (apply (lambda (_bind87086_ _e87087_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind87086_
                           _e87087_))
                        _g88666_))
                ((##fx= _g88665_ 3)
                 (apply (lambda (_bind87091_ _e87092_ _rebind?87093_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind87091_
                           _e87092_
                           _rebind?87093_))
                        _g88666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g88666_))))))
    (define gx#core-expand-expression%
      (lambda (_stx86998_)
        (let* ((_e8699987009_ _stx86998_)
               (_E8700187013_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8699987009_)))
               (_E8700087035_
                (lambda ()
                  (if (gx#stx-pair? _e8699987009_)
                      (let ((_e8700287017_ (gx#syntax-e _e8699987009_)))
                        (let ((_hd8700387020_ (##car _e8700287017_))
                              (_tl8700487022_ (##cdr _e8700287017_)))
                          (if (gx#stx-pair? _tl8700487022_)
                              (let ((_e8700587025_
                                     (gx#syntax-e _tl8700487022_)))
                                (let ((_hd8700687028_ (##car _e8700587025_))
                                      (_tl8700787030_ (##cdr _e8700587025_)))
                                  (let ((_expr87033_ _hd8700687028_))
                                    (if (gx#stx-null? _tl8700787030_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr87033_)
                                            (_E8700187013_))
                                        (_E8700187013_)))))
                              (_E8700187013_))))
                      (_E8700187013_)))))
          (_E8700087035_))))
    (define gx#core-expand-quote%
      (lambda (_stx86957_)
        (let* ((_e8695886968_ _stx86957_)
               (_E8696086972_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8695886968_)))
               (_E8695986994_
                (lambda ()
                  (if (gx#stx-pair? _e8695886968_)
                      (let ((_e8696186976_ (gx#syntax-e _e8695886968_)))
                        (let ((_hd8696286979_ (##car _e8696186976_))
                              (_tl8696386981_ (##cdr _e8696186976_)))
                          (if (gx#stx-pair? _tl8696386981_)
                              (let ((_e8696486984_
                                     (gx#syntax-e _tl8696386981_)))
                                (let ((_hd8696586987_ (##car _e8696486984_))
                                      (_tl8696686989_ (##cdr _e8696486984_)))
                                  (let ((_e86992_ _hd8696586987_))
                                    (if (gx#stx-null? _tl8696686989_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e86992_)
                                                         '()))
                                             (gx#stx-source _stx86957_))
                                            (_E8696086972_))
                                        (_E8696086972_)))))
                              (_E8696086972_))))
                      (_E8696086972_)))))
          (_E8695986994_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx86916_)
        (let* ((_e8691786927_ _stx86916_)
               (_E8691986931_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8691786927_)))
               (_E8691886953_
                (lambda ()
                  (if (gx#stx-pair? _e8691786927_)
                      (let ((_e8692086935_ (gx#syntax-e _e8691786927_)))
                        (let ((_hd8692186938_ (##car _e8692086935_))
                              (_tl8692286940_ (##cdr _e8692086935_)))
                          (if (gx#stx-pair? _tl8692286940_)
                              (let ((_e8692386943_
                                     (gx#syntax-e _tl8692286940_)))
                                (let ((_hd8692486946_ (##car _e8692386943_))
                                      (_tl8692586948_ (##cdr _e8692386943_)))
                                  (let ((_e86951_ _hd8692486946_))
                                    (if (gx#stx-null? _tl8692586948_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e86951_)
                                                         '()))
                                             (gx#stx-source _stx86916_))
                                            (_E8691986931_))
                                        (_E8691986931_)))))
                              (_E8691986931_))))
                      (_E8691986931_)))))
          (_E8691886953_))))
    (define gx#core-expand-call%
      (lambda (_stx86873_)
        (let* ((_e8687486884_ _stx86873_)
               (_E8687686888_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8687486884_)))
               (_E8687586912_
                (lambda ()
                  (if (gx#stx-pair? _e8687486884_)
                      (let ((_e8687786892_ (gx#syntax-e _e8687486884_)))
                        (let ((_hd8687886895_ (##car _e8687786892_))
                              (_tl8687986897_ (##cdr _e8687786892_)))
                          (if (gx#stx-pair? _tl8687986897_)
                              (let ((_e8688086900_
                                     (gx#syntax-e _tl8687986897_)))
                                (let ((_hd8688186903_ (##car _e8688086900_))
                                      (_tl8688286905_ (##cdr _e8688086900_)))
                                  (let* ((_rator86908_ _hd8688186903_)
                                         (_args86910_ _tl8688286905_))
                                    (if (gx#stx-list? _args86910_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator86908_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args86910_))
                                         (gx#stx-source _stx86873_))
                                        (_E8687686888_)))))
                              (_E8687686888_))))
                      (_E8687686888_)))))
          (_E8687586912_))))
    (define gx#core-expand-if%
      (lambda (_stx86806_)
        (let* ((_e8680786823_ _stx86806_)
               (_E8680986827_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8680786823_)))
               (_E8680886869_
                (lambda ()
                  (if (gx#stx-pair? _e8680786823_)
                      (let ((_e8681086831_ (gx#syntax-e _e8680786823_)))
                        (let ((_hd8681186834_ (##car _e8681086831_))
                              (_tl8681286836_ (##cdr _e8681086831_)))
                          (if (gx#stx-pair? _tl8681286836_)
                              (let ((_e8681386839_
                                     (gx#syntax-e _tl8681286836_)))
                                (let ((_hd8681486842_ (##car _e8681386839_))
                                      (_tl8681586844_ (##cdr _e8681386839_)))
                                  (let ((_test86847_ _hd8681486842_))
                                    (if (gx#stx-pair? _tl8681586844_)
                                        (let ((_e8681686849_
                                               (gx#syntax-e _tl8681586844_)))
                                          (let ((_hd8681786852_
                                                 (##car _e8681686849_))
                                                (_tl8681886854_
                                                 (##cdr _e8681686849_)))
                                            (let ((_K86857_ _hd8681786852_))
                                              (if (gx#stx-pair? _tl8681886854_)
                                                  (let ((_e8681986859_
                                                         (gx#syntax-e
                                                          _tl8681886854_)))
                                                    (let ((_hd8682086862_
                                                           (##car _e8681986859_))
                                                          (_tl8682186864_
                                                           (##cdr _e8681986859_)))
                                                      (let ((_E86867_
                                                             _hd8682086862_))
                                                        (if (gx#stx-null?
                                                             _tl8682186864_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test86847_)
                                     (cons (gx#core-expand-expression _K86857_)
                                           (cons (gx#core-expand-expression
                                                  _E86867_)
                                                 '()))))
                         (gx#stx-source _stx86806_))
                        (_E8680986827_))
                    (_E8680986827_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8680986827_)))))
                                        (_E8680986827_)))))
                              (_E8680986827_))))
                      (_E8680986827_)))))
          (_E8680886869_))))
    (define gx#core-expand-ref%
      (lambda (_stx86765_)
        (let* ((_e8676686776_ _stx86765_)
               (_E8676886780_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8676686776_)))
               (_E8676786802_
                (lambda ()
                  (if (gx#stx-pair? _e8676686776_)
                      (let ((_e8676986784_ (gx#syntax-e _e8676686776_)))
                        (let ((_hd8677086787_ (##car _e8676986784_))
                              (_tl8677186789_ (##cdr _e8676986784_)))
                          (if (gx#stx-pair? _tl8677186789_)
                              (let ((_e8677286792_
                                     (gx#syntax-e _tl8677186789_)))
                                (let ((_hd8677386795_ (##car _e8677286792_))
                                      (_tl8677486797_ (##cdr _e8677286792_)))
                                  (let ((_id86800_ _hd8677386795_))
                                    (if (gx#stx-null? _tl8677486797_)
                                        (if (gx#identifier? _id86800_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id86800_
                                                          _stx86765_)
                                                         '()))
                                             (gx#stx-source _stx86765_))
                                            (_E8676886780_))
                                        (_E8676886780_)))))
                              (_E8676886780_))))
                      (_E8676886780_)))))
          (_E8676786802_))))
    (define gx#core-expand-setq%
      (lambda (_stx86711_)
        (let* ((_e8671286725_ _stx86711_)
               (_E8671486729_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8671286725_)))
               (_E8671386761_
                (lambda ()
                  (if (gx#stx-pair? _e8671286725_)
                      (let ((_e8671586733_ (gx#syntax-e _e8671286725_)))
                        (let ((_hd8671686736_ (##car _e8671586733_))
                              (_tl8671786738_ (##cdr _e8671586733_)))
                          (if (gx#stx-pair? _tl8671786738_)
                              (let ((_e8671886741_
                                     (gx#syntax-e _tl8671786738_)))
                                (let ((_hd8671986744_ (##car _e8671886741_))
                                      (_tl8672086746_ (##cdr _e8671886741_)))
                                  (let ((_id86749_ _hd8671986744_))
                                    (if (gx#stx-pair? _tl8672086746_)
                                        (let ((_e8672186751_
                                               (gx#syntax-e _tl8672086746_)))
                                          (let ((_hd8672286754_
                                                 (##car _e8672186751_))
                                                (_tl8672386756_
                                                 (##cdr _e8672186751_)))
                                            (let ((_expr86759_ _hd8672286754_))
                                              (if (gx#stx-null? _tl8672386756_)
                                                  (if (gx#identifier?
                                                       _id86749_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id86749_
                            _stx86711_)
                           (cons (gx#core-expand-expression _expr86759_) '())))
               (gx#stx-source _stx86711_))
              (_E8671486729_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8671486729_)))))
                                        (_E8671486729_)))))
                              (_E8671486729_))))
                      (_E8671486729_)))))
          (_E8671386761_))))
    (define gx#macro-expand-extern
      (lambda (_stx86559_)
        (letrec ((_generate86561_
                  (lambda (_body86591_)
                    (let _lp86593_ ((_rest86595_ _body86591_)
                                    (_ns86596_ (gx#core-context-namespace__0))
                                    (_r86597_ '()))
                      (let* ((_e8659886613_ _rest86595_)
                             (_E8661186617_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8659886613_)))
                             (_E8660786621_
                              (lambda ()
                                (if (gx#stx-null? _e8659886613_)
                                    (if '#t (reverse _r86597_) (_E8661186617_))
                                    (_E8661186617_))))
                             (_E8660086678_
                              (lambda ()
                                (if (gx#stx-pair? _e8659886613_)
                                    (let ((_e8660886625_
                                           (gx#syntax-e _e8659886613_)))
                                      (let ((_hd8660986628_
                                             (##car _e8660886625_))
                                            (_tl8661086630_
                                             (##cdr _e8660886625_)))
                                        (let* ((_hd86633_ _hd8660986628_)
                                               (_rest86635_ _tl8661086630_))
                                          (if '#t
                                              (if (gx#identifier? _hd86633_)
                                                  (_lp86593_
                                                   _rest86635_
                                                   _ns86596_
                                                   (cons (cons _hd86633_
                                                               (cons (if _ns86596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd86633_
                                  _ns86596_
                                  '"#"
                                  _hd86633_)
                                 _hd86633_)
                             '()))
                 _r86597_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8663686646_
                                                          _hd86633_)
                                                         (_E8663886650_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8663686646_)))
                                                         (_E8663786674_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8663686646_)
                        (let ((_e8663986654_ (gx#syntax-e _e8663686646_)))
                          (let ((_hd8664086657_ (##car _e8663986654_))
                                (_tl8664186659_ (##cdr _e8663986654_)))
                            (let ((_id86662_ _hd8664086657_))
                              (if (gx#stx-pair? _tl8664186659_)
                                  (let ((_e8664286664_
                                         (gx#syntax-e _tl8664186659_)))
                                    (let ((_hd8664386667_
                                           (##car _e8664286664_))
                                          (_tl8664486669_
                                           (##cdr _e8664286664_)))
                                      (let ((_eid86672_ _hd8664386667_))
                                        (if (gx#stx-null? _tl8664486669_)
                                            (if (and (gx#identifier? _id86662_)
                                                     (gx#identifier?
                                                      _eid86672_))
                                                (_lp86593_
                                                 _rest86635_
                                                 _ns86596_
                                                 (cons (cons _id86662_
                                                             (cons _eid86672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r86597_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8663886650_))
                                            (_E8663886650_)))))
                                  (_E8663886650_)))))
                        (_E8663886650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8663786674_)))
                                              (_E8660786621_)))))
                                    (_E8660786621_))))
                             (_E8659986707_
                              (lambda ()
                                (if (gx#stx-pair? _e8659886613_)
                                    (let ((_e8660186682_
                                           (gx#syntax-e _e8659886613_)))
                                      (let ((_hd8660286685_
                                             (##car _e8660186682_))
                                            (_tl8660386687_
                                             (##cdr _e8660186682_)))
                                        (if (eq? (gx#stx-e _hd8660286685_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8660386687_)
                                                (let ((_e8660486690_
                                                       (gx#syntax-e
                                                        _tl8660386687_)))
                                                  (let ((_hd8660586693_
                                                         (##car _e8660486690_))
                                                        (_tl8660686695_
                                                         (##cdr _e8660486690_)))
                                                    (let* ((_ns86698_
                                                            _hd8660586693_)
                                                           (_rest86700_
                                                            _tl8660686695_))
                                                      (if '#t
                                                          (let ((_ns86705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns86698_)
                             (symbol->string (gx#stx-e _ns86698_))
                             (if (or (gx#stx-string? _ns86698_)
                                     (gx#stx-false? _ns86698_))
                                 (gx#stx-e _ns86698_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx86559_
                                  _ns86698_)))))
                    (_lp86593_ _rest86700_ _ns86705_ _r86597_))
                  (_E8660086678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8660086678_))
                                            (_E8660086678_))))
                                    (_E8660086678_)))))
                        (_E8659986707_))))))
          (let* ((_e8656286569_ _stx86559_)
                 (_E8656486573_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8656286569_)))
                 (_E8656386587_
                  (lambda ()
                    (if (gx#stx-pair? _e8656286569_)
                        (let ((_e8656586577_ (gx#syntax-e _e8656286569_)))
                          (let ((_hd8656686580_ (##car _e8656586577_))
                                (_tl8656786582_ (##cdr _e8656586577_)))
                            (let ((_body86585_ _tl8656786582_))
                              (if (gx#stx-list? _body86585_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate86561_ _body86585_))
                                  (_E8656486573_)))))
                        (_E8656486573_)))))
            (_E8656386587_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx86505_)
        (let* ((_e8650686519_ _stx86505_)
               (_E8650886523_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8650686519_)))
               (_E8650786555_
                (lambda ()
                  (if (gx#stx-pair? _e8650686519_)
                      (let ((_e8650986527_ (gx#syntax-e _e8650686519_)))
                        (let ((_hd8651086530_ (##car _e8650986527_))
                              (_tl8651186532_ (##cdr _e8650986527_)))
                          (if (gx#stx-pair? _tl8651186532_)
                              (let ((_e8651286535_
                                     (gx#syntax-e _tl8651186532_)))
                                (let ((_hd8651386538_ (##car _e8651286535_))
                                      (_tl8651486540_ (##cdr _e8651286535_)))
                                  (let ((_hd86543_ _hd8651386538_))
                                    (if (gx#stx-pair? _tl8651486540_)
                                        (let ((_e8651586545_
                                               (gx#syntax-e _tl8651486540_)))
                                          (let ((_hd8651686548_
                                                 (##car _e8651586545_))
                                                (_tl8651786550_
                                                 (##cdr _e8651586545_)))
                                            (let ((_expr86553_ _hd8651686548_))
                                              (if (gx#stx-null? _tl8651786550_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd86543_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd86543_)
                          (cons _expr86553_ '())))
              (_E8650886523_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8650886523_)))))
                                        (_E8650886523_)))))
                              (_E8650886523_))))
                      (_E8650886523_)))))
          (_E8650786555_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx86451_)
        (let* ((_e8645286465_ _stx86451_)
               (_E8645486469_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8645286465_)))
               (_E8645386501_
                (lambda ()
                  (if (gx#stx-pair? _e8645286465_)
                      (let ((_e8645586473_ (gx#syntax-e _e8645286465_)))
                        (let ((_hd8645686476_ (##car _e8645586473_))
                              (_tl8645786478_ (##cdr _e8645586473_)))
                          (if (gx#stx-pair? _tl8645786478_)
                              (let ((_e8645886481_
                                     (gx#syntax-e _tl8645786478_)))
                                (let ((_hd8645986484_ (##car _e8645886481_))
                                      (_tl8646086486_ (##cdr _e8645886481_)))
                                  (let ((_hd86489_ _hd8645986484_))
                                    (if (gx#stx-pair? _tl8646086486_)
                                        (let ((_e8646186491_
                                               (gx#syntax-e _tl8646086486_)))
                                          (let ((_hd8646286494_
                                                 (##car _e8646186491_))
                                                (_tl8646386496_
                                                 (##cdr _e8646186491_)))
                                            (let ((_expr86499_ _hd8646286494_))
                                              (if (gx#stx-null? _tl8646386496_)
                                                  (if (gx#identifier?
                                                       _hd86489_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd86489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr86499_ '())))
              (_E8645486469_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8645486469_)))))
                                        (_E8645486469_)))))
                              (_E8645486469_))))
                      (_E8645486469_)))))
          (_E8645386501_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx86397_)
        (let* ((_e8639886411_ _stx86397_)
               (_E8640086415_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8639886411_)))
               (_E8639986447_
                (lambda ()
                  (if (gx#stx-pair? _e8639886411_)
                      (let ((_e8640186419_ (gx#syntax-e _e8639886411_)))
                        (let ((_hd8640286422_ (##car _e8640186419_))
                              (_tl8640386424_ (##cdr _e8640186419_)))
                          (if (gx#stx-pair? _tl8640386424_)
                              (let ((_e8640486427_
                                     (gx#syntax-e _tl8640386424_)))
                                (let ((_hd8640586430_ (##car _e8640486427_))
                                      (_tl8640686432_ (##cdr _e8640486427_)))
                                  (let ((_id86435_ _hd8640586430_))
                                    (if (gx#stx-pair? _tl8640686432_)
                                        (let ((_e8640786437_
                                               (gx#syntax-e _tl8640686432_)))
                                          (let ((_hd8640886440_
                                                 (##car _e8640786437_))
                                                (_tl8640986442_
                                                 (##cdr _e8640786437_)))
                                            (let ((_alias-id86445_
                                                   _hd8640886440_))
                                              (if (gx#stx-null? _tl8640986442_)
                                                  (if (and (gx#identifier?
                                                            _id86435_)
                                                           (gx#identifier?
                                                            _alias-id86445_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id86435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id86445_ '())))
              (_E8640086415_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8640086415_)))))
                                        (_E8640086415_)))))
                              (_E8640086415_))))
                      (_E8640086415_)))))
          (_E8639986447_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx86354_)
        (let* ((_e8635586365_ _stx86354_)
               (_E8635786369_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8635586365_)))
               (_E8635686393_
                (lambda ()
                  (if (gx#stx-pair? _e8635586365_)
                      (let ((_e8635886373_ (gx#syntax-e _e8635586365_)))
                        (let ((_hd8635986376_ (##car _e8635886373_))
                              (_tl8636086378_ (##cdr _e8635886373_)))
                          (if (gx#stx-pair? _tl8636086378_)
                              (let ((_e8636186381_
                                     (gx#syntax-e _tl8636086378_)))
                                (let ((_hd8636286384_ (##car _e8636186381_))
                                      (_tl8636386386_ (##cdr _e8636186381_)))
                                  (let* ((_hd86389_ _hd8636286384_)
                                         (_body86391_ _tl8636386386_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd86389_)
                                             (gx#stx-list? _body86391_)
                                             (not (gx#stx-null? _body86391_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd86389_)
                                         _body86391_)
                                        (_E8635786369_)))))
                              (_E8635786369_))))
                      (_E8635786369_)))))
          (_E8635686393_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx86290_)
        (letrec ((_generate86292_
                  (lambda (_clause86322_)
                    (let* ((_e8632386330_ _clause86322_)
                           (_E8632586334_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx86290_
                               _clause86322_)))
                           (_E8632486350_
                            (lambda ()
                              (if (gx#stx-pair? _e8632386330_)
                                  (let ((_e8632686338_
                                         (gx#syntax-e _e8632386330_)))
                                    (let ((_hd8632786341_
                                           (##car _e8632686338_))
                                          (_tl8632886343_
                                           (##cdr _e8632686338_)))
                                      (let* ((_hd86346_ _hd8632786341_)
                                             (_body86348_ _tl8632886343_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd86346_)
                                                 (gx#stx-list? _body86348_)
                                                 (not (gx#stx-null?
                                                       _body86348_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd86346_)
                                                   _body86348_)
                                             (gx#stx-source _clause86322_))
                                            (_E8632586334_)))))
                                  (_E8632586334_)))))
                      (_E8632486350_)))))
          (let* ((_e8629386300_ _stx86290_)
                 (_E8629586304_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8629386300_)))
                 (_E8629486318_
                  (lambda ()
                    (if (gx#stx-pair? _e8629386300_)
                        (let ((_e8629686308_ (gx#syntax-e _e8629386300_)))
                          (let ((_hd8629786311_ (##car _e8629686308_))
                                (_tl8629886313_ (##cdr _e8629686308_)))
                            (let ((_clauses86316_ _tl8629886313_))
                              (if (gx#stx-list? _clauses86316_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate86292_
                                    _clauses86316_))
                                  (_E8629586304_)))))
                        (_E8629586304_)))))
            (_E8629486318_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx86191_ _form86192_)
        (letrec ((_generate86194_
                  (lambda (_bind86237_)
                    (let* ((_e8623886248_ _bind86237_)
                           (_E8624086252_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx86191_
                               _bind86237_)))
                           (_E8623986276_
                            (lambda ()
                              (if (gx#stx-pair? _e8623886248_)
                                  (let ((_e8624186256_
                                         (gx#syntax-e _e8623886248_)))
                                    (let ((_hd8624286259_
                                           (##car _e8624186256_))
                                          (_tl8624386261_
                                           (##cdr _e8624186256_)))
                                      (let ((_ids86264_ _hd8624286259_))
                                        (if (gx#stx-pair? _tl8624386261_)
                                            (let ((_e8624486266_
                                                   (gx#syntax-e
                                                    _tl8624386261_)))
                                              (let ((_hd8624586269_
                                                     (##car _e8624486266_))
                                                    (_tl8624686271_
                                                     (##cdr _e8624486266_)))
                                                (let ((_expr86274_
                                                       _hd8624586269_))
                                                  (if (gx#stx-null?
                                                       _tl8624686271_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids86264_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids86264_)
                        (cons _expr86274_ '()))
                  (_E8624086252_))
              (_E8624086252_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8624086252_)))))
                                  (_E8624086252_)))))
                      (_E8623986276_)))))
          (let* ((_e8619586205_ _stx86191_)
                 (_E8619786209_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8619586205_)))
                 (_E8619686233_
                  (lambda ()
                    (if (gx#stx-pair? _e8619586205_)
                        (let ((_e8619886213_ (gx#syntax-e _e8619586205_)))
                          (let ((_hd8619986216_ (##car _e8619886213_))
                                (_tl8620086218_ (##cdr _e8619886213_)))
                            (if (gx#stx-pair? _tl8620086218_)
                                (let ((_e8620186221_
                                       (gx#syntax-e _tl8620086218_)))
                                  (let ((_hd8620286224_ (##car _e8620186221_))
                                        (_tl8620386226_ (##cdr _e8620186221_)))
                                    (let* ((_hd86229_ _hd8620286224_)
                                           (_body86231_ _tl8620386226_))
                                      (if (and (gx#stx-list? _hd86229_)
                                               (gx#stx-list? _body86231_)
                                               (not (gx#stx-null?
                                                     _body86231_)))
                                          (gx#core-cons*
                                           _form86192_
                                           (gx#stx-map1
                                            _generate86194_
                                            _hd86229_)
                                           _body86231_)
                                          (_E8619786209_)))))
                                (_E8619786209_))))
                        (_E8619786209_)))))
            (_E8619686233_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx86283_)
        (let ((_form86285_ '%#let-values))
          (gx#macro-expand-let-values__% _stx86283_ _form86285_))))
    (define gx#macro-expand-let-values
      (lambda _g88668_
        (let ((_g88667_ (##length _g88668_)))
          (cond ((##fx= _g88667_ 1)
                 (apply (lambda (_stx86283_)
                          (gx#macro-expand-let-values__0 _stx86283_))
                        _g88668_))
                ((##fx= _g88667_ 2)
                 (apply (lambda (_stx86287_ _form86288_)
                          (gx#macro-expand-let-values__%
                           _stx86287_
                           _form86288_))
                        _g88668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g88668_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx86188_)
        (gx#macro-expand-let-values__% _stx86188_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx86186_)
        (gx#macro-expand-let-values__% _stx86186_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx86077_)
        (let* ((_e8607886104_ _stx86077_)
               (_E8609086108_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8607886104_)))
               (_E8608086150_
                (lambda ()
                  (if (gx#stx-pair? _e8607886104_)
                      (let ((_e8609186112_ (gx#syntax-e _e8607886104_)))
                        (let ((_hd8609286115_ (##car _e8609186112_))
                              (_tl8609386117_ (##cdr _e8609186112_)))
                          (if (gx#stx-pair? _tl8609386117_)
                              (let ((_e8609486120_
                                     (gx#syntax-e _tl8609386117_)))
                                (let ((_hd8609586123_ (##car _e8609486120_))
                                      (_tl8609686125_ (##cdr _e8609486120_)))
                                  (let ((_test86128_ _hd8609586123_))
                                    (if (gx#stx-pair? _tl8609686125_)
                                        (let ((_e8609786130_
                                               (gx#syntax-e _tl8609686125_)))
                                          (let ((_hd8609886133_
                                                 (##car _e8609786130_))
                                                (_tl8609986135_
                                                 (##cdr _e8609786130_)))
                                            (let ((_K86138_ _hd8609886133_))
                                              (if (gx#stx-pair? _tl8609986135_)
                                                  (let ((_e8610086140_
                                                         (gx#syntax-e
                                                          _tl8609986135_)))
                                                    (let ((_hd8610186143_
                                                           (##car _e8610086140_))
                                                          (_tl8610286145_
                                                           (##cdr _e8610086140_)))
                                                      (let ((_E86148_
                                                             _hd8610186143_))
                                                        (if (gx#stx-null?
                                                             _tl8610286145_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test86128_
                         _K86138_
                         _E86148_)
                        (_E8609086108_))
                    (_E8609086108_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8609086108_)))))
                                        (_E8609086108_)))))
                              (_E8609086108_))))
                      (_E8609086108_))))
               (_E8607986182_
                (lambda ()
                  (if (gx#stx-pair? _e8607886104_)
                      (let ((_e8608186154_ (gx#syntax-e _e8607886104_)))
                        (let ((_hd8608286157_ (##car _e8608186154_))
                              (_tl8608386159_ (##cdr _e8608186154_)))
                          (if (gx#stx-pair? _tl8608386159_)
                              (let ((_e8608486162_
                                     (gx#syntax-e _tl8608386159_)))
                                (let ((_hd8608586165_ (##car _e8608486162_))
                                      (_tl8608686167_ (##cdr _e8608486162_)))
                                  (let ((_test86170_ _hd8608586165_))
                                    (if (gx#stx-pair? _tl8608686167_)
                                        (let ((_e8608786172_
                                               (gx#syntax-e _tl8608686167_)))
                                          (let ((_hd8608886175_
                                                 (##car _e8608786172_))
                                                (_tl8608986177_
                                                 (##cdr _e8608786172_)))
                                            (let ((_K86180_ _hd8608886175_))
                                              (if (gx#stx-null? _tl8608986177_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test86170_
                                                       _K86180_
                                                       '#!void)
                                                      (_E8608086150_))
                                                  (_E8608086150_)))))
                                        (_E8608086150_)))))
                              (_E8608086150_))))
                      (_E8608086150_)))))
          (_E8607986182_))))
    (define gx#free-identifier=?
      (lambda (_xid86065_ _yid86066_)
        (let ((_xe86068_ (gx#resolve-identifier__0 _xid86065_))
              (_ye86069_ (gx#resolve-identifier__0 _yid86066_)))
          (if (and _xe86068_ _ye86069_)
              (let ((_$e86071_ (eq? _xe86068_ _ye86069_)))
                (if _$e86071_
                    _$e86071_
                    (if (##structure-instance-of? _xe86068_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye86069_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe86068_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye86069_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe86068_ _ye86069_)
                  '#f
                  (gx#stx-eq? _xid86065_ _yid86066_))))))
    (define gx#bound-identifier=?
      (lambda (_xid86049_ _yid86050_)
        (letrec ((_context86052_
                  (lambda (_e86063_)
                    (if (##structure-direct-instance-of?
                         _e86063_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e86063_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks86053_
                  (lambda (_e86061_)
                    (if (symbol? _e86061_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e86061_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e86061_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e86061_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap86054_
                  (lambda (_e86059_)
                    (if (symbol? _e86059_)
                        _e86059_
                        (gx#syntax-local-unwrap _e86059_)))))
          (let ((_x86056_ (_unwrap86054_ _xid86049_))
                (_y86057_ (_unwrap86054_ _yid86050_)))
            (if (gx#stx-eq? _x86056_ _y86057_)
                (if (eq? (_context86052_ _x86056_) (_context86052_ _y86057_))
                    (equal? (_marks86053_ _x86056_) (_marks86053_ _y86057_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx86047_)
        (if (gx#identifier? _stx86047_)
            (gx#core-identifier=? _stx86047_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx86045_)
        (if (gx#identifier? _stx86045_)
            (gx#core-identifier=? _stx86045_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x86043_)
        (if (gx#identifier? _x86043_)
            (if (not (gx#underscore? _x86043_)) _x86043_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx85989_ _where85990_)
        (let _lp85992_ ((_rest85994_ (gx#syntax->list _stx85989_)))
          (let* ((_rest8599586003_ _rest85994_)
                 (_else8599786011_ (lambda () '#t))
                 (_K8599986021_
                  (lambda (_rest86014_ _hd86015_)
                    (if (not (gx#identifier? _hd86015_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where85990_
                         _hd86015_)
                        (if (find (lambda (_g8601686018_)
                                    (gx#bound-identifier=?
                                     _g8601686018_
                                     _hd86015_))
                                  _rest86014_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where85990_
                             _hd86015_)
                            (_lp85992_ _rest86014_))))))
            (if (##pair? _rest8599586003_)
                (let ((_hd8600086024_ (##car _rest8599586003_))
                      (_tl8600186026_ (##cdr _rest8599586003_)))
                  (let* ((_hd86029_ _hd8600086024_)
                         (_rest86031_ _tl8600186026_))
                    (_K8599986021_ _rest86031_ _hd86029_)))
                (_else8599786011_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx86036_)
        (let ((_where86038_ _stx86036_))
          (gx#check-duplicate-identifiers__% _stx86036_ _where86038_))))
    (define gx#check-duplicate-identifiers
      (lambda _g88670_
        (let ((_g88669_ (##length _g88670_)))
          (cond ((##fx= _g88669_ 1)
                 (apply (lambda (_stx86036_)
                          (gx#check-duplicate-identifiers__0 _stx86036_))
                        _g88670_))
                ((##fx= _g88669_ 2)
                 (apply (lambda (_stx86040_ _where86041_)
                          (gx#check-duplicate-identifiers__%
                           _stx86040_
                           _where86041_))
                        _g88670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g88670_))))))
    (define gx#core-bind-values?
      (lambda (_stx85981_)
        (gx#stx-andmap
         (lambda (_x85983_)
           (let ((_$e85985_ (gx#identifier? _x85983_)))
             (if _$e85985_ _$e85985_ (gx#stx-false? _x85983_))))
         _stx85981_)))
    (define gx#core-bind-values!__%
      (lambda (_stx85945_ _rebind?85946_ _phi85947_ _ctx85948_)
        (gx#stx-for-each1
         (lambda (_id85950_)
           (if (gx#identifier? _id85950_)
               (gx#core-bind-runtime!__%
                _id85950_
                _rebind?85946_
                _phi85947_
                _ctx85948_)
               '#!void))
         _stx85945_)))
    (define gx#core-bind-values!__0
      (lambda (_stx85955_)
        (let* ((_rebind?85957_ '#f)
               (_phi85959_ (gx#current-expander-phi))
               (_ctx85961_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85955_
           _rebind?85957_
           _phi85959_
           _ctx85961_))))
    (define gx#core-bind-values!__1
      (lambda (_stx85963_ _rebind?85964_)
        (let* ((_phi85966_ (gx#current-expander-phi))
               (_ctx85968_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85963_
           _rebind?85964_
           _phi85966_
           _ctx85968_))))
    (define gx#core-bind-values!__2
      (lambda (_stx85970_ _rebind?85971_ _phi85972_)
        (let ((_ctx85974_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85970_
           _rebind?85971_
           _phi85972_
           _ctx85974_))))
    (define gx#core-bind-values!
      (lambda _g88672_
        (let ((_g88671_ (##length _g88672_)))
          (cond ((##fx= _g88671_ 1)
                 (apply (lambda (_stx85955_)
                          (gx#core-bind-values!__0 _stx85955_))
                        _g88672_))
                ((##fx= _g88671_ 2)
                 (apply (lambda (_stx85963_ _rebind?85964_)
                          (gx#core-bind-values!__1 _stx85963_ _rebind?85964_))
                        _g88672_))
                ((##fx= _g88671_ 3)
                 (apply (lambda (_stx85970_ _rebind?85971_ _phi85972_)
                          (gx#core-bind-values!__2
                           _stx85970_
                           _rebind?85971_
                           _phi85972_))
                        _g88672_))
                ((##fx= _g88671_ 4)
                 (apply (lambda (_stx85976_
                                 _rebind?85977_
                                 _phi85978_
                                 _ctx85979_)
                          (gx#core-bind-values!__%
                           _stx85976_
                           _rebind?85977_
                           _phi85978_
                           _ctx85979_))
                        _g88672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g88672_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx85940_)
        (gx#stx-map1
         (lambda (_x85942_)
           (if (gx#identifier? _x85942_)
               (gx#core-quote-syntax__0 _x85942_)
               '#f))
         _stx85940_)))
    (define gx#core-runtime-ref?
      (lambda (_stx85933_)
        (if (gx#identifier? _stx85933_)
            (let* ((_bind85935_ (gx#resolve-identifier__0 _stx85933_))
                   (_$e85937_ (not _bind85935_)))
              (if _$e85937_
                  _$e85937_
                  (##structure-instance-of?
                   _bind85935_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id85925_ _form85926_)
        (let ((_bind85928_ (gx#resolve-identifier__0 _id85925_)))
          (if (##structure-instance-of? _bind85928_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id85925_)
              (if (not _bind85928_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id85925_)))
                      (gx#core-quote-syntax__0 _id85925_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form85926_
                       _id85925_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form85926_
                   _id85925_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id85884_ _rebind?85885_ _phi85886_ _ctx85887_)
        (let* ((_key85889_ (gx#core-identifier-key _id85884_))
               (_eid85891_
                (gx#make-binding-id__% _key85889_ '#f _phi85886_ _ctx85887_))
               (_bind85893_
                (if (##structure-instance-of? _ctx85887_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid85891_
                     _key85889_
                     _phi85886_
                     _ctx85887_)
                    (if (##structure-instance-of?
                         _ctx85887_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid85891_
                         _key85889_
                         _phi85886_)
                        (if (##structure-instance-of?
                             _ctx85887_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid85891_
                             _key85889_
                             _phi85886_)
                            (##structure
                             gx#runtime-binding::t
                             _eid85891_
                             _key85889_
                             _phi85886_))))))
          (gx#bind-identifier!__%
           _id85884_
           _bind85893_
           _rebind?85885_
           _phi85886_
           _ctx85887_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id85899_)
        (let* ((_rebind?85901_ '#f)
               (_phi85903_ (gx#current-expander-phi))
               (_ctx85905_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85899_
           _rebind?85901_
           _phi85903_
           _ctx85905_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id85907_ _rebind?85908_)
        (let* ((_phi85910_ (gx#current-expander-phi))
               (_ctx85912_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85907_
           _rebind?85908_
           _phi85910_
           _ctx85912_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id85914_ _rebind?85915_ _phi85916_)
        (let ((_ctx85918_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85914_
           _rebind?85915_
           _phi85916_
           _ctx85918_))))
    (define gx#core-bind-runtime!
      (lambda _g88674_
        (let ((_g88673_ (##length _g88674_)))
          (cond ((##fx= _g88673_ 1)
                 (apply (lambda (_id85899_)
                          (gx#core-bind-runtime!__0 _id85899_))
                        _g88674_))
                ((##fx= _g88673_ 2)
                 (apply (lambda (_id85907_ _rebind?85908_)
                          (gx#core-bind-runtime!__1 _id85907_ _rebind?85908_))
                        _g88674_))
                ((##fx= _g88673_ 3)
                 (apply (lambda (_id85914_ _rebind?85915_ _phi85916_)
                          (gx#core-bind-runtime!__2
                           _id85914_
                           _rebind?85915_
                           _phi85916_))
                        _g88674_))
                ((##fx= _g88673_ 4)
                 (apply (lambda (_id85920_
                                 _rebind?85921_
                                 _phi85922_
                                 _ctx85923_)
                          (gx#core-bind-runtime!__%
                           _id85920_
                           _rebind?85921_
                           _phi85922_
                           _ctx85923_))
                        _g88674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g88674_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id85839_ _eid85840_ _rebind?85841_ _phi85842_ _ctx85843_)
        (let* ((_key85845_ (gx#core-identifier-key _id85839_))
               (_bind85847_
                (if (##structure-instance-of? _ctx85843_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid85840_
                     _key85845_
                     _phi85842_
                     _ctx85843_)
                    (if (##structure-instance-of?
                         _ctx85843_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid85840_
                         _key85845_
                         _phi85842_)
                        (##structure
                         gx#runtime-binding::t
                         _eid85840_
                         _key85845_
                         _phi85842_)))))
          (gx#bind-identifier!__%
           _id85839_
           _bind85847_
           _rebind?85841_
           _phi85842_
           _ctx85843_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id85853_ _eid85854_)
        (let* ((_rebind?85856_ '#f)
               (_phi85858_ (gx#current-expander-phi))
               (_ctx85860_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85853_
           _eid85854_
           _rebind?85856_
           _phi85858_
           _ctx85860_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id85862_ _eid85863_ _rebind?85864_)
        (let* ((_phi85866_ (gx#current-expander-phi))
               (_ctx85868_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85862_
           _eid85863_
           _rebind?85864_
           _phi85866_
           _ctx85868_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id85870_ _eid85871_ _rebind?85872_ _phi85873_)
        (let ((_ctx85875_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85870_
           _eid85871_
           _rebind?85872_
           _phi85873_
           _ctx85875_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g88676_
        (let ((_g88675_ (##length _g88676_)))
          (cond ((##fx= _g88675_ 2)
                 (apply (lambda (_id85853_ _eid85854_)
                          (gx#core-bind-runtime-reference!__0
                           _id85853_
                           _eid85854_))
                        _g88676_))
                ((##fx= _g88675_ 3)
                 (apply (lambda (_id85862_ _eid85863_ _rebind?85864_)
                          (gx#core-bind-runtime-reference!__1
                           _id85862_
                           _eid85863_
                           _rebind?85864_))
                        _g88676_))
                ((##fx= _g88675_ 4)
                 (apply (lambda (_id85870_
                                 _eid85871_
                                 _rebind?85872_
                                 _phi85873_)
                          (gx#core-bind-runtime-reference!__2
                           _id85870_
                           _eid85871_
                           _rebind?85872_
                           _phi85873_))
                        _g88676_))
                ((##fx= _g88675_ 5)
                 (apply (lambda (_id85877_
                                 _eid85878_
                                 _rebind?85879_
                                 _phi85880_
                                 _ctx85881_)
                          (gx#core-bind-runtime-reference!__%
                           _id85877_
                           _eid85878_
                           _rebind?85879_
                           _phi85880_
                           _ctx85881_))
                        _g88676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g88676_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id85799_ _eid85800_ _rebind?85801_ _phi85802_ _ctx85803_)
        (gx#bind-identifier!__%
         _id85799_
         (##structure
          gx#extern-binding::t
          _eid85800_
          (gx#core-identifier-key _id85799_)
          _phi85802_)
         _rebind?85801_
         _phi85802_
         _ctx85803_)))
    (define gx#core-bind-extern!__0
      (lambda (_id85808_ _eid85809_)
        (let* ((_rebind?85811_ '#f)
               (_phi85813_ (gx#current-expander-phi))
               (_ctx85815_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85808_
           _eid85809_
           _rebind?85811_
           _phi85813_
           _ctx85815_))))
    (define gx#core-bind-extern!__1
      (lambda (_id85817_ _eid85818_ _rebind?85819_)
        (let* ((_phi85821_ (gx#current-expander-phi))
               (_ctx85823_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85817_
           _eid85818_
           _rebind?85819_
           _phi85821_
           _ctx85823_))))
    (define gx#core-bind-extern!__2
      (lambda (_id85825_ _eid85826_ _rebind?85827_ _phi85828_)
        (let ((_ctx85830_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85825_
           _eid85826_
           _rebind?85827_
           _phi85828_
           _ctx85830_))))
    (define gx#core-bind-extern!
      (lambda _g88678_
        (let ((_g88677_ (##length _g88678_)))
          (cond ((##fx= _g88677_ 2)
                 (apply (lambda (_id85808_ _eid85809_)
                          (gx#core-bind-extern!__0 _id85808_ _eid85809_))
                        _g88678_))
                ((##fx= _g88677_ 3)
                 (apply (lambda (_id85817_ _eid85818_ _rebind?85819_)
                          (gx#core-bind-extern!__1
                           _id85817_
                           _eid85818_
                           _rebind?85819_))
                        _g88678_))
                ((##fx= _g88677_ 4)
                 (apply (lambda (_id85825_
                                 _eid85826_
                                 _rebind?85827_
                                 _phi85828_)
                          (gx#core-bind-extern!__2
                           _id85825_
                           _eid85826_
                           _rebind?85827_
                           _phi85828_))
                        _g88678_))
                ((##fx= _g88677_ 5)
                 (apply (lambda (_id85832_
                                 _eid85833_
                                 _rebind?85834_
                                 _phi85835_
                                 _ctx85836_)
                          (gx#core-bind-extern!__%
                           _id85832_
                           _eid85833_
                           _rebind?85834_
                           _phi85835_
                           _ctx85836_))
                        _g88678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g88678_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id85753_ _e85754_ _rebind?85755_ _phi85756_ _ctx85757_)
        (gx#bind-identifier!__%
         _id85753_
         (let ((_key85762_ (gx#core-identifier-key _id85753_))
               (_e85763_
                (if (or (##structure-instance-of? _e85754_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e85754_
                         'gx#expander-context::t))
                    _e85754_
                    (##structure
                     gx#user-expander::t
                     _e85754_
                     _ctx85757_
                     _phi85756_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key85762_ '#t _phi85756_ _ctx85757_)
            _key85762_
            _phi85756_
            _e85763_))
         _rebind?85755_
         _phi85756_
         _ctx85757_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id85768_ _e85769_)
        (let* ((_rebind?85771_ '#f)
               (_phi85773_ (gx#current-expander-phi))
               (_ctx85775_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85768_
           _e85769_
           _rebind?85771_
           _phi85773_
           _ctx85775_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id85777_ _e85778_ _rebind?85779_)
        (let* ((_phi85781_ (gx#current-expander-phi))
               (_ctx85783_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85777_
           _e85778_
           _rebind?85779_
           _phi85781_
           _ctx85783_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id85785_ _e85786_ _rebind?85787_ _phi85788_)
        (let ((_ctx85790_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85785_
           _e85786_
           _rebind?85787_
           _phi85788_
           _ctx85790_))))
    (define gx#core-bind-syntax!
      (lambda _g88680_
        (let ((_g88679_ (##length _g88680_)))
          (cond ((##fx= _g88679_ 2)
                 (apply (lambda (_id85768_ _e85769_)
                          (gx#core-bind-syntax!__0 _id85768_ _e85769_))
                        _g88680_))
                ((##fx= _g88679_ 3)
                 (apply (lambda (_id85777_ _e85778_ _rebind?85779_)
                          (gx#core-bind-syntax!__1
                           _id85777_
                           _e85778_
                           _rebind?85779_))
                        _g88680_))
                ((##fx= _g88679_ 4)
                 (apply (lambda (_id85785_ _e85786_ _rebind?85787_ _phi85788_)
                          (gx#core-bind-syntax!__2
                           _id85785_
                           _e85786_
                           _rebind?85787_
                           _phi85788_))
                        _g88680_))
                ((##fx= _g88679_ 5)
                 (apply (lambda (_id85792_
                                 _e85793_
                                 _rebind?85794_
                                 _phi85795_
                                 _ctx85796_)
                          (gx#core-bind-syntax!__%
                           _id85792_
                           _e85793_
                           _rebind?85794_
                           _phi85795_
                           _ctx85796_))
                        _g88680_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g88680_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id85736_ _e85737_ _rebind?85738_)
        (gx#core-bind-syntax!__%
         _id85736_
         _e85737_
         _rebind?85738_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id85743_ _e85744_)
        (let ((_rebind?85746_ '#f))
          (gx#core-bind-root-syntax!__% _id85743_ _e85744_ _rebind?85746_))))
    (define gx#core-bind-root-syntax!
      (lambda _g88682_
        (let ((_g88681_ (##length _g88682_)))
          (cond ((##fx= _g88681_ 2)
                 (apply (lambda (_id85743_ _e85744_)
                          (gx#core-bind-root-syntax!__0 _id85743_ _e85744_))
                        _g88682_))
                ((##fx= _g88681_ 3)
                 (apply (lambda (_id85748_ _e85749_ _rebind?85750_)
                          (gx#core-bind-root-syntax!__%
                           _id85748_
                           _e85749_
                           _rebind?85750_))
                        _g88682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g88682_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id85694_ _alias-id85695_ _rebind?85696_ _phi85697_ _ctx85698_)
        (gx#bind-identifier!__%
         _id85694_
         (let ((_key85700_ (gx#core-identifier-key _id85694_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key85700_ '#t _phi85697_ _ctx85698_)
            _key85700_
            _phi85697_
            _alias-id85695_))
         _rebind?85696_
         _phi85697_
         _ctx85698_)))
    (define gx#core-bind-alias!__0
      (lambda (_id85705_ _alias-id85706_)
        (let* ((_rebind?85708_ '#f)
               (_phi85710_ (gx#current-expander-phi))
               (_ctx85712_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85705_
           _alias-id85706_
           _rebind?85708_
           _phi85710_
           _ctx85712_))))
    (define gx#core-bind-alias!__1
      (lambda (_id85714_ _alias-id85715_ _rebind?85716_)
        (let* ((_phi85718_ (gx#current-expander-phi))
               (_ctx85720_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85714_
           _alias-id85715_
           _rebind?85716_
           _phi85718_
           _ctx85720_))))
    (define gx#core-bind-alias!__2
      (lambda (_id85722_ _alias-id85723_ _rebind?85724_ _phi85725_)
        (let ((_ctx85727_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85722_
           _alias-id85723_
           _rebind?85724_
           _phi85725_
           _ctx85727_))))
    (define gx#core-bind-alias!
      (lambda _g88684_
        (let ((_g88683_ (##length _g88684_)))
          (cond ((##fx= _g88683_ 2)
                 (apply (lambda (_id85705_ _alias-id85706_)
                          (gx#core-bind-alias!__0 _id85705_ _alias-id85706_))
                        _g88684_))
                ((##fx= _g88683_ 3)
                 (apply (lambda (_id85714_ _alias-id85715_ _rebind?85716_)
                          (gx#core-bind-alias!__1
                           _id85714_
                           _alias-id85715_
                           _rebind?85716_))
                        _g88684_))
                ((##fx= _g88683_ 4)
                 (apply (lambda (_id85722_
                                 _alias-id85723_
                                 _rebind?85724_
                                 _phi85725_)
                          (gx#core-bind-alias!__2
                           _id85722_
                           _alias-id85723_
                           _rebind?85724_
                           _phi85725_))
                        _g88684_))
                ((##fx= _g88683_ 5)
                 (apply (lambda (_id85729_
                                 _alias-id85730_
                                 _rebind?85731_
                                 _phi85732_
                                 _ctx85733_)
                          (gx#core-bind-alias!__%
                           _id85729_
                           _alias-id85730_
                           _rebind?85731_
                           _phi85732_
                           _ctx85733_))
                        _g88684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g88684_))))))
    (define gx#make-binding-id__%
      (lambda (_key85651_ _syntax?85652_ _phi85653_ _ctx85654_)
        (if (uninterned-symbol? _key85651_)
            (gensym 'L)
            (if (pair? _key85651_)
                (gensym (car _key85651_))
                (if (##structure-instance-of? _ctx85654_ 'gx#top-context::t)
                    (let ((_ns85656_
                           (gx#core-context-namespace__% _ctx85654_)))
                      (if (and (fxzero? _phi85653_) (not _syntax?85652_))
                          (if _ns85656_
                              (make-symbol__1 _ns85656_ '"#" _key85651_)
                              _key85651_)
                          (if _syntax?85652_
                              (make-symbol__1
                               (let ((_$e85658_ _ns85656_))
                                 (if _$e85658_ _$e85658_ '""))
                               '"[:"
                               (number->string _phi85653_)
                               '":]#"
                               _key85651_)
                              (make-symbol__1
                               (let ((_$e85661_ _ns85656_))
                                 (if _$e85661_ _$e85661_ '""))
                               '"["
                               (number->string _phi85653_)
                               '"]#"
                               _key85651_))))
                    (gensym _key85651_))))))
    (define gx#make-binding-id__0
      (lambda (_key85667_)
        (let* ((_syntax?85669_ '#f)
               (_phi85671_ (gx#current-expander-phi))
               (_ctx85673_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85667_
           _syntax?85669_
           _phi85671_
           _ctx85673_))))
    (define gx#make-binding-id__1
      (lambda (_key85675_ _syntax?85676_)
        (let* ((_phi85678_ (gx#current-expander-phi))
               (_ctx85680_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85675_
           _syntax?85676_
           _phi85678_
           _ctx85680_))))
    (define gx#make-binding-id__2
      (lambda (_key85682_ _syntax?85683_ _phi85684_)
        (let ((_ctx85686_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85682_
           _syntax?85683_
           _phi85684_
           _ctx85686_))))
    (define gx#make-binding-id
      (lambda _g88686_
        (let ((_g88685_ (##length _g88686_)))
          (cond ((##fx= _g88685_ 1)
                 (apply (lambda (_key85667_)
                          (gx#make-binding-id__0 _key85667_))
                        _g88686_))
                ((##fx= _g88685_ 2)
                 (apply (lambda (_key85675_ _syntax?85676_)
                          (gx#make-binding-id__1 _key85675_ _syntax?85676_))
                        _g88686_))
                ((##fx= _g88685_ 3)
                 (apply (lambda (_key85682_ _syntax?85683_ _phi85684_)
                          (gx#make-binding-id__2
                           _key85682_
                           _syntax?85683_
                           _phi85684_))
                        _g88686_))
                ((##fx= _g88685_ 4)
                 (apply (lambda (_key85688_
                                 _syntax?85689_
                                 _phi85690_
                                 _ctx85691_)
                          (gx#make-binding-id__%
                           _key85688_
                           _syntax?85689_
                           _phi85690_
                           _ctx85691_))
                        _g88686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g88686_))))))))
