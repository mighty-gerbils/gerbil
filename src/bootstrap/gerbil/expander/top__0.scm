(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708194423)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx152794_)
        (letrec ((_expand-special152796_
                  (lambda (_hd152798_ _K152799_ _rest152800_ _r152801_)
                    (_K152799_
                     _rest152800_
                     (cons (gx#core-expand-top _hd152798_) _r152801_)))))
          (gx#core-expand-block__0 _stx152794_ _expand-special152796_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx152547_)
        (letrec ((_expand-special152549_
                  (lambda (_hd152669_ _K152670_ _rest152671_ _r152672_)
                    (let* ((_K152676_
                            (lambda (_e152674_)
                              (_K152670_
                               _rest152671_
                               (cons _e152674_ _r152672_))))
                           (_e152677152706_ _hd152669_)
                           (_E152701152710_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152677152706_)))
                           (_E152697152722_
                            (lambda ()
                              (if (gx#stx-pair? _e152677152706_)
                                  (let ((_e152702152714_
                                         (gx#syntax-e _e152677152706_)))
                                    (let ((_hd152703152717_
                                           (##car _e152702152714_))
                                          (_tl152704152719_
                                           (##cdr _e152702152714_)))
                                      (if (and (gx#identifier?
                                                _hd152703152717_)
                                               (gx#core-identifier=?
                                                _hd152703152717_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K152676_
                                               (gx#core-expand-define-runtime%
                                                _hd152669_))
                                              (_E152701152710_))
                                          (_E152701152710_))))
                                  (_E152701152710_))))
                           (_E152693152734_
                            (lambda ()
                              (if (gx#stx-pair? _e152677152706_)
                                  (let ((_e152698152726_
                                         (gx#syntax-e _e152677152706_)))
                                    (let ((_hd152699152729_
                                           (##car _e152698152726_))
                                          (_tl152700152731_
                                           (##cdr _e152698152726_)))
                                      (if (and (gx#identifier?
                                                _hd152699152729_)
                                               (gx#core-identifier=?
                                                _hd152699152729_
                                                '%#define-alias))
                                          (if '#t
                                              (_K152676_
                                               (gx#core-expand-define-alias%
                                                _hd152669_))
                                              (_E152697152722_))
                                          (_E152697152722_))))
                                  (_E152697152722_))))
                           (_E152683152746_
                            (lambda ()
                              (if (gx#stx-pair? _e152677152706_)
                                  (let ((_e152694152738_
                                         (gx#syntax-e _e152677152706_)))
                                    (let ((_hd152695152741_
                                           (##car _e152694152738_))
                                          (_tl152696152743_
                                           (##cdr _e152694152738_)))
                                      (if (and (gx#identifier?
                                                _hd152695152741_)
                                               (gx#core-identifier=?
                                                _hd152695152741_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K152676_
                                               (gx#core-expand-define-syntax%
                                                _hd152669_))
                                              (_E152693152734_))
                                          (_E152693152734_))))
                                  (_E152693152734_))))
                           (_E152679152778_
                            (lambda ()
                              (if (gx#stx-pair? _e152677152706_)
                                  (let ((_e152684152750_
                                         (gx#syntax-e _e152677152706_)))
                                    (let ((_hd152685152753_
                                           (##car _e152684152750_))
                                          (_tl152686152755_
                                           (##cdr _e152684152750_)))
                                      (if (and (gx#identifier?
                                                _hd152685152753_)
                                               (gx#core-identifier=?
                                                _hd152685152753_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152686152755_)
                                              (let ((_e152687152758_
                                                     (gx#syntax-e
                                                      _tl152686152755_)))
                                                (let ((_hd152688152761_
                                                       (##car _e152687152758_))
                                                      (_tl152689152763_
                                                       (##cdr _e152687152758_)))
                                                  (let ((_hd-bind152766_
                                                         _hd152688152761_))
                                                    (if (gx#stx-pair?
                                                         _tl152689152763_)
                                                        (let ((_e152690152768_
                                                               (gx#syntax-e
                                                                _tl152689152763_)))
                                                          (let ((_hd152691152771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152690152768_))
                        (_tl152692152773_ (##cdr _e152690152768_)))
                    (let ((_expr152776_ _hd152691152771_))
                      (if (gx#stx-null? _tl152692152773_)
                          (if (gx#core-bind-values? _hd-bind152766_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152766_)
                                (_K152676_ _hd152669_))
                              (_E152683152746_))
                          (_E152683152746_)))))
                (_E152683152746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152683152746_))
                                          (_E152683152746_))))
                                  (_E152683152746_))))
                           (_E152678152790_
                            (lambda ()
                              (if (gx#stx-pair? _e152677152706_)
                                  (let ((_e152680152782_
                                         (gx#syntax-e _e152677152706_)))
                                    (let ((_hd152681152785_
                                           (##car _e152680152782_))
                                          (_tl152682152787_
                                           (##cdr _e152680152782_)))
                                      (if (and (gx#identifier?
                                                _hd152681152785_)
                                               (gx#core-identifier=?
                                                _hd152681152785_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K152676_
                                               (gx#core-expand-begin-syntax%
                                                _hd152669_))
                                              (_E152679152778_))
                                          (_E152679152778_))))
                                  (_E152679152778_)))))
                      (_E152678152790_))))
                 (_eval-body152550_
                  (lambda (_rbody152558_)
                    (let _lp152560_ ((_rest152562_ _rbody152558_)
                                     (_body152563_ '())
                                     (_ebody152564_ '()))
                      (let* ((_rest152565152573_ _rest152562_)
                             (_else152567152581_
                              (lambda ()
                                (values _body152563_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody152564_)
                                          (gx#stx-source _stx152547_))))))
                             (_K152569152657_
                              (lambda (_rest152584_ _hd152585_)
                                (let* ((_e152586152603_ _hd152585_)
                                       (_E152598152607_
                                        (lambda ()
                                          (_lp152560_
                                           _rest152584_
                                           (cons _hd152585_ _body152563_)
                                           (cons _hd152585_ _ebody152564_))))
                                       (_E152588152619_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152586152603_)
                                              (let ((_e152599152611_
                                                     (gx#syntax-e
                                                      _e152586152603_)))
                                                (let ((_hd152600152614_
                                                       (##car _e152599152611_))
                                                      (_tl152601152616_
                                                       (##cdr _e152599152611_)))
                                                  (if (and (gx#identifier?
                                                            _hd152600152614_)
                                                           (gx#core-identifier=?
                                                            _hd152600152614_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp152560_
                                                           _rest152584_
                                                           (cons _hd152585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body152563_)
                   _ebody152564_)
                  (_E152598152607_))
              (_E152598152607_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152598152607_))))
                                       (_E152587152653_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152586152603_)
                                              (let ((_e152589152623_
                                                     (gx#syntax-e
                                                      _e152586152603_)))
                                                (let ((_hd152590152626_
                                                       (##car _e152589152623_))
                                                      (_tl152591152628_
                                                       (##cdr _e152589152623_)))
                                                  (if (and (gx#identifier?
                                                            _hd152590152626_)
                                                           (gx#core-identifier=?
                                                            _hd152590152626_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl152591152628_)
                                                          (let ((_e152592152631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl152591152628_)))
                    (let ((_hd152593152634_ (##car _e152592152631_))
                          (_tl152594152636_ (##cdr _e152592152631_)))
                      (let ((_hd-bind152639_ _hd152593152634_))
                        (if (gx#stx-pair? _tl152594152636_)
                            (let ((_e152595152641_
                                   (gx#syntax-e _tl152594152636_)))
                              (let ((_hd152596152644_ (##car _e152595152641_))
                                    (_tl152597152646_ (##cdr _e152595152641_)))
                                (let ((_expr152649_ _hd152596152644_))
                                  (if (gx#stx-null? _tl152597152646_)
                                      (if '#t
                                          (let ((_ehd152651_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind152639_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr152649_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd152585_))))
                                            (_lp152560_
                                             _rest152584_
                                             (cons _ehd152651_ _body152563_)
                                             (cons _ehd152651_ _ebody152564_)))
                                          (_E152588152619_))
                                      (_E152588152619_)))))
                            (_E152588152619_)))))
                  (_E152588152619_))
              (_E152588152619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152588152619_)))))
                                  (_E152587152653_)))))
                        (if (##pair? _rest152565152573_)
                            (let ((_hd152570152660_ (##car _rest152565152573_))
                                  (_tl152571152662_
                                   (##cdr _rest152565152573_)))
                              (let* ((_hd152665_ _hd152570152660_)
                                     (_rest152667_ _tl152571152662_))
                                (_K152569152657_ _rest152667_ _hd152665_)))
                            (_else152567152581_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody152553_
                     (gx#core-expand-block__1
                      _stx152547_
                      _expand-special152549_
                      '#f))
                    (_g156884_ (_eval-body152550_ _rbody152553_)))
               (begin
                 (let ((_g156885_
                        (if (##values? _g156884_)
                            (##vector-length _g156884_)
                            1)))
                   (if (not (##fx= _g156885_ 2))
                       (error "Context expects 2 values" _g156885_)))
                 (let ((_expanded-body152555_ (##vector-ref _g156884_ 0))
                       (_value152556_ (##vector-ref _g156884_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body152555_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value152556_ '())))
                    (gx#stx-source _stx152547_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx152517_)
        (let* ((_e152518152525_ _stx152517_)
               (_E152520152529_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152518152525_)))
               (_E152519152543_
                (lambda ()
                  (if (gx#stx-pair? _e152518152525_)
                      (let ((_e152521152533_ (gx#syntax-e _e152518152525_)))
                        (let ((_hd152522152536_ (##car _e152521152533_))
                              (_tl152523152538_ (##cdr _e152521152533_)))
                          (let ((_body152541_ _tl152523152538_))
                            (if (gx#stx-list? _body152541_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body152541_)
                                 (gx#stx-source _stx152517_))
                                (_E152520152529_)))))
                      (_E152520152529_)))))
          (_E152519152543_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx152515_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx152515_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx152461_)
        (let* ((_e152462152475_ _stx152461_)
               (_E152464152479_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152462152475_)))
               (_E152463152511_
                (lambda ()
                  (if (gx#stx-pair? _e152462152475_)
                      (let ((_e152465152483_ (gx#syntax-e _e152462152475_)))
                        (let ((_hd152466152486_ (##car _e152465152483_))
                              (_tl152467152488_ (##cdr _e152465152483_)))
                          (if (gx#stx-pair? _tl152467152488_)
                              (let ((_e152468152491_
                                     (gx#syntax-e _tl152467152488_)))
                                (let ((_hd152469152494_
                                       (##car _e152468152491_))
                                      (_tl152470152496_
                                       (##cdr _e152468152491_)))
                                  (let ((_ann152499_ _hd152469152494_))
                                    (if (gx#stx-pair? _tl152470152496_)
                                        (let ((_e152471152501_
                                               (gx#syntax-e _tl152470152496_)))
                                          (let ((_hd152472152504_
                                                 (##car _e152471152501_))
                                                (_tl152473152506_
                                                 (##cdr _e152471152501_)))
                                            (let ((_expr152509_
                                                   _hd152472152504_))
                                              (if (gx#stx-null?
                                                   _tl152473152506_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann152499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr152509_)
                                 '())))
               (gx#stx-source _stx152461_))
              (_E152464152479_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152464152479_)))))
                                        (_E152464152479_)))))
                              (_E152464152479_))))
                      (_E152464152479_)))))
          (_E152463152511_))))
    (define gx#core-expand-local-block
      (lambda (_stx152185_ _body152186_)
        (letrec ((_expand-special152188_
                  (lambda (_hd152456_ _K152457_ _rest152458_ _r152459_)
                    (_K152457_
                     '()
                     (cons (_expand-internal152189_ _hd152456_ _rest152458_)
                           _r152459_))))
                 (_expand-internal152189_
                  (lambda (_hd152452_ _rest152453_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal152191_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd152452_ _rest152453_))
                          (gx#stx-source _stx152185_))
                         _expand-internal-special152190_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj156878
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj156878)
                       __obj156878))))
                 (_expand-internal-special152190_
                  (lambda (_hd152347_ _K152348_ _rest152349_ _r152350_)
                    (let* ((_e152351152376_ _hd152347_)
                           (_E152371152380_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152351152376_)))
                           (_E152367152392_
                            (lambda ()
                              (if (gx#stx-pair? _e152351152376_)
                                  (let ((_e152372152384_
                                         (gx#syntax-e _e152351152376_)))
                                    (let ((_hd152373152387_
                                           (##car _e152372152384_))
                                          (_tl152374152389_
                                           (##cdr _e152372152384_)))
                                      (if (and (gx#identifier?
                                                _hd152373152387_)
                                               (gx#core-identifier=?
                                                _hd152373152387_
                                                '%#declare))
                                          (if '#t
                                              (_K152348_
                                               _rest152349_
                                               (cons (gx#core-expand-declare%
                                                      _hd152347_)
                                                     _r152350_))
                                              (_E152371152380_))
                                          (_E152371152380_))))
                                  (_E152371152380_))))
                           (_E152363152404_
                            (lambda ()
                              (if (gx#stx-pair? _e152351152376_)
                                  (let ((_e152368152396_
                                         (gx#syntax-e _e152351152376_)))
                                    (let ((_hd152369152399_
                                           (##car _e152368152396_))
                                          (_tl152370152401_
                                           (##cdr _e152368152396_)))
                                      (if (and (gx#identifier?
                                                _hd152369152399_)
                                               (gx#core-identifier=?
                                                _hd152369152399_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd152347_)
                                                (_K152348_
                                                 _rest152349_
                                                 _r152350_))
                                              (_E152367152392_))
                                          (_E152367152392_))))
                                  (_E152367152392_))))
                           (_E152353152416_
                            (lambda ()
                              (if (gx#stx-pair? _e152351152376_)
                                  (let ((_e152364152408_
                                         (gx#syntax-e _e152351152376_)))
                                    (let ((_hd152365152411_
                                           (##car _e152364152408_))
                                          (_tl152366152413_
                                           (##cdr _e152364152408_)))
                                      (if (and (gx#identifier?
                                                _hd152365152411_)
                                               (gx#core-identifier=?
                                                _hd152365152411_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd152347_)
                                                (_K152348_
                                                 _rest152349_
                                                 _r152350_))
                                              (_E152363152404_))
                                          (_E152363152404_))))
                                  (_E152363152404_))))
                           (_E152352152448_
                            (lambda ()
                              (if (gx#stx-pair? _e152351152376_)
                                  (let ((_e152354152420_
                                         (gx#syntax-e _e152351152376_)))
                                    (let ((_hd152355152423_
                                           (##car _e152354152420_))
                                          (_tl152356152425_
                                           (##cdr _e152354152420_)))
                                      (if (and (gx#identifier?
                                                _hd152355152423_)
                                               (gx#core-identifier=?
                                                _hd152355152423_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152356152425_)
                                              (let ((_e152357152428_
                                                     (gx#syntax-e
                                                      _tl152356152425_)))
                                                (let ((_hd152358152431_
                                                       (##car _e152357152428_))
                                                      (_tl152359152433_
                                                       (##cdr _e152357152428_)))
                                                  (let ((_hd-bind152436_
                                                         _hd152358152431_))
                                                    (if (gx#stx-pair?
                                                         _tl152359152433_)
                                                        (let ((_e152360152438_
                                                               (gx#syntax-e
                                                                _tl152359152433_)))
                                                          (let ((_hd152361152441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152360152438_))
                        (_tl152362152443_ (##cdr _e152360152438_)))
                    (let ((_expr152446_ _hd152361152441_))
                      (if (gx#stx-null? _tl152362152443_)
                          (if (gx#core-bind-values? _hd-bind152436_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152436_)
                                (_K152348_
                                 _rest152349_
                                 (cons _hd152347_ _r152350_)))
                              (_E152353152416_))
                          (_E152353152416_)))))
                (_E152353152416_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152353152416_))
                                          (_E152353152416_))))
                                  (_E152353152416_)))))
                      (_E152352152448_))))
                 (_wrap-internal152191_
                  (lambda (_rbody152193_)
                    (let _lp152195_ ((_rest152197_ _rbody152193_)
                                     (_decls152198_ '())
                                     (_bind152199_ '())
                                     (_body152200_ '()))
                      (let* ((_e152201152208_ _rest152197_)
                             (_E152203152257_
                              (lambda ()
                                (let* ((_body152252_
                                        (let* ((_body152211152221_
                                                _body152200_)
                                               (_else152214152229_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body152200_)
                                                   (gx#stx-source
                                                    _stx152185_)))))
                                          (let ((_K152219152249_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx152185_)))
                                                (_K152216152235_
                                                 (lambda (_expr152233_)
                                                   _expr152233_)))
                                            (let ((_try-match152213152245_
                                                   (lambda ()
                                                     (if (##pair? _body152211152221_)
                                                         (let ((_tl152218152240_
                                                                (##cdr _body152211152221_))
                                                               (_hd152217152238_
                                                                (##car _body152211152221_)))
                                                           (if (##null? _tl152218152240_)
                                                               (let ((_expr152243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152217152238_))
                         (_K152216152235_ _expr152243_))
                       (_else152214152229_)))
                 (_else152214152229_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body152211152221_)
                                                  (_K152219152249_)
                                                  (_try-match152213152245_))))))
                                       (_body152254_
                                        (if (null? _bind152199_)
                                            _body152252_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind152199_
                                                         (cons _body152252_
                                                               '())))
                                             (gx#stx-source _stx152185_)))))
                                  (if (null? _decls152198_)
                                      _body152254_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls152198_
                                                   (cons _body152254_ '())))
                                       (gx#stx-source _stx152185_))))))
                             (_E152202152343_
                              (lambda ()
                                (if (gx#stx-pair? _e152201152208_)
                                    (let ((_e152204152261_
                                           (gx#syntax-e _e152201152208_)))
                                      (let ((_hd152205152264_
                                             (##car _e152204152261_))
                                            (_tl152206152266_
                                             (##cdr _e152204152261_)))
                                        (let* ((_hd152269_ _hd152205152264_)
                                               (_rest152271_ _tl152206152266_))
                                          (if '#t
                                              (let* ((_e152272152289_
                                                      _hd152269_)
                                                     (_E152284152293_
                                                      (lambda ()
                                                        (if (null? _bind152199_)
                                                            (_lp152195_
                                                             _rest152271_
                                                             _decls152198_
                                                             _bind152199_
                                                             (cons _hd152269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body152200_))
                    (_lp152195_
                     _rest152271_
                     _decls152198_
                     (cons (cons '#f (cons _hd152269_ '())) _bind152199_)
                     _body152200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152274152307_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152272152289_)
                                                            (let ((_e152285152297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152272152289_)))
                      (let ((_hd152286152300_ (##car _e152285152297_))
                            (_tl152287152302_ (##cdr _e152285152297_)))
                        (if (and (gx#identifier? _hd152286152300_)
                                 (gx#core-identifier=?
                                  _hd152286152300_
                                  '%#declare))
                            (let ((_xdecls152305_ _tl152287152302_))
                              (if '#t
                                  (_lp152195_
                                   _rest152271_
                                   (gx#stx-foldr
                                    cons
                                    _decls152198_
                                    _xdecls152305_)
                                   _bind152199_
                                   _body152200_)
                                  (_E152284152293_)))
                            (_E152284152293_))))
                    (_E152284152293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152273152339_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152272152289_)
                                                            (let ((_e152275152311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152272152289_)))
                      (let ((_hd152276152314_ (##car _e152275152311_))
                            (_tl152277152316_ (##cdr _e152275152311_)))
                        (if (and (gx#identifier? _hd152276152314_)
                                 (gx#core-identifier=?
                                  _hd152276152314_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl152277152316_)
                                (let ((_e152278152319_
                                       (gx#syntax-e _tl152277152316_)))
                                  (let ((_hd152279152322_
                                         (##car _e152278152319_))
                                        (_tl152280152324_
                                         (##cdr _e152278152319_)))
                                    (let ((_hd-bind152327_ _hd152279152322_))
                                      (if (gx#stx-pair? _tl152280152324_)
                                          (let ((_e152281152329_
                                                 (gx#syntax-e
                                                  _tl152280152324_)))
                                            (let ((_hd152282152332_
                                                   (##car _e152281152329_))
                                                  (_tl152283152334_
                                                   (##cdr _e152281152329_)))
                                              (let ((_expr152337_
                                                     _hd152282152332_))
                                                (if (gx#stx-null?
                                                     _tl152283152334_)
                                                    (if '#t
                                                        (_lp152195_
                                                         _rest152271_
                                                         _decls152198_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind152327_)
                             (cons (gx#core-expand-expression _expr152337_)
                                   '()))
                       _bind152199_)
                 _body152200_)
                (_E152274152307_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152274152307_)))))
                                          (_E152274152307_)))))
                                (_E152274152307_))
                            (_E152274152307_))))
                    (_E152274152307_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152273152339_))
                                              (_E152203152257_)))))
                                    (_E152203152257_)))))
                        (_E152202152343_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body152186_)
            (gx#stx-source _stx152185_))
           _expand-special152188_))))
    (define gx#core-expand-declare%
      (lambda (_stx152123_)
        (let* ((_e152124152131_ _stx152123_)
               (_E152126152135_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152124152131_)))
               (_E152125152181_
                (lambda ()
                  (if (gx#stx-pair? _e152124152131_)
                      (let ((_e152127152139_ (gx#syntax-e _e152124152131_)))
                        (let ((_hd152128152142_ (##car _e152127152139_))
                              (_tl152129152144_ (##cdr _e152127152139_)))
                          (let ((_body152147_ _tl152129152144_))
                            (if (gx#stx-list? _body152147_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl152149_)
                                     (let* ((_e152150152157_ _decl152149_)
                                            (_E152152152161_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e152150152157_)))
                                            (_E152151152177_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e152150152157_)
                                                   (let ((_e152153152165_
                                                          (gx#syntax-e
                                                           _e152150152157_)))
                                                     (let ((_hd152154152168_
                                                            (##car _e152153152165_))
                                                           (_tl152155152170_
                                                            (##cdr _e152153152165_)))
                                                       (let* ((_head152173_
                                                               _hd152154152168_)
                                                              (_args152175_
                                                               _tl152155152170_))
                                                         (if (gx#stx-list?
                                                              _args152175_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl152149_)
                                                             (_E152152152161_)))))
                                                   (_E152152152161_)))))
                                       (_E152151152177_)))
                                   _body152147_))
                                 (gx#stx-source _stx152123_))
                                (_E152126152135_)))))
                      (_E152126152135_)))))
          (_E152125152181_))))
    (define gx#core-expand-extern%
      (lambda (_stx152027_)
        (let* ((_e152028152035_ _stx152027_)
               (_E152030152039_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152028152035_)))
               (_E152029152119_
                (lambda ()
                  (if (gx#stx-pair? _e152028152035_)
                      (let ((_e152031152043_ (gx#syntax-e _e152028152035_)))
                        (let ((_hd152032152046_ (##car _e152031152043_))
                              (_tl152033152048_ (##cdr _e152031152043_)))
                          (let ((_body152051_ _tl152033152048_))
                            (if '#t
                                (let _lp152053_ ((_rest152055_ _body152051_)
                                                 (_r152056_ '()))
                                  (let* ((_e152057152071_ _rest152055_)
                                         (_E152069152075_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx152027_)))
                                         (_E152059152079_
                                          (lambda ()
                                            (if (gx#stx-null? _e152057152071_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r152056_))
                                                     (gx#stx-source
                                                      _stx152027_))
                                                    (_E152069152075_))
                                                (_E152069152075_))))
                                         (_E152058152115_
                                          (lambda ()
                                            (if (gx#stx-pair? _e152057152071_)
                                                (let ((_e152060152083_
                                                       (gx#syntax-e
                                                        _e152057152071_)))
                                                  (let ((_hd152061152086_
                                                         (##car _e152060152083_))
                                                        (_tl152062152088_
                                                         (##cdr _e152060152083_)))
                                                    (if (gx#stx-pair?
                                                         _hd152061152086_)
                                                        (let ((_e152063152091_
                                                               (gx#syntax-e
                                                                _hd152061152086_)))
                                                          (let ((_hd152064152094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152063152091_))
                        (_tl152065152096_ (##cdr _e152063152091_)))
                    (let ((_id152099_ _hd152064152094_))
                      (if (gx#stx-pair? _tl152065152096_)
                          (let ((_e152066152101_
                                 (gx#syntax-e _tl152065152096_)))
                            (let ((_hd152067152104_ (##car _e152066152101_))
                                  (_tl152068152106_ (##cdr _e152066152101_)))
                              (let ((_eid152109_ _hd152067152104_))
                                (if (gx#stx-null? _tl152068152106_)
                                    (let ((_rest152111_ _tl152062152088_))
                                      (if (and (gx#identifier? _id152099_)
                                               (gx#identifier? _eid152109_))
                                          (let ((_eid152113_
                                                 (gx#stx-e _eid152109_)))
                                            (gx#core-bind-extern!__0
                                             _id152099_
                                             _eid152113_)
                                            (_lp152053_
                                             _rest152111_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id152099_)
                                                         (cons _eid152113_
                                                               '()))
                                                   _r152056_)))
                                          (_E152059152079_)))
                                    (_E152059152079_)))))
                          (_E152059152079_)))))
                (_E152059152079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152059152079_)))))
                                    (_E152058152115_)))
                                (_E152030152039_)))))
                      (_E152030152039_)))))
          (_E152029152119_))))
    (define gx#core-expand-define-values%
      (lambda (_stx151973_)
        (let* ((_e151974151987_ _stx151973_)
               (_E151976151991_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151974151987_)))
               (_E151975152023_
                (lambda ()
                  (if (gx#stx-pair? _e151974151987_)
                      (let ((_e151977151995_ (gx#syntax-e _e151974151987_)))
                        (let ((_hd151978151998_ (##car _e151977151995_))
                              (_tl151979152000_ (##cdr _e151977151995_)))
                          (if (gx#stx-pair? _tl151979152000_)
                              (let ((_e151980152003_
                                     (gx#syntax-e _tl151979152000_)))
                                (let ((_hd151981152006_
                                       (##car _e151980152003_))
                                      (_tl151982152008_
                                       (##cdr _e151980152003_)))
                                  (let ((_hd152011_ _hd151981152006_))
                                    (if (gx#stx-pair? _tl151982152008_)
                                        (let ((_e151983152013_
                                               (gx#syntax-e _tl151982152008_)))
                                          (let ((_hd151984152016_
                                                 (##car _e151983152013_))
                                                (_tl151985152018_
                                                 (##cdr _e151983152013_)))
                                            (let ((_expr152021_
                                                   _hd151984152016_))
                                              (if (gx#stx-null?
                                                   _tl151985152018_)
                                                  (if (gx#core-bind-values?
                                                       _hd152011_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd152011_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152011_)
                             (cons (gx#core-expand-expression _expr152021_)
                                   '())))
                 (gx#stx-source _stx151973_)))
              (_E151976151991_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151976151991_)))))
                                        (_E151976151991_)))))
                              (_E151976151991_))))
                      (_E151976151991_)))))
          (_E151975152023_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx151917_)
        (let* ((_e151918151931_ _stx151917_)
               (_E151920151935_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151918151931_)))
               (_E151919151969_
                (lambda ()
                  (if (gx#stx-pair? _e151918151931_)
                      (let ((_e151921151939_ (gx#syntax-e _e151918151931_)))
                        (let ((_hd151922151942_ (##car _e151921151939_))
                              (_tl151923151944_ (##cdr _e151921151939_)))
                          (if (gx#stx-pair? _tl151923151944_)
                              (let ((_e151924151947_
                                     (gx#syntax-e _tl151923151944_)))
                                (let ((_hd151925151950_
                                       (##car _e151924151947_))
                                      (_tl151926151952_
                                       (##cdr _e151924151947_)))
                                  (let ((_id151955_ _hd151925151950_))
                                    (if (gx#stx-pair? _tl151926151952_)
                                        (let ((_e151927151957_
                                               (gx#syntax-e _tl151926151952_)))
                                          (let ((_hd151928151960_
                                                 (##car _e151927151957_))
                                                (_tl151929151962_
                                                 (##cdr _e151927151957_)))
                                            (let ((_binding-id151965_
                                                   _hd151928151960_))
                                              (if (gx#stx-null?
                                                   _tl151929151962_)
                                                  (if (and (gx#identifier?
                                                            _id151955_)
                                                           (gx#identifier?
                                                            _binding-id151965_))
                                                      (let ((_eid151967_
                                                             (gx#stx-e
                                                              _binding-id151965_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id151955_
                                                         _eid151967_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id151955_)
                             (cons _eid151967_ '())))))
              (_E151920151935_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151920151935_)))))
                                        (_E151920151935_)))))
                              (_E151920151935_))))
                      (_E151920151935_)))))
          (_E151919151969_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx151860_)
        (let* ((_e151861151874_ _stx151860_)
               (_E151863151878_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151861151874_)))
               (_E151862151913_
                (lambda ()
                  (if (gx#stx-pair? _e151861151874_)
                      (let ((_e151864151882_ (gx#syntax-e _e151861151874_)))
                        (let ((_hd151865151885_ (##car _e151864151882_))
                              (_tl151866151887_ (##cdr _e151864151882_)))
                          (if (gx#stx-pair? _tl151866151887_)
                              (let ((_e151867151890_
                                     (gx#syntax-e _tl151866151887_)))
                                (let ((_hd151868151893_
                                       (##car _e151867151890_))
                                      (_tl151869151895_
                                       (##cdr _e151867151890_)))
                                  (let ((_id151898_ _hd151868151893_))
                                    (if (gx#stx-pair? _tl151869151895_)
                                        (let ((_e151870151900_
                                               (gx#syntax-e _tl151869151895_)))
                                          (let ((_hd151871151903_
                                                 (##car _e151870151900_))
                                                (_tl151872151905_
                                                 (##cdr _e151870151900_)))
                                            (let ((_expr151908_
                                                   _hd151871151903_))
                                              (if (gx#stx-null?
                                                   _tl151872151905_)
                                                  (if (gx#identifier?
                                                       _id151898_)
                                                      (let ((_g156886_
                                                             (gx#core-expand-expression+1
                                                              _expr151908_)))
                                                        (begin
                                                          (let ((_g156887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g156886_)
                             (##vector-length _g156886_)
                             1)))
                    (if (not (##fx= _g156887_ 2))
                        (error "Context expects 2 values" _g156887_)))
                  (let ((_e-stx151910_ (##vector-ref _g156886_ 0))
                        (_e151911_ (##vector-ref _g156886_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id151898_ _e151911_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id151898_)
                                   (cons _e-stx151910_ '())))
                       (gx#stx-source _stx151860_))))))
              (_E151863151878_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151863151878_)))))
                                        (_E151863151878_)))))
                              (_E151863151878_))))
                      (_E151863151878_)))))
          (_E151862151913_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx151804_)
        (let* ((_e151805151818_ _stx151804_)
               (_E151807151822_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151805151818_)))
               (_E151806151856_
                (lambda ()
                  (if (gx#stx-pair? _e151805151818_)
                      (let ((_e151808151826_ (gx#syntax-e _e151805151818_)))
                        (let ((_hd151809151829_ (##car _e151808151826_))
                              (_tl151810151831_ (##cdr _e151808151826_)))
                          (if (gx#stx-pair? _tl151810151831_)
                              (let ((_e151811151834_
                                     (gx#syntax-e _tl151810151831_)))
                                (let ((_hd151812151837_
                                       (##car _e151811151834_))
                                      (_tl151813151839_
                                       (##cdr _e151811151834_)))
                                  (let ((_id151842_ _hd151812151837_))
                                    (if (gx#stx-pair? _tl151813151839_)
                                        (let ((_e151814151844_
                                               (gx#syntax-e _tl151813151839_)))
                                          (let ((_hd151815151847_
                                                 (##car _e151814151844_))
                                                (_tl151816151849_
                                                 (##cdr _e151814151844_)))
                                            (let ((_alias-id151852_
                                                   _hd151815151847_))
                                              (if (gx#stx-null?
                                                   _tl151816151849_)
                                                  (if (and (gx#identifier?
                                                            _id151842_)
                                                           (gx#identifier?
                                                            _alias-id151852_))
                                                      (let ((_alias-id151854_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id151852_)))
                                                        (gx#core-bind-alias!__0
                                                         _id151842_
                                                         _alias-id151854_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id151842_)
                             (cons _alias-id151854_ '())))))
              (_E151807151822_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151807151822_)))))
                                        (_E151807151822_)))))
                              (_E151807151822_))))
                      (_E151807151822_)))))
          (_E151806151856_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx151747_ _wrap?151748_)
        (let* ((_e151749151759_ _stx151747_)
               (_E151751151763_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151749151759_)))
               (_E151750151790_
                (lambda ()
                  (if (gx#stx-pair? _e151749151759_)
                      (let ((_e151752151767_ (gx#syntax-e _e151749151759_)))
                        (let ((_hd151753151770_ (##car _e151752151767_))
                              (_tl151754151772_ (##cdr _e151752151767_)))
                          (if (gx#stx-pair? _tl151754151772_)
                              (let ((_e151755151775_
                                     (gx#syntax-e _tl151754151772_)))
                                (let ((_hd151756151778_
                                       (##car _e151755151775_))
                                      (_tl151757151780_
                                       (##cdr _e151755151775_)))
                                  (let* ((_hd151783_ _hd151756151778_)
                                         (_body151785_ _tl151757151780_))
                                    (if (gx#core-bind-values? _hd151783_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd151783_)
                                           (let ((_body151788_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd151783_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx151747_
                                                               _body151785_)
                                                              '()))))
                                             (if _wrap?151748_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body151788_)
                                                  (gx#stx-source _stx151747_))
                                                 _body151788_)))
                                         gx#current-expander-context
                                         (let ((__obj156879
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj156879)
                                           __obj156879))
                                        (_E151751151763_)))))
                              (_E151751151763_))))
                      (_E151751151763_)))))
          (_E151750151790_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx151797_)
        (let ((_wrap?151799_ '#t))
          (gx#core-expand-lambda%__% _stx151797_ _wrap?151799_))))
    (define gx#core-expand-lambda%
      (lambda _g156889_
        (let ((_g156888_ (##length _g156889_)))
          (cond ((##fx= _g156888_ 1)
                 (apply (lambda (_stx151797_)
                          (gx#core-expand-lambda%__0 _stx151797_))
                        _g156889_))
                ((##fx= _g156888_ 2)
                 (apply (lambda (_stx151801_ _wrap?151802_)
                          (gx#core-expand-lambda%__%
                           _stx151801_
                           _wrap?151802_))
                        _g156889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g156889_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx151711_)
        (let* ((_e151712151719_ _stx151711_)
               (_E151714151723_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151712151719_)))
               (_E151713151742_
                (lambda ()
                  (if (gx#stx-pair? _e151712151719_)
                      (let ((_e151715151727_ (gx#syntax-e _e151712151719_)))
                        (let ((_hd151716151730_ (##car _e151715151727_))
                              (_tl151717151732_ (##cdr _e151715151727_)))
                          (let ((_clauses151735_ _tl151717151732_))
                            (if (gx#stx-list? _clauses151735_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause151737_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause151737_)
                                       (let ((_$e151739_
                                              (gx#stx-source _clause151737_)))
                                         (if _$e151739_
                                             _$e151739_
                                             (gx#stx-source _stx151711_))))
                                      '#f))
                                   _clauses151735_))
                                 (gx#stx-source _stx151711_))
                                (_E151714151723_)))))
                      (_E151714151723_)))))
          (_E151713151742_))))
    (define gx#core-expand-let-values%
      (lambda (_stx151665_)
        (let* ((_e151666151676_ _stx151665_)
               (_E151668151680_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151666151676_)))
               (_E151667151707_
                (lambda ()
                  (if (gx#stx-pair? _e151666151676_)
                      (let ((_e151669151684_ (gx#syntax-e _e151666151676_)))
                        (let ((_hd151670151687_ (##car _e151669151684_))
                              (_tl151671151689_ (##cdr _e151669151684_)))
                          (if (gx#stx-pair? _tl151671151689_)
                              (let ((_e151672151692_
                                     (gx#syntax-e _tl151671151689_)))
                                (let ((_hd151673151695_
                                       (##car _e151672151692_))
                                      (_tl151674151697_
                                       (##cdr _e151672151692_)))
                                  (let* ((_hd151700_ _hd151673151695_)
                                         (_body151702_ _tl151674151697_))
                                    (if (gx#core-expand-let-bind? _hd151700_)
                                        (let ((_expressions151704_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd151700_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd151700_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd151700_
                                                           _expressions151704_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx151665_
                         _body151702_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx151665_)))
                                           gx#current-expander-context
                                           (let ((__obj156880
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj156880)
                                             __obj156880)))
                                        (_E151668151680_)))))
                              (_E151668151680_))))
                      (_E151668151680_)))))
          (_E151667151707_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx151610_ _form151611_)
        (let* ((_e151612151622_ _stx151610_)
               (_E151614151626_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151612151622_)))
               (_E151613151651_
                (lambda ()
                  (if (gx#stx-pair? _e151612151622_)
                      (let ((_e151615151630_ (gx#syntax-e _e151612151622_)))
                        (let ((_hd151616151633_ (##car _e151615151630_))
                              (_tl151617151635_ (##cdr _e151615151630_)))
                          (if (gx#stx-pair? _tl151617151635_)
                              (let ((_e151618151638_
                                     (gx#syntax-e _tl151617151635_)))
                                (let ((_hd151619151641_
                                       (##car _e151618151638_))
                                      (_tl151620151643_
                                       (##cdr _e151618151638_)))
                                  (let* ((_hd151646_ _hd151619151641_)
                                         (_body151648_ _tl151620151643_))
                                    (if (gx#core-expand-let-bind? _hd151646_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd151646_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form151611_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd151646_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd151646_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx151610_
                                                               _body151648_)
                                                              '())))
                                            (gx#stx-source _stx151610_)))
                                         gx#current-expander-context
                                         (let ((__obj156881
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj156881)
                                           __obj156881))
                                        (_E151614151626_)))))
                              (_E151614151626_))))
                      (_E151614151626_)))))
          (_E151613151651_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx151658_)
        (let ((_form151660_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx151658_ _form151660_))))
    (define gx#core-expand-letrec-values%
      (lambda _g156891_
        (let ((_g156890_ (##length _g156891_)))
          (cond ((##fx= _g156890_ 1)
                 (apply (lambda (_stx151658_)
                          (gx#core-expand-letrec-values%__0 _stx151658_))
                        _g156891_))
                ((##fx= _g156890_ 2)
                 (apply (lambda (_stx151662_ _form151663_)
                          (gx#core-expand-letrec-values%__%
                           _stx151662_
                           _form151663_))
                        _g156891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g156891_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx151607_)
        (gx#core-expand-letrec-values%__% _stx151607_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx151564_)
        (if (gx#stx-list? _stx151564_)
            (gx#stx-andmap
             (lambda (_bind151566_)
               (let* ((_e151567151577_ _bind151566_)
                      (_E151569151581_ (lambda () '#f))
                      (_E151568151603_
                       (lambda ()
                         (if (gx#stx-pair? _e151567151577_)
                             (let ((_e151570151585_
                                    (gx#syntax-e _e151567151577_)))
                               (let ((_hd151571151588_ (##car _e151570151585_))
                                     (_tl151572151590_
                                      (##cdr _e151570151585_)))
                                 (let ((_hd151593_ _hd151571151588_))
                                   (if (gx#stx-pair? _tl151572151590_)
                                       (let ((_e151573151595_
                                              (gx#syntax-e _tl151572151590_)))
                                         (let ((_hd151574151598_
                                                (##car _e151573151595_))
                                               (_tl151575151600_
                                                (##cdr _e151573151595_)))
                                           (if (gx#stx-null? _tl151575151600_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd151593_)
                                                   (_E151569151581_))
                                               (_E151569151581_))))
                                       (_E151569151581_)))))
                             (_E151569151581_)))))
                 (_E151568151603_)))
             _stx151564_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind151523_)
        (let* ((_e151524151534_ _bind151523_)
               (_E151526151538_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151524151534_)))
               (_E151525151560_
                (lambda ()
                  (if (gx#stx-pair? _e151524151534_)
                      (let ((_e151527151542_ (gx#syntax-e _e151524151534_)))
                        (let ((_hd151528151545_ (##car _e151527151542_))
                              (_tl151529151547_ (##cdr _e151527151542_)))
                          (if (gx#stx-pair? _tl151529151547_)
                              (let ((_e151530151550_
                                     (gx#syntax-e _tl151529151547_)))
                                (let ((_hd151531151553_
                                       (##car _e151530151550_))
                                      (_tl151532151555_
                                       (##cdr _e151530151550_)))
                                  (let ((_expr151558_ _hd151531151553_))
                                    (if (gx#stx-null? _tl151532151555_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151558_)
                                            (_E151526151538_))
                                        (_E151526151538_)))))
                              (_E151526151538_))))
                      (_E151526151538_)))))
          (_E151525151560_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind151482_)
        (let* ((_e151483151493_ _bind151482_)
               (_E151485151497_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151483151493_)))
               (_E151484151519_
                (lambda ()
                  (if (gx#stx-pair? _e151483151493_)
                      (let ((_e151486151501_ (gx#syntax-e _e151483151493_)))
                        (let ((_hd151487151504_ (##car _e151486151501_))
                              (_tl151488151506_ (##cdr _e151486151501_)))
                          (let ((_hd151509_ _hd151487151504_))
                            (if (gx#stx-pair? _tl151488151506_)
                                (let ((_e151489151511_
                                       (gx#syntax-e _tl151488151506_)))
                                  (let ((_hd151490151514_
                                         (##car _e151489151511_))
                                        (_tl151491151516_
                                         (##cdr _e151489151511_)))
                                    (if (gx#stx-null? _tl151491151516_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd151509_)
                                            (_E151485151497_))
                                        (_E151485151497_))))
                                (_E151485151497_)))))
                      (_E151485151497_)))))
          (_E151484151519_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind151440_ _expr151441_)
        (let* ((_e151442151452_ _bind151440_)
               (_E151444151456_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151442151452_)))
               (_E151443151478_
                (lambda ()
                  (if (gx#stx-pair? _e151442151452_)
                      (let ((_e151445151460_ (gx#syntax-e _e151442151452_)))
                        (let ((_hd151446151463_ (##car _e151445151460_))
                              (_tl151447151465_ (##cdr _e151445151460_)))
                          (let ((_hd151468_ _hd151446151463_))
                            (if (gx#stx-pair? _tl151447151465_)
                                (let ((_e151448151470_
                                       (gx#syntax-e _tl151447151465_)))
                                  (let ((_hd151449151473_
                                         (##car _e151448151470_))
                                        (_tl151450151475_
                                         (##cdr _e151448151470_)))
                                    (if (gx#stx-null? _tl151450151475_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd151468_)
                                                  (cons _expr151441_ '()))
                                            (_E151444151456_))
                                        (_E151444151456_))))
                                (_E151444151456_)))))
                      (_E151444151456_)))))
          (_E151443151478_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx151394_)
        (let* ((_e151395151405_ _stx151394_)
               (_E151397151409_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151395151405_)))
               (_E151396151436_
                (lambda ()
                  (if (gx#stx-pair? _e151395151405_)
                      (let ((_e151398151413_ (gx#syntax-e _e151395151405_)))
                        (let ((_hd151399151416_ (##car _e151398151413_))
                              (_tl151400151418_ (##cdr _e151398151413_)))
                          (if (gx#stx-pair? _tl151400151418_)
                              (let ((_e151401151421_
                                     (gx#syntax-e _tl151400151418_)))
                                (let ((_hd151402151424_
                                       (##car _e151401151421_))
                                      (_tl151403151426_
                                       (##cdr _e151401151421_)))
                                  (let* ((_hd151429_ _hd151402151424_)
                                         (_body151431_ _tl151403151426_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151429_)
                                        (let ((_expanders151433_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd151429_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd151429_
                                              _expanders151433_)
                                             (gx#core-expand-local-block
                                              _stx151394_
                                              _body151431_))
                                           gx#current-expander-context
                                           (let ((__obj156882
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj156882)
                                             __obj156882)))
                                        (_E151397151409_)))))
                              (_E151397151409_))))
                      (_E151397151409_)))))
          (_E151396151436_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx151343_)
        (let* ((_e151344151354_ _stx151343_)
               (_E151346151358_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151344151354_)))
               (_E151345151390_
                (lambda ()
                  (if (gx#stx-pair? _e151344151354_)
                      (let ((_e151347151362_ (gx#syntax-e _e151344151354_)))
                        (let ((_hd151348151365_ (##car _e151347151362_))
                              (_tl151349151367_ (##cdr _e151347151362_)))
                          (if (gx#stx-pair? _tl151349151367_)
                              (let ((_e151350151370_
                                     (gx#syntax-e _tl151349151367_)))
                                (let ((_hd151351151373_
                                       (##car _e151350151370_))
                                      (_tl151352151375_
                                       (##cdr _e151350151370_)))
                                  (let* ((_hd151378_ _hd151351151373_)
                                         (_body151380_ _tl151352151375_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151378_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd151378_
                                            (make-list
                                             (gx#stx-length _hd151378_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g151382151385_
                                                     _g151383151387_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g151382151385_
                                               _g151383151387_
                                               '#t))
                                            _hd151378_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd151378_))
                                           (gx#core-expand-local-block
                                            _stx151343_
                                            _body151380_))
                                         gx#current-expander-context
                                         (let ((__obj156883
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj156883)
                                           __obj156883))
                                        (_E151346151358_)))))
                              (_E151346151358_))))
                      (_E151346151358_)))))
          (_E151345151390_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx151300_)
        (if (gx#stx-list? _stx151300_)
            (gx#stx-andmap
             (lambda (_bind151302_)
               (let* ((_e151303151313_ _bind151302_)
                      (_E151305151317_ (lambda () '#f))
                      (_E151304151339_
                       (lambda ()
                         (if (gx#stx-pair? _e151303151313_)
                             (let ((_e151306151321_
                                    (gx#syntax-e _e151303151313_)))
                               (let ((_hd151307151324_ (##car _e151306151321_))
                                     (_tl151308151326_
                                      (##cdr _e151306151321_)))
                                 (let ((_hd151329_ _hd151307151324_))
                                   (if (gx#stx-pair? _tl151308151326_)
                                       (let ((_e151309151331_
                                              (gx#syntax-e _tl151308151326_)))
                                         (let ((_hd151310151334_
                                                (##car _e151309151331_))
                                               (_tl151311151336_
                                                (##cdr _e151309151331_)))
                                           (if (gx#stx-null? _tl151311151336_)
                                               (if '#t
                                                   (gx#identifier? _hd151329_)
                                                   (_E151305151317_))
                                               (_E151305151317_))))
                                       (_E151305151317_)))))
                             (_E151305151317_)))))
                 (_E151304151339_)))
             _stx151300_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind151257_)
        (let* ((_e151258151268_ _bind151257_)
               (_E151260151272_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151258151268_)))
               (_E151259151296_
                (lambda ()
                  (if (gx#stx-pair? _e151258151268_)
                      (let ((_e151261151276_ (gx#syntax-e _e151258151268_)))
                        (let ((_hd151262151279_ (##car _e151261151276_))
                              (_tl151263151281_ (##cdr _e151261151276_)))
                          (if (gx#stx-pair? _tl151263151281_)
                              (let ((_e151264151284_
                                     (gx#syntax-e _tl151263151281_)))
                                (let ((_hd151265151287_
                                       (##car _e151264151284_))
                                      (_tl151266151289_
                                       (##cdr _e151264151284_)))
                                  (let ((_expr151292_ _hd151265151287_))
                                    (if (gx#stx-null? _tl151266151289_)
                                        (if '#t
                                            (let ((_g156892_
                                                   (gx#core-expand-expression+1
                                                    _expr151292_)))
                                              (begin
                                                (let ((_g156893_
                                                       (if (##values?
                                                            _g156892_)
                                                           (##vector-length
                                                            _g156892_)
                                                           1)))
                                                  (if (not (##fx= _g156893_ 2))
                                                      (error "Context expects 2 values"
                                                             _g156893_)))
                                                (let ((_e151294_
                                                       (##vector-ref
                                                        _g156892_
                                                        1)))
                                                  _e151294_)))
                                            (_E151260151272_))
                                        (_E151260151272_)))))
                              (_E151260151272_))))
                      (_E151260151272_)))))
          (_E151259151296_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind151202_ _e151203_ _rebind?151204_)
        (let* ((_e151205151215_ _bind151202_)
               (_E151207151219_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151205151215_)))
               (_E151206151241_
                (lambda ()
                  (if (gx#stx-pair? _e151205151215_)
                      (let ((_e151208151223_ (gx#syntax-e _e151205151215_)))
                        (let ((_hd151209151226_ (##car _e151208151223_))
                              (_tl151210151228_ (##cdr _e151208151223_)))
                          (let ((_id151231_ _hd151209151226_))
                            (if (gx#stx-pair? _tl151210151228_)
                                (let ((_e151211151233_
                                       (gx#syntax-e _tl151210151228_)))
                                  (let ((_hd151212151236_
                                         (##car _e151211151233_))
                                        (_tl151213151238_
                                         (##cdr _e151211151233_)))
                                    (if (gx#stx-null? _tl151213151238_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id151231_
                                             _e151203_
                                             _rebind?151204_)
                                            (_E151207151219_))
                                        (_E151207151219_))))
                                (_E151207151219_)))))
                      (_E151207151219_)))))
          (_E151206151241_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind151248_ _e151249_)
        (let ((_rebind?151251_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind151248_
           _e151249_
           _rebind?151251_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g156895_
        (let ((_g156894_ (##length _g156895_)))
          (cond ((##fx= _g156894_ 2)
                 (apply (lambda (_bind151248_ _e151249_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind151248_
                           _e151249_))
                        _g156895_))
                ((##fx= _g156894_ 3)
                 (apply (lambda (_bind151253_ _e151254_ _rebind?151255_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind151253_
                           _e151254_
                           _rebind?151255_))
                        _g156895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g156895_))))))
    (define gx#core-expand-expression%
      (lambda (_stx151160_)
        (let* ((_e151161151171_ _stx151160_)
               (_E151163151175_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151161151171_)))
               (_E151162151197_
                (lambda ()
                  (if (gx#stx-pair? _e151161151171_)
                      (let ((_e151164151179_ (gx#syntax-e _e151161151171_)))
                        (let ((_hd151165151182_ (##car _e151164151179_))
                              (_tl151166151184_ (##cdr _e151164151179_)))
                          (if (gx#stx-pair? _tl151166151184_)
                              (let ((_e151167151187_
                                     (gx#syntax-e _tl151166151184_)))
                                (let ((_hd151168151190_
                                       (##car _e151167151187_))
                                      (_tl151169151192_
                                       (##cdr _e151167151187_)))
                                  (let ((_expr151195_ _hd151168151190_))
                                    (if (gx#stx-null? _tl151169151192_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151195_)
                                            (_E151163151175_))
                                        (_E151163151175_)))))
                              (_E151163151175_))))
                      (_E151163151175_)))))
          (_E151162151197_))))
    (define gx#core-expand-quote%
      (lambda (_stx151119_)
        (let* ((_e151120151130_ _stx151119_)
               (_E151122151134_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151120151130_)))
               (_E151121151156_
                (lambda ()
                  (if (gx#stx-pair? _e151120151130_)
                      (let ((_e151123151138_ (gx#syntax-e _e151120151130_)))
                        (let ((_hd151124151141_ (##car _e151123151138_))
                              (_tl151125151143_ (##cdr _e151123151138_)))
                          (if (gx#stx-pair? _tl151125151143_)
                              (let ((_e151126151146_
                                     (gx#syntax-e _tl151125151143_)))
                                (let ((_hd151127151149_
                                       (##car _e151126151146_))
                                      (_tl151128151151_
                                       (##cdr _e151126151146_)))
                                  (let ((_e151154_ _hd151127151149_))
                                    (if (gx#stx-null? _tl151128151151_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e151154_)
                                                         '()))
                                             (gx#stx-source _stx151119_))
                                            (_E151122151134_))
                                        (_E151122151134_)))))
                              (_E151122151134_))))
                      (_E151122151134_)))))
          (_E151121151156_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx151078_)
        (let* ((_e151079151089_ _stx151078_)
               (_E151081151093_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151079151089_)))
               (_E151080151115_
                (lambda ()
                  (if (gx#stx-pair? _e151079151089_)
                      (let ((_e151082151097_ (gx#syntax-e _e151079151089_)))
                        (let ((_hd151083151100_ (##car _e151082151097_))
                              (_tl151084151102_ (##cdr _e151082151097_)))
                          (if (gx#stx-pair? _tl151084151102_)
                              (let ((_e151085151105_
                                     (gx#syntax-e _tl151084151102_)))
                                (let ((_hd151086151108_
                                       (##car _e151085151105_))
                                      (_tl151087151110_
                                       (##cdr _e151085151105_)))
                                  (let ((_e151113_ _hd151086151108_))
                                    (if (gx#stx-null? _tl151087151110_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e151113_)
                                                         '()))
                                             (gx#stx-source _stx151078_))
                                            (_E151081151093_))
                                        (_E151081151093_)))))
                              (_E151081151093_))))
                      (_E151081151093_)))))
          (_E151080151115_))))
    (define gx#core-expand-call%
      (lambda (_stx151035_)
        (let* ((_e151036151046_ _stx151035_)
               (_E151038151050_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151036151046_)))
               (_E151037151074_
                (lambda ()
                  (if (gx#stx-pair? _e151036151046_)
                      (let ((_e151039151054_ (gx#syntax-e _e151036151046_)))
                        (let ((_hd151040151057_ (##car _e151039151054_))
                              (_tl151041151059_ (##cdr _e151039151054_)))
                          (if (gx#stx-pair? _tl151041151059_)
                              (let ((_e151042151062_
                                     (gx#syntax-e _tl151041151059_)))
                                (let ((_hd151043151065_
                                       (##car _e151042151062_))
                                      (_tl151044151067_
                                       (##cdr _e151042151062_)))
                                  (let* ((_rator151070_ _hd151043151065_)
                                         (_args151072_ _tl151044151067_))
                                    (if (gx#stx-list? _args151072_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator151070_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args151072_))
                                         (gx#stx-source _stx151035_))
                                        (_E151038151050_)))))
                              (_E151038151050_))))
                      (_E151038151050_)))))
          (_E151037151074_))))
    (define gx#core-expand-if%
      (lambda (_stx150968_)
        (let* ((_e150969150985_ _stx150968_)
               (_E150971150989_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150969150985_)))
               (_E150970151031_
                (lambda ()
                  (if (gx#stx-pair? _e150969150985_)
                      (let ((_e150972150993_ (gx#syntax-e _e150969150985_)))
                        (let ((_hd150973150996_ (##car _e150972150993_))
                              (_tl150974150998_ (##cdr _e150972150993_)))
                          (if (gx#stx-pair? _tl150974150998_)
                              (let ((_e150975151001_
                                     (gx#syntax-e _tl150974150998_)))
                                (let ((_hd150976151004_
                                       (##car _e150975151001_))
                                      (_tl150977151006_
                                       (##cdr _e150975151001_)))
                                  (let ((_test151009_ _hd150976151004_))
                                    (if (gx#stx-pair? _tl150977151006_)
                                        (let ((_e150978151011_
                                               (gx#syntax-e _tl150977151006_)))
                                          (let ((_hd150979151014_
                                                 (##car _e150978151011_))
                                                (_tl150980151016_
                                                 (##cdr _e150978151011_)))
                                            (let ((_K151019_ _hd150979151014_))
                                              (if (gx#stx-pair?
                                                   _tl150980151016_)
                                                  (let ((_e150981151021_
                                                         (gx#syntax-e
                                                          _tl150980151016_)))
                                                    (let ((_hd150982151024_
                                                           (##car _e150981151021_))
                                                          (_tl150983151026_
                                                           (##cdr _e150981151021_)))
                                                      (let ((_E151029_
                                                             _hd150982151024_))
                                                        (if (gx#stx-null?
                                                             _tl150983151026_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test151009_)
                                     (cons (gx#core-expand-expression
                                            _K151019_)
                                           (cons (gx#core-expand-expression
                                                  _E151029_)
                                                 '()))))
                         (gx#stx-source _stx150968_))
                        (_E150971150989_))
                    (_E150971150989_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150971150989_)))))
                                        (_E150971150989_)))))
                              (_E150971150989_))))
                      (_E150971150989_)))))
          (_E150970151031_))))
    (define gx#core-expand-ref%
      (lambda (_stx150927_)
        (let* ((_e150928150938_ _stx150927_)
               (_E150930150942_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150928150938_)))
               (_E150929150964_
                (lambda ()
                  (if (gx#stx-pair? _e150928150938_)
                      (let ((_e150931150946_ (gx#syntax-e _e150928150938_)))
                        (let ((_hd150932150949_ (##car _e150931150946_))
                              (_tl150933150951_ (##cdr _e150931150946_)))
                          (if (gx#stx-pair? _tl150933150951_)
                              (let ((_e150934150954_
                                     (gx#syntax-e _tl150933150951_)))
                                (let ((_hd150935150957_
                                       (##car _e150934150954_))
                                      (_tl150936150959_
                                       (##cdr _e150934150954_)))
                                  (let ((_id150962_ _hd150935150957_))
                                    (if (gx#stx-null? _tl150936150959_)
                                        (if (gx#identifier? _id150962_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id150962_
                                                          _stx150927_)
                                                         '()))
                                             (gx#stx-source _stx150927_))
                                            (_E150930150942_))
                                        (_E150930150942_)))))
                              (_E150930150942_))))
                      (_E150930150942_)))))
          (_E150929150964_))))
    (define gx#core-expand-setq%
      (lambda (_stx150873_)
        (let* ((_e150874150887_ _stx150873_)
               (_E150876150891_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150874150887_)))
               (_E150875150923_
                (lambda ()
                  (if (gx#stx-pair? _e150874150887_)
                      (let ((_e150877150895_ (gx#syntax-e _e150874150887_)))
                        (let ((_hd150878150898_ (##car _e150877150895_))
                              (_tl150879150900_ (##cdr _e150877150895_)))
                          (if (gx#stx-pair? _tl150879150900_)
                              (let ((_e150880150903_
                                     (gx#syntax-e _tl150879150900_)))
                                (let ((_hd150881150906_
                                       (##car _e150880150903_))
                                      (_tl150882150908_
                                       (##cdr _e150880150903_)))
                                  (let ((_id150911_ _hd150881150906_))
                                    (if (gx#stx-pair? _tl150882150908_)
                                        (let ((_e150883150913_
                                               (gx#syntax-e _tl150882150908_)))
                                          (let ((_hd150884150916_
                                                 (##car _e150883150913_))
                                                (_tl150885150918_
                                                 (##cdr _e150883150913_)))
                                            (let ((_expr150921_
                                                   _hd150884150916_))
                                              (if (gx#stx-null?
                                                   _tl150885150918_)
                                                  (if (gx#identifier?
                                                       _id150911_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id150911_
                            _stx150873_)
                           (cons (gx#core-expand-expression _expr150921_)
                                 '())))
               (gx#stx-source _stx150873_))
              (_E150876150891_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150876150891_)))))
                                        (_E150876150891_)))))
                              (_E150876150891_))))
                      (_E150876150891_)))))
          (_E150875150923_))))
    (define gx#macro-expand-extern
      (lambda (_stx150721_)
        (letrec ((_generate150723_
                  (lambda (_body150753_)
                    (let _lp150755_ ((_rest150757_ _body150753_)
                                     (_ns150758_
                                      (gx#core-context-namespace__0))
                                     (_r150759_ '()))
                      (let* ((_e150760150775_ _rest150757_)
                             (_E150773150779_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e150760150775_)))
                             (_E150769150783_
                              (lambda ()
                                (if (gx#stx-null? _e150760150775_)
                                    (if '#t
                                        (reverse _r150759_)
                                        (_E150773150779_))
                                    (_E150773150779_))))
                             (_E150762150840_
                              (lambda ()
                                (if (gx#stx-pair? _e150760150775_)
                                    (let ((_e150770150787_
                                           (gx#syntax-e _e150760150775_)))
                                      (let ((_hd150771150790_
                                             (##car _e150770150787_))
                                            (_tl150772150792_
                                             (##cdr _e150770150787_)))
                                        (let* ((_hd150795_ _hd150771150790_)
                                               (_rest150797_ _tl150772150792_))
                                          (if '#t
                                              (if (gx#identifier? _hd150795_)
                                                  (_lp150755_
                                                   _rest150797_
                                                   _ns150758_
                                                   (cons (cons _hd150795_
                                                               (cons (if _ns150758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd150795_
                                  _ns150758_
                                  '"#"
                                  _hd150795_)
                                 _hd150795_)
                             '()))
                 _r150759_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e150798150808_
                                                          _hd150795_)
                                                         (_E150800150812_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e150798150808_)))
                                                         (_E150799150836_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e150798150808_)
                        (let ((_e150801150816_ (gx#syntax-e _e150798150808_)))
                          (let ((_hd150802150819_ (##car _e150801150816_))
                                (_tl150803150821_ (##cdr _e150801150816_)))
                            (let ((_id150824_ _hd150802150819_))
                              (if (gx#stx-pair? _tl150803150821_)
                                  (let ((_e150804150826_
                                         (gx#syntax-e _tl150803150821_)))
                                    (let ((_hd150805150829_
                                           (##car _e150804150826_))
                                          (_tl150806150831_
                                           (##cdr _e150804150826_)))
                                      (let ((_eid150834_ _hd150805150829_))
                                        (if (gx#stx-null? _tl150806150831_)
                                            (if (and (gx#identifier?
                                                      _id150824_)
                                                     (gx#identifier?
                                                      _eid150834_))
                                                (_lp150755_
                                                 _rest150797_
                                                 _ns150758_
                                                 (cons (cons _id150824_
                                                             (cons _eid150834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r150759_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150800150812_))
                                            (_E150800150812_)))))
                                  (_E150800150812_)))))
                        (_E150800150812_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E150799150836_)))
                                              (_E150769150783_)))))
                                    (_E150769150783_))))
                             (_E150761150869_
                              (lambda ()
                                (if (gx#stx-pair? _e150760150775_)
                                    (let ((_e150763150844_
                                           (gx#syntax-e _e150760150775_)))
                                      (let ((_hd150764150847_
                                             (##car _e150763150844_))
                                            (_tl150765150849_
                                             (##cdr _e150763150844_)))
                                        (if (eq? (gx#stx-e _hd150764150847_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl150765150849_)
                                                (let ((_e150766150852_
                                                       (gx#syntax-e
                                                        _tl150765150849_)))
                                                  (let ((_hd150767150855_
                                                         (##car _e150766150852_))
                                                        (_tl150768150857_
                                                         (##cdr _e150766150852_)))
                                                    (let* ((_ns150860_
                                                            _hd150767150855_)
                                                           (_rest150862_
                                                            _tl150768150857_))
                                                      (if '#t
                                                          (let ((_ns150867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns150860_)
                             (symbol->string (gx#stx-e _ns150860_))
                             (if (or (gx#stx-string? _ns150860_)
                                     (gx#stx-false? _ns150860_))
                                 (gx#stx-e _ns150860_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx150721_
                                  _ns150860_)))))
                    (_lp150755_ _rest150862_ _ns150867_ _r150759_))
                  (_E150762150840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150762150840_))
                                            (_E150762150840_))))
                                    (_E150762150840_)))))
                        (_E150761150869_))))))
          (let* ((_e150724150731_ _stx150721_)
                 (_E150726150735_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150724150731_)))
                 (_E150725150749_
                  (lambda ()
                    (if (gx#stx-pair? _e150724150731_)
                        (let ((_e150727150739_ (gx#syntax-e _e150724150731_)))
                          (let ((_hd150728150742_ (##car _e150727150739_))
                                (_tl150729150744_ (##cdr _e150727150739_)))
                            (let ((_body150747_ _tl150729150744_))
                              (if (gx#stx-list? _body150747_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate150723_ _body150747_))
                                  (_E150726150735_)))))
                        (_E150726150735_)))))
            (_E150725150749_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx150667_)
        (let* ((_e150668150681_ _stx150667_)
               (_E150670150685_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150668150681_)))
               (_E150669150717_
                (lambda ()
                  (if (gx#stx-pair? _e150668150681_)
                      (let ((_e150671150689_ (gx#syntax-e _e150668150681_)))
                        (let ((_hd150672150692_ (##car _e150671150689_))
                              (_tl150673150694_ (##cdr _e150671150689_)))
                          (if (gx#stx-pair? _tl150673150694_)
                              (let ((_e150674150697_
                                     (gx#syntax-e _tl150673150694_)))
                                (let ((_hd150675150700_
                                       (##car _e150674150697_))
                                      (_tl150676150702_
                                       (##cdr _e150674150697_)))
                                  (let ((_hd150705_ _hd150675150700_))
                                    (if (gx#stx-pair? _tl150676150702_)
                                        (let ((_e150677150707_
                                               (gx#syntax-e _tl150676150702_)))
                                          (let ((_hd150678150710_
                                                 (##car _e150677150707_))
                                                (_tl150679150712_
                                                 (##cdr _e150677150707_)))
                                            (let ((_expr150715_
                                                   _hd150678150710_))
                                              (if (gx#stx-null?
                                                   _tl150679150712_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd150705_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd150705_)
                          (cons _expr150715_ '())))
              (_E150670150685_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150670150685_)))))
                                        (_E150670150685_)))))
                              (_E150670150685_))))
                      (_E150670150685_)))))
          (_E150669150717_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx150613_)
        (let* ((_e150614150627_ _stx150613_)
               (_E150616150631_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150614150627_)))
               (_E150615150663_
                (lambda ()
                  (if (gx#stx-pair? _e150614150627_)
                      (let ((_e150617150635_ (gx#syntax-e _e150614150627_)))
                        (let ((_hd150618150638_ (##car _e150617150635_))
                              (_tl150619150640_ (##cdr _e150617150635_)))
                          (if (gx#stx-pair? _tl150619150640_)
                              (let ((_e150620150643_
                                     (gx#syntax-e _tl150619150640_)))
                                (let ((_hd150621150646_
                                       (##car _e150620150643_))
                                      (_tl150622150648_
                                       (##cdr _e150620150643_)))
                                  (let ((_hd150651_ _hd150621150646_))
                                    (if (gx#stx-pair? _tl150622150648_)
                                        (let ((_e150623150653_
                                               (gx#syntax-e _tl150622150648_)))
                                          (let ((_hd150624150656_
                                                 (##car _e150623150653_))
                                                (_tl150625150658_
                                                 (##cdr _e150623150653_)))
                                            (let ((_expr150661_
                                                   _hd150624150656_))
                                              (if (gx#stx-null?
                                                   _tl150625150658_)
                                                  (if (gx#identifier?
                                                       _hd150651_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd150651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr150661_ '())))
              (_E150616150631_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150616150631_)))))
                                        (_E150616150631_)))))
                              (_E150616150631_))))
                      (_E150616150631_)))))
          (_E150615150663_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx150559_)
        (let* ((_e150560150573_ _stx150559_)
               (_E150562150577_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150560150573_)))
               (_E150561150609_
                (lambda ()
                  (if (gx#stx-pair? _e150560150573_)
                      (let ((_e150563150581_ (gx#syntax-e _e150560150573_)))
                        (let ((_hd150564150584_ (##car _e150563150581_))
                              (_tl150565150586_ (##cdr _e150563150581_)))
                          (if (gx#stx-pair? _tl150565150586_)
                              (let ((_e150566150589_
                                     (gx#syntax-e _tl150565150586_)))
                                (let ((_hd150567150592_
                                       (##car _e150566150589_))
                                      (_tl150568150594_
                                       (##cdr _e150566150589_)))
                                  (let ((_id150597_ _hd150567150592_))
                                    (if (gx#stx-pair? _tl150568150594_)
                                        (let ((_e150569150599_
                                               (gx#syntax-e _tl150568150594_)))
                                          (let ((_hd150570150602_
                                                 (##car _e150569150599_))
                                                (_tl150571150604_
                                                 (##cdr _e150569150599_)))
                                            (let ((_alias-id150607_
                                                   _hd150570150602_))
                                              (if (gx#stx-null?
                                                   _tl150571150604_)
                                                  (if (and (gx#identifier?
                                                            _id150597_)
                                                           (gx#identifier?
                                                            _alias-id150607_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id150597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id150607_ '())))
              (_E150562150577_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150562150577_)))))
                                        (_E150562150577_)))))
                              (_E150562150577_))))
                      (_E150562150577_)))))
          (_E150561150609_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx150516_)
        (let* ((_e150517150527_ _stx150516_)
               (_E150519150531_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150517150527_)))
               (_E150518150555_
                (lambda ()
                  (if (gx#stx-pair? _e150517150527_)
                      (let ((_e150520150535_ (gx#syntax-e _e150517150527_)))
                        (let ((_hd150521150538_ (##car _e150520150535_))
                              (_tl150522150540_ (##cdr _e150520150535_)))
                          (if (gx#stx-pair? _tl150522150540_)
                              (let ((_e150523150543_
                                     (gx#syntax-e _tl150522150540_)))
                                (let ((_hd150524150546_
                                       (##car _e150523150543_))
                                      (_tl150525150548_
                                       (##cdr _e150523150543_)))
                                  (let* ((_hd150551_ _hd150524150546_)
                                         (_body150553_ _tl150525150548_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd150551_)
                                             (gx#stx-list? _body150553_)
                                             (not (gx#stx-null? _body150553_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd150551_)
                                         _body150553_)
                                        (_E150519150531_)))))
                              (_E150519150531_))))
                      (_E150519150531_)))))
          (_E150518150555_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx150452_)
        (letrec ((_generate150454_
                  (lambda (_clause150484_)
                    (let* ((_e150485150492_ _clause150484_)
                           (_E150487150496_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx150452_
                               _clause150484_)))
                           (_E150486150512_
                            (lambda ()
                              (if (gx#stx-pair? _e150485150492_)
                                  (let ((_e150488150500_
                                         (gx#syntax-e _e150485150492_)))
                                    (let ((_hd150489150503_
                                           (##car _e150488150500_))
                                          (_tl150490150505_
                                           (##cdr _e150488150500_)))
                                      (let* ((_hd150508_ _hd150489150503_)
                                             (_body150510_ _tl150490150505_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd150508_)
                                                 (gx#stx-list? _body150510_)
                                                 (not (gx#stx-null?
                                                       _body150510_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd150508_)
                                                   _body150510_)
                                             (gx#stx-source _clause150484_))
                                            (_E150487150496_)))))
                                  (_E150487150496_)))))
                      (_E150486150512_)))))
          (let* ((_e150455150462_ _stx150452_)
                 (_E150457150466_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150455150462_)))
                 (_E150456150480_
                  (lambda ()
                    (if (gx#stx-pair? _e150455150462_)
                        (let ((_e150458150470_ (gx#syntax-e _e150455150462_)))
                          (let ((_hd150459150473_ (##car _e150458150470_))
                                (_tl150460150475_ (##cdr _e150458150470_)))
                            (let ((_clauses150478_ _tl150460150475_))
                              (if (gx#stx-list? _clauses150478_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate150454_
                                    _clauses150478_))
                                  (_E150457150466_)))))
                        (_E150457150466_)))))
            (_E150456150480_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx150353_ _form150354_)
        (letrec ((_generate150356_
                  (lambda (_bind150399_)
                    (let* ((_e150400150410_ _bind150399_)
                           (_E150402150414_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx150353_
                               _bind150399_)))
                           (_E150401150438_
                            (lambda ()
                              (if (gx#stx-pair? _e150400150410_)
                                  (let ((_e150403150418_
                                         (gx#syntax-e _e150400150410_)))
                                    (let ((_hd150404150421_
                                           (##car _e150403150418_))
                                          (_tl150405150423_
                                           (##cdr _e150403150418_)))
                                      (let ((_ids150426_ _hd150404150421_))
                                        (if (gx#stx-pair? _tl150405150423_)
                                            (let ((_e150406150428_
                                                   (gx#syntax-e
                                                    _tl150405150423_)))
                                              (let ((_hd150407150431_
                                                     (##car _e150406150428_))
                                                    (_tl150408150433_
                                                     (##cdr _e150406150428_)))
                                                (let ((_expr150436_
                                                       _hd150407150431_))
                                                  (if (gx#stx-null?
                                                       _tl150408150433_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids150426_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids150426_)
                        (cons _expr150436_ '()))
                  (_E150402150414_))
              (_E150402150414_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E150402150414_)))))
                                  (_E150402150414_)))))
                      (_E150401150438_)))))
          (let* ((_e150357150367_ _stx150353_)
                 (_E150359150371_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150357150367_)))
                 (_E150358150395_
                  (lambda ()
                    (if (gx#stx-pair? _e150357150367_)
                        (let ((_e150360150375_ (gx#syntax-e _e150357150367_)))
                          (let ((_hd150361150378_ (##car _e150360150375_))
                                (_tl150362150380_ (##cdr _e150360150375_)))
                            (if (gx#stx-pair? _tl150362150380_)
                                (let ((_e150363150383_
                                       (gx#syntax-e _tl150362150380_)))
                                  (let ((_hd150364150386_
                                         (##car _e150363150383_))
                                        (_tl150365150388_
                                         (##cdr _e150363150383_)))
                                    (let* ((_hd150391_ _hd150364150386_)
                                           (_body150393_ _tl150365150388_))
                                      (if (and (gx#stx-list? _hd150391_)
                                               (gx#stx-list? _body150393_)
                                               (not (gx#stx-null?
                                                     _body150393_)))
                                          (gx#core-cons*
                                           _form150354_
                                           (gx#stx-map1
                                            _generate150356_
                                            _hd150391_)
                                           _body150393_)
                                          (_E150359150371_)))))
                                (_E150359150371_))))
                        (_E150359150371_)))))
            (_E150358150395_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx150445_)
        (let ((_form150447_ '%#let-values))
          (gx#macro-expand-let-values__% _stx150445_ _form150447_))))
    (define gx#macro-expand-let-values
      (lambda _g156897_
        (let ((_g156896_ (##length _g156897_)))
          (cond ((##fx= _g156896_ 1)
                 (apply (lambda (_stx150445_)
                          (gx#macro-expand-let-values__0 _stx150445_))
                        _g156897_))
                ((##fx= _g156896_ 2)
                 (apply (lambda (_stx150449_ _form150450_)
                          (gx#macro-expand-let-values__%
                           _stx150449_
                           _form150450_))
                        _g156897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g156897_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx150350_)
        (gx#macro-expand-let-values__% _stx150350_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx150348_)
        (gx#macro-expand-let-values__% _stx150348_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx150239_)
        (let* ((_e150240150266_ _stx150239_)
               (_E150252150270_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150240150266_)))
               (_E150242150312_
                (lambda ()
                  (if (gx#stx-pair? _e150240150266_)
                      (let ((_e150253150274_ (gx#syntax-e _e150240150266_)))
                        (let ((_hd150254150277_ (##car _e150253150274_))
                              (_tl150255150279_ (##cdr _e150253150274_)))
                          (if (gx#stx-pair? _tl150255150279_)
                              (let ((_e150256150282_
                                     (gx#syntax-e _tl150255150279_)))
                                (let ((_hd150257150285_
                                       (##car _e150256150282_))
                                      (_tl150258150287_
                                       (##cdr _e150256150282_)))
                                  (let ((_test150290_ _hd150257150285_))
                                    (if (gx#stx-pair? _tl150258150287_)
                                        (let ((_e150259150292_
                                               (gx#syntax-e _tl150258150287_)))
                                          (let ((_hd150260150295_
                                                 (##car _e150259150292_))
                                                (_tl150261150297_
                                                 (##cdr _e150259150292_)))
                                            (let ((_K150300_ _hd150260150295_))
                                              (if (gx#stx-pair?
                                                   _tl150261150297_)
                                                  (let ((_e150262150302_
                                                         (gx#syntax-e
                                                          _tl150261150297_)))
                                                    (let ((_hd150263150305_
                                                           (##car _e150262150302_))
                                                          (_tl150264150307_
                                                           (##cdr _e150262150302_)))
                                                      (let ((_E150310_
                                                             _hd150263150305_))
                                                        (if (gx#stx-null?
                                                             _tl150264150307_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test150290_
                         _K150300_
                         _E150310_)
                        (_E150252150270_))
                    (_E150252150270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150252150270_)))))
                                        (_E150252150270_)))))
                              (_E150252150270_))))
                      (_E150252150270_))))
               (_E150241150344_
                (lambda ()
                  (if (gx#stx-pair? _e150240150266_)
                      (let ((_e150243150316_ (gx#syntax-e _e150240150266_)))
                        (let ((_hd150244150319_ (##car _e150243150316_))
                              (_tl150245150321_ (##cdr _e150243150316_)))
                          (if (gx#stx-pair? _tl150245150321_)
                              (let ((_e150246150324_
                                     (gx#syntax-e _tl150245150321_)))
                                (let ((_hd150247150327_
                                       (##car _e150246150324_))
                                      (_tl150248150329_
                                       (##cdr _e150246150324_)))
                                  (let ((_test150332_ _hd150247150327_))
                                    (if (gx#stx-pair? _tl150248150329_)
                                        (let ((_e150249150334_
                                               (gx#syntax-e _tl150248150329_)))
                                          (let ((_hd150250150337_
                                                 (##car _e150249150334_))
                                                (_tl150251150339_
                                                 (##cdr _e150249150334_)))
                                            (let ((_K150342_ _hd150250150337_))
                                              (if (gx#stx-null?
                                                   _tl150251150339_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test150332_
                                                       _K150342_
                                                       '#!void)
                                                      (_E150242150312_))
                                                  (_E150242150312_)))))
                                        (_E150242150312_)))))
                              (_E150242150312_))))
                      (_E150242150312_)))))
          (_E150241150344_))))
    (define gx#free-identifier=?
      (lambda (_xid150227_ _yid150228_)
        (let ((_xe150230_ (gx#resolve-identifier__0 _xid150227_))
              (_ye150231_ (gx#resolve-identifier__0 _yid150228_)))
          (if (and _xe150230_ _ye150231_)
              (let ((_$e150233_ (eq? _xe150230_ _ye150231_)))
                (if _$e150233_
                    _$e150233_
                    (if (##structure-instance-of? _xe150230_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye150231_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe150230_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye150231_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe150230_ _ye150231_)
                  '#f
                  (gx#stx-eq? _xid150227_ _yid150228_))))))
    (define gx#bound-identifier=?
      (lambda (_xid150211_ _yid150212_)
        (letrec ((_context150214_
                  (lambda (_e150225_)
                    (if (##structure-direct-instance-of?
                         _e150225_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e150225_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks150215_
                  (lambda (_e150223_)
                    (if (symbol? _e150223_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e150223_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e150223_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e150223_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap150216_
                  (lambda (_e150221_)
                    (if (symbol? _e150221_)
                        _e150221_
                        (gx#syntax-local-unwrap _e150221_)))))
          (let ((_x150218_ (_unwrap150216_ _xid150211_))
                (_y150219_ (_unwrap150216_ _yid150212_)))
            (if (gx#stx-eq? _x150218_ _y150219_)
                (if (eq? (_context150214_ _x150218_)
                         (_context150214_ _y150219_))
                    (equal? (_marks150215_ _x150218_)
                            (_marks150215_ _y150219_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx150209_)
        (if (gx#identifier? _stx150209_)
            (gx#core-identifier=? _stx150209_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx150207_)
        (if (gx#identifier? _stx150207_)
            (gx#core-identifier=? _stx150207_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x150205_)
        (if (gx#identifier? _x150205_)
            (if (not (gx#underscore? _x150205_)) _x150205_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx150151_ _where150152_)
        (let _lp150154_ ((_rest150156_ (gx#syntax->list _stx150151_)))
          (let* ((_rest150157150165_ _rest150156_)
                 (_else150159150173_ (lambda () '#t))
                 (_K150161150183_
                  (lambda (_rest150176_ _hd150177_)
                    (if (not (gx#identifier? _hd150177_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where150152_
                         _hd150177_)
                        (if (find (lambda (_g150178150180_)
                                    (gx#bound-identifier=?
                                     _g150178150180_
                                     _hd150177_))
                                  _rest150176_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where150152_
                             _hd150177_)
                            (_lp150154_ _rest150176_))))))
            (if (##pair? _rest150157150165_)
                (let ((_hd150162150186_ (##car _rest150157150165_))
                      (_tl150163150188_ (##cdr _rest150157150165_)))
                  (let* ((_hd150191_ _hd150162150186_)
                         (_rest150193_ _tl150163150188_))
                    (_K150161150183_ _rest150193_ _hd150191_)))
                (_else150159150173_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx150198_)
        (let ((_where150200_ _stx150198_))
          (gx#check-duplicate-identifiers__% _stx150198_ _where150200_))))
    (define gx#check-duplicate-identifiers
      (lambda _g156899_
        (let ((_g156898_ (##length _g156899_)))
          (cond ((##fx= _g156898_ 1)
                 (apply (lambda (_stx150198_)
                          (gx#check-duplicate-identifiers__0 _stx150198_))
                        _g156899_))
                ((##fx= _g156898_ 2)
                 (apply (lambda (_stx150202_ _where150203_)
                          (gx#check-duplicate-identifiers__%
                           _stx150202_
                           _where150203_))
                        _g156899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g156899_))))))
    (define gx#core-bind-values?
      (lambda (_stx150143_)
        (gx#stx-andmap
         (lambda (_x150145_)
           (let ((_$e150147_ (gx#identifier? _x150145_)))
             (if _$e150147_ _$e150147_ (gx#stx-false? _x150145_))))
         _stx150143_)))
    (define gx#core-bind-values!__%
      (lambda (_stx150107_ _rebind?150108_ _phi150109_ _ctx150110_)
        (gx#stx-for-each1
         (lambda (_id150112_)
           (if (gx#identifier? _id150112_)
               (gx#core-bind-runtime!__%
                _id150112_
                _rebind?150108_
                _phi150109_
                _ctx150110_)
               '#!void))
         _stx150107_)))
    (define gx#core-bind-values!__0
      (lambda (_stx150117_)
        (let* ((_rebind?150119_ '#f)
               (_phi150121_ (gx#current-expander-phi))
               (_ctx150123_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150117_
           _rebind?150119_
           _phi150121_
           _ctx150123_))))
    (define gx#core-bind-values!__1
      (lambda (_stx150125_ _rebind?150126_)
        (let* ((_phi150128_ (gx#current-expander-phi))
               (_ctx150130_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150125_
           _rebind?150126_
           _phi150128_
           _ctx150130_))))
    (define gx#core-bind-values!__2
      (lambda (_stx150132_ _rebind?150133_ _phi150134_)
        (let ((_ctx150136_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150132_
           _rebind?150133_
           _phi150134_
           _ctx150136_))))
    (define gx#core-bind-values!
      (lambda _g156901_
        (let ((_g156900_ (##length _g156901_)))
          (cond ((##fx= _g156900_ 1)
                 (apply (lambda (_stx150117_)
                          (gx#core-bind-values!__0 _stx150117_))
                        _g156901_))
                ((##fx= _g156900_ 2)
                 (apply (lambda (_stx150125_ _rebind?150126_)
                          (gx#core-bind-values!__1
                           _stx150125_
                           _rebind?150126_))
                        _g156901_))
                ((##fx= _g156900_ 3)
                 (apply (lambda (_stx150132_ _rebind?150133_ _phi150134_)
                          (gx#core-bind-values!__2
                           _stx150132_
                           _rebind?150133_
                           _phi150134_))
                        _g156901_))
                ((##fx= _g156900_ 4)
                 (apply (lambda (_stx150138_
                                 _rebind?150139_
                                 _phi150140_
                                 _ctx150141_)
                          (gx#core-bind-values!__%
                           _stx150138_
                           _rebind?150139_
                           _phi150140_
                           _ctx150141_))
                        _g156901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g156901_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx150102_)
        (gx#stx-map1
         (lambda (_x150104_)
           (if (gx#identifier? _x150104_)
               (gx#core-quote-syntax__0 _x150104_)
               '#f))
         _stx150102_)))
    (define gx#core-runtime-ref?
      (lambda (_stx150095_)
        (if (gx#identifier? _stx150095_)
            (let* ((_bind150097_ (gx#resolve-identifier__0 _stx150095_))
                   (_$e150099_ (not _bind150097_)))
              (if _$e150099_
                  _$e150099_
                  (##structure-instance-of?
                   _bind150097_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id150087_ _form150088_)
        (let ((_bind150090_ (gx#resolve-identifier__0 _id150087_)))
          (if (##structure-instance-of? _bind150090_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id150087_)
              (if (not _bind150090_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id150087_)))
                      (gx#core-quote-syntax__0 _id150087_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form150088_
                       _id150087_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form150088_
                   _id150087_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id150046_ _rebind?150047_ _phi150048_ _ctx150049_)
        (let* ((_key150051_ (gx#core-identifier-key _id150046_))
               (_eid150053_
                (gx#make-binding-id__%
                 _key150051_
                 '#f
                 _phi150048_
                 _ctx150049_))
               (_bind150055_
                (if (##structure-instance-of?
                     _ctx150049_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150053_
                     _key150051_
                     _phi150048_
                     _ctx150049_)
                    (if (##structure-instance-of?
                         _ctx150049_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150053_
                         _key150051_
                         _phi150048_)
                        (if (##structure-instance-of?
                             _ctx150049_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid150053_
                             _key150051_
                             _phi150048_)
                            (##structure
                             gx#runtime-binding::t
                             _eid150053_
                             _key150051_
                             _phi150048_))))))
          (gx#bind-identifier!__%
           _id150046_
           _bind150055_
           _rebind?150047_
           _phi150048_
           _ctx150049_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id150061_)
        (let* ((_rebind?150063_ '#f)
               (_phi150065_ (gx#current-expander-phi))
               (_ctx150067_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150061_
           _rebind?150063_
           _phi150065_
           _ctx150067_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id150069_ _rebind?150070_)
        (let* ((_phi150072_ (gx#current-expander-phi))
               (_ctx150074_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150069_
           _rebind?150070_
           _phi150072_
           _ctx150074_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id150076_ _rebind?150077_ _phi150078_)
        (let ((_ctx150080_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150076_
           _rebind?150077_
           _phi150078_
           _ctx150080_))))
    (define gx#core-bind-runtime!
      (lambda _g156903_
        (let ((_g156902_ (##length _g156903_)))
          (cond ((##fx= _g156902_ 1)
                 (apply (lambda (_id150061_)
                          (gx#core-bind-runtime!__0 _id150061_))
                        _g156903_))
                ((##fx= _g156902_ 2)
                 (apply (lambda (_id150069_ _rebind?150070_)
                          (gx#core-bind-runtime!__1
                           _id150069_
                           _rebind?150070_))
                        _g156903_))
                ((##fx= _g156902_ 3)
                 (apply (lambda (_id150076_ _rebind?150077_ _phi150078_)
                          (gx#core-bind-runtime!__2
                           _id150076_
                           _rebind?150077_
                           _phi150078_))
                        _g156903_))
                ((##fx= _g156902_ 4)
                 (apply (lambda (_id150082_
                                 _rebind?150083_
                                 _phi150084_
                                 _ctx150085_)
                          (gx#core-bind-runtime!__%
                           _id150082_
                           _rebind?150083_
                           _phi150084_
                           _ctx150085_))
                        _g156903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g156903_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id150001_ _eid150002_ _rebind?150003_ _phi150004_ _ctx150005_)
        (let* ((_key150007_ (gx#core-identifier-key _id150001_))
               (_bind150009_
                (if (##structure-instance-of?
                     _ctx150005_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150002_
                     _key150007_
                     _phi150004_
                     _ctx150005_)
                    (if (##structure-instance-of?
                         _ctx150005_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150002_
                         _key150007_
                         _phi150004_)
                        (##structure
                         gx#runtime-binding::t
                         _eid150002_
                         _key150007_
                         _phi150004_)))))
          (gx#bind-identifier!__%
           _id150001_
           _bind150009_
           _rebind?150003_
           _phi150004_
           _ctx150005_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id150015_ _eid150016_)
        (let* ((_rebind?150018_ '#f)
               (_phi150020_ (gx#current-expander-phi))
               (_ctx150022_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150015_
           _eid150016_
           _rebind?150018_
           _phi150020_
           _ctx150022_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id150024_ _eid150025_ _rebind?150026_)
        (let* ((_phi150028_ (gx#current-expander-phi))
               (_ctx150030_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150024_
           _eid150025_
           _rebind?150026_
           _phi150028_
           _ctx150030_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id150032_ _eid150033_ _rebind?150034_ _phi150035_)
        (let ((_ctx150037_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150032_
           _eid150033_
           _rebind?150034_
           _phi150035_
           _ctx150037_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g156905_
        (let ((_g156904_ (##length _g156905_)))
          (cond ((##fx= _g156904_ 2)
                 (apply (lambda (_id150015_ _eid150016_)
                          (gx#core-bind-runtime-reference!__0
                           _id150015_
                           _eid150016_))
                        _g156905_))
                ((##fx= _g156904_ 3)
                 (apply (lambda (_id150024_ _eid150025_ _rebind?150026_)
                          (gx#core-bind-runtime-reference!__1
                           _id150024_
                           _eid150025_
                           _rebind?150026_))
                        _g156905_))
                ((##fx= _g156904_ 4)
                 (apply (lambda (_id150032_
                                 _eid150033_
                                 _rebind?150034_
                                 _phi150035_)
                          (gx#core-bind-runtime-reference!__2
                           _id150032_
                           _eid150033_
                           _rebind?150034_
                           _phi150035_))
                        _g156905_))
                ((##fx= _g156904_ 5)
                 (apply (lambda (_id150039_
                                 _eid150040_
                                 _rebind?150041_
                                 _phi150042_
                                 _ctx150043_)
                          (gx#core-bind-runtime-reference!__%
                           _id150039_
                           _eid150040_
                           _rebind?150041_
                           _phi150042_
                           _ctx150043_))
                        _g156905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g156905_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id149961_ _eid149962_ _rebind?149963_ _phi149964_ _ctx149965_)
        (gx#bind-identifier!__%
         _id149961_
         (##structure
          gx#extern-binding::t
          _eid149962_
          (gx#core-identifier-key _id149961_)
          _phi149964_)
         _rebind?149963_
         _phi149964_
         _ctx149965_)))
    (define gx#core-bind-extern!__0
      (lambda (_id149970_ _eid149971_)
        (let* ((_rebind?149973_ '#f)
               (_phi149975_ (gx#current-expander-phi))
               (_ctx149977_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149970_
           _eid149971_
           _rebind?149973_
           _phi149975_
           _ctx149977_))))
    (define gx#core-bind-extern!__1
      (lambda (_id149979_ _eid149980_ _rebind?149981_)
        (let* ((_phi149983_ (gx#current-expander-phi))
               (_ctx149985_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149979_
           _eid149980_
           _rebind?149981_
           _phi149983_
           _ctx149985_))))
    (define gx#core-bind-extern!__2
      (lambda (_id149987_ _eid149988_ _rebind?149989_ _phi149990_)
        (let ((_ctx149992_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id149987_
           _eid149988_
           _rebind?149989_
           _phi149990_
           _ctx149992_))))
    (define gx#core-bind-extern!
      (lambda _g156907_
        (let ((_g156906_ (##length _g156907_)))
          (cond ((##fx= _g156906_ 2)
                 (apply (lambda (_id149970_ _eid149971_)
                          (gx#core-bind-extern!__0 _id149970_ _eid149971_))
                        _g156907_))
                ((##fx= _g156906_ 3)
                 (apply (lambda (_id149979_ _eid149980_ _rebind?149981_)
                          (gx#core-bind-extern!__1
                           _id149979_
                           _eid149980_
                           _rebind?149981_))
                        _g156907_))
                ((##fx= _g156906_ 4)
                 (apply (lambda (_id149987_
                                 _eid149988_
                                 _rebind?149989_
                                 _phi149990_)
                          (gx#core-bind-extern!__2
                           _id149987_
                           _eid149988_
                           _rebind?149989_
                           _phi149990_))
                        _g156907_))
                ((##fx= _g156906_ 5)
                 (apply (lambda (_id149994_
                                 _eid149995_
                                 _rebind?149996_
                                 _phi149997_
                                 _ctx149998_)
                          (gx#core-bind-extern!__%
                           _id149994_
                           _eid149995_
                           _rebind?149996_
                           _phi149997_
                           _ctx149998_))
                        _g156907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g156907_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id149915_ _e149916_ _rebind?149917_ _phi149918_ _ctx149919_)
        (gx#bind-identifier!__%
         _id149915_
         (let ((_key149924_ (gx#core-identifier-key _id149915_))
               (_e149925_
                (if (or (##structure-instance-of? _e149916_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e149916_
                         'gx#expander-context::t))
                    _e149916_
                    (##structure
                     gx#user-expander::t
                     _e149916_
                     _ctx149919_
                     _phi149918_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key149924_ '#t _phi149918_ _ctx149919_)
            _key149924_
            _phi149918_
            _e149925_))
         _rebind?149917_
         _phi149918_
         _ctx149919_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id149930_ _e149931_)
        (let* ((_rebind?149933_ '#f)
               (_phi149935_ (gx#current-expander-phi))
               (_ctx149937_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149930_
           _e149931_
           _rebind?149933_
           _phi149935_
           _ctx149937_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id149939_ _e149940_ _rebind?149941_)
        (let* ((_phi149943_ (gx#current-expander-phi))
               (_ctx149945_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149939_
           _e149940_
           _rebind?149941_
           _phi149943_
           _ctx149945_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id149947_ _e149948_ _rebind?149949_ _phi149950_)
        (let ((_ctx149952_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id149947_
           _e149948_
           _rebind?149949_
           _phi149950_
           _ctx149952_))))
    (define gx#core-bind-syntax!
      (lambda _g156909_
        (let ((_g156908_ (##length _g156909_)))
          (cond ((##fx= _g156908_ 2)
                 (apply (lambda (_id149930_ _e149931_)
                          (gx#core-bind-syntax!__0 _id149930_ _e149931_))
                        _g156909_))
                ((##fx= _g156908_ 3)
                 (apply (lambda (_id149939_ _e149940_ _rebind?149941_)
                          (gx#core-bind-syntax!__1
                           _id149939_
                           _e149940_
                           _rebind?149941_))
                        _g156909_))
                ((##fx= _g156908_ 4)
                 (apply (lambda (_id149947_
                                 _e149948_
                                 _rebind?149949_
                                 _phi149950_)
                          (gx#core-bind-syntax!__2
                           _id149947_
                           _e149948_
                           _rebind?149949_
                           _phi149950_))
                        _g156909_))
                ((##fx= _g156908_ 5)
                 (apply (lambda (_id149954_
                                 _e149955_
                                 _rebind?149956_
                                 _phi149957_
                                 _ctx149958_)
                          (gx#core-bind-syntax!__%
                           _id149954_
                           _e149955_
                           _rebind?149956_
                           _phi149957_
                           _ctx149958_))
                        _g156909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g156909_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id149898_ _e149899_ _rebind?149900_)
        (gx#core-bind-syntax!__%
         _id149898_
         _e149899_
         _rebind?149900_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id149905_ _e149906_)
        (let ((_rebind?149908_ '#f))
          (gx#core-bind-root-syntax!__%
           _id149905_
           _e149906_
           _rebind?149908_))))
    (define gx#core-bind-root-syntax!
      (lambda _g156911_
        (let ((_g156910_ (##length _g156911_)))
          (cond ((##fx= _g156910_ 2)
                 (apply (lambda (_id149905_ _e149906_)
                          (gx#core-bind-root-syntax!__0 _id149905_ _e149906_))
                        _g156911_))
                ((##fx= _g156910_ 3)
                 (apply (lambda (_id149910_ _e149911_ _rebind?149912_)
                          (gx#core-bind-root-syntax!__%
                           _id149910_
                           _e149911_
                           _rebind?149912_))
                        _g156911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g156911_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id149856_
               _alias-id149857_
               _rebind?149858_
               _phi149859_
               _ctx149860_)
        (gx#bind-identifier!__%
         _id149856_
         (let ((_key149862_ (gx#core-identifier-key _id149856_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key149862_ '#t _phi149859_ _ctx149860_)
            _key149862_
            _phi149859_
            _alias-id149857_))
         _rebind?149858_
         _phi149859_
         _ctx149860_)))
    (define gx#core-bind-alias!__0
      (lambda (_id149867_ _alias-id149868_)
        (let* ((_rebind?149870_ '#f)
               (_phi149872_ (gx#current-expander-phi))
               (_ctx149874_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149867_
           _alias-id149868_
           _rebind?149870_
           _phi149872_
           _ctx149874_))))
    (define gx#core-bind-alias!__1
      (lambda (_id149876_ _alias-id149877_ _rebind?149878_)
        (let* ((_phi149880_ (gx#current-expander-phi))
               (_ctx149882_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149876_
           _alias-id149877_
           _rebind?149878_
           _phi149880_
           _ctx149882_))))
    (define gx#core-bind-alias!__2
      (lambda (_id149884_ _alias-id149885_ _rebind?149886_ _phi149887_)
        (let ((_ctx149889_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id149884_
           _alias-id149885_
           _rebind?149886_
           _phi149887_
           _ctx149889_))))
    (define gx#core-bind-alias!
      (lambda _g156913_
        (let ((_g156912_ (##length _g156913_)))
          (cond ((##fx= _g156912_ 2)
                 (apply (lambda (_id149867_ _alias-id149868_)
                          (gx#core-bind-alias!__0 _id149867_ _alias-id149868_))
                        _g156913_))
                ((##fx= _g156912_ 3)
                 (apply (lambda (_id149876_ _alias-id149877_ _rebind?149878_)
                          (gx#core-bind-alias!__1
                           _id149876_
                           _alias-id149877_
                           _rebind?149878_))
                        _g156913_))
                ((##fx= _g156912_ 4)
                 (apply (lambda (_id149884_
                                 _alias-id149885_
                                 _rebind?149886_
                                 _phi149887_)
                          (gx#core-bind-alias!__2
                           _id149884_
                           _alias-id149885_
                           _rebind?149886_
                           _phi149887_))
                        _g156913_))
                ((##fx= _g156912_ 5)
                 (apply (lambda (_id149891_
                                 _alias-id149892_
                                 _rebind?149893_
                                 _phi149894_
                                 _ctx149895_)
                          (gx#core-bind-alias!__%
                           _id149891_
                           _alias-id149892_
                           _rebind?149893_
                           _phi149894_
                           _ctx149895_))
                        _g156913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g156913_))))))
    (define gx#make-binding-id__%
      (lambda (_key149813_ _syntax?149814_ _phi149815_ _ctx149816_)
        (if (uninterned-symbol? _key149813_)
            (gensym 'L)
            (if (pair? _key149813_)
                (gensym (car _key149813_))
                (if (##structure-instance-of? _ctx149816_ 'gx#top-context::t)
                    (let ((_ns149818_
                           (gx#core-context-namespace__% _ctx149816_)))
                      (if (and (fxzero? _phi149815_) (not _syntax?149814_))
                          (if _ns149818_
                              (make-symbol__1 _ns149818_ '"#" _key149813_)
                              _key149813_)
                          (if _syntax?149814_
                              (make-symbol__1
                               (let ((_$e149820_ _ns149818_))
                                 (if _$e149820_ _$e149820_ '""))
                               '"[:"
                               (number->string _phi149815_)
                               '":]#"
                               _key149813_)
                              (make-symbol__1
                               (let ((_$e149823_ _ns149818_))
                                 (if _$e149823_ _$e149823_ '""))
                               '"["
                               (number->string _phi149815_)
                               '"]#"
                               _key149813_))))
                    (gensym _key149813_))))))
    (define gx#make-binding-id__0
      (lambda (_key149829_)
        (let* ((_syntax?149831_ '#f)
               (_phi149833_ (gx#current-expander-phi))
               (_ctx149835_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149829_
           _syntax?149831_
           _phi149833_
           _ctx149835_))))
    (define gx#make-binding-id__1
      (lambda (_key149837_ _syntax?149838_)
        (let* ((_phi149840_ (gx#current-expander-phi))
               (_ctx149842_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149837_
           _syntax?149838_
           _phi149840_
           _ctx149842_))))
    (define gx#make-binding-id__2
      (lambda (_key149844_ _syntax?149845_ _phi149846_)
        (let ((_ctx149848_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149844_
           _syntax?149845_
           _phi149846_
           _ctx149848_))))
    (define gx#make-binding-id
      (lambda _g156915_
        (let ((_g156914_ (##length _g156915_)))
          (cond ((##fx= _g156914_ 1)
                 (apply (lambda (_key149829_)
                          (gx#make-binding-id__0 _key149829_))
                        _g156915_))
                ((##fx= _g156914_ 2)
                 (apply (lambda (_key149837_ _syntax?149838_)
                          (gx#make-binding-id__1 _key149837_ _syntax?149838_))
                        _g156915_))
                ((##fx= _g156914_ 3)
                 (apply (lambda (_key149844_ _syntax?149845_ _phi149846_)
                          (gx#make-binding-id__2
                           _key149844_
                           _syntax?149845_
                           _phi149846_))
                        _g156915_))
                ((##fx= _g156914_ 4)
                 (apply (lambda (_key149850_
                                 _syntax?149851_
                                 _phi149852_
                                 _ctx149853_)
                          (gx#make-binding-id__%
                           _key149850_
                           _syntax?149851_
                           _phi149852_
                           _ctx149853_))
                        _g156915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g156915_))))))))
