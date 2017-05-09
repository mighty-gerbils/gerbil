(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx7630_)
      (let ((_expand-special7632_
             (lambda (_hd7634_ _K7635_ _rest7636_ _r7637_)
               (_K7635_ _rest7636_
                        (cons (gx#core-expand-top _hd7634_) _r7637_)))))
        (gx#core-expand-block__0 _stx7630_ _expand-special7632_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx7383_)
      (let ((_expand-special7385_
             (lambda (_hd7505_ _K7506_ _rest7507_ _r7508_)
               (let ((_K7512_ (lambda (_e7510_)
                                (_K7506_ _rest7507_ (cons _e7510_ _r7508_)))))
                 (let ((_e75137542_ _hd7505_))
                   (let ((_E75377546_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e75137542_))))
                     (let ((_E75337558_
                            (lambda ()
                              (if (gx#stx-pair? _e75137542_)
                                  (let ((_e75387550_
                                         (gx#syntax-e _e75137542_)))
                                    (let ((_hd75397553_ (##car _e75387550_))
                                          (_tl75407555_ (##cdr _e75387550_)))
                                      (if (if (gx#identifier? _hd75397553_)
                                              (gx#core-identifier=?
                                               _hd75397553_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K7512_ (gx#core-expand-define-runtime%
                                                        _hd7505_))
                                              (_E75377546_))
                                          (_E75377546_))))
                                  (_E75377546_)))))
                       (let ((_E75297570_
                              (lambda ()
                                (if (gx#stx-pair? _e75137542_)
                                    (let ((_e75347562_
                                           (gx#syntax-e _e75137542_)))
                                      (let ((_hd75357565_ (##car _e75347562_))
                                            (_tl75367567_ (##cdr _e75347562_)))
                                        (if (if (gx#identifier? _hd75357565_)
                                                (gx#core-identifier=?
                                                 _hd75357565_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K7512_ (gx#core-expand-define-alias%
                                                          _hd7505_))
                                                (_E75337558_))
                                            (_E75337558_))))
                                    (_E75337558_)))))
                         (let ((_E75197582_
                                (lambda ()
                                  (if (gx#stx-pair? _e75137542_)
                                      (let ((_e75307574_
                                             (gx#syntax-e _e75137542_)))
                                        (let ((_hd75317577_
                                               (##car _e75307574_))
                                              (_tl75327579_
                                               (##cdr _e75307574_)))
                                          (if (if (gx#identifier? _hd75317577_)
                                                  (gx#core-identifier=?
                                                   _hd75317577_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K7512_ (gx#core-expand-define-syntax%
                                                            _hd7505_))
                                                  (_E75297570_))
                                              (_E75297570_))))
                                      (_E75297570_)))))
                           (let ((_E75157614_
                                  (lambda ()
                                    (if (gx#stx-pair? _e75137542_)
                                        (let ((_e75207586_
                                               (gx#syntax-e _e75137542_)))
                                          (let ((_hd75217589_
                                                 (##car _e75207586_))
                                                (_tl75227591_
                                                 (##cdr _e75207586_)))
                                            (if (if (gx#identifier?
                                                     _hd75217589_)
                                                    (gx#core-identifier=?
                                                     _hd75217589_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl75227591_)
                                                    (let ((_e75237594_
                                                           (gx#syntax-e
                                                            _tl75227591_)))
                                                      (let ((_hd75247597_
                                                             (##car _e75237594_))
                                                            (_tl75257599_
                                                             (##cdr _e75237594_)))
                                                        (let ((_hd-bind7602_
                                                               _hd75247597_))
                                                          (if (gx#stx-pair?
                                                               _tl75257599_)
                                                              (let ((_e75267604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl75257599_)))
                        (let ((_hd75277607_ (##car _e75267604_))
                              (_tl75287609_ (##cdr _e75267604_)))
                          (let ((_expr7612_ _hd75277607_))
                            (if (gx#stx-null? _tl75287609_)
                                (if (gx#core-bind-values? _hd-bind7602_)
                                    (begin
                                      (gx#core-bind-values!__0 _hd-bind7602_)
                                      (_K7512_ _hd7505_))
                                    (_E75197582_))
                                (_E75197582_)))))
                      (_E75197582_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E75197582_))
                                                (_E75197582_))))
                                        (_E75197582_)))))
                             (let ((_E75147626_
                                    (lambda ()
                                      (if (gx#stx-pair? _e75137542_)
                                          (let ((_e75167618_
                                                 (gx#syntax-e _e75137542_)))
                                            (let ((_hd75177621_
                                                   (##car _e75167618_))
                                                  (_tl75187623_
                                                   (##cdr _e75167618_)))
                                              (if (if (gx#identifier?
                                                       _hd75177621_)
                                                      (gx#core-identifier=?
                                                       _hd75177621_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K7512_ (gx#core-expand-begin-syntax%
                                                                _hd7505_))
                                                      (_E75157614_))
                                                  (_E75157614_))))
                                          (_E75157614_)))))
                               (let () (_E75147626_)))))))))))))
        (let ((_eval-body7386_
               (lambda (_rbody7394_)
                 ((letrec ((_lp7396_
                            (lambda (_rest7398_ _body7399_ _ebody7400_)
                              (let ((_rest74017409_ _rest7398_))
                                (let ((_E74047413_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest74017409_))))
                                  (let ((_else74037417_
                                         (lambda ()
                                           (values _body7399_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody7400_)
                                                     (gx#stx-source
                                                      _stx7383_)))))))
                                    (let ((_K74057493_
                                           (lambda (_rest7420_ _hd7421_)
                                             (let ((_e74227439_ _hd7421_))
                                               (let ((_E74347443_
                                                      (lambda ()
                                                        (_lp7396_
                                                         _rest7420_
                                                         (cons _hd7421_
                                                               _body7399_)
                                                         (cons _hd7421_
                                                               _ebody7400_)))))
                                                 (let ((_E74247455_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e74227439_)
                                                              (let ((_e74357447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e74227439_)))
                        (let ((_hd74367450_ (##car _e74357447_))
                              (_tl74377452_ (##cdr _e74357447_)))
                          (if (if (gx#identifier? _hd74367450_)
                                  (gx#core-identifier=?
                                   _hd74367450_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp7396_
                                   _rest7420_
                                   (cons _hd7421_ _body7399_)
                                   _ebody7400_)
                                  (_E74347443_))
                              (_E74347443_))))
                      (_E74347443_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E74237489_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e74227439_)
                        (let ((_e74257459_ (gx#syntax-e _e74227439_)))
                          (let ((_hd74267462_ (##car _e74257459_))
                                (_tl74277464_ (##cdr _e74257459_)))
                            (if (if (gx#identifier? _hd74267462_)
                                    (gx#core-identifier=?
                                     _hd74267462_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl74277464_)
                                    (let ((_e74287467_
                                           (gx#syntax-e _tl74277464_)))
                                      (let ((_hd74297470_ (##car _e74287467_))
                                            (_tl74307472_ (##cdr _e74287467_)))
                                        (let ((_hd-bind7475_ _hd74297470_))
                                          (if (gx#stx-pair? _tl74307472_)
                                              (let ((_e74317477_
                                                     (gx#syntax-e
                                                      _tl74307472_)))
                                                (let ((_hd74327480_
                                                       (##car _e74317477_))
                                                      (_tl74337482_
                                                       (##cdr _e74317477_)))
                                                  (let ((_expr7485_
                                                         _hd74327480_))
                                                    (if (gx#stx-null?
                                                         _tl74337482_)
                                                        (if '#t
                                                            (let ((_ehd7487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax__1
                            (cons (gx#core-quote-syntax__0 '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind7475_)
                                        (cons (gx#core-expand-expression
                                               _expr7485_)
                                              '())))
                            (gx#stx-source _hd7421_))))
                      (_lp7396_
                       _rest7420_
                       (cons _ehd7487_ _body7399_)
                       (cons _ehd7487_ _ebody7400_)))
                    (_E74247455_))
                (_E74247455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E74247455_)))))
                                    (_E74247455_))
                                (_E74247455_))))
                        (_E74247455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E74237489_)))))))))
                                      (if (##pair? _rest74017409_)
                                          (let ((_hd74067496_
                                                 (##car _rest74017409_))
                                                (_tl74077498_
                                                 (##cdr _rest74017409_)))
                                            (let ((_hd7501_ _hd74067496_))
                                              (let ((_rest7503_ _tl74077498_))
                                                (_K74057493_
                                                 _rest7503_
                                                 _hd7501_))))
                                          (_else74037417_)))))))))
                    _lp7396_)
                  _rbody7394_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody7389_
                    (gx#core-expand-block__1
                     _stx7383_
                     _expand-special7385_
                     '#f)))
               (let ((_g7638_ (_eval-body7386_ _rbody7389_)))
                 (begin
                   (let ((_g7639_ (values-count _g7638_)))
                     (if (not (fx= _g7639_ 2))
                         (error "Context expects 2 values" _g7639_)))
                   (let ((_expanded-body7391_ (values-ref _g7638_ 0))
                         (_value7392_ (values-ref _g7638_ 1)))
                     (gx#core-quote-syntax__1
                      (if (##structure-instance-of?
                           (gx#current-expander-context)
                           'gx#module-context::t)
                          (gx#core-cons '%#begin-syntax _expanded-body7391_)
                          (cons (gx#core-quote-syntax__0 '%#quote)
                                (cons _value7392_ '())))
                      (gx#stx-source _stx7383_)))))))
           gx#current-expander-phi
           (fx1+ (gx#current-expander-phi)))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx7353_)
      (let ((_e73547361_ _stx7353_))
        (let ((_E73567365_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73547361_))))
          (let ((_E73557379_
                 (lambda ()
                   (if (gx#stx-pair? _e73547361_)
                       (let ((_e73577369_ (gx#syntax-e _e73547361_)))
                         (let ((_hd73587372_ (##car _e73577369_))
                               (_tl73597374_ (##cdr _e73577369_)))
                           (let ((_body7377_ _tl73597374_))
                             (if (gx#stx-list? _body7377_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons '%#begin-foreign _body7377_)
                                  (gx#stx-source _stx7353_))
                                 (_E73567365_)))))
                       (_E73567365_)))))
            (let () (_E73557379_)))))))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx7341_)
      (let ((_e73427345_ _stx7341_))
        (let ((_E73437349_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73427345_))))
          (let () (_E73437349_))))))
  (define gx#core-expand-local-block
    (lambda (_stx7065_ _body7066_)
      (let ((_expand-internal-special7070_
             (lambda (_hd7227_ _K7228_ _rest7229_ _r7230_)
               (let ((_e72317256_ _hd7227_))
                 (let ((_E72517260_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e72317256_))))
                   (let ((_E72477272_
                          (lambda ()
                            (if (gx#stx-pair? _e72317256_)
                                (let ((_e72527264_ (gx#syntax-e _e72317256_)))
                                  (let ((_hd72537267_ (##car _e72527264_))
                                        (_tl72547269_ (##cdr _e72527264_)))
                                    (if (if (gx#identifier? _hd72537267_)
                                            (gx#core-identifier=?
                                             _hd72537267_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K7228_ _rest7229_
                                                     (cons (gx#core-expand-declare%
                                                            _hd7227_)
                                                           _r7230_))
                                            (_E72517260_))
                                        (_E72517260_))))
                                (_E72517260_)))))
                     (let ((_E72437284_
                            (lambda ()
                              (if (gx#stx-pair? _e72317256_)
                                  (let ((_e72487276_
                                         (gx#syntax-e _e72317256_)))
                                    (let ((_hd72497279_ (##car _e72487276_))
                                          (_tl72507281_ (##cdr _e72487276_)))
                                      (if (if (gx#identifier? _hd72497279_)
                                              (gx#core-identifier=?
                                               _hd72497279_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd7227_)
                                                (_K7228_ _rest7229_ _r7230_))
                                              (_E72477272_))
                                          (_E72477272_))))
                                  (_E72477272_)))))
                       (let ((_E72337296_
                              (lambda ()
                                (if (gx#stx-pair? _e72317256_)
                                    (let ((_e72447288_
                                           (gx#syntax-e _e72317256_)))
                                      (let ((_hd72457291_ (##car _e72447288_))
                                            (_tl72467293_ (##cdr _e72447288_)))
                                        (if (if (gx#identifier? _hd72457291_)
                                                (gx#core-identifier=?
                                                 _hd72457291_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd7227_)
                                                  (_K7228_ _rest7229_ _r7230_))
                                                (_E72437284_))
                                            (_E72437284_))))
                                    (_E72437284_)))))
                         (let ((_E72327328_
                                (lambda ()
                                  (if (gx#stx-pair? _e72317256_)
                                      (let ((_e72347300_
                                             (gx#syntax-e _e72317256_)))
                                        (let ((_hd72357303_
                                               (##car _e72347300_))
                                              (_tl72367305_
                                               (##cdr _e72347300_)))
                                          (if (if (gx#identifier? _hd72357303_)
                                                  (gx#core-identifier=?
                                                   _hd72357303_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl72367305_)
                                                  (let ((_e72377308_
                                                         (gx#syntax-e
                                                          _tl72367305_)))
                                                    (let ((_hd72387311_
                                                           (##car _e72377308_))
                                                          (_tl72397313_
                                                           (##cdr _e72377308_)))
                                                      (let ((_hd-bind7316_
                                                             _hd72387311_))
                                                        (if (gx#stx-pair?
                                                             _tl72397313_)
                                                            (let ((_e72407318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl72397313_)))
                      (let ((_hd72417321_ (##car _e72407318_))
                            (_tl72427323_ (##cdr _e72407318_)))
                        (let ((_expr7326_ _hd72417321_))
                          (if (gx#stx-null? _tl72427323_)
                              (if (gx#core-bind-values? _hd-bind7316_)
                                  (begin
                                    (gx#core-bind-values!__0 _hd-bind7316_)
                                    (_K7228_ _rest7229_
                                             (cons _hd7227_ _r7230_)))
                                  (_E72337296_))
                              (_E72337296_)))))
                    (_E72337296_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E72337296_))
                                              (_E72337296_))))
                                      (_E72337296_)))))
                           (let () (_E72327328_)))))))))))
        (let ((_wrap-internal7071_
               (lambda (_rbody7073_)
                 ((letrec ((_lp7075_
                            (lambda (_rest7077_
                                     _decls7078_
                                     _bind7079_
                                     _body7080_)
                              (let ((_e70817088_ _rest7077_))
                                (let ((_E70837137_
                                       (lambda ()
                                         (let ((_body7132_
                                                (let ((_body70917101_
                                                       _body7080_))
                                                  (let ((_E70957105_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body70917101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else70947109_
                                                           (lambda ()
                                                             (gx#core-quote-syntax__1
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body7080_)
                                                              (gx#stx-source
                                                               _stx7065_)))))
                                                      (let ((_try-match70937125_
                                                             (lambda ()
                                                               (let ((_K70967115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr7113_) _expr7113_)))
                         (if (##pair? _body70917101_)
                             (let ((_hd70977118_ (##car _body70917101_))
                                   (_tl70987120_ (##cdr _body70917101_)))
                               (let ((_expr7123_ _hd70977118_))
                                 (if (##null? _tl70987120_)
                                     (_K70967115_ _expr7123_)
                                     (_else70947109_))))
                             (_else70947109_))))))
                (let ((_K70997129_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx7065_))))
                  (if (##null? _body70917101_)
                      (_K70997129_)
                      (_try-match70937125_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body7134_
                                                  (if (null? _bind7079_)
                                                      _body7132_
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#letrec*-values)
                                                             (cons _bind7079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body7132_ '())))
               (gx#stx-source _stx7065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls7078_)
                                                   _body7134_
                                                   (gx#core-quote-syntax__1
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#begin-annotation)
                                                          (cons _decls7078_
                                                                (cons _body7134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx7065_)))))))))
                                  (let ((_E70827223_
                                         (lambda ()
                                           (if (gx#stx-pair? _e70817088_)
                                               (let ((_e70847141_
                                                      (gx#syntax-e
                                                       _e70817088_)))
                                                 (let ((_hd70857144_
                                                        (##car _e70847141_))
                                                       (_tl70867146_
                                                        (##cdr _e70847141_)))
                                                   (let ((_hd7149_
                                                          _hd70857144_))
                                                     (let ((_rest7151_
                                                            _tl70867146_))
                                                       (if '#t
                                                           (let ((_e71527169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd7149_))
                     (let ((_E71647173_
                            (lambda ()
                              (if (null? _bind7079_)
                                  (_lp7075_
                                   _rest7151_
                                   _decls7078_
                                   _bind7079_
                                   (cons _hd7149_ _body7080_))
                                  (_lp7075_
                                   _rest7151_
                                   _decls7078_
                                   (cons (cons '#f (cons _hd7149_ '()))
                                         _bind7079_)
                                   _body7080_)))))
                       (let ((_E71547187_
                              (lambda ()
                                (if (gx#stx-pair? _e71527169_)
                                    (let ((_e71657177_
                                           (gx#syntax-e _e71527169_)))
                                      (let ((_hd71667180_ (##car _e71657177_))
                                            (_tl71677182_ (##cdr _e71657177_)))
                                        (if (if (gx#identifier? _hd71667180_)
                                                (gx#core-identifier=?
                                                 _hd71667180_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls7185_ _tl71677182_))
                                              (if '#t
                                                  (_lp7075_
                                                   _rest7151_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls7078_
                                                    _xdecls7185_)
                                                   _bind7079_
                                                   _body7080_)
                                                  (_E71647173_)))
                                            (_E71647173_))))
                                    (_E71647173_)))))
                         (let ((_E71537219_
                                (lambda ()
                                  (if (gx#stx-pair? _e71527169_)
                                      (let ((_e71557191_
                                             (gx#syntax-e _e71527169_)))
                                        (let ((_hd71567194_
                                               (##car _e71557191_))
                                              (_tl71577196_
                                               (##cdr _e71557191_)))
                                          (if (if (gx#identifier? _hd71567194_)
                                                  (gx#core-identifier=?
                                                   _hd71567194_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl71577196_)
                                                  (let ((_e71587199_
                                                         (gx#syntax-e
                                                          _tl71577196_)))
                                                    (let ((_hd71597202_
                                                           (##car _e71587199_))
                                                          (_tl71607204_
                                                           (##cdr _e71587199_)))
                                                      (let ((_hd-bind7207_
                                                             _hd71597202_))
                                                        (if (gx#stx-pair?
                                                             _tl71607204_)
                                                            (let ((_e71617209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl71607204_)))
                      (let ((_hd71627212_ (##car _e71617209_))
                            (_tl71637214_ (##cdr _e71617209_)))
                        (let ((_expr7217_ _hd71627212_))
                          (if (gx#stx-null? _tl71637214_)
                              (if '#t
                                  (_lp7075_
                                   _rest7151_
                                   _decls7078_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind7207_)
                                               (cons (gx#core-expand-expression
                                                      _expr7217_)
                                                     '()))
                                         _bind7079_)
                                   _body7080_)
                                  (_E71547187_))
                              (_E71547187_)))))
                    (_E71547187_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E71547187_))
                                              (_E71547187_))))
                                      (_E71547187_)))))
                           (let () (_E71537219_))))))
                   (_E70837137_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E70837137_)))))
                                    (let () (_E70827223_))))))))
                    _lp7075_)
                  _rbody7073_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal7069_
                 (lambda (_hd7332_ _rest7333_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal7071_
                       (gx#core-expand-block__1
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd7332_ _rest7333_)
                         (gx#stx-source _stx7065_))
                        _expand-internal-special7070_
                        '#f)))
                    gx#current-expander-context
                    (make-struct-instance gx#local-context::t)))))
            (let ((_expand-special7068_
                   (lambda (_hd7336_ _K7337_ _rest7338_ _r7339_)
                     (_K7337_ '()
                              (cons (_expand-internal7069_ _hd7336_ _rest7338_)
                                    _r7339_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body7066_)
                (gx#stx-source _stx7065_))
               _expand-special7068_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx7003_)
      (let ((_e70047011_ _stx7003_))
        (let ((_E70067015_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e70047011_))))
          (let ((_E70057061_
                 (lambda ()
                   (if (gx#stx-pair? _e70047011_)
                       (let ((_e70077019_ (gx#syntax-e _e70047011_)))
                         (let ((_hd70087022_ (##car _e70077019_))
                               (_tl70097024_ (##cdr _e70077019_)))
                           (let ((_body7027_ _tl70097024_))
                             (if (gx#stx-list? _body7027_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map1
                                    (lambda (_decl7029_)
                                      (let ((_e70307037_ _decl7029_))
                                        (let ((_E70327041_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e70307037_))))
                                          (let ((_E70317057_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e70307037_)
                                                       (let ((_e70337045_
                                                              (gx#syntax-e
                                                               _e70307037_)))
                                                         (let ((_hd70347048_
                                                                (##car _e70337045_))
                                                               (_tl70357050_
                                                                (##cdr _e70337045_)))
                                                           (let ((_head7053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd70347048_))
                     (let ((_args7055_ _tl70357050_))
                       (if (gx#stx-list? _args7055_)
                           (gx#stx-map1 gx#core-quote-syntax _decl7029_)
                           (_E70327041_))))))
               (_E70327041_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E70317057_))))))
                                    _body7027_))
                                  (gx#stx-source _stx7003_))
                                 (_E70067015_)))))
                       (_E70067015_)))))
            (let () (_E70057061_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx6887_)
      (let ((_e68886895_ _stx6887_))
        (let ((_E68906899_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68886895_))))
          (let ((_E68896999_
                 (lambda ()
                   (if (gx#stx-pair? _e68886895_)
                       (let ((_e68916903_ (gx#syntax-e _e68886895_)))
                         (let ((_hd68926906_ (##car _e68916903_))
                               (_tl68936908_ (##cdr _e68916903_)))
                           (let ((_body6911_ _tl68936908_))
                             (if (gx#stx-list? _body6911_)
                                 (begin
                                   (gx#stx-for-each1
                                    (lambda (_bind6913_)
                                      (let ((_e69146924_ _bind6913_))
                                        (let ((_E69166928_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e69146924_))))
                                          (let ((_E69156952_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e69146924_)
                                                       (let ((_e69176932_
                                                              (gx#syntax-e
                                                               _e69146924_)))
                                                         (let ((_hd69186935_
                                                                (##car _e69176932_))
                                                               (_tl69196937_
                                                                (##cdr _e69176932_)))
                                                           (let ((_id6940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd69186935_))
                     (if (gx#stx-pair? _tl69196937_)
                         (let ((_e69206942_ (gx#syntax-e _tl69196937_)))
                           (let ((_hd69216945_ (##car _e69206942_))
                                 (_tl69226947_ (##cdr _e69206942_)))
                             (let ((_eid6950_ _hd69216945_))
                               (if (gx#stx-null? _tl69226947_)
                                   (if (if (gx#identifier? _id6940_)
                                           (gx#identifier? _eid6950_)
                                           '#f)
                                       (gx#core-bind-extern!__0
                                        _id6940_
                                        (gx#stx-e _eid6950_))
                                       (_E69166928_))
                                   (_E69166928_)))))
                         (_E69166928_)))))
               (_E69166928_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E69156952_))))))
                                    _body6911_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map1
                                      (lambda (_bind6956_)
                                        (let ((_e69576967_ _bind6956_))
                                          (let ((_E69596971_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e69576967_))))
                                            (let ((_E69586995_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e69576967_)
                                                         (let ((_e69606975_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e69576967_)))
                   (let ((_hd69616978_ (##car _e69606975_))
                         (_tl69626980_ (##cdr _e69606975_)))
                     (let ((_id6983_ _hd69616978_))
                       (if (gx#stx-pair? _tl69626980_)
                           (let ((_e69636985_ (gx#syntax-e _tl69626980_)))
                             (let ((_hd69646988_ (##car _e69636985_))
                                   (_tl69656990_ (##cdr _e69636985_)))
                               (let ((_eid6993_ _hd69646988_))
                                 (if (gx#stx-null? _tl69656990_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax__0
                                                _id6983_)
                                               (cons (gx#stx-e _eid6993_) '()))
                                         (_E69596971_))
                                     (_E69596971_)))))
                           (_E69596971_)))))
                 (_E69596971_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E69586995_))))))
                                      _body6911_))
                                    (gx#stx-source _stx6887_)))
                                 (_E68906899_)))))
                       (_E68906899_)))))
            (let () (_E68896999_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx6833_)
      (let ((_e68346847_ _stx6833_))
        (let ((_E68366851_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68346847_))))
          (let ((_E68356883_
                 (lambda ()
                   (if (gx#stx-pair? _e68346847_)
                       (let ((_e68376855_ (gx#syntax-e _e68346847_)))
                         (let ((_hd68386858_ (##car _e68376855_))
                               (_tl68396860_ (##cdr _e68376855_)))
                           (if (gx#stx-pair? _tl68396860_)
                               (let ((_e68406863_ (gx#syntax-e _tl68396860_)))
                                 (let ((_hd68416866_ (##car _e68406863_))
                                       (_tl68426868_ (##cdr _e68406863_)))
                                   (let ((_hd6871_ _hd68416866_))
                                     (if (gx#stx-pair? _tl68426868_)
                                         (let ((_e68436873_
                                                (gx#syntax-e _tl68426868_)))
                                           (let ((_hd68446876_
                                                  (##car _e68436873_))
                                                 (_tl68456878_
                                                  (##cdr _e68436873_)))
                                             (let ((_expr6881_ _hd68446876_))
                                               (if (gx#stx-null? _tl68456878_)
                                                   (if (gx#core-bind-values?
                                                        _hd6871_)
                                                       (begin
                                                         (gx#core-bind-values!__0
                                                          _hd6871_)
                                                         (gx#core-quote-syntax__1
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd6871_)
                              (cons (gx#core-expand-expression _expr6881_)
                                    '())))
                  (gx#stx-source _stx6833_)))
               (_E68366851_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E68366851_)))))
                                         (_E68366851_)))))
                               (_E68366851_))))
                       (_E68366851_)))))
            (let () (_E68356883_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx6779_)
      (let ((_e67806793_ _stx6779_))
        (let ((_E67826797_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e67806793_))))
          (let ((_E67816829_
                 (lambda ()
                   (if (gx#stx-pair? _e67806793_)
                       (let ((_e67836801_ (gx#syntax-e _e67806793_)))
                         (let ((_hd67846804_ (##car _e67836801_))
                               (_tl67856806_ (##cdr _e67836801_)))
                           (if (gx#stx-pair? _tl67856806_)
                               (let ((_e67866809_ (gx#syntax-e _tl67856806_)))
                                 (let ((_hd67876812_ (##car _e67866809_))
                                       (_tl67886814_ (##cdr _e67866809_)))
                                   (let ((_id6817_ _hd67876812_))
                                     (if (gx#stx-pair? _tl67886814_)
                                         (let ((_e67896819_
                                                (gx#syntax-e _tl67886814_)))
                                           (let ((_hd67906822_
                                                  (##car _e67896819_))
                                                 (_tl67916824_
                                                  (##cdr _e67896819_)))
                                             (let ((_binding-id6827_
                                                    _hd67906822_))
                                               (if (gx#stx-null? _tl67916824_)
                                                   (if (if (gx#identifier?
                                                            _id6817_)
                                                           (gx#identifier?
                                                            _binding-id6827_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!__0
                                                          _id6817_
                                                          (gx#stx-e
                                                           _binding-id6827_))
                                                         (gx#core-quote-syntax__0
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax__0 _id6817_)
                              (cons (gx#core-quote-syntax__0 _binding-id6827_)
                                    '())))))
               (_E67826797_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E67826797_)))))
                                         (_E67826797_)))))
                               (_E67826797_))))
                       (_E67826797_)))))
            (let () (_E67816829_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx6722_)
      (let ((_e67236736_ _stx6722_))
        (let ((_E67256740_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e67236736_))))
          (let ((_E67246775_
                 (lambda ()
                   (if (gx#stx-pair? _e67236736_)
                       (let ((_e67266744_ (gx#syntax-e _e67236736_)))
                         (let ((_hd67276747_ (##car _e67266744_))
                               (_tl67286749_ (##cdr _e67266744_)))
                           (if (gx#stx-pair? _tl67286749_)
                               (let ((_e67296752_ (gx#syntax-e _tl67286749_)))
                                 (let ((_hd67306755_ (##car _e67296752_))
                                       (_tl67316757_ (##cdr _e67296752_)))
                                   (let ((_id6760_ _hd67306755_))
                                     (if (gx#stx-pair? _tl67316757_)
                                         (let ((_e67326762_
                                                (gx#syntax-e _tl67316757_)))
                                           (let ((_hd67336765_
                                                  (##car _e67326762_))
                                                 (_tl67346767_
                                                  (##cdr _e67326762_)))
                                             (let ((_expr6770_ _hd67336765_))
                                               (if (gx#stx-null? _tl67346767_)
                                                   (if (gx#identifier?
                                                        _id6760_)
                                                       (let ((_g7640_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr6770_)))
                 (begin
                   (let ((_g7641_ (values-count _g7640_)))
                     (if (not (fx= _g7641_ 2))
                         (error "Context expects 2 values" _g7641_)))
                   (let ((_e-stx6772_ (values-ref _g7640_ 0))
                         (_e6773_ (values-ref _g7640_ 1)))
                     (begin
                       (gx#core-bind-syntax!__0 _id6760_ _e6773_)
                       (gx#core-quote-syntax__1
                        (cons (gx#core-quote-syntax__0 '%#define-syntax)
                              (cons (gx#core-quote-syntax__0 _id6760_)
                                    (cons _e-stx6772_ '())))
                        (gx#stx-source _stx6722_))))))
               (_E67256740_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E67256740_)))))
                                         (_E67256740_)))))
                               (_E67256740_))))
                       (_E67256740_)))))
            (let () (_E67246775_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx6666_)
      (let ((_e66676680_ _stx6666_))
        (let ((_E66696684_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e66676680_))))
          (let ((_E66686718_
                 (lambda ()
                   (if (gx#stx-pair? _e66676680_)
                       (let ((_e66706688_ (gx#syntax-e _e66676680_)))
                         (let ((_hd66716691_ (##car _e66706688_))
                               (_tl66726693_ (##cdr _e66706688_)))
                           (if (gx#stx-pair? _tl66726693_)
                               (let ((_e66736696_ (gx#syntax-e _tl66726693_)))
                                 (let ((_hd66746699_ (##car _e66736696_))
                                       (_tl66756701_ (##cdr _e66736696_)))
                                   (let ((_id6704_ _hd66746699_))
                                     (if (gx#stx-pair? _tl66756701_)
                                         (let ((_e66766706_
                                                (gx#syntax-e _tl66756701_)))
                                           (let ((_hd66776709_
                                                  (##car _e66766706_))
                                                 (_tl66786711_
                                                  (##cdr _e66766706_)))
                                             (let ((_alias-id6714_
                                                    _hd66776709_))
                                               (if (gx#stx-null? _tl66786711_)
                                                   (if (if (gx#identifier?
                                                            _id6704_)
                                                           (gx#identifier?
                                                            _alias-id6714_)
                                                           '#f)
                                                       (let ((_alias-id6716_
                                                              (gx#core-quote-syntax__0
                                                               _alias-id6714_)))
                                                         (begin
                                                           (gx#core-bind-alias!__0
                                                            _id6704_
                                                            _alias-id6716_)
                                                           (gx#core-quote-syntax__0
                                                            (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax__0 _id6704_)
                                (cons _alias-id6716_ '()))))))
               (_E66696684_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E66696684_)))))
                                         (_E66696684_)))))
                               (_E66696684_))))
                       (_E66696684_)))))
            (let () (_E66686718_)))))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda6607
      (lambda (_stx6609_ _wrap?6610_)
        (let ((_e66116621_ _stx6609_))
          (let ((_E66136625_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e66116621_))))
            (let ((_E66126652_
                   (lambda ()
                     (if (gx#stx-pair? _e66116621_)
                         (let ((_e66146629_ (gx#syntax-e _e66116621_)))
                           (let ((_hd66156632_ (##car _e66146629_))
                                 (_tl66166634_ (##cdr _e66146629_)))
                             (if (gx#stx-pair? _tl66166634_)
                                 (let ((_e66176637_
                                        (gx#syntax-e _tl66166634_)))
                                   (let ((_hd66186640_ (##car _e66176637_))
                                         (_tl66196642_ (##cdr _e66176637_)))
                                     (let ((_hd6645_ _hd66186640_))
                                       (let ((_body6647_ _tl66196642_))
                                         (if (gx#core-bind-values? _hd6645_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#core-bind-values!__0
                                                   _hd6645_)
                                                  (let ((_body6650_
                                                         (cons (gx#core-quote-bind-values
                                                                _hd6645_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx6609_
                              _body6647_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _wrap?6610_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#lambda
                                                          _body6650_)
                                                         (gx#stx-source
                                                          _stx6609_))
                                                        _body6650_))))
                                              gx#current-expander-context
                                              (make-struct-instance
                                               gx#local-context::t))
                                             (_E66136625_))))))
                                 (_E66136625_))))
                         (_E66136625_)))))
              (let () (_E66126652_)))))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx6659_)
          (let ((_wrap?6661_ '#t))
            (gx#core-expand-lambda%__opt-lambda6607 _stx6659_ _wrap?6661_))))
      (define gx#core-expand-lambda%
        (lambda _g7643_
          (let ((_g7642_ (length _g7643_)))
            (cond ((fx= _g7642_ 1)
                   (apply (lambda (_stx6659_)
                            (gx#core-expand-lambda%__0 _stx6659_))
                          _g7643_))
                  ((fx= _g7642_ 2)
                   (apply (lambda (_stx6663_ _wrap?6664_)
                            (gx#core-expand-lambda%__opt-lambda6607
                             _stx6663_
                             _wrap?6664_))
                          _g7643_))
                  (else (error "No clause matching arguments" _g7643_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx6573_)
      (let ((_e65746581_ _stx6573_))
        (let ((_E65766585_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e65746581_))))
          (let ((_E65756604_
                 (lambda ()
                   (if (gx#stx-pair? _e65746581_)
                       (let ((_e65776589_ (gx#syntax-e _e65746581_)))
                         (let ((_hd65786592_ (##car _e65776589_))
                               (_tl65796594_ (##cdr _e65776589_)))
                           (let ((_clauses6597_ _tl65796594_))
                             (if (gx#stx-list? _clauses6597_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    (lambda (_clause6599_)
                                      (gx#core-expand-lambda%__opt-lambda6607
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause6599_)
                                        (let ((_$e6601_
                                               (gx#stx-source _clause6599_)))
                                          (if _$e6601_
                                              _$e6601_
                                              (gx#stx-source _stx6573_))))
                                       '#f))
                                    _clauses6597_))
                                  (gx#stx-source _stx6573_))
                                 (_E65766585_)))))
                       (_E65766585_)))))
            (let () (_E65756604_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx6527_)
      (let ((_e65286538_ _stx6527_))
        (let ((_E65306542_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e65286538_))))
          (let ((_E65296569_
                 (lambda ()
                   (if (gx#stx-pair? _e65286538_)
                       (let ((_e65316546_ (gx#syntax-e _e65286538_)))
                         (let ((_hd65326549_ (##car _e65316546_))
                               (_tl65336551_ (##cdr _e65316546_)))
                           (if (gx#stx-pair? _tl65336551_)
                               (let ((_e65346554_ (gx#syntax-e _tl65336551_)))
                                 (let ((_hd65356557_ (##car _e65346554_))
                                       (_tl65366559_ (##cdr _e65346554_)))
                                   (let ((_hd6562_ _hd65356557_))
                                     (let ((_body6564_ _tl65366559_))
                                       (if (gx#core-expand-let-bind? _hd6562_)
                                           (let ((_expressions6566_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-expression
                                                   _hd6562_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd6562_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#let-values)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd6562_
                                                                _expressions6566_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx6527_
                              _body6564_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx6527_))))
                                              gx#current-expander-context
                                              (make-struct-instance
                                               gx#local-context::t)))
                                           (_E65306542_))))))
                               (_E65306542_))))
                       (_E65306542_)))))
            (let () (_E65296569_)))))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda6470
      (lambda (_stx6472_ _form6473_)
        (let ((_e64746484_ _stx6472_))
          (let ((_E64766488_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e64746484_))))
            (let ((_E64756513_
                   (lambda ()
                     (if (gx#stx-pair? _e64746484_)
                         (let ((_e64776492_ (gx#syntax-e _e64746484_)))
                           (let ((_hd64786495_ (##car _e64776492_))
                                 (_tl64796497_ (##cdr _e64776492_)))
                             (if (gx#stx-pair? _tl64796497_)
                                 (let ((_e64806500_
                                        (gx#syntax-e _tl64796497_)))
                                   (let ((_hd64816503_ (##car _e64806500_))
                                         (_tl64826505_ (##cdr _e64806500_)))
                                     (let ((_hd6508_ _hd64816503_))
                                       (let ((_body6510_ _tl64826505_))
                                         (if (gx#core-expand-let-bind?
                                              _hd6508_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd6508_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          _form6473_)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd6508_
                                                                (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-expand-let-bind-expression
                         _hd6508_))
                       (cons (gx#core-expand-local-block _stx6472_ _body6510_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx6472_))))
                                              gx#current-expander-context
                                              (make-struct-instance
                                               gx#local-context::t))
                                             (_E64766488_))))))
                                 (_E64766488_))))
                         (_E64766488_)))))
              (let () (_E64756513_)))))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx6520_)
          (let ((_form6522_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda6470
             _stx6520_
             _form6522_))))
      (define gx#core-expand-letrec-values%
        (lambda _g7645_
          (let ((_g7644_ (length _g7645_)))
            (cond ((fx= _g7644_ 1)
                   (apply (lambda (_stx6520_)
                            (gx#core-expand-letrec-values%__0 _stx6520_))
                          _g7645_))
                  ((fx= _g7644_ 2)
                   (apply (lambda (_stx6524_ _form6525_)
                            (gx#core-expand-letrec-values%__opt-lambda6470
                             _stx6524_
                             _form6525_))
                          _g7645_))
                  (else (error "No clause matching arguments" _g7645_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx6469_)
      (gx#core-expand-letrec-values%__opt-lambda6470
       _stx6469_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx6426_)
      (if (gx#stx-list? _stx6426_)
          (gx#stx-andmap
           (lambda (_bind6428_)
             (let ((_e64296439_ _bind6428_))
               (let ((_E64316443_ (lambda () '#f)))
                 (let ((_E64306465_
                        (lambda ()
                          (if (gx#stx-pair? _e64296439_)
                              (let ((_e64326447_ (gx#syntax-e _e64296439_)))
                                (let ((_hd64336450_ (##car _e64326447_))
                                      (_tl64346452_ (##cdr _e64326447_)))
                                  (let ((_hd6455_ _hd64336450_))
                                    (if (gx#stx-pair? _tl64346452_)
                                        (let ((_e64356457_
                                               (gx#syntax-e _tl64346452_)))
                                          (let ((_hd64366460_
                                                 (##car _e64356457_))
                                                (_tl64376462_
                                                 (##cdr _e64356457_)))
                                            (if (gx#stx-null? _tl64376462_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd6455_)
                                                    (_E64316443_))
                                                (_E64316443_))))
                                        (_E64316443_)))))
                              (_E64316443_)))))
                   (let () (_E64306465_))))))
           _stx6426_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind6385_)
      (let ((_e63866396_ _bind6385_))
        (let ((_E63886400_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e63866396_))))
          (let ((_E63876422_
                 (lambda ()
                   (if (gx#stx-pair? _e63866396_)
                       (let ((_e63896404_ (gx#syntax-e _e63866396_)))
                         (let ((_hd63906407_ (##car _e63896404_))
                               (_tl63916409_ (##cdr _e63896404_)))
                           (if (gx#stx-pair? _tl63916409_)
                               (let ((_e63926412_ (gx#syntax-e _tl63916409_)))
                                 (let ((_hd63936415_ (##car _e63926412_))
                                       (_tl63946417_ (##cdr _e63926412_)))
                                   (let ((_expr6420_ _hd63936415_))
                                     (if (gx#stx-null? _tl63946417_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr6420_)
                                             (_E63886400_))
                                         (_E63886400_)))))
                               (_E63886400_))))
                       (_E63886400_)))))
            (let () (_E63876422_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind6344_)
      (let ((_e63456355_ _bind6344_))
        (let ((_E63476359_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e63456355_))))
          (let ((_E63466381_
                 (lambda ()
                   (if (gx#stx-pair? _e63456355_)
                       (let ((_e63486363_ (gx#syntax-e _e63456355_)))
                         (let ((_hd63496366_ (##car _e63486363_))
                               (_tl63506368_ (##cdr _e63486363_)))
                           (let ((_hd6371_ _hd63496366_))
                             (if (gx#stx-pair? _tl63506368_)
                                 (let ((_e63516373_
                                        (gx#syntax-e _tl63506368_)))
                                   (let ((_hd63526376_ (##car _e63516373_))
                                         (_tl63536378_ (##cdr _e63516373_)))
                                     (if (gx#stx-null? _tl63536378_)
                                         (if '#t
                                             (gx#core-bind-values!__0 _hd6371_)
                                             (_E63476359_))
                                         (_E63476359_))))
                                 (_E63476359_)))))
                       (_E63476359_)))))
            (let () (_E63466381_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind6302_ _expr6303_)
      (let ((_e63046314_ _bind6302_))
        (let ((_E63066318_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e63046314_))))
          (let ((_E63056340_
                 (lambda ()
                   (if (gx#stx-pair? _e63046314_)
                       (let ((_e63076322_ (gx#syntax-e _e63046314_)))
                         (let ((_hd63086325_ (##car _e63076322_))
                               (_tl63096327_ (##cdr _e63076322_)))
                           (let ((_hd6330_ _hd63086325_))
                             (if (gx#stx-pair? _tl63096327_)
                                 (let ((_e63106332_
                                        (gx#syntax-e _tl63096327_)))
                                   (let ((_hd63116335_ (##car _e63106332_))
                                         (_tl63126337_ (##cdr _e63106332_)))
                                     (if (gx#stx-null? _tl63126337_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd6330_)
                                                   (cons _expr6303_ '()))
                                             (_E63066318_))
                                         (_E63066318_))))
                                 (_E63066318_)))))
                       (_E63066318_)))))
            (let () (_E63056340_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx6256_)
      (let ((_e62576267_ _stx6256_))
        (let ((_E62596271_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e62576267_))))
          (let ((_E62586298_
                 (lambda ()
                   (if (gx#stx-pair? _e62576267_)
                       (let ((_e62606275_ (gx#syntax-e _e62576267_)))
                         (let ((_hd62616278_ (##car _e62606275_))
                               (_tl62626280_ (##cdr _e62606275_)))
                           (if (gx#stx-pair? _tl62626280_)
                               (let ((_e62636283_ (gx#syntax-e _tl62626280_)))
                                 (let ((_hd62646286_ (##car _e62636283_))
                                       (_tl62656288_ (##cdr _e62636283_)))
                                   (let ((_hd6291_ _hd62646286_))
                                     (let ((_body6293_ _tl62656288_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd6291_)
                                           (let ((_expanders6295_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd6291_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each2
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd6291_
                                                   _expanders6295_)
                                                  (gx#core-expand-local-block
                                                   _stx6256_
                                                   _body6293_)))
                                              gx#current-expander-context
                                              (make-struct-instance
                                               gx#local-context::t)))
                                           (_E62596271_))))))
                               (_E62596271_))))
                       (_E62596271_)))))
            (let () (_E62586298_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx6205_)
      (let ((_e62066216_ _stx6205_))
        (let ((_E62086220_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e62066216_))))
          (let ((_E62076252_
                 (lambda ()
                   (if (gx#stx-pair? _e62066216_)
                       (let ((_e62096224_ (gx#syntax-e _e62066216_)))
                         (let ((_hd62106227_ (##car _e62096224_))
                               (_tl62116229_ (##cdr _e62096224_)))
                           (if (gx#stx-pair? _tl62116229_)
                               (let ((_e62126232_ (gx#syntax-e _tl62116229_)))
                                 (let ((_hd62136235_ (##car _e62126232_))
                                       (_tl62146237_ (##cdr _e62126232_)))
                                   (let ((_hd6240_ _hd62136235_))
                                     (let ((_body6242_ _tl62146237_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd6240_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each2
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd6240_
                                                 (make-list
                                                  (gx#stx-length _hd6240_)
                                                  '#!void))
                                                (gx#stx-for-each2
                                                 (lambda (_g62446247_
                                                          _g62456249_)
                                                   (gx#core-expand-let-bind-syntax!__opt-lambda6062
                                                    _g62446247_
                                                    _g62456249_
                                                    '#t))
                                                 _hd6240_
                                                 (gx#stx-map1
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd6240_))
                                                (gx#core-expand-local-block
                                                 _stx6205_
                                                 _body6242_)))
                                            gx#current-expander-context
                                            (make-struct-instance
                                             gx#local-context::t))
                                           (_E62086220_))))))
                               (_E62086220_))))
                       (_E62086220_)))))
            (let () (_E62076252_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx6162_)
      (if (gx#stx-list? _stx6162_)
          (gx#stx-andmap
           (lambda (_bind6164_)
             (let ((_e61656175_ _bind6164_))
               (let ((_E61676179_ (lambda () '#f)))
                 (let ((_E61666201_
                        (lambda ()
                          (if (gx#stx-pair? _e61656175_)
                              (let ((_e61686183_ (gx#syntax-e _e61656175_)))
                                (let ((_hd61696186_ (##car _e61686183_))
                                      (_tl61706188_ (##cdr _e61686183_)))
                                  (let ((_hd6191_ _hd61696186_))
                                    (if (gx#stx-pair? _tl61706188_)
                                        (let ((_e61716193_
                                               (gx#syntax-e _tl61706188_)))
                                          (let ((_hd61726196_
                                                 (##car _e61716193_))
                                                (_tl61736198_
                                                 (##cdr _e61716193_)))
                                            (if (gx#stx-null? _tl61736198_)
                                                (if '#t
                                                    (gx#identifier? _hd6191_)
                                                    (_E61676179_))
                                                (_E61676179_))))
                                        (_E61676179_)))))
                              (_E61676179_)))))
                   (let () (_E61666201_))))))
           _stx6162_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind6119_)
      (let ((_e61206130_ _bind6119_))
        (let ((_E61226134_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e61206130_))))
          (let ((_E61216158_
                 (lambda ()
                   (if (gx#stx-pair? _e61206130_)
                       (let ((_e61236138_ (gx#syntax-e _e61206130_)))
                         (let ((_hd61246141_ (##car _e61236138_))
                               (_tl61256143_ (##cdr _e61236138_)))
                           (if (gx#stx-pair? _tl61256143_)
                               (let ((_e61266146_ (gx#syntax-e _tl61256143_)))
                                 (let ((_hd61276149_ (##car _e61266146_))
                                       (_tl61286151_ (##cdr _e61266146_)))
                                   (let ((_expr6154_ _hd61276149_))
                                     (if (gx#stx-null? _tl61286151_)
                                         (if '#t
                                             (let ((_g7646_ (gx#core-expand-expression+1
                                                             _expr6154_)))
                                               (begin
                                                 (let ((_g7647_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g7646_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (not (fx= _g7647_ 2))
                                                       (error "Context expects 2 values"
                                                              _g7647_)))
                                                 (let ((_e6156_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g7646_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e6156_)))
                                             (_E61226134_))
                                         (_E61226134_)))))
                               (_E61226134_))))
                       (_E61226134_)))))
            (let () (_E61216158_)))))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda6062
      (lambda (_bind6064_ _e6065_ _rebind?6066_)
        (let ((_e60676077_ _bind6064_))
          (let ((_E60696081_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e60676077_))))
            (let ((_E60686103_
                   (lambda ()
                     (if (gx#stx-pair? _e60676077_)
                         (let ((_e60706085_ (gx#syntax-e _e60676077_)))
                           (let ((_hd60716088_ (##car _e60706085_))
                                 (_tl60726090_ (##cdr _e60706085_)))
                             (let ((_id6093_ _hd60716088_))
                               (if (gx#stx-pair? _tl60726090_)
                                   (let ((_e60736095_
                                          (gx#syntax-e _tl60726090_)))
                                     (let ((_hd60746098_ (##car _e60736095_))
                                           (_tl60756100_ (##cdr _e60736095_)))
                                       (if (gx#stx-null? _tl60756100_)
                                           (if '#t
                                               (gx#core-bind-syntax!__1
                                                _id6093_
                                                _e6065_
                                                _rebind?6066_)
                                               (_E60696081_))
                                           (_E60696081_))))
                                   (_E60696081_)))))
                         (_E60696081_)))))
              (let () (_E60686103_)))))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind6110_ _e6111_)
          (let ((_rebind?6113_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda6062
             _bind6110_
             _e6111_
             _rebind?6113_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g7649_
          (let ((_g7648_ (length _g7649_)))
            (cond ((fx= _g7648_ 2)
                   (apply (lambda (_bind6110_ _e6111_)
                            (gx#core-expand-let-bind-syntax!__0
                             _bind6110_
                             _e6111_))
                          _g7649_))
                  ((fx= _g7648_ 3)
                   (apply (lambda (_bind6115_ _e6116_ _rebind?6117_)
                            (gx#core-expand-let-bind-syntax!__opt-lambda6062
                             _bind6115_
                             _e6116_
                             _rebind?6117_))
                          _g7649_))
                  (else (error "No clause matching arguments" _g7649_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx6022_)
      (let ((_e60236033_ _stx6022_))
        (let ((_E60256037_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e60236033_))))
          (let ((_E60246059_
                 (lambda ()
                   (if (gx#stx-pair? _e60236033_)
                       (let ((_e60266041_ (gx#syntax-e _e60236033_)))
                         (let ((_hd60276044_ (##car _e60266041_))
                               (_tl60286046_ (##cdr _e60266041_)))
                           (if (gx#stx-pair? _tl60286046_)
                               (let ((_e60296049_ (gx#syntax-e _tl60286046_)))
                                 (let ((_hd60306052_ (##car _e60296049_))
                                       (_tl60316054_ (##cdr _e60296049_)))
                                   (let ((_expr6057_ _hd60306052_))
                                     (if (gx#stx-null? _tl60316054_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr6057_)
                                             (_E60256037_))
                                         (_E60256037_)))))
                               (_E60256037_))))
                       (_E60256037_)))))
            (let () (_E60246059_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx5981_)
      (let ((_e59825992_ _stx5981_))
        (let ((_E59845996_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e59825992_))))
          (let ((_E59836018_
                 (lambda ()
                   (if (gx#stx-pair? _e59825992_)
                       (let ((_e59856000_ (gx#syntax-e _e59825992_)))
                         (let ((_hd59866003_ (##car _e59856000_))
                               (_tl59876005_ (##cdr _e59856000_)))
                           (if (gx#stx-pair? _tl59876005_)
                               (let ((_e59886008_ (gx#syntax-e _tl59876005_)))
                                 (let ((_hd59896011_ (##car _e59886008_))
                                       (_tl59906013_ (##cdr _e59886008_)))
                                   (let ((_e6016_ _hd59896011_))
                                     (if (gx#stx-null? _tl59906013_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e6016_)
                                                          '()))
                                              (gx#stx-source _stx5981_))
                                             (_E59845996_))
                                         (_E59845996_)))))
                               (_E59845996_))))
                       (_E59845996_)))))
            (let () (_E59836018_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx5940_)
      (let ((_e59415951_ _stx5940_))
        (let ((_E59435955_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e59415951_))))
          (let ((_E59425977_
                 (lambda ()
                   (if (gx#stx-pair? _e59415951_)
                       (let ((_e59445959_ (gx#syntax-e _e59415951_)))
                         (let ((_hd59455962_ (##car _e59445959_))
                               (_tl59465964_ (##cdr _e59445959_)))
                           (if (gx#stx-pair? _tl59465964_)
                               (let ((_e59475967_ (gx#syntax-e _tl59465964_)))
                                 (let ((_hd59485970_ (##car _e59475967_))
                                       (_tl59495972_ (##cdr _e59475967_)))
                                   (let ((_e5975_ _hd59485970_))
                                     (if (gx#stx-null? _tl59495972_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax__0
                                                           _e5975_)
                                                          '()))
                                              (gx#stx-source _stx5940_))
                                             (_E59435955_))
                                         (_E59435955_)))))
                               (_E59435955_))))
                       (_E59435955_)))))
            (let () (_E59425977_)))))))
  (define gx#core-expand-call%
    (lambda (_stx5897_)
      (let ((_e58985908_ _stx5897_))
        (let ((_E59005912_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e58985908_))))
          (let ((_E58995936_
                 (lambda ()
                   (if (gx#stx-pair? _e58985908_)
                       (let ((_e59015916_ (gx#syntax-e _e58985908_)))
                         (let ((_hd59025919_ (##car _e59015916_))
                               (_tl59035921_ (##cdr _e59015916_)))
                           (if (gx#stx-pair? _tl59035921_)
                               (let ((_e59045924_ (gx#syntax-e _tl59035921_)))
                                 (let ((_hd59055927_ (##car _e59045924_))
                                       (_tl59065929_ (##cdr _e59045924_)))
                                   (let ((_rator5932_ _hd59055927_))
                                     (let ((_args5934_ _tl59065929_))
                                       (if (gx#stx-list? _args5934_)
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator5932_)
                                             (gx#stx-map1
                                              gx#core-expand-expression
                                              _args5934_))
                                            (gx#stx-source _stx5897_))
                                           (_E59005912_))))))
                               (_E59005912_))))
                       (_E59005912_)))))
            (let () (_E58995936_)))))))
  (define gx#core-expand-if%
    (lambda (_stx5830_)
      (let ((_e58315847_ _stx5830_))
        (let ((_E58335851_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e58315847_))))
          (let ((_E58325893_
                 (lambda ()
                   (if (gx#stx-pair? _e58315847_)
                       (let ((_e58345855_ (gx#syntax-e _e58315847_)))
                         (let ((_hd58355858_ (##car _e58345855_))
                               (_tl58365860_ (##cdr _e58345855_)))
                           (if (gx#stx-pair? _tl58365860_)
                               (let ((_e58375863_ (gx#syntax-e _tl58365860_)))
                                 (let ((_hd58385866_ (##car _e58375863_))
                                       (_tl58395868_ (##cdr _e58375863_)))
                                   (let ((_test5871_ _hd58385866_))
                                     (if (gx#stx-pair? _tl58395868_)
                                         (let ((_e58405873_
                                                (gx#syntax-e _tl58395868_)))
                                           (let ((_hd58415876_
                                                  (##car _e58405873_))
                                                 (_tl58425878_
                                                  (##cdr _e58405873_)))
                                             (let ((_K5881_ _hd58415876_))
                                               (if (gx#stx-pair? _tl58425878_)
                                                   (let ((_e58435883_
                                                          (gx#syntax-e
                                                           _tl58425878_)))
                                                     (let ((_hd58445886_
                                                            (##car _e58435883_))
                                                           (_tl58455888_
                                                            (##cdr _e58435883_)))
                                                       (let ((_E5891_ _hd58445886_))
                                                         (if (gx#stx-null?
                                                              _tl58455888_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax__1
                          (cons (gx#core-quote-syntax__0 '%#if)
                                (cons (gx#core-expand-expression _test5871_)
                                      (cons (gx#core-expand-expression _K5881_)
                                            (cons (gx#core-expand-expression
                                                   _E5891_)
                                                  '()))))
                          (gx#stx-source _stx5830_))
                         (_E58335851_))
                     (_E58335851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E58335851_)))))
                                         (_E58335851_)))))
                               (_E58335851_))))
                       (_E58335851_)))))
            (let () (_E58325893_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx5789_)
      (let ((_e57905800_ _stx5789_))
        (let ((_E57925804_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e57905800_))))
          (let ((_E57915826_
                 (lambda ()
                   (if (gx#stx-pair? _e57905800_)
                       (let ((_e57935808_ (gx#syntax-e _e57905800_)))
                         (let ((_hd57945811_ (##car _e57935808_))
                               (_tl57955813_ (##cdr _e57935808_)))
                           (if (gx#stx-pair? _tl57955813_)
                               (let ((_e57965816_ (gx#syntax-e _tl57955813_)))
                                 (let ((_hd57975819_ (##car _e57965816_))
                                       (_tl57985821_ (##cdr _e57965816_)))
                                   (let ((_id5824_ _hd57975819_))
                                     (if (gx#stx-null? _tl57985821_)
                                         (if (gx#core-runtime-ref? _id5824_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id5824_
                                                           _stx5789_)
                                                          '()))
                                              (gx#stx-source _stx5789_))
                                             (_E57925804_))
                                         (_E57925804_)))))
                               (_E57925804_))))
                       (_E57925804_)))))
            (let () (_E57915826_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx5735_)
      (let ((_e57365749_ _stx5735_))
        (let ((_E57385753_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e57365749_))))
          (let ((_E57375785_
                 (lambda ()
                   (if (gx#stx-pair? _e57365749_)
                       (let ((_e57395757_ (gx#syntax-e _e57365749_)))
                         (let ((_hd57405760_ (##car _e57395757_))
                               (_tl57415762_ (##cdr _e57395757_)))
                           (if (gx#stx-pair? _tl57415762_)
                               (let ((_e57425765_ (gx#syntax-e _tl57415762_)))
                                 (let ((_hd57435768_ (##car _e57425765_))
                                       (_tl57445770_ (##cdr _e57425765_)))
                                   (let ((_id5773_ _hd57435768_))
                                     (if (gx#stx-pair? _tl57445770_)
                                         (let ((_e57455775_
                                                (gx#syntax-e _tl57445770_)))
                                           (let ((_hd57465778_
                                                  (##car _e57455775_))
                                                 (_tl57475780_
                                                  (##cdr _e57455775_)))
                                             (let ((_expr5783_ _hd57465778_))
                                               (if (gx#stx-null? _tl57475780_)
                                                   (if (gx#core-runtime-ref?
                                                        _id5773_)
                                                       (gx#core-quote-syntax__1
                                                        (cons (gx#core-quote-syntax__0
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id5773_
                             _stx5735_)
                            (cons (gx#core-expand-expression _expr5783_) '())))
                (gx#stx-source _stx5735_))
               (_E57385753_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E57385753_)))))
                                         (_E57385753_)))))
                               (_E57385753_))))
                       (_E57385753_)))))
            (let () (_E57375785_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx5583_)
      (let ((_generate5585_
             (lambda (_body5615_)
               ((letrec ((_lp5617_
                          (lambda (_rest5619_ _ns5620_ _r5621_)
                            (let ((_e56225637_ _rest5619_))
                              (let ((_E56355641_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e56225637_))))
                                (let ((_E56315645_
                                       (lambda ()
                                         (if (gx#stx-null? _e56225637_)
                                             (if '#t
                                                 (reverse _r5621_)
                                                 (_E56355641_))
                                             (_E56355641_)))))
                                  (let ((_E56245702_
                                         (lambda ()
                                           (if (gx#stx-pair? _e56225637_)
                                               (let ((_e56325649_
                                                      (gx#syntax-e
                                                       _e56225637_)))
                                                 (let ((_hd56335652_
                                                        (##car _e56325649_))
                                                       (_tl56345654_
                                                        (##cdr _e56325649_)))
                                                   (let ((_hd5657_
                                                          _hd56335652_))
                                                     (let ((_rest5659_
                                                            _tl56345654_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd5657_)
                                                               (_lp5617_
                                                                _rest5659_
                                                                _ns5620_
                                                                (cons (cons _hd5657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns5620_
                                              (gx#stx-identifier
                                               _hd5657_
                                               _ns5620_
                                               '"#"
                                               _hd5657_)
                                              _hd5657_)
                                          '()))
                              _r5621_))
                       (let ((_e56605670_ _hd5657_))
                         (let ((_E56625674_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e56605670_))))
                           (let ((_E56615698_
                                  (lambda ()
                                    (if (gx#stx-pair? _e56605670_)
                                        (let ((_e56635678_
                                               (gx#syntax-e _e56605670_)))
                                          (let ((_hd56645681_
                                                 (##car _e56635678_))
                                                (_tl56655683_
                                                 (##cdr _e56635678_)))
                                            (let ((_id5686_ _hd56645681_))
                                              (if (gx#stx-pair? _tl56655683_)
                                                  (let ((_e56665688_
                                                         (gx#syntax-e
                                                          _tl56655683_)))
                                                    (let ((_hd56675691_
                                                           (##car _e56665688_))
                                                          (_tl56685693_
                                                           (##cdr _e56665688_)))
                                                      (let ((_eid5696_
                                                             _hd56675691_))
                                                        (if (gx#stx-null?
                                                             _tl56685693_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id5686_)
                            (gx#identifier? _eid5696_)
                            '#f)
                        (_lp5617_
                         _rest5659_
                         _ns5620_
                         (cons (cons _id5686_ (cons _eid5696_ '())) _r5621_))
                        (_E56625674_))
                    (_E56625674_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E56625674_)))))
                                        (_E56625674_)))))
                             (let () (_E56615698_))))))
                   (_E56315645_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E56315645_)))))
                                    (let ((_E56235731_
                                           (lambda ()
                                             (if (gx#stx-pair? _e56225637_)
                                                 (let ((_e56255706_
                                                        (gx#syntax-e
                                                         _e56225637_)))
                                                   (let ((_hd56265709_
                                                          (##car _e56255706_))
                                                         (_tl56275711_
                                                          (##cdr _e56255706_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd56265709_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl56275711_)
                                                             (let ((_e56285714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl56275711_)))
                       (let ((_hd56295717_ (##car _e56285714_))
                             (_tl56305719_ (##cdr _e56285714_)))
                         (let ((_ns5722_ _hd56295717_))
                           (let ((_rest5724_ _tl56305719_))
                             (if '#t
                                 (let ((_ns5729_
                                        (if (gx#identifier? _ns5722_)
                                            (symbol->string
                                             (gx#stx-e _ns5722_))
                                            (if (let ((_$e5726_
                                                       (gx#stx-string?
                                                        _ns5722_)))
                                                  (if _$e5726_
                                                      _$e5726_
                                                      (gx#stx-false?
                                                       _ns5722_)))
                                                (gx#stx-e _ns5722_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx5583_
                                                 _ns5722_)))))
                                   (_lp5617_ _rest5724_ _ns5729_ _r5621_))
                                 (_E56245702_))))))
                     (_E56245702_))
                 (_E56245702_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E56245702_)))))
                                      (let () (_E56235731_))))))))))
                  _lp5617_)
                _body5615_
                (gx#core-context-namespace__0)
                '()))))
        (let ((_e55865593_ _stx5583_))
          (let ((_E55885597_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e55865593_))))
            (let ((_E55875611_
                   (lambda ()
                     (if (gx#stx-pair? _e55865593_)
                         (let ((_e55895601_ (gx#syntax-e _e55865593_)))
                           (let ((_hd55905604_ (##car _e55895601_))
                                 (_tl55915606_ (##cdr _e55895601_)))
                             (let ((_body5609_ _tl55915606_))
                               (if (gx#stx-list? _body5609_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate5585_ _body5609_))
                                   (_E55885597_)))))
                         (_E55885597_)))))
              (let () (_E55875611_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx5529_)
      (let ((_e55305543_ _stx5529_))
        (let ((_E55325547_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e55305543_))))
          (let ((_E55315579_
                 (lambda ()
                   (if (gx#stx-pair? _e55305543_)
                       (let ((_e55335551_ (gx#syntax-e _e55305543_)))
                         (let ((_hd55345554_ (##car _e55335551_))
                               (_tl55355556_ (##cdr _e55335551_)))
                           (if (gx#stx-pair? _tl55355556_)
                               (let ((_e55365559_ (gx#syntax-e _tl55355556_)))
                                 (let ((_hd55375562_ (##car _e55365559_))
                                       (_tl55385564_ (##cdr _e55365559_)))
                                   (let ((_hd5567_ _hd55375562_))
                                     (if (gx#stx-pair? _tl55385564_)
                                         (let ((_e55395569_
                                                (gx#syntax-e _tl55385564_)))
                                           (let ((_hd55405572_
                                                  (##car _e55395569_))
                                                 (_tl55415574_
                                                  (##cdr _e55395569_)))
                                             (let ((_expr5577_ _hd55405572_))
                                               (if (gx#stx-null? _tl55415574_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd5567_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd5567_)
                           (cons _expr5577_ '())))
               (_E55325547_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E55325547_)))))
                                         (_E55325547_)))))
                               (_E55325547_))))
                       (_E55325547_)))))
            (let () (_E55315579_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx5475_)
      (let ((_e54765489_ _stx5475_))
        (let ((_E54785493_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e54765489_))))
          (let ((_E54775525_
                 (lambda ()
                   (if (gx#stx-pair? _e54765489_)
                       (let ((_e54795497_ (gx#syntax-e _e54765489_)))
                         (let ((_hd54805500_ (##car _e54795497_))
                               (_tl54815502_ (##cdr _e54795497_)))
                           (if (gx#stx-pair? _tl54815502_)
                               (let ((_e54825505_ (gx#syntax-e _tl54815502_)))
                                 (let ((_hd54835508_ (##car _e54825505_))
                                       (_tl54845510_ (##cdr _e54825505_)))
                                   (let ((_hd5513_ _hd54835508_))
                                     (if (gx#stx-pair? _tl54845510_)
                                         (let ((_e54855515_
                                                (gx#syntax-e _tl54845510_)))
                                           (let ((_hd54865518_
                                                  (##car _e54855515_))
                                                 (_tl54875520_
                                                  (##cdr _e54855515_)))
                                             (let ((_expr5523_ _hd54865518_))
                                               (if (gx#stx-null? _tl54875520_)
                                                   (if (gx#identifier?
                                                        _hd5513_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-syntax)
                                                             (cons _hd5513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr5523_ '())))
               (_E54785493_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E54785493_)))))
                                         (_E54785493_)))))
                               (_E54785493_))))
                       (_E54785493_)))))
            (let () (_E54775525_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx5421_)
      (let ((_e54225435_ _stx5421_))
        (let ((_E54245439_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e54225435_))))
          (let ((_E54235471_
                 (lambda ()
                   (if (gx#stx-pair? _e54225435_)
                       (let ((_e54255443_ (gx#syntax-e _e54225435_)))
                         (let ((_hd54265446_ (##car _e54255443_))
                               (_tl54275448_ (##cdr _e54255443_)))
                           (if (gx#stx-pair? _tl54275448_)
                               (let ((_e54285451_ (gx#syntax-e _tl54275448_)))
                                 (let ((_hd54295454_ (##car _e54285451_))
                                       (_tl54305456_ (##cdr _e54285451_)))
                                   (let ((_id5459_ _hd54295454_))
                                     (if (gx#stx-pair? _tl54305456_)
                                         (let ((_e54315461_
                                                (gx#syntax-e _tl54305456_)))
                                           (let ((_hd54325464_
                                                  (##car _e54315461_))
                                                 (_tl54335466_
                                                  (##cdr _e54315461_)))
                                             (let ((_alias-id5469_
                                                    _hd54325464_))
                                               (if (gx#stx-null? _tl54335466_)
                                                   (if (if (gx#identifier?
                                                            _id5459_)
                                                           (gx#identifier?
                                                            _alias-id5469_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons _id5459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id5469_ '())))
               (_E54245439_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E54245439_)))))
                                         (_E54245439_)))))
                               (_E54245439_))))
                       (_E54245439_)))))
            (let () (_E54235471_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx5378_)
      (let ((_e53795389_ _stx5378_))
        (let ((_E53815393_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e53795389_))))
          (let ((_E53805417_
                 (lambda ()
                   (if (gx#stx-pair? _e53795389_)
                       (let ((_e53825397_ (gx#syntax-e _e53795389_)))
                         (let ((_hd53835400_ (##car _e53825397_))
                               (_tl53845402_ (##cdr _e53825397_)))
                           (if (gx#stx-pair? _tl53845402_)
                               (let ((_e53855405_ (gx#syntax-e _tl53845402_)))
                                 (let ((_hd53865408_ (##car _e53855405_))
                                       (_tl53875410_ (##cdr _e53855405_)))
                                   (let ((_hd5413_ _hd53865408_))
                                     (let ((_body5415_ _tl53875410_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd5413_)
                                               (if (gx#stx-list? _body5415_)
                                                   (not (gx#stx-null?
                                                         _body5415_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map1
                                             gx#user-binding-identifier
                                             _hd5413_)
                                            _body5415_)
                                           (_E53815393_))))))
                               (_E53815393_))))
                       (_E53815393_)))))
            (let () (_E53805417_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx5314_)
      (let ((_generate5316_
             (lambda (_clause5346_)
               (let ((_e53475354_ _clause5346_))
                 (let ((_E53495358_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx5314_
                           _clause5346_))))
                   (let ((_E53485374_
                          (lambda ()
                            (if (gx#stx-pair? _e53475354_)
                                (let ((_e53505362_ (gx#syntax-e _e53475354_)))
                                  (let ((_hd53515365_ (##car _e53505362_))
                                        (_tl53525367_ (##cdr _e53505362_)))
                                    (let ((_hd5370_ _hd53515365_))
                                      (let ((_body5372_ _tl53525367_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd5370_)
                                                (if (gx#stx-list? _body5372_)
                                                    (not (gx#stx-null?
                                                          _body5372_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd5370_)
                                                   _body5372_)
                                             (gx#stx-source _clause5346_))
                                            (_E53495358_))))))
                                (_E53495358_)))))
                     (let () (_E53485374_))))))))
        (let ((_e53175324_ _stx5314_))
          (let ((_E53195328_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e53175324_))))
            (let ((_E53185342_
                   (lambda ()
                     (if (gx#stx-pair? _e53175324_)
                         (let ((_e53205332_ (gx#syntax-e _e53175324_)))
                           (let ((_hd53215335_ (##car _e53205332_))
                                 (_tl53225337_ (##cdr _e53205332_)))
                             (let ((_clauses5340_ _tl53225337_))
                               (if (gx#stx-list? _clauses5340_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map1 _generate5316_ _clauses5340_))
                                   (_E53195328_)))))
                         (_E53195328_)))))
              (let () (_E53185342_))))))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda5213
      (lambda (_stx5215_ _form5216_)
        (let ((_generate5218_
               (lambda (_bind5261_)
                 (let ((_e52625272_ _bind5261_))
                   (let ((_E52645276_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx5215_
                             _bind5261_))))
                     (let ((_E52635300_
                            (lambda ()
                              (if (gx#stx-pair? _e52625272_)
                                  (let ((_e52655280_
                                         (gx#syntax-e _e52625272_)))
                                    (let ((_hd52665283_ (##car _e52655280_))
                                          (_tl52675285_ (##cdr _e52655280_)))
                                      (let ((_ids5288_ _hd52665283_))
                                        (if (gx#stx-pair? _tl52675285_)
                                            (let ((_e52685290_
                                                   (gx#syntax-e _tl52675285_)))
                                              (let ((_hd52695293_
                                                     (##car _e52685290_))
                                                    (_tl52705295_
                                                     (##cdr _e52685290_)))
                                                (let ((_expr5298_
                                                       _hd52695293_))
                                                  (if (gx#stx-null?
                                                       _tl52705295_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids5288_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids5288_)
                        (cons _expr5298_ '()))
                  (_E52645276_))
              (_E52645276_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E52645276_)))))
                                  (_E52645276_)))))
                       (let () (_E52635300_))))))))
          (let ((_e52195229_ _stx5215_))
            (let ((_E52215233_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e52195229_))))
              (let ((_E52205257_
                     (lambda ()
                       (if (gx#stx-pair? _e52195229_)
                           (let ((_e52225237_ (gx#syntax-e _e52195229_)))
                             (let ((_hd52235240_ (##car _e52225237_))
                                   (_tl52245242_ (##cdr _e52225237_)))
                               (if (gx#stx-pair? _tl52245242_)
                                   (let ((_e52255245_
                                          (gx#syntax-e _tl52245242_)))
                                     (let ((_hd52265248_ (##car _e52255245_))
                                           (_tl52275250_ (##cdr _e52255245_)))
                                       (let ((_hd5253_ _hd52265248_))
                                         (let ((_body5255_ _tl52275250_))
                                           (if (if (gx#stx-list? _hd5253_)
                                                   (if (gx#stx-list?
                                                        _body5255_)
                                                       (not (gx#stx-null?
                                                             _body5255_))
                                                       '#f)
                                                   '#f)
                                               (gx#core-cons*
                                                _form5216_
                                                (gx#stx-map1
                                                 _generate5218_
                                                 _hd5253_)
                                                _body5255_)
                                               (_E52215233_))))))
                                   (_E52215233_))))
                           (_E52215233_)))))
                (let () (_E52205257_))))))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx5307_)
          (let ((_form5309_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda5213
             _stx5307_
             _form5309_))))
      (define gx#macro-expand-let-values
        (lambda _g7651_
          (let ((_g7650_ (length _g7651_)))
            (cond ((fx= _g7650_ 1)
                   (apply (lambda (_stx5307_)
                            (gx#macro-expand-let-values__0 _stx5307_))
                          _g7651_))
                  ((fx= _g7650_ 2)
                   (apply (lambda (_stx5311_ _form5312_)
                            (gx#macro-expand-let-values__opt-lambda5213
                             _stx5311_
                             _form5312_))
                          _g7651_))
                  (else (error "No clause matching arguments" _g7651_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx5212_)
      (gx#macro-expand-let-values__opt-lambda5213 _stx5212_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx5210_)
      (gx#macro-expand-let-values__opt-lambda5213
       _stx5210_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx5101_)
      (let ((_e51025128_ _stx5101_))
        (let ((_E51145132_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e51025128_))))
          (let ((_E51045174_
                 (lambda ()
                   (if (gx#stx-pair? _e51025128_)
                       (let ((_e51155136_ (gx#syntax-e _e51025128_)))
                         (let ((_hd51165139_ (##car _e51155136_))
                               (_tl51175141_ (##cdr _e51155136_)))
                           (if (gx#stx-pair? _tl51175141_)
                               (let ((_e51185144_ (gx#syntax-e _tl51175141_)))
                                 (let ((_hd51195147_ (##car _e51185144_))
                                       (_tl51205149_ (##cdr _e51185144_)))
                                   (let ((_test5152_ _hd51195147_))
                                     (if (gx#stx-pair? _tl51205149_)
                                         (let ((_e51215154_
                                                (gx#syntax-e _tl51205149_)))
                                           (let ((_hd51225157_
                                                  (##car _e51215154_))
                                                 (_tl51235159_
                                                  (##cdr _e51215154_)))
                                             (let ((_K5162_ _hd51225157_))
                                               (if (gx#stx-pair? _tl51235159_)
                                                   (let ((_e51245164_
                                                          (gx#syntax-e
                                                           _tl51235159_)))
                                                     (let ((_hd51255167_
                                                            (##car _e51245164_))
                                                           (_tl51265169_
                                                            (##cdr _e51245164_)))
                                                       (let ((_E5172_ _hd51255167_))
                                                         (if (gx#stx-null?
                                                              _tl51265169_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test5152_ _K5162_ _E5172_)
                         (_E51145132_))
                     (_E51145132_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E51145132_)))))
                                         (_E51145132_)))))
                               (_E51145132_))))
                       (_E51145132_)))))
            (let ((_E51035206_
                   (lambda ()
                     (if (gx#stx-pair? _e51025128_)
                         (let ((_e51055178_ (gx#syntax-e _e51025128_)))
                           (let ((_hd51065181_ (##car _e51055178_))
                                 (_tl51075183_ (##cdr _e51055178_)))
                             (if (gx#stx-pair? _tl51075183_)
                                 (let ((_e51085186_
                                        (gx#syntax-e _tl51075183_)))
                                   (let ((_hd51095189_ (##car _e51085186_))
                                         (_tl51105191_ (##cdr _e51085186_)))
                                     (let ((_test5194_ _hd51095189_))
                                       (if (gx#stx-pair? _tl51105191_)
                                           (let ((_e51115196_
                                                  (gx#syntax-e _tl51105191_)))
                                             (let ((_hd51125199_
                                                    (##car _e51115196_))
                                                   (_tl51135201_
                                                    (##cdr _e51115196_)))
                                               (let ((_K5204_ _hd51125199_))
                                                 (if (gx#stx-null?
                                                      _tl51135201_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test5194_
                                                          _K5204_
                                                          '#!void)
                                                         (_E51045174_))
                                                     (_E51045174_)))))
                                           (_E51045174_)))))
                                 (_E51045174_))))
                         (_E51045174_)))))
              (let () (_E51035206_))))))))
  (define gx#free-identifier=?
    (lambda (_xid5089_ _yid5090_)
      (let ((_xe5092_ (gx#resolve-identifier__0 _xid5089_))
            (_ye5093_ (gx#resolve-identifier__0 _yid5090_)))
        (if (if _xe5092_ _ye5093_ '#f)
            (let ((_$e5095_ (eq? _xe5092_ _ye5093_)))
              (if _$e5095_
                  _$e5095_
                  (if (##structure-instance-of? _xe5092_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye5093_ 'gx#binding::t)
                          (eq? (##structure-ref _xe5092_ '1 gx#binding::t '#f)
                               (##structure-ref _ye5093_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e5098_ _xe5092_)) (if _$e5098_ _$e5098_ _ye5093_))
                '#f
                (gx#stx-eq? _xid5089_ _yid5090_))))))
  (define gx#bound-identifier=?
    (lambda (_xid5073_ _yid5074_)
      (let ((_context5076_
             (lambda (_e5087_)
               (if (##structure-direct-instance-of?
                    _e5087_
                    'gx#syntax-quote::t)
                   (##structure-ref _e5087_ '3 gx#syntax-quote::t '#f)
                   (gx#current-expander-context)))))
        (let ((_marks5077_
               (lambda (_e5085_)
                 (if (symbol? _e5085_)
                     '()
                     (if (##structure-direct-instance-of?
                          _e5085_
                          'gx#identifier-wrap::t)
                         (##structure-ref _e5085_ '3 gx#identifier-wrap::t '#f)
                         (##structure-ref
                          _e5085_
                          '4
                          gx#syntax-quote::t
                          '#f))))))
          (let ((_unwrap5078_
                 (lambda (_e5083_)
                   (if (symbol? _e5083_)
                       _e5083_
                       (gx#syntax-local-unwrap _e5083_)))))
            (let ((_x5080_ (_unwrap5078_ _xid5073_))
                  (_y5081_ (_unwrap5078_ _yid5074_)))
              (if (gx#stx-eq? _x5080_ _y5081_)
                  (if (eq? (_context5076_ _x5080_) (_context5076_ _y5081_))
                      (andmap eq? (_marks5077_ _x5080_) (_marks5077_ _y5081_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx5071_)
      (if (gx#identifier? _stx5071_) (gx#core-identifier=? _stx5071_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx5069_)
      (if (gx#identifier? _stx5069_)
          (gx#core-identifier=? _stx5069_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x5067_)
      (if (gx#identifier? _x5067_)
          (if (not (gx#underscore? _x5067_)) _x5067_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda5011
      (lambda (_stx5013_ _where5014_)
        ((letrec ((_lp5016_
                   (lambda (_rest5018_)
                     (let ((_rest50195027_ _rest5018_))
                       (let ((_E50225031_
                              (lambda ()
                                (error '"No clause matching" _rest50195027_))))
                         (let ((_else50215035_ (lambda () '#t)))
                           (let ((_K50235045_
                                  (lambda (_rest5038_ _hd5039_)
                                    (if (not (gx#identifier? _hd5039_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad identifier"
                                         _where5014_
                                         _hd5039_)
                                        (if (find (lambda (_g50405042_)
                                                    (gx#bound-identifier=?
                                                     _g50405042_
                                                     _hd5039_))
                                                  _rest5038_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate identifier"
                                             _where5014_
                                             _hd5039_)
                                            (_lp5016_ _rest5038_))))))
                             (if (##pair? _rest50195027_)
                                 (let ((_hd50245048_ (##car _rest50195027_))
                                       (_tl50255050_ (##cdr _rest50195027_)))
                                   (let ((_hd5053_ _hd50245048_))
                                     (let ((_rest5055_ _tl50255050_))
                                       (_K50235045_ _rest5055_ _hd5053_))))
                                 (_else50215035_)))))))))
           _lp5016_)
         (gx#syntax->list _stx5013_))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx5060_)
          (let ((_where5062_ _stx5060_))
            (gx#check-duplicate-identifiers__opt-lambda5011
             _stx5060_
             _where5062_))))
      (define gx#check-duplicate-identifiers
        (lambda _g7653_
          (let ((_g7652_ (length _g7653_)))
            (cond ((fx= _g7652_ 1)
                   (apply (lambda (_stx5060_)
                            (gx#check-duplicate-identifiers__0 _stx5060_))
                          _g7653_))
                  ((fx= _g7652_ 2)
                   (apply (lambda (_stx5064_ _where5065_)
                            (gx#check-duplicate-identifiers__opt-lambda5011
                             _stx5064_
                             _where5065_))
                          _g7653_))
                  (else (error "No clause matching arguments" _g7653_))))))))
  (define gx#core-bind-values?
    (lambda (_stx5005_)
      (gx#stx-andmap
       (lambda (_x5007_)
         (let ((_$e5009_ (gx#identifier? _x5007_)))
           (if _$e5009_ _$e5009_ (gx#stx-false? _x5007_))))
       _stx5005_)))
  (begin
    (define gx#core-bind-values!__opt-lambda4967
      (lambda (_stx4969_ _rebind?4970_ _phi4971_ _ctx4972_)
        (gx#stx-for-each1
         (lambda (_id4974_)
           (if (gx#identifier? _id4974_)
               (gx#core-bind-runtime!__opt-lambda4903
                _id4974_
                _rebind?4970_
                _phi4971_
                _ctx4972_)
               '#!void))
         _stx4969_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx4979_)
          (let ((_rebind?4981_ '#f))
            (let ((_phi4983_ (gx#current-expander-phi)))
              (let ((_ctx4985_ (gx#current-expander-context)))
                (gx#core-bind-values!__opt-lambda4967
                 _stx4979_
                 _rebind?4981_
                 _phi4983_
                 _ctx4985_))))))
      (define gx#core-bind-values!__1
        (lambda (_stx4987_ _rebind?4988_)
          (let ((_phi4990_ (gx#current-expander-phi)))
            (let ((_ctx4992_ (gx#current-expander-context)))
              (gx#core-bind-values!__opt-lambda4967
               _stx4987_
               _rebind?4988_
               _phi4990_
               _ctx4992_)))))
      (define gx#core-bind-values!__2
        (lambda (_stx4994_ _rebind?4995_ _phi4996_)
          (let ((_ctx4998_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda4967
             _stx4994_
             _rebind?4995_
             _phi4996_
             _ctx4998_))))
      (define gx#core-bind-values!
        (lambda _g7655_
          (let ((_g7654_ (length _g7655_)))
            (cond ((fx= _g7654_ 1)
                   (apply (lambda (_stx4979_)
                            (gx#core-bind-values!__0 _stx4979_))
                          _g7655_))
                  ((fx= _g7654_ 2)
                   (apply (lambda (_stx4987_ _rebind?4988_)
                            (gx#core-bind-values!__1 _stx4987_ _rebind?4988_))
                          _g7655_))
                  ((fx= _g7654_ 3)
                   (apply (lambda (_stx4994_ _rebind?4995_ _phi4996_)
                            (gx#core-bind-values!__2
                             _stx4994_
                             _rebind?4995_
                             _phi4996_))
                          _g7655_))
                  ((fx= _g7654_ 4)
                   (apply (lambda (_stx5000_ _rebind?5001_ _phi5002_ _ctx5003_)
                            (gx#core-bind-values!__opt-lambda4967
                             _stx5000_
                             _rebind?5001_
                             _phi5002_
                             _ctx5003_))
                          _g7655_))
                  (else (error "No clause matching arguments" _g7655_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx4964_)
      (gx#stx-map1
       (lambda (_x4966_)
         (if (gx#identifier? _x4966_) (gx#core-quote-syntax__0 _x4966_) '#f))
       _stx4964_)))
  (define gx#core-runtime-ref?
    (lambda (_stx4957_)
      (if (gx#identifier? _stx4957_)
          (let ((_bind4959_ (gx#resolve-identifier__0 _stx4957_)))
            (let ((_$e4961_ (not _bind4959_)))
              (if _$e4961_
                  _$e4961_
                  (##structure-instance-of?
                   _bind4959_
                   'gx#runtime-binding::t))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id4946_ _form4947_)
      (let ((_bind4949_ (gx#resolve-identifier__0 _id4946_)))
        (if (##structure-instance-of? _bind4949_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id4946_)
            (if (not _bind4949_)
                (if (let ((_$e4951_ (fxpositive? (gx#current-expander-phi))))
                      (if _$e4951_
                          _$e4951_
                          (let ((_$e4954_
                                 (gx#core-context-rebind?__opt-lambda2816
                                  (gx#core-context-top__0))))
                            (if _$e4954_
                                _$e4954_
                                (gx#core-extern-symbol?
                                 (gx#stx-e _id4946_))))))
                    (gx#core-quote-syntax__0 _id4946_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form4947_
                     _id4946_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form4947_
                 _id4946_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda4903
      (lambda (_id4905_ _rebind?4906_ _phi4907_ _ctx4908_)
        (let ((_key4910_ (gx#core-identifier-key _id4905_)))
          (let ((_eid4912_
                 (gx#make-binding-id__opt-lambda4670
                  _key4910_
                  '#f
                  _phi4907_
                  _ctx4908_)))
            (let ((_bind4914_
                   (if (##structure-instance-of?
                        _ctx4908_
                        'gx#module-context::t)
                       (##structure
                        gx#module-binding::t
                        _eid4912_
                        _key4910_
                        _phi4907_
                        _ctx4908_)
                       (if (##structure-instance-of?
                            _ctx4908_
                            'gx#top-context::t)
                           (##structure
                            gx#top-binding::t
                            _eid4912_
                            _key4910_
                            _phi4907_)
                           (if (##structure-instance-of?
                                _ctx4908_
                                'gx#local-context::t)
                               (##structure
                                gx#local-binding::t
                                _eid4912_
                                _key4910_
                                _phi4907_)
                               (##structure
                                gx#runtime-binding::t
                                _eid4912_
                                _key4910_
                                _phi4907_))))))
              (let ()
                (gx#bind-identifier!__opt-lambda3262
                 _id4905_
                 _bind4914_
                 _rebind?4906_
                 _phi4907_
                 _ctx4908_)))))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id4920_)
          (let ((_rebind?4922_ '#f))
            (let ((_phi4924_ (gx#current-expander-phi)))
              (let ((_ctx4926_ (gx#current-expander-context)))
                (gx#core-bind-runtime!__opt-lambda4903
                 _id4920_
                 _rebind?4922_
                 _phi4924_
                 _ctx4926_))))))
      (define gx#core-bind-runtime!__1
        (lambda (_id4928_ _rebind?4929_)
          (let ((_phi4931_ (gx#current-expander-phi)))
            (let ((_ctx4933_ (gx#current-expander-context)))
              (gx#core-bind-runtime!__opt-lambda4903
               _id4928_
               _rebind?4929_
               _phi4931_
               _ctx4933_)))))
      (define gx#core-bind-runtime!__2
        (lambda (_id4935_ _rebind?4936_ _phi4937_)
          (let ((_ctx4939_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda4903
             _id4935_
             _rebind?4936_
             _phi4937_
             _ctx4939_))))
      (define gx#core-bind-runtime!
        (lambda _g7657_
          (let ((_g7656_ (length _g7657_)))
            (cond ((fx= _g7656_ 1)
                   (apply (lambda (_id4920_)
                            (gx#core-bind-runtime!__0 _id4920_))
                          _g7657_))
                  ((fx= _g7656_ 2)
                   (apply (lambda (_id4928_ _rebind?4929_)
                            (gx#core-bind-runtime!__1 _id4928_ _rebind?4929_))
                          _g7657_))
                  ((fx= _g7656_ 3)
                   (apply (lambda (_id4935_ _rebind?4936_ _phi4937_)
                            (gx#core-bind-runtime!__2
                             _id4935_
                             _rebind?4936_
                             _phi4937_))
                          _g7657_))
                  ((fx= _g7656_ 4)
                   (apply (lambda (_id4941_ _rebind?4942_ _phi4943_ _ctx4944_)
                            (gx#core-bind-runtime!__opt-lambda4903
                             _id4941_
                             _rebind?4942_
                             _phi4943_
                             _ctx4944_))
                          _g7657_))
                  (else (error "No clause matching arguments" _g7657_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda4858
      (lambda (_id4860_ _eid4861_ _rebind?4862_ _phi4863_ _ctx4864_)
        (let ((_key4866_ (gx#core-identifier-key _id4860_)))
          (let ((_bind4868_
                 (if (##structure-instance-of? _ctx4864_ 'gx#module-context::t)
                     (##structure
                      gx#module-binding::t
                      _eid4861_
                      _key4866_
                      _phi4863_
                      _ctx4864_)
                     (if (##structure-instance-of?
                          _ctx4864_
                          'gx#top-context::t)
                         (##structure
                          gx#top-binding::t
                          _eid4861_
                          _key4866_
                          _phi4863_)
                         (##structure
                          gx#runtime-binding::t
                          _eid4861_
                          _key4866_
                          _phi4863_)))))
            (let ()
              (gx#bind-identifier!__opt-lambda3262
               _id4860_
               _bind4868_
               _rebind?4862_
               _phi4863_
               _ctx4864_))))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id4874_ _eid4875_)
          (let ((_rebind?4877_ '#f))
            (let ((_phi4879_ (gx#current-expander-phi)))
              (let ((_ctx4881_ (gx#current-expander-context)))
                (gx#core-bind-runtime-reference!__opt-lambda4858
                 _id4874_
                 _eid4875_
                 _rebind?4877_
                 _phi4879_
                 _ctx4881_))))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id4883_ _eid4884_ _rebind?4885_)
          (let ((_phi4887_ (gx#current-expander-phi)))
            (let ((_ctx4889_ (gx#current-expander-context)))
              (gx#core-bind-runtime-reference!__opt-lambda4858
               _id4883_
               _eid4884_
               _rebind?4885_
               _phi4887_
               _ctx4889_)))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id4891_ _eid4892_ _rebind?4893_ _phi4894_)
          (let ((_ctx4896_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda4858
             _id4891_
             _eid4892_
             _rebind?4893_
             _phi4894_
             _ctx4896_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g7659_
          (let ((_g7658_ (length _g7659_)))
            (cond ((fx= _g7658_ 2)
                   (apply (lambda (_id4874_ _eid4875_)
                            (gx#core-bind-runtime-reference!__0
                             _id4874_
                             _eid4875_))
                          _g7659_))
                  ((fx= _g7658_ 3)
                   (apply (lambda (_id4883_ _eid4884_ _rebind?4885_)
                            (gx#core-bind-runtime-reference!__1
                             _id4883_
                             _eid4884_
                             _rebind?4885_))
                          _g7659_))
                  ((fx= _g7658_ 4)
                   (apply (lambda (_id4891_ _eid4892_ _rebind?4893_ _phi4894_)
                            (gx#core-bind-runtime-reference!__2
                             _id4891_
                             _eid4892_
                             _rebind?4893_
                             _phi4894_))
                          _g7659_))
                  ((fx= _g7658_ 5)
                   (apply (lambda (_id4898_
                                   _eid4899_
                                   _rebind?4900_
                                   _phi4901_
                                   _ctx4902_)
                            (gx#core-bind-runtime-reference!__opt-lambda4858
                             _id4898_
                             _eid4899_
                             _rebind?4900_
                             _phi4901_
                             _ctx4902_))
                          _g7659_))
                  (else (error "No clause matching arguments" _g7659_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda4818
      (lambda (_id4820_ _eid4821_ _rebind?4822_ _phi4823_ _ctx4824_)
        (gx#bind-identifier!__opt-lambda3262
         _id4820_
         (##structure
          gx#extern-binding::t
          _eid4821_
          (gx#core-identifier-key _id4820_)
          _phi4823_)
         _rebind?4822_
         _phi4823_
         _ctx4824_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id4829_ _eid4830_)
          (let ((_rebind?4832_ '#f))
            (let ((_phi4834_ (gx#current-expander-phi)))
              (let ((_ctx4836_ (gx#current-expander-context)))
                (gx#core-bind-extern!__opt-lambda4818
                 _id4829_
                 _eid4830_
                 _rebind?4832_
                 _phi4834_
                 _ctx4836_))))))
      (define gx#core-bind-extern!__1
        (lambda (_id4838_ _eid4839_ _rebind?4840_)
          (let ((_phi4842_ (gx#current-expander-phi)))
            (let ((_ctx4844_ (gx#current-expander-context)))
              (gx#core-bind-extern!__opt-lambda4818
               _id4838_
               _eid4839_
               _rebind?4840_
               _phi4842_
               _ctx4844_)))))
      (define gx#core-bind-extern!__2
        (lambda (_id4846_ _eid4847_ _rebind?4848_ _phi4849_)
          (let ((_ctx4851_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda4818
             _id4846_
             _eid4847_
             _rebind?4848_
             _phi4849_
             _ctx4851_))))
      (define gx#core-bind-extern!
        (lambda _g7661_
          (let ((_g7660_ (length _g7661_)))
            (cond ((fx= _g7660_ 2)
                   (apply (lambda (_id4829_ _eid4830_)
                            (gx#core-bind-extern!__0 _id4829_ _eid4830_))
                          _g7661_))
                  ((fx= _g7660_ 3)
                   (apply (lambda (_id4838_ _eid4839_ _rebind?4840_)
                            (gx#core-bind-extern!__1
                             _id4838_
                             _eid4839_
                             _rebind?4840_))
                          _g7661_))
                  ((fx= _g7660_ 4)
                   (apply (lambda (_id4846_ _eid4847_ _rebind?4848_ _phi4849_)
                            (gx#core-bind-extern!__2
                             _id4846_
                             _eid4847_
                             _rebind?4848_
                             _phi4849_))
                          _g7661_))
                  ((fx= _g7660_ 5)
                   (apply (lambda (_id4853_
                                   _eid4854_
                                   _rebind?4855_
                                   _phi4856_
                                   _ctx4857_)
                            (gx#core-bind-extern!__opt-lambda4818
                             _id4853_
                             _eid4854_
                             _rebind?4855_
                             _phi4856_
                             _ctx4857_))
                          _g7661_))
                  (else (error "No clause matching arguments" _g7661_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda4772
      (lambda (_id4774_ _e4775_ _rebind?4776_ _phi4777_ _ctx4778_)
        (gx#bind-identifier!__opt-lambda3262
         _id4774_
         (let ((_key4783_ (gx#core-identifier-key _id4774_))
               (_e4784_ (if (let ((_$e4780_
                                   (##structure-instance-of?
                                    _e4775_
                                    'gx#expander::t)))
                              (if _$e4780_
                                  _$e4780_
                                  (##structure-instance-of?
                                   _e4775_
                                   'gx#expander-context::t)))
                            _e4775_
                            (##structure
                             gx#user-expander::t
                             _e4775_
                             _ctx4778_
                             _phi4777_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda4670
             _key4783_
             '#t
             _phi4777_
             _ctx4778_)
            _key4783_
            _phi4777_
            _e4784_))
         _rebind?4776_
         _phi4777_
         _ctx4778_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id4789_ _e4790_)
          (let ((_rebind?4792_ '#f))
            (let ((_phi4794_ (gx#current-expander-phi)))
              (let ((_ctx4796_ (gx#current-expander-context)))
                (gx#core-bind-syntax!__opt-lambda4772
                 _id4789_
                 _e4790_
                 _rebind?4792_
                 _phi4794_
                 _ctx4796_))))))
      (define gx#core-bind-syntax!__1
        (lambda (_id4798_ _e4799_ _rebind?4800_)
          (let ((_phi4802_ (gx#current-expander-phi)))
            (let ((_ctx4804_ (gx#current-expander-context)))
              (gx#core-bind-syntax!__opt-lambda4772
               _id4798_
               _e4799_
               _rebind?4800_
               _phi4802_
               _ctx4804_)))))
      (define gx#core-bind-syntax!__2
        (lambda (_id4806_ _e4807_ _rebind?4808_ _phi4809_)
          (let ((_ctx4811_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda4772
             _id4806_
             _e4807_
             _rebind?4808_
             _phi4809_
             _ctx4811_))))
      (define gx#core-bind-syntax!
        (lambda _g7663_
          (let ((_g7662_ (length _g7663_)))
            (cond ((fx= _g7662_ 2)
                   (apply (lambda (_id4789_ _e4790_)
                            (gx#core-bind-syntax!__0 _id4789_ _e4790_))
                          _g7663_))
                  ((fx= _g7662_ 3)
                   (apply (lambda (_id4798_ _e4799_ _rebind?4800_)
                            (gx#core-bind-syntax!__1
                             _id4798_
                             _e4799_
                             _rebind?4800_))
                          _g7663_))
                  ((fx= _g7662_ 4)
                   (apply (lambda (_id4806_ _e4807_ _rebind?4808_ _phi4809_)
                            (gx#core-bind-syntax!__2
                             _id4806_
                             _e4807_
                             _rebind?4808_
                             _phi4809_))
                          _g7663_))
                  ((fx= _g7662_ 5)
                   (apply (lambda (_id4813_
                                   _e4814_
                                   _rebind?4815_
                                   _phi4816_
                                   _ctx4817_)
                            (gx#core-bind-syntax!__opt-lambda4772
                             _id4813_
                             _e4814_
                             _rebind?4815_
                             _phi4816_
                             _ctx4817_))
                          _g7663_))
                  (else (error "No clause matching arguments" _g7663_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda4755
      (lambda (_id4757_ _e4758_ _rebind?4759_)
        (gx#core-bind-syntax!__opt-lambda4772
         _id4757_
         _e4758_
         _rebind?4759_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id4764_ _e4765_)
          (let ((_rebind?4767_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda4755
             _id4764_
             _e4765_
             _rebind?4767_))))
      (define gx#core-bind-root-syntax!
        (lambda _g7665_
          (let ((_g7664_ (length _g7665_)))
            (cond ((fx= _g7664_ 2)
                   (apply (lambda (_id4764_ _e4765_)
                            (gx#core-bind-root-syntax!__0 _id4764_ _e4765_))
                          _g7665_))
                  ((fx= _g7664_ 3)
                   (apply (lambda (_id4769_ _e4770_ _rebind?4771_)
                            (gx#core-bind-root-syntax!__opt-lambda4755
                             _id4769_
                             _e4770_
                             _rebind?4771_))
                          _g7665_))
                  (else (error "No clause matching arguments" _g7665_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda4713
      (lambda (_id4715_ _alias-id4716_ _rebind?4717_ _phi4718_ _ctx4719_)
        (gx#bind-identifier!__opt-lambda3262
         _id4715_
         (let ((_key4721_ (gx#core-identifier-key _id4715_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda4670
             _key4721_
             '#t
             _phi4718_
             _ctx4719_)
            _key4721_
            _phi4718_
            _alias-id4716_))
         _rebind?4717_
         _phi4718_
         _ctx4719_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id4726_ _alias-id4727_)
          (let ((_rebind?4729_ '#f))
            (let ((_phi4731_ (gx#current-expander-phi)))
              (let ((_ctx4733_ (gx#current-expander-context)))
                (gx#core-bind-alias!__opt-lambda4713
                 _id4726_
                 _alias-id4727_
                 _rebind?4729_
                 _phi4731_
                 _ctx4733_))))))
      (define gx#core-bind-alias!__1
        (lambda (_id4735_ _alias-id4736_ _rebind?4737_)
          (let ((_phi4739_ (gx#current-expander-phi)))
            (let ((_ctx4741_ (gx#current-expander-context)))
              (gx#core-bind-alias!__opt-lambda4713
               _id4735_
               _alias-id4736_
               _rebind?4737_
               _phi4739_
               _ctx4741_)))))
      (define gx#core-bind-alias!__2
        (lambda (_id4743_ _alias-id4744_ _rebind?4745_ _phi4746_)
          (let ((_ctx4748_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda4713
             _id4743_
             _alias-id4744_
             _rebind?4745_
             _phi4746_
             _ctx4748_))))
      (define gx#core-bind-alias!
        (lambda _g7667_
          (let ((_g7666_ (length _g7667_)))
            (cond ((fx= _g7666_ 2)
                   (apply (lambda (_id4726_ _alias-id4727_)
                            (gx#core-bind-alias!__0 _id4726_ _alias-id4727_))
                          _g7667_))
                  ((fx= _g7666_ 3)
                   (apply (lambda (_id4735_ _alias-id4736_ _rebind?4737_)
                            (gx#core-bind-alias!__1
                             _id4735_
                             _alias-id4736_
                             _rebind?4737_))
                          _g7667_))
                  ((fx= _g7666_ 4)
                   (apply (lambda (_id4743_
                                   _alias-id4744_
                                   _rebind?4745_
                                   _phi4746_)
                            (gx#core-bind-alias!__2
                             _id4743_
                             _alias-id4744_
                             _rebind?4745_
                             _phi4746_))
                          _g7667_))
                  ((fx= _g7666_ 5)
                   (apply (lambda (_id4750_
                                   _alias-id4751_
                                   _rebind?4752_
                                   _phi4753_
                                   _ctx4754_)
                            (gx#core-bind-alias!__opt-lambda4713
                             _id4750_
                             _alias-id4751_
                             _rebind?4752_
                             _phi4753_
                             _ctx4754_))
                          _g7667_))
                  (else (error "No clause matching arguments" _g7667_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda4670
      (lambda (_key4672_ _syntax?4673_ _phi4674_ _ctx4675_)
        (if (uninterned-symbol? _key4672_)
            (gensym 'L)
            (if (pair? _key4672_)
                (gensym (car _key4672_))
                (if (##structure-instance-of? _ctx4675_ 'gx#top-context::t)
                    (let ((_ns4677_
                           (gx#core-context-namespace__opt-lambda2799
                            _ctx4675_)))
                      (if (if (fxzero? _phi4674_) (not _syntax?4673_) '#f)
                          (if _ns4677_
                              (make-symbol _ns4677_ '"#" _key4672_)
                              _key4672_)
                          (if _syntax?4673_
                              (make-symbol
                               (let ((_$e4679_ _ns4677_))
                                 (if _$e4679_ _$e4679_ '""))
                               '"[:"
                               (number->string _phi4674_)
                               '":]#"
                               _key4672_)
                              (make-symbol
                               (let ((_$e4682_ _ns4677_))
                                 (if _$e4682_ _$e4682_ '""))
                               '"["
                               (number->string _phi4674_)
                               '"]#"
                               _key4672_))))
                    (gensym _key4672_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key4688_)
          (let ((_syntax?4690_ '#f))
            (let ((_phi4692_ (gx#current-expander-phi)))
              (let ((_ctx4694_ (gx#current-expander-context)))
                (gx#make-binding-id__opt-lambda4670
                 _key4688_
                 _syntax?4690_
                 _phi4692_
                 _ctx4694_))))))
      (define gx#make-binding-id__1
        (lambda (_key4696_ _syntax?4697_)
          (let ((_phi4699_ (gx#current-expander-phi)))
            (let ((_ctx4701_ (gx#current-expander-context)))
              (gx#make-binding-id__opt-lambda4670
               _key4696_
               _syntax?4697_
               _phi4699_
               _ctx4701_)))))
      (define gx#make-binding-id__2
        (lambda (_key4703_ _syntax?4704_ _phi4705_)
          (let ((_ctx4707_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda4670
             _key4703_
             _syntax?4704_
             _phi4705_
             _ctx4707_))))
      (define gx#make-binding-id
        (lambda _g7669_
          (let ((_g7668_ (length _g7669_)))
            (cond ((fx= _g7668_ 1)
                   (apply (lambda (_key4688_)
                            (gx#make-binding-id__0 _key4688_))
                          _g7669_))
                  ((fx= _g7668_ 2)
                   (apply (lambda (_key4696_ _syntax?4697_)
                            (gx#make-binding-id__1 _key4696_ _syntax?4697_))
                          _g7669_))
                  ((fx= _g7668_ 3)
                   (apply (lambda (_key4703_ _syntax?4704_ _phi4705_)
                            (gx#make-binding-id__2
                             _key4703_
                             _syntax?4704_
                             _phi4705_))
                          _g7669_))
                  ((fx= _g7668_ 4)
                   (apply (lambda (_key4709_ _syntax?4710_ _phi4711_ _ctx4712_)
                            (gx#make-binding-id__opt-lambda4670
                             _key4709_
                             _syntax?4710_
                             _phi4711_
                             _ctx4712_))
                          _g7669_))
                  (else (error "No clause matching arguments" _g7669_)))))))))
