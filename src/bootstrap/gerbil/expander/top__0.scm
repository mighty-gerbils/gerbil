(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx10696_)
      (letrec ((_expand-special10698_
                (lambda (_hd10700_ _K10701_ _rest10702_ _r10703_)
                  (_K10701_
                   _rest10702_
                   (cons (gx#core-expand-top _hd10700_) _r10703_)))))
        (gx#core-expand-block__0 _stx10696_ _expand-special10698_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx10449_)
      (letrec ((_expand-special10451_
                (lambda (_hd10571_ _K10572_ _rest10573_ _r10574_)
                  (let* ((_K10578_
                          (lambda (_e10576_)
                            (_K10572_ _rest10573_ (cons _e10576_ _r10574_))))
                         (_e1057910608_ _hd10571_)
                         (_E1060310612_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1057910608_)))
                         (_E1059910624_
                          (lambda ()
                            (if (gx#stx-pair? _e1057910608_)
                                (let ((_e1060410616_
                                       (gx#syntax-e _e1057910608_)))
                                  (let ((_hd1060510619_ (##car _e1060410616_))
                                        (_tl1060610621_ (##cdr _e1060410616_)))
                                    (if (if (gx#identifier? _hd1060510619_)
                                            (gx#core-identifier=?
                                             _hd1060510619_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K10578_
                                             (gx#core-expand-define-runtime%
                                              _hd10571_))
                                            (_E1060310612_))
                                        (_E1060310612_))))
                                (_E1060310612_))))
                         (_E1059510636_
                          (lambda ()
                            (if (gx#stx-pair? _e1057910608_)
                                (let ((_e1060010628_
                                       (gx#syntax-e _e1057910608_)))
                                  (let ((_hd1060110631_ (##car _e1060010628_))
                                        (_tl1060210633_ (##cdr _e1060010628_)))
                                    (if (if (gx#identifier? _hd1060110631_)
                                            (gx#core-identifier=?
                                             _hd1060110631_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K10578_
                                             (gx#core-expand-define-alias%
                                              _hd10571_))
                                            (_E1059910624_))
                                        (_E1059910624_))))
                                (_E1059910624_))))
                         (_E1058510648_
                          (lambda ()
                            (if (gx#stx-pair? _e1057910608_)
                                (let ((_e1059610640_
                                       (gx#syntax-e _e1057910608_)))
                                  (let ((_hd1059710643_ (##car _e1059610640_))
                                        (_tl1059810645_ (##cdr _e1059610640_)))
                                    (if (if (gx#identifier? _hd1059710643_)
                                            (gx#core-identifier=?
                                             _hd1059710643_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K10578_
                                             (gx#core-expand-define-syntax%
                                              _hd10571_))
                                            (_E1059510636_))
                                        (_E1059510636_))))
                                (_E1059510636_))))
                         (_E1058110680_
                          (lambda ()
                            (if (gx#stx-pair? _e1057910608_)
                                (let ((_e1058610652_
                                       (gx#syntax-e _e1057910608_)))
                                  (let ((_hd1058710655_ (##car _e1058610652_))
                                        (_tl1058810657_ (##cdr _e1058610652_)))
                                    (if (if (gx#identifier? _hd1058710655_)
                                            (gx#core-identifier=?
                                             _hd1058710655_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1058810657_)
                                            (let ((_e1058910660_
                                                   (gx#syntax-e
                                                    _tl1058810657_)))
                                              (let ((_hd1059010663_
                                                     (##car _e1058910660_))
                                                    (_tl1059110665_
                                                     (##cdr _e1058910660_)))
                                                (let ((_hd-bind10668_
                                                       _hd1059010663_))
                                                  (if (gx#stx-pair?
                                                       _tl1059110665_)
                                                      (let ((_e1059210670_
                                                             (gx#syntax-e
                                                              _tl1059110665_)))
                                                        (let ((_hd1059310673_
                                                               (##car _e1059210670_))
                                                              (_tl1059410675_
                                                               (##cdr _e1059210670_)))
                                                          (let ((_expr10678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1059310673_))
                    (if (gx#stx-null? _tl1059410675_)
                        (if (gx#core-bind-values? _hd-bind10668_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10668_)
                              (_K10578_ _hd10571_))
                            (_E1058510648_))
                        (_E1058510648_)))))
              (_E1058510648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1058510648_))
                                        (_E1058510648_))))
                                (_E1058510648_))))
                         (_E1058010692_
                          (lambda ()
                            (if (gx#stx-pair? _e1057910608_)
                                (let ((_e1058210684_
                                       (gx#syntax-e _e1057910608_)))
                                  (let ((_hd1058310687_ (##car _e1058210684_))
                                        (_tl1058410689_ (##cdr _e1058210684_)))
                                    (if (if (gx#identifier? _hd1058310687_)
                                            (gx#core-identifier=?
                                             _hd1058310687_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K10578_
                                             (gx#core-expand-begin-syntax%
                                              _hd10571_))
                                            (_E1058110680_))
                                        (_E1058110680_))))
                                (_E1058110680_)))))
                    (_E1058010692_))))
               (_eval-body10452_
                (lambda (_rbody10460_)
                  (let _lp10462_ ((_rest10464_ _rbody10460_)
                                  (_body10465_ '())
                                  (_ebody10466_ '()))
                    (let* ((_rest1046710475_ _rest10464_)
                           (_E1047010479_
                            (lambda ()
                              (error '"No clause matching" _rest1046710475_)))
                           (_else1046910483_
                            (lambda ()
                              (values _body10465_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody10466_)
                                        (gx#stx-source _stx10449_))))))
                           (_K1047110559_
                            (lambda (_rest10486_ _hd10487_)
                              (let* ((_e1048810505_ _hd10487_)
                                     (_E1050010509_
                                      (lambda ()
                                        (_lp10462_
                                         _rest10486_
                                         (cons _hd10487_ _body10465_)
                                         (cons _hd10487_ _ebody10466_))))
                                     (_E1049010521_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1048810505_)
                                            (let ((_e1050110513_
                                                   (gx#syntax-e
                                                    _e1048810505_)))
                                              (let ((_hd1050210516_
                                                     (##car _e1050110513_))
                                                    (_tl1050310518_
                                                     (##cdr _e1050110513_)))
                                                (if (if (gx#identifier?
                                                         _hd1050210516_)
                                                        (gx#core-identifier=?
                                                         _hd1050210516_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp10462_
                                                         _rest10486_
                                                         (cons _hd10487_
                                                               _body10465_)
                                                         _ebody10466_)
                                                        (_E1050010509_))
                                                    (_E1050010509_))))
                                            (_E1050010509_))))
                                     (_E1048910555_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1048810505_)
                                            (let ((_e1049110525_
                                                   (gx#syntax-e
                                                    _e1048810505_)))
                                              (let ((_hd1049210528_
                                                     (##car _e1049110525_))
                                                    (_tl1049310530_
                                                     (##cdr _e1049110525_)))
                                                (if (if (gx#identifier?
                                                         _hd1049210528_)
                                                        (gx#core-identifier=?
                                                         _hd1049210528_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1049310530_)
                                                        (let ((_e1049410533_
                                                               (gx#syntax-e
                                                                _tl1049310530_)))
                                                          (let ((_hd1049510536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1049410533_))
                        (_tl1049610538_ (##cdr _e1049410533_)))
                    (let ((_hd-bind10541_ _hd1049510536_))
                      (if (gx#stx-pair? _tl1049610538_)
                          (let ((_e1049710543_ (gx#syntax-e _tl1049610538_)))
                            (let ((_hd1049810546_ (##car _e1049710543_))
                                  (_tl1049910548_ (##cdr _e1049710543_)))
                              (let ((_expr10551_ _hd1049810546_))
                                (if (gx#stx-null? _tl1049910548_)
                                    (if '#t
                                        (let ((_ehd10553_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind10541_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr10551_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd10487_))))
                                          (_lp10462_
                                           _rest10486_
                                           (cons _ehd10553_ _body10465_)
                                           (cons _ehd10553_ _ebody10466_)))
                                        (_E1049010521_))
                                    (_E1049010521_)))))
                          (_E1049010521_)))))
                (_E1049010521_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1049010521_))))
                                            (_E1049010521_)))))
                                (_E1048910555_)))))
                      (if (##pair? _rest1046710475_)
                          (let ((_hd1047210562_ (##car _rest1046710475_))
                                (_tl1047310564_ (##cdr _rest1046710475_)))
                            (let* ((_hd10567_ _hd1047210562_)
                                   (_rest10569_ _tl1047310564_))
                              (_K1047110559_ _rest10569_ _hd10567_)))
                          (_else1046910483_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody10455_
                   (gx#core-expand-block__1
                    _stx10449_
                    _expand-special10451_
                    '#f))
                  (_g10710_ (_eval-body10452_ _rbody10455_)))
             (begin
               (let ((_g10711_ (values-count _g10710_)))
                 (if (not (fx= _g10711_ 2))
                     (error "Context expects 2 values" _g10711_)))
               (let ((_expanded-body10457_ (values-ref _g10710_ 0))
                     (_value10458_ (values-ref _g10710_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body10457_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value10458_ '())))
                  (gx#stx-source _stx10449_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx10419_)
      (let* ((_e1042010427_ _stx10419_)
             (_E1042210431_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1042010427_)))
             (_E1042110445_
              (lambda ()
                (if (gx#stx-pair? _e1042010427_)
                    (let ((_e1042310435_ (gx#syntax-e _e1042010427_)))
                      (let ((_hd1042410438_ (##car _e1042310435_))
                            (_tl1042510440_ (##cdr _e1042310435_)))
                        (let ((_body10443_ _tl1042510440_))
                          (if (gx#stx-list? _body10443_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body10443_)
                               (gx#stx-source _stx10419_))
                              (_E1042210431_)))))
                    (_E1042210431_)))))
        (_E1042110445_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx10417_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx10417_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx10405_)
      (let* ((_e1040610409_ _stx10405_)
             (_E1040710413_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1040610409_))))
        (_E1040710413_))))
  (define gx#core-expand-local-block
    (lambda (_stx10129_ _body10130_)
      (letrec ((_expand-special10132_
                (lambda (_hd10400_ _K10401_ _rest10402_ _r10403_)
                  (_K10401_
                   '()
                   (cons (_expand-internal10133_ _hd10400_ _rest10402_)
                         _r10403_))))
               (_expand-internal10133_
                (lambda (_hd10396_ _rest10397_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal10135_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons* '%#begin _hd10396_ _rest10397_)
                        (gx#stx-source _stx10129_))
                       _expand-internal-special10134_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj10704 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj10704)
                       __obj10704)))))
               (_expand-internal-special10134_
                (lambda (_hd10291_ _K10292_ _rest10293_ _r10294_)
                  (let* ((_e1029510320_ _hd10291_)
                         (_E1031510324_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1029510320_)))
                         (_E1031110336_
                          (lambda ()
                            (if (gx#stx-pair? _e1029510320_)
                                (let ((_e1031610328_
                                       (gx#syntax-e _e1029510320_)))
                                  (let ((_hd1031710331_ (##car _e1031610328_))
                                        (_tl1031810333_ (##cdr _e1031610328_)))
                                    (if (if (gx#identifier? _hd1031710331_)
                                            (gx#core-identifier=?
                                             _hd1031710331_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K10292_
                                             _rest10293_
                                             (cons (gx#core-expand-declare%
                                                    _hd10291_)
                                                   _r10294_))
                                            (_E1031510324_))
                                        (_E1031510324_))))
                                (_E1031510324_))))
                         (_E1030710348_
                          (lambda ()
                            (if (gx#stx-pair? _e1029510320_)
                                (let ((_e1031210340_
                                       (gx#syntax-e _e1029510320_)))
                                  (let ((_hd1031310343_ (##car _e1031210340_))
                                        (_tl1031410345_ (##cdr _e1031210340_)))
                                    (if (if (gx#identifier? _hd1031310343_)
                                            (gx#core-identifier=?
                                             _hd1031310343_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd10291_)
                                              (_K10292_ _rest10293_ _r10294_))
                                            (_E1031110336_))
                                        (_E1031110336_))))
                                (_E1031110336_))))
                         (_E1029710360_
                          (lambda ()
                            (if (gx#stx-pair? _e1029510320_)
                                (let ((_e1030810352_
                                       (gx#syntax-e _e1029510320_)))
                                  (let ((_hd1030910355_ (##car _e1030810352_))
                                        (_tl1031010357_ (##cdr _e1030810352_)))
                                    (if (if (gx#identifier? _hd1030910355_)
                                            (gx#core-identifier=?
                                             _hd1030910355_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd10291_)
                                              (_K10292_ _rest10293_ _r10294_))
                                            (_E1030710348_))
                                        (_E1030710348_))))
                                (_E1030710348_))))
                         (_E1029610392_
                          (lambda ()
                            (if (gx#stx-pair? _e1029510320_)
                                (let ((_e1029810364_
                                       (gx#syntax-e _e1029510320_)))
                                  (let ((_hd1029910367_ (##car _e1029810364_))
                                        (_tl1030010369_ (##cdr _e1029810364_)))
                                    (if (if (gx#identifier? _hd1029910367_)
                                            (gx#core-identifier=?
                                             _hd1029910367_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1030010369_)
                                            (let ((_e1030110372_
                                                   (gx#syntax-e
                                                    _tl1030010369_)))
                                              (let ((_hd1030210375_
                                                     (##car _e1030110372_))
                                                    (_tl1030310377_
                                                     (##cdr _e1030110372_)))
                                                (let ((_hd-bind10380_
                                                       _hd1030210375_))
                                                  (if (gx#stx-pair?
                                                       _tl1030310377_)
                                                      (let ((_e1030410382_
                                                             (gx#syntax-e
                                                              _tl1030310377_)))
                                                        (let ((_hd1030510385_
                                                               (##car _e1030410382_))
                                                              (_tl1030610387_
                                                               (##cdr _e1030410382_)))
                                                          (let ((_expr10390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1030510385_))
                    (if (gx#stx-null? _tl1030610387_)
                        (if (gx#core-bind-values? _hd-bind10380_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10380_)
                              (_K10292_ _rest10293_ (cons _hd10291_ _r10294_)))
                            (_E1029710360_))
                        (_E1029710360_)))))
              (_E1029710360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1029710360_))
                                        (_E1029710360_))))
                                (_E1029710360_)))))
                    (_E1029610392_))))
               (_wrap-internal10135_
                (lambda (_rbody10137_)
                  (let _lp10139_ ((_rest10141_ _rbody10137_)
                                  (_decls10142_ '())
                                  (_bind10143_ '())
                                  (_body10144_ '()))
                    (let* ((_e1014510152_ _rest10141_)
                           (_E1014710201_
                            (lambda ()
                              (let* ((_body10196_
                                      (let* ((_body1015510165_ _body10144_)
                                             (_E1015910169_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _body1015510165_)))
                                             (_else1015810173_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body10144_)
                                                 (gx#stx-source _stx10129_))))
                                             (_try-match1015710189_
                                              (lambda ()
                                                (let ((_K1016010179_
                                                       (lambda (_expr10177_)
                                                         _expr10177_)))
                                                  (if (##pair? _body1015510165_)
                                                      (let ((_hd1016110182_
                                                             (##car _body1015510165_))
                                                            (_tl1016210184_
                                                             (##cdr _body1015510165_)))
                                                        (let ((_expr10187_
                                                               _hd1016110182_))
                                                          (if (##null? _tl1016210184_)
                                                              (_K1016010179_
                                                               _expr10187_)
                                                              (_else1015810173_))))
                                                      (_else1015810173_)))))
                                             (_K1016310193_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx10129_))))
                                        (if (##null? _body1015510165_)
                                            (_K1016310193_)
                                            (_try-match1015710189_))))
                                     (_body10198_
                                      (if (null? _bind10143_)
                                          _body10196_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind10143_
                                                       (cons _body10196_ '())))
                                           (gx#stx-source _stx10129_)))))
                                (if (null? _decls10142_)
                                    _body10198_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls10142_
                                                 (cons _body10198_ '())))
                                     (gx#stx-source _stx10129_))))))
                           (_E1014610287_
                            (lambda ()
                              (if (gx#stx-pair? _e1014510152_)
                                  (let ((_e1014810205_
                                         (gx#syntax-e _e1014510152_)))
                                    (let ((_hd1014910208_
                                           (##car _e1014810205_))
                                          (_tl1015010210_
                                           (##cdr _e1014810205_)))
                                      (let* ((_hd10213_ _hd1014910208_)
                                             (_rest10215_ _tl1015010210_))
                                        (if '#t
                                            (let* ((_e1021610233_ _hd10213_)
                                                   (_E1022810237_
                                                    (lambda ()
                                                      (if (null? _bind10143_)
                                                          (_lp10139_
                                                           _rest10215_
                                                           _decls10142_
                                                           _bind10143_
                                                           (cons _hd10213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body10144_))
                  (_lp10139_
                   _rest10215_
                   _decls10142_
                   (cons (cons '#f (cons _hd10213_ '())) _bind10143_)
                   _body10144_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1021810251_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1021610233_)
                                                          (let ((_e1022910241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1021610233_)))
                    (let ((_hd1023010244_ (##car _e1022910241_))
                          (_tl1023110246_ (##cdr _e1022910241_)))
                      (if (if (gx#identifier? _hd1023010244_)
                              (gx#core-identifier=? _hd1023010244_ '%#declare)
                              '#f)
                          (let ((_xdecls10249_ _tl1023110246_))
                            (if '#t
                                (_lp10139_
                                 _rest10215_
                                 (gx#stx-foldr cons _decls10142_ _xdecls10249_)
                                 _bind10143_
                                 _body10144_)
                                (_E1022810237_)))
                          (_E1022810237_))))
                  (_E1022810237_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1021710283_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1021610233_)
                                                          (let ((_e1021910255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1021610233_)))
                    (let ((_hd1022010258_ (##car _e1021910255_))
                          (_tl1022110260_ (##cdr _e1021910255_)))
                      (if (if (gx#identifier? _hd1022010258_)
                              (gx#core-identifier=?
                               _hd1022010258_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl1022110260_)
                              (let ((_e1022210263_
                                     (gx#syntax-e _tl1022110260_)))
                                (let ((_hd1022310266_ (##car _e1022210263_))
                                      (_tl1022410268_ (##cdr _e1022210263_)))
                                  (let ((_hd-bind10271_ _hd1022310266_))
                                    (if (gx#stx-pair? _tl1022410268_)
                                        (let ((_e1022510273_
                                               (gx#syntax-e _tl1022410268_)))
                                          (let ((_hd1022610276_
                                                 (##car _e1022510273_))
                                                (_tl1022710278_
                                                 (##cdr _e1022510273_)))
                                            (let ((_expr10281_ _hd1022610276_))
                                              (if (gx#stx-null? _tl1022710278_)
                                                  (if '#t
                                                      (_lp10139_
                                                       _rest10215_
                                                       _decls10142_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind10271_)
                           (cons (gx#core-expand-expression _expr10281_) '()))
                     _bind10143_)
               _body10144_)
              (_E1021810251_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1021810251_)))))
                                        (_E1021810251_)))))
                              (_E1021810251_))
                          (_E1021810251_))))
                  (_E1021810251_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1021710283_))
                                            (_E1014710201_)))))
                                  (_E1014710201_)))))
                      (_E1014610287_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body10130_)
          (gx#stx-source _stx10129_))
         _expand-special10132_))))
  (define gx#core-expand-declare%
    (lambda (_stx10067_)
      (let* ((_e1006810075_ _stx10067_)
             (_E1007010079_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1006810075_)))
             (_E1006910125_
              (lambda ()
                (if (gx#stx-pair? _e1006810075_)
                    (let ((_e1007110083_ (gx#syntax-e _e1006810075_)))
                      (let ((_hd1007210086_ (##car _e1007110083_))
                            (_tl1007310088_ (##cdr _e1007110083_)))
                        (let ((_body10091_ _tl1007310088_))
                          (if (gx#stx-list? _body10091_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl10093_)
                                   (let* ((_e1009410101_ _decl10093_)
                                          (_E1009610105_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1009410101_)))
                                          (_E1009510121_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1009410101_)
                                                 (let ((_e1009710109_
                                                        (gx#syntax-e
                                                         _e1009410101_)))
                                                   (let ((_hd1009810112_
                                                          (##car _e1009710109_))
                                                         (_tl1009910114_
                                                          (##cdr _e1009710109_)))
                                                     (let* ((_head10117_
                                                             _hd1009810112_)
                                                            (_args10119_
                                                             _tl1009910114_))
                                                       (if (gx#stx-list?
                                                            _args10119_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl10093_)
                                                           (_E1009610105_)))))
                                                 (_E1009610105_)))))
                                     (_E1009510121_)))
                                 _body10091_))
                               (gx#stx-source _stx10067_))
                              (_E1007010079_)))))
                    (_E1007010079_)))))
        (_E1006910125_))))
  (define gx#core-expand-extern%
    (lambda (_stx9951_)
      (let* ((_e99529959_ _stx9951_)
             (_E99549963_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e99529959_)))
             (_E995310063_
              (lambda ()
                (if (gx#stx-pair? _e99529959_)
                    (let ((_e99559967_ (gx#syntax-e _e99529959_)))
                      (let ((_hd99569970_ (##car _e99559967_))
                            (_tl99579972_ (##cdr _e99559967_)))
                        (let ((_body9975_ _tl99579972_))
                          (if (gx#stx-list? _body9975_)
                              (begin
                                (gx#stx-for-each1
                                 (lambda (_bind9977_)
                                   (let* ((_e99789988_ _bind9977_)
                                          (_E99809992_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e99789988_)))
                                          (_E997910016_
                                           (lambda ()
                                             (if (gx#stx-pair? _e99789988_)
                                                 (let ((_e99819996_
                                                        (gx#syntax-e
                                                         _e99789988_)))
                                                   (let ((_hd99829999_
                                                          (##car _e99819996_))
                                                         (_tl998310001_
                                                          (##cdr _e99819996_)))
                                                     (let ((_id10004_
                                                            _hd99829999_))
                                                       (if (gx#stx-pair?
                                                            _tl998310001_)
                                                           (let ((_e998410006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl998310001_)))
                     (let ((_hd998510009_ (##car _e998410006_))
                           (_tl998610011_ (##cdr _e998410006_)))
                       (let ((_eid10014_ _hd998510009_))
                         (if (gx#stx-null? _tl998610011_)
                             (if (if (gx#identifier? _id10004_)
                                     (gx#identifier? _eid10014_)
                                     '#f)
                                 (gx#core-bind-extern!__0
                                  _id10004_
                                  (gx#stx-e _eid10014_))
                                 (_E99809992_))
                             (_E99809992_)))))
                   (_E99809992_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E99809992_)))))
                                     (_E997910016_)))
                                 _body9975_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#extern
                                  (gx#stx-map1
                                   (lambda (_bind10020_)
                                     (let* ((_e1002110031_ _bind10020_)
                                            (_E1002310035_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e1002110031_)))
                                            (_E1002210059_
                                             (lambda ()
                                               (if (gx#stx-pair? _e1002110031_)
                                                   (let ((_e1002410039_
                                                          (gx#syntax-e
                                                           _e1002110031_)))
                                                     (let ((_hd1002510042_
                                                            (##car _e1002410039_))
                                                           (_tl1002610044_
                                                            (##cdr _e1002410039_)))
                                                       (let ((_id10047_
                                                              _hd1002510042_))
                                                         (if (gx#stx-pair?
                                                              _tl1002610044_)
                                                             (let ((_e1002710049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1002610044_)))
                       (let ((_hd1002810052_ (##car _e1002710049_))
                             (_tl1002910054_ (##cdr _e1002710049_)))
                         (let ((_eid10057_ _hd1002810052_))
                           (if (gx#stx-null? _tl1002910054_)
                               (if '#t
                                   (cons (gx#core-quote-syntax__0 _id10047_)
                                         (cons (gx#stx-e _eid10057_) '()))
                                   (_E1002310035_))
                               (_E1002310035_)))))
                     (_E1002310035_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1002310035_)))))
                                       (_E1002210059_)))
                                   _body9975_))
                                 (gx#stx-source _stx9951_)))
                              (_E99549963_)))))
                    (_E99549963_)))))
        (_E995310063_))))
  (define gx#core-expand-define-values%
    (lambda (_stx9897_)
      (let* ((_e98989911_ _stx9897_)
             (_E99009915_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98989911_)))
             (_E98999947_
              (lambda ()
                (if (gx#stx-pair? _e98989911_)
                    (let ((_e99019919_ (gx#syntax-e _e98989911_)))
                      (let ((_hd99029922_ (##car _e99019919_))
                            (_tl99039924_ (##cdr _e99019919_)))
                        (if (gx#stx-pair? _tl99039924_)
                            (let ((_e99049927_ (gx#syntax-e _tl99039924_)))
                              (let ((_hd99059930_ (##car _e99049927_))
                                    (_tl99069932_ (##cdr _e99049927_)))
                                (let ((_hd9935_ _hd99059930_))
                                  (if (gx#stx-pair? _tl99069932_)
                                      (let ((_e99079937_
                                             (gx#syntax-e _tl99069932_)))
                                        (let ((_hd99089940_
                                               (##car _e99079937_))
                                              (_tl99099942_
                                               (##cdr _e99079937_)))
                                          (let ((_expr9945_ _hd99089940_))
                                            (if (gx#stx-null? _tl99099942_)
                                                (if (gx#core-bind-values?
                                                     _hd9935_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd9935_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd9935_)
                           (cons (gx#core-expand-expression _expr9945_) '())))
               (gx#stx-source _stx9897_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E99009915_))
                                                (_E99009915_)))))
                                      (_E99009915_)))))
                            (_E99009915_))))
                    (_E99009915_)))))
        (_E98999947_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx9843_)
      (let* ((_e98449857_ _stx9843_)
             (_E98469861_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98449857_)))
             (_E98459893_
              (lambda ()
                (if (gx#stx-pair? _e98449857_)
                    (let ((_e98479865_ (gx#syntax-e _e98449857_)))
                      (let ((_hd98489868_ (##car _e98479865_))
                            (_tl98499870_ (##cdr _e98479865_)))
                        (if (gx#stx-pair? _tl98499870_)
                            (let ((_e98509873_ (gx#syntax-e _tl98499870_)))
                              (let ((_hd98519876_ (##car _e98509873_))
                                    (_tl98529878_ (##cdr _e98509873_)))
                                (let ((_id9881_ _hd98519876_))
                                  (if (gx#stx-pair? _tl98529878_)
                                      (let ((_e98539883_
                                             (gx#syntax-e _tl98529878_)))
                                        (let ((_hd98549886_
                                               (##car _e98539883_))
                                              (_tl98559888_
                                               (##cdr _e98539883_)))
                                          (let ((_binding-id9891_
                                                 _hd98549886_))
                                            (if (gx#stx-null? _tl98559888_)
                                                (if (if (gx#identifier?
                                                         _id9881_)
                                                        (gx#identifier?
                                                         _binding-id9891_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id9881_
                                                       (gx#stx-e
                                                        _binding-id9891_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id9881_)
                           (cons (gx#core-quote-syntax__0 _binding-id9891_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98469861_))
                                                (_E98469861_)))))
                                      (_E98469861_)))))
                            (_E98469861_))))
                    (_E98469861_)))))
        (_E98459893_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx9786_)
      (let* ((_e97879800_ _stx9786_)
             (_E97899804_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e97879800_)))
             (_E97889839_
              (lambda ()
                (if (gx#stx-pair? _e97879800_)
                    (let ((_e97909808_ (gx#syntax-e _e97879800_)))
                      (let ((_hd97919811_ (##car _e97909808_))
                            (_tl97929813_ (##cdr _e97909808_)))
                        (if (gx#stx-pair? _tl97929813_)
                            (let ((_e97939816_ (gx#syntax-e _tl97929813_)))
                              (let ((_hd97949819_ (##car _e97939816_))
                                    (_tl97959821_ (##cdr _e97939816_)))
                                (let ((_id9824_ _hd97949819_))
                                  (if (gx#stx-pair? _tl97959821_)
                                      (let ((_e97969826_
                                             (gx#syntax-e _tl97959821_)))
                                        (let ((_hd97979829_
                                               (##car _e97969826_))
                                              (_tl97989831_
                                               (##cdr _e97969826_)))
                                          (let ((_expr9834_ _hd97979829_))
                                            (if (gx#stx-null? _tl97989831_)
                                                (if (gx#identifier? _id9824_)
                                                    (let ((_g10712_
                                                           (gx#core-expand-expression+1
                                                            _expr9834_)))
                                                      (begin
                                                        (let ((_g10713_
                                                               (values-count
                                                                _g10712_)))
                                                          (if (not (fx= _g10713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10713_)))
                (let ((_e-stx9836_ (values-ref _g10712_ 0))
                      (_e9837_ (values-ref _g10712_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id9824_ _e9837_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id9824_)
                                 (cons _e-stx9836_ '())))
                     (gx#stx-source _stx9786_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97899804_))
                                                (_E97899804_)))))
                                      (_E97899804_)))))
                            (_E97899804_))))
                    (_E97899804_)))))
        (_E97889839_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx9730_)
      (let* ((_e97319744_ _stx9730_)
             (_E97339748_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e97319744_)))
             (_E97329782_
              (lambda ()
                (if (gx#stx-pair? _e97319744_)
                    (let ((_e97349752_ (gx#syntax-e _e97319744_)))
                      (let ((_hd97359755_ (##car _e97349752_))
                            (_tl97369757_ (##cdr _e97349752_)))
                        (if (gx#stx-pair? _tl97369757_)
                            (let ((_e97379760_ (gx#syntax-e _tl97369757_)))
                              (let ((_hd97389763_ (##car _e97379760_))
                                    (_tl97399765_ (##cdr _e97379760_)))
                                (let ((_id9768_ _hd97389763_))
                                  (if (gx#stx-pair? _tl97399765_)
                                      (let ((_e97409770_
                                             (gx#syntax-e _tl97399765_)))
                                        (let ((_hd97419773_
                                               (##car _e97409770_))
                                              (_tl97429775_
                                               (##cdr _e97409770_)))
                                          (let ((_alias-id9778_ _hd97419773_))
                                            (if (gx#stx-null? _tl97429775_)
                                                (if (if (gx#identifier?
                                                         _id9768_)
                                                        (gx#identifier?
                                                         _alias-id9778_)
                                                        '#f)
                                                    (let ((_alias-id9780_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id9778_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id9768_
                                                         _alias-id9780_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id9768_)
                             (cons _alias-id9780_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97339748_))
                                                (_E97339748_)))))
                                      (_E97339748_)))))
                            (_E97339748_))))
                    (_E97339748_)))))
        (_E97329782_))))
  (begin
    (define gx#core-expand-lambda%__%
      (lambda (_stx9673_ _wrap?9674_)
        (let* ((_e96759685_ _stx9673_)
               (_E96779689_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e96759685_)))
               (_E96769716_
                (lambda ()
                  (if (gx#stx-pair? _e96759685_)
                      (let ((_e96789693_ (gx#syntax-e _e96759685_)))
                        (let ((_hd96799696_ (##car _e96789693_))
                              (_tl96809698_ (##cdr _e96789693_)))
                          (if (gx#stx-pair? _tl96809698_)
                              (let ((_e96819701_ (gx#syntax-e _tl96809698_)))
                                (let ((_hd96829704_ (##car _e96819701_))
                                      (_tl96839706_ (##cdr _e96819701_)))
                                  (let* ((_hd9709_ _hd96829704_)
                                         (_body9711_ _tl96839706_))
                                    (if (gx#core-bind-values? _hd9709_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0 _hd9709_)
                                             (let ((_body9714_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd9709_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9673_
                         _body9711_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?9674_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body9714_)
                                                    (gx#stx-source _stx9673_))
                                                   _body9714_))))
                                         gx#current-expander-context
                                         (let ((__obj10705
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10705)
                                             __obj10705)))
                                        (_E96779689_)))))
                              (_E96779689_))))
                      (_E96779689_)))))
          (_E96769716_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx9723_)
          (let ((_wrap?9725_ '#t))
            (gx#core-expand-lambda%__% _stx9723_ _wrap?9725_))))
      (define gx#core-expand-lambda%
        (lambda _g10715_
          (let ((_g10714_ (length _g10715_)))
            (cond ((fx= _g10714_ 1) (apply gx#core-expand-lambda%__0 _g10715_))
                  ((fx= _g10714_ 2) (apply gx#core-expand-lambda%__% _g10715_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g10715_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx9637_)
      (let* ((_e96389645_ _stx9637_)
             (_E96409649_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96389645_)))
             (_E96399668_
              (lambda ()
                (if (gx#stx-pair? _e96389645_)
                    (let ((_e96419653_ (gx#syntax-e _e96389645_)))
                      (let ((_hd96429656_ (##car _e96419653_))
                            (_tl96439658_ (##cdr _e96419653_)))
                        (let ((_clauses9661_ _tl96439658_))
                          (if (gx#stx-list? _clauses9661_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause9663_)
                                   (gx#core-expand-lambda%__%
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause9663_)
                                     (let ((_$e9665_
                                            (gx#stx-source _clause9663_)))
                                       (if _$e9665_
                                           _$e9665_
                                           (gx#stx-source _stx9637_))))
                                    '#f))
                                 _clauses9661_))
                               (gx#stx-source _stx9637_))
                              (_E96409649_)))))
                    (_E96409649_)))))
        (_E96399668_))))
  (define gx#core-expand-let-values%
    (lambda (_stx9591_)
      (let* ((_e95929602_ _stx9591_)
             (_E95949606_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e95929602_)))
             (_E95939633_
              (lambda ()
                (if (gx#stx-pair? _e95929602_)
                    (let ((_e95959610_ (gx#syntax-e _e95929602_)))
                      (let ((_hd95969613_ (##car _e95959610_))
                            (_tl95979615_ (##cdr _e95959610_)))
                        (if (gx#stx-pair? _tl95979615_)
                            (let ((_e95989618_ (gx#syntax-e _tl95979615_)))
                              (let ((_hd95999621_ (##car _e95989618_))
                                    (_tl96009623_ (##cdr _e95989618_)))
                                (let* ((_hd9626_ _hd95999621_)
                                       (_body9628_ _tl96009623_))
                                  (if (gx#core-expand-let-bind? _hd9626_)
                                      (let ((_expressions9630_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd9626_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd9626_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd9626_
                                                           _expressions9630_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9591_
                         _body9628_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9591_))))
                                         gx#current-expander-context
                                         (let ((__obj10706
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10706)
                                             __obj10706))))
                                      (_E95949606_)))))
                            (_E95949606_))))
                    (_E95949606_)))))
        (_E95939633_))))
  (begin
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx9536_ _form9537_)
        (let* ((_e95389548_ _stx9536_)
               (_E95409552_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e95389548_)))
               (_E95399577_
                (lambda ()
                  (if (gx#stx-pair? _e95389548_)
                      (let ((_e95419556_ (gx#syntax-e _e95389548_)))
                        (let ((_hd95429559_ (##car _e95419556_))
                              (_tl95439561_ (##cdr _e95419556_)))
                          (if (gx#stx-pair? _tl95439561_)
                              (let ((_e95449564_ (gx#syntax-e _tl95439561_)))
                                (let ((_hd95459567_ (##car _e95449564_))
                                      (_tl95469569_ (##cdr _e95449564_)))
                                  (let* ((_hd9572_ _hd95459567_)
                                         (_body9574_ _tl95469569_))
                                    (if (gx#core-expand-let-bind? _hd9572_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd9572_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form9537_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd9572_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd9572_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9536_
                         _body9574_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9536_))))
                                         gx#current-expander-context
                                         (let ((__obj10707
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10707)
                                             __obj10707)))
                                        (_E95409552_)))))
                              (_E95409552_))))
                      (_E95409552_)))))
          (_E95399577_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx9584_)
          (let ((_form9586_ '%#letrec-values))
            (gx#core-expand-letrec-values%__% _stx9584_ _form9586_))))
      (define gx#core-expand-letrec-values%
        (lambda _g10717_
          (let ((_g10716_ (length _g10717_)))
            (cond ((fx= _g10716_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g10717_))
                  ((fx= _g10716_ 2)
                   (apply gx#core-expand-letrec-values%__% _g10717_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g10717_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx9533_)
      (gx#core-expand-letrec-values%__% _stx9533_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx9490_)
      (if (gx#stx-list? _stx9490_)
          (gx#stx-andmap
           (lambda (_bind9492_)
             (let* ((_e94939503_ _bind9492_)
                    (_E94959507_ (lambda () '#f))
                    (_E94949529_
                     (lambda ()
                       (if (gx#stx-pair? _e94939503_)
                           (let ((_e94969511_ (gx#syntax-e _e94939503_)))
                             (let ((_hd94979514_ (##car _e94969511_))
                                   (_tl94989516_ (##cdr _e94969511_)))
                               (let ((_hd9519_ _hd94979514_))
                                 (if (gx#stx-pair? _tl94989516_)
                                     (let ((_e94999521_
                                            (gx#syntax-e _tl94989516_)))
                                       (let ((_hd95009524_ (##car _e94999521_))
                                             (_tl95019526_
                                              (##cdr _e94999521_)))
                                         (if (gx#stx-null? _tl95019526_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd9519_)
                                                 (_E94959507_))
                                             (_E94959507_))))
                                     (_E94959507_)))))
                           (_E94959507_)))))
               (_E94949529_)))
           _stx9490_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind9449_)
      (let* ((_e94509460_ _bind9449_)
             (_E94529464_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e94509460_)))
             (_E94519486_
              (lambda ()
                (if (gx#stx-pair? _e94509460_)
                    (let ((_e94539468_ (gx#syntax-e _e94509460_)))
                      (let ((_hd94549471_ (##car _e94539468_))
                            (_tl94559473_ (##cdr _e94539468_)))
                        (if (gx#stx-pair? _tl94559473_)
                            (let ((_e94569476_ (gx#syntax-e _tl94559473_)))
                              (let ((_hd94579479_ (##car _e94569476_))
                                    (_tl94589481_ (##cdr _e94569476_)))
                                (let ((_expr9484_ _hd94579479_))
                                  (if (gx#stx-null? _tl94589481_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9484_)
                                          (_E94529464_))
                                      (_E94529464_)))))
                            (_E94529464_))))
                    (_E94529464_)))))
        (_E94519486_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind9408_)
      (let* ((_e94099419_ _bind9408_)
             (_E94119423_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e94099419_)))
             (_E94109445_
              (lambda ()
                (if (gx#stx-pair? _e94099419_)
                    (let ((_e94129427_ (gx#syntax-e _e94099419_)))
                      (let ((_hd94139430_ (##car _e94129427_))
                            (_tl94149432_ (##cdr _e94129427_)))
                        (let ((_hd9435_ _hd94139430_))
                          (if (gx#stx-pair? _tl94149432_)
                              (let ((_e94159437_ (gx#syntax-e _tl94149432_)))
                                (let ((_hd94169440_ (##car _e94159437_))
                                      (_tl94179442_ (##cdr _e94159437_)))
                                  (if (gx#stx-null? _tl94179442_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd9435_)
                                          (_E94119423_))
                                      (_E94119423_))))
                              (_E94119423_)))))
                    (_E94119423_)))))
        (_E94109445_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind9366_ _expr9367_)
      (let* ((_e93689378_ _bind9366_)
             (_E93709382_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e93689378_)))
             (_E93699404_
              (lambda ()
                (if (gx#stx-pair? _e93689378_)
                    (let ((_e93719386_ (gx#syntax-e _e93689378_)))
                      (let ((_hd93729389_ (##car _e93719386_))
                            (_tl93739391_ (##cdr _e93719386_)))
                        (let ((_hd9394_ _hd93729389_))
                          (if (gx#stx-pair? _tl93739391_)
                              (let ((_e93749396_ (gx#syntax-e _tl93739391_)))
                                (let ((_hd93759399_ (##car _e93749396_))
                                      (_tl93769401_ (##cdr _e93749396_)))
                                  (if (gx#stx-null? _tl93769401_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd9394_)
                                                (cons _expr9367_ '()))
                                          (_E93709382_))
                                      (_E93709382_))))
                              (_E93709382_)))))
                    (_E93709382_)))))
        (_E93699404_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx9320_)
      (let* ((_e93219331_ _stx9320_)
             (_E93239335_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e93219331_)))
             (_E93229362_
              (lambda ()
                (if (gx#stx-pair? _e93219331_)
                    (let ((_e93249339_ (gx#syntax-e _e93219331_)))
                      (let ((_hd93259342_ (##car _e93249339_))
                            (_tl93269344_ (##cdr _e93249339_)))
                        (if (gx#stx-pair? _tl93269344_)
                            (let ((_e93279347_ (gx#syntax-e _tl93269344_)))
                              (let ((_hd93289350_ (##car _e93279347_))
                                    (_tl93299352_ (##cdr _e93279347_)))
                                (let* ((_hd9355_ _hd93289350_)
                                       (_body9357_ _tl93299352_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9355_)
                                      (let ((_expanders9359_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd9355_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd9355_
                                              _expanders9359_)
                                             (gx#core-expand-local-block
                                              _stx9320_
                                              _body9357_)))
                                         gx#current-expander-context
                                         (let ((__obj10708
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10708)
                                             __obj10708))))
                                      (_E93239335_)))))
                            (_E93239335_))))
                    (_E93239335_)))))
        (_E93229362_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx9269_)
      (let* ((_e92709280_ _stx9269_)
             (_E92729284_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92709280_)))
             (_E92719316_
              (lambda ()
                (if (gx#stx-pair? _e92709280_)
                    (let ((_e92739288_ (gx#syntax-e _e92709280_)))
                      (let ((_hd92749291_ (##car _e92739288_))
                            (_tl92759293_ (##cdr _e92739288_)))
                        (if (gx#stx-pair? _tl92759293_)
                            (let ((_e92769296_ (gx#syntax-e _tl92759293_)))
                              (let ((_hd92779299_ (##car _e92769296_))
                                    (_tl92789301_ (##cdr _e92769296_)))
                                (let* ((_hd9304_ _hd92779299_)
                                       (_body9306_ _tl92789301_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9304_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd9304_
                                            (make-list
                                             (gx#stx-length _hd9304_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g93089311_ _g93099313_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g93089311_
                                               _g93099313_
                                               '#t))
                                            _hd9304_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd9304_))
                                           (gx#core-expand-local-block
                                            _stx9269_
                                            _body9306_)))
                                       gx#current-expander-context
                                       (let ((__obj10709
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj10709)
                                           __obj10709)))
                                      (_E92729284_)))))
                            (_E92729284_))))
                    (_E92729284_)))))
        (_E92719316_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx9226_)
      (if (gx#stx-list? _stx9226_)
          (gx#stx-andmap
           (lambda (_bind9228_)
             (let* ((_e92299239_ _bind9228_)
                    (_E92319243_ (lambda () '#f))
                    (_E92309265_
                     (lambda ()
                       (if (gx#stx-pair? _e92299239_)
                           (let ((_e92329247_ (gx#syntax-e _e92299239_)))
                             (let ((_hd92339250_ (##car _e92329247_))
                                   (_tl92349252_ (##cdr _e92329247_)))
                               (let ((_hd9255_ _hd92339250_))
                                 (if (gx#stx-pair? _tl92349252_)
                                     (let ((_e92359257_
                                            (gx#syntax-e _tl92349252_)))
                                       (let ((_hd92369260_ (##car _e92359257_))
                                             (_tl92379262_
                                              (##cdr _e92359257_)))
                                         (if (gx#stx-null? _tl92379262_)
                                             (if '#t
                                                 (gx#identifier? _hd9255_)
                                                 (_E92319243_))
                                             (_E92319243_))))
                                     (_E92319243_)))))
                           (_E92319243_)))))
               (_E92309265_)))
           _stx9226_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind9183_)
      (let* ((_e91849194_ _bind9183_)
             (_E91869198_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e91849194_)))
             (_E91859222_
              (lambda ()
                (if (gx#stx-pair? _e91849194_)
                    (let ((_e91879202_ (gx#syntax-e _e91849194_)))
                      (let ((_hd91889205_ (##car _e91879202_))
                            (_tl91899207_ (##cdr _e91879202_)))
                        (if (gx#stx-pair? _tl91899207_)
                            (let ((_e91909210_ (gx#syntax-e _tl91899207_)))
                              (let ((_hd91919213_ (##car _e91909210_))
                                    (_tl91929215_ (##cdr _e91909210_)))
                                (let ((_expr9218_ _hd91919213_))
                                  (if (gx#stx-null? _tl91929215_)
                                      (if '#t
                                          (let ((_g10718_
                                                 (gx#core-expand-expression+1
                                                  _expr9218_)))
                                            (begin
                                              (let ((_g10719_
                                                     (values-count _g10718_)))
                                                (if (not (fx= _g10719_ 2))
                                                    (error "Context expects 2 values"
                                                           _g10719_)))
                                              (let ((_e9220_ (values-ref
                                                              _g10718_
                                                              1)))
                                                _e9220_)))
                                          (_E91869198_))
                                      (_E91869198_)))))
                            (_E91869198_))))
                    (_E91869198_)))))
        (_E91859222_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind9128_ _e9129_ _rebind?9130_)
        (let* ((_e91319141_ _bind9128_)
               (_E91339145_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e91319141_)))
               (_E91329167_
                (lambda ()
                  (if (gx#stx-pair? _e91319141_)
                      (let ((_e91349149_ (gx#syntax-e _e91319141_)))
                        (let ((_hd91359152_ (##car _e91349149_))
                              (_tl91369154_ (##cdr _e91349149_)))
                          (let ((_id9157_ _hd91359152_))
                            (if (gx#stx-pair? _tl91369154_)
                                (let ((_e91379159_ (gx#syntax-e _tl91369154_)))
                                  (let ((_hd91389162_ (##car _e91379159_))
                                        (_tl91399164_ (##cdr _e91379159_)))
                                    (if (gx#stx-null? _tl91399164_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id9157_
                                             _e9129_
                                             _rebind?9130_)
                                            (_E91339145_))
                                        (_E91339145_))))
                                (_E91339145_)))))
                      (_E91339145_)))))
          (_E91329167_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind9174_ _e9175_)
          (let ((_rebind?9177_ '#f))
            (gx#core-expand-let-bind-syntax!__%
             _bind9174_
             _e9175_
             _rebind?9177_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g10721_
          (let ((_g10720_ (length _g10721_)))
            (cond ((fx= _g10720_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g10721_))
                  ((fx= _g10720_ 3)
                   (apply gx#core-expand-let-bind-syntax!__% _g10721_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g10721_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx9086_)
      (let* ((_e90879097_ _stx9086_)
             (_E90899101_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e90879097_)))
             (_E90889123_
              (lambda ()
                (if (gx#stx-pair? _e90879097_)
                    (let ((_e90909105_ (gx#syntax-e _e90879097_)))
                      (let ((_hd90919108_ (##car _e90909105_))
                            (_tl90929110_ (##cdr _e90909105_)))
                        (if (gx#stx-pair? _tl90929110_)
                            (let ((_e90939113_ (gx#syntax-e _tl90929110_)))
                              (let ((_hd90949116_ (##car _e90939113_))
                                    (_tl90959118_ (##cdr _e90939113_)))
                                (let ((_expr9121_ _hd90949116_))
                                  (if (gx#stx-null? _tl90959118_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9121_)
                                          (_E90899101_))
                                      (_E90899101_)))))
                            (_E90899101_))))
                    (_E90899101_)))))
        (_E90889123_))))
  (define gx#core-expand-quote%
    (lambda (_stx9045_)
      (let* ((_e90469056_ _stx9045_)
             (_E90489060_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e90469056_)))
             (_E90479082_
              (lambda ()
                (if (gx#stx-pair? _e90469056_)
                    (let ((_e90499064_ (gx#syntax-e _e90469056_)))
                      (let ((_hd90509067_ (##car _e90499064_))
                            (_tl90519069_ (##cdr _e90499064_)))
                        (if (gx#stx-pair? _tl90519069_)
                            (let ((_e90529072_ (gx#syntax-e _tl90519069_)))
                              (let ((_hd90539075_ (##car _e90529072_))
                                    (_tl90549077_ (##cdr _e90529072_)))
                                (let ((_e9080_ _hd90539075_))
                                  (if (gx#stx-null? _tl90549077_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e9080_)
                                                       '()))
                                           (gx#stx-source _stx9045_))
                                          (_E90489060_))
                                      (_E90489060_)))))
                            (_E90489060_))))
                    (_E90489060_)))))
        (_E90479082_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx9004_)
      (let* ((_e90059015_ _stx9004_)
             (_E90079019_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e90059015_)))
             (_E90069041_
              (lambda ()
                (if (gx#stx-pair? _e90059015_)
                    (let ((_e90089023_ (gx#syntax-e _e90059015_)))
                      (let ((_hd90099026_ (##car _e90089023_))
                            (_tl90109028_ (##cdr _e90089023_)))
                        (if (gx#stx-pair? _tl90109028_)
                            (let ((_e90119031_ (gx#syntax-e _tl90109028_)))
                              (let ((_hd90129034_ (##car _e90119031_))
                                    (_tl90139036_ (##cdr _e90119031_)))
                                (let ((_e9039_ _hd90129034_))
                                  (if (gx#stx-null? _tl90139036_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e9039_)
                                                       '()))
                                           (gx#stx-source _stx9004_))
                                          (_E90079019_))
                                      (_E90079019_)))))
                            (_E90079019_))))
                    (_E90079019_)))))
        (_E90069041_))))
  (define gx#core-expand-call%
    (lambda (_stx8961_)
      (let* ((_e89628972_ _stx8961_)
             (_E89648976_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e89628972_)))
             (_E89639000_
              (lambda ()
                (if (gx#stx-pair? _e89628972_)
                    (let ((_e89658980_ (gx#syntax-e _e89628972_)))
                      (let ((_hd89668983_ (##car _e89658980_))
                            (_tl89678985_ (##cdr _e89658980_)))
                        (if (gx#stx-pair? _tl89678985_)
                            (let ((_e89688988_ (gx#syntax-e _tl89678985_)))
                              (let ((_hd89698991_ (##car _e89688988_))
                                    (_tl89708993_ (##cdr _e89688988_)))
                                (let* ((_rator8996_ _hd89698991_)
                                       (_args8998_ _tl89708993_))
                                  (if (gx#stx-list? _args8998_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression _rator8996_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args8998_))
                                       (gx#stx-source _stx8961_))
                                      (_E89648976_)))))
                            (_E89648976_))))
                    (_E89648976_)))))
        (_E89639000_))))
  (define gx#core-expand-if%
    (lambda (_stx8894_)
      (let* ((_e88958911_ _stx8894_)
             (_E88978915_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88958911_)))
             (_E88968957_
              (lambda ()
                (if (gx#stx-pair? _e88958911_)
                    (let ((_e88988919_ (gx#syntax-e _e88958911_)))
                      (let ((_hd88998922_ (##car _e88988919_))
                            (_tl89008924_ (##cdr _e88988919_)))
                        (if (gx#stx-pair? _tl89008924_)
                            (let ((_e89018927_ (gx#syntax-e _tl89008924_)))
                              (let ((_hd89028930_ (##car _e89018927_))
                                    (_tl89038932_ (##cdr _e89018927_)))
                                (let ((_test8935_ _hd89028930_))
                                  (if (gx#stx-pair? _tl89038932_)
                                      (let ((_e89048937_
                                             (gx#syntax-e _tl89038932_)))
                                        (let ((_hd89058940_
                                               (##car _e89048937_))
                                              (_tl89068942_
                                               (##cdr _e89048937_)))
                                          (let ((_K8945_ _hd89058940_))
                                            (if (gx#stx-pair? _tl89068942_)
                                                (let ((_e89078947_
                                                       (gx#syntax-e
                                                        _tl89068942_)))
                                                  (let ((_hd89088950_
                                                         (##car _e89078947_))
                                                        (_tl89098952_
                                                         (##cdr _e89078947_)))
                                                    (let ((_E8955_ _hd89088950_))
                                                      (if (gx#stx-null?
                                                           _tl89098952_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test8935_)
                                   (cons (gx#core-expand-expression _K8945_)
                                         (cons (gx#core-expand-expression
                                                _E8955_)
                                               '()))))
                       (gx#stx-source _stx8894_))
                      (_E88978915_))
                  (_E88978915_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E88978915_)))))
                                      (_E88978915_)))))
                            (_E88978915_))))
                    (_E88978915_)))))
        (_E88968957_))))
  (define gx#core-expand-ref%
    (lambda (_stx8853_)
      (let* ((_e88548864_ _stx8853_)
             (_E88568868_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88548864_)))
             (_E88558890_
              (lambda ()
                (if (gx#stx-pair? _e88548864_)
                    (let ((_e88578872_ (gx#syntax-e _e88548864_)))
                      (let ((_hd88588875_ (##car _e88578872_))
                            (_tl88598877_ (##cdr _e88578872_)))
                        (if (gx#stx-pair? _tl88598877_)
                            (let ((_e88608880_ (gx#syntax-e _tl88598877_)))
                              (let ((_hd88618883_ (##car _e88608880_))
                                    (_tl88628885_ (##cdr _e88608880_)))
                                (let ((_id8888_ _hd88618883_))
                                  (if (gx#stx-null? _tl88628885_)
                                      (if (gx#core-runtime-ref? _id8888_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id8888_
                                                        _stx8853_)
                                                       '()))
                                           (gx#stx-source _stx8853_))
                                          (_E88568868_))
                                      (_E88568868_)))))
                            (_E88568868_))))
                    (_E88568868_)))))
        (_E88558890_))))
  (define gx#core-expand-setq%
    (lambda (_stx8799_)
      (let* ((_e88008813_ _stx8799_)
             (_E88028817_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88008813_)))
             (_E88018849_
              (lambda ()
                (if (gx#stx-pair? _e88008813_)
                    (let ((_e88038821_ (gx#syntax-e _e88008813_)))
                      (let ((_hd88048824_ (##car _e88038821_))
                            (_tl88058826_ (##cdr _e88038821_)))
                        (if (gx#stx-pair? _tl88058826_)
                            (let ((_e88068829_ (gx#syntax-e _tl88058826_)))
                              (let ((_hd88078832_ (##car _e88068829_))
                                    (_tl88088834_ (##cdr _e88068829_)))
                                (let ((_id8837_ _hd88078832_))
                                  (if (gx#stx-pair? _tl88088834_)
                                      (let ((_e88098839_
                                             (gx#syntax-e _tl88088834_)))
                                        (let ((_hd88108842_
                                               (##car _e88098839_))
                                              (_tl88118844_
                                               (##cdr _e88098839_)))
                                          (let ((_expr8847_ _hd88108842_))
                                            (if (gx#stx-null? _tl88118844_)
                                                (if (gx#core-runtime-ref?
                                                     _id8837_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id8837_
                          _stx8799_)
                         (cons (gx#core-expand-expression _expr8847_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source _stx8799_))
                                                    (_E88028817_))
                                                (_E88028817_)))))
                                      (_E88028817_)))))
                            (_E88028817_))))
                    (_E88028817_)))))
        (_E88018849_))))
  (define gx#macro-expand-extern
    (lambda (_stx8647_)
      (letrec ((_generate8649_
                (lambda (_body8679_)
                  (let _lp8681_ ((_rest8683_ _body8679_)
                                 (_ns8684_ (gx#core-context-namespace__0))
                                 (_r8685_ '()))
                    (let* ((_e86868701_ _rest8683_)
                           (_E86998705_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e86868701_)))
                           (_E86958709_
                            (lambda ()
                              (if (gx#stx-null? _e86868701_)
                                  (if '#t (reverse _r8685_) (_E86998705_))
                                  (_E86998705_))))
                           (_E86888766_
                            (lambda ()
                              (if (gx#stx-pair? _e86868701_)
                                  (let ((_e86968713_
                                         (gx#syntax-e _e86868701_)))
                                    (let ((_hd86978716_ (##car _e86968713_))
                                          (_tl86988718_ (##cdr _e86968713_)))
                                      (let* ((_hd8721_ _hd86978716_)
                                             (_rest8723_ _tl86988718_))
                                        (if '#t
                                            (if (gx#identifier? _hd8721_)
                                                (_lp8681_
                                                 _rest8723_
                                                 _ns8684_
                                                 (cons (cons _hd8721_
                                                             (cons (if _ns8684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd8721_
                                _ns8684_
                                '"#"
                                _hd8721_)
                               _hd8721_)
                           '()))
               _r8685_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e87248734_ _hd8721_)
                                                       (_E87268738_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e87248734_)))
                                                       (_E87258762_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e87248734_)
                                                              (let ((_e87278742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e87248734_)))
                        (let ((_hd87288745_ (##car _e87278742_))
                              (_tl87298747_ (##cdr _e87278742_)))
                          (let ((_id8750_ _hd87288745_))
                            (if (gx#stx-pair? _tl87298747_)
                                (let ((_e87308752_ (gx#syntax-e _tl87298747_)))
                                  (let ((_hd87318755_ (##car _e87308752_))
                                        (_tl87328757_ (##cdr _e87308752_)))
                                    (let ((_eid8760_ _hd87318755_))
                                      (if (gx#stx-null? _tl87328757_)
                                          (if (if (gx#identifier? _id8750_)
                                                  (gx#identifier? _eid8760_)
                                                  '#f)
                                              (_lp8681_
                                               _rest8723_
                                               _ns8684_
                                               (cons (cons _id8750_
                                                           (cons _eid8760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r8685_))
                                              (_E87268738_))
                                          (_E87268738_)))))
                                (_E87268738_)))))
                      (_E87268738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E87258762_)))
                                            (_E86958709_)))))
                                  (_E86958709_))))
                           (_E86878795_
                            (lambda ()
                              (if (gx#stx-pair? _e86868701_)
                                  (let ((_e86898770_
                                         (gx#syntax-e _e86868701_)))
                                    (let ((_hd86908773_ (##car _e86898770_))
                                          (_tl86918775_ (##cdr _e86898770_)))
                                      (if (eq? (gx#stx-e _hd86908773_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl86918775_)
                                              (let ((_e86928778_
                                                     (gx#syntax-e
                                                      _tl86918775_)))
                                                (let ((_hd86938781_
                                                       (##car _e86928778_))
                                                      (_tl86948783_
                                                       (##cdr _e86928778_)))
                                                  (let* ((_ns8786_
                                                          _hd86938781_)
                                                         (_rest8788_
                                                          _tl86948783_))
                                                    (if '#t
                                                        (let ((_ns8793_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns8786_)
                           (symbol->string (gx#stx-e _ns8786_))
                           (if (let ((_$e8790_ (gx#stx-string? _ns8786_)))
                                 (if _$e8790_
                                     _$e8790_
                                     (gx#stx-false? _ns8786_)))
                               (gx#stx-e _ns8786_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx8647_
                                _ns8786_)))))
                  (_lp8681_ _rest8788_ _ns8793_ _r8685_))
                (_E86888766_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E86888766_))
                                          (_E86888766_))))
                                  (_E86888766_)))))
                      (_E86878795_))))))
        (let* ((_e86508657_ _stx8647_)
               (_E86528661_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e86508657_)))
               (_E86518675_
                (lambda ()
                  (if (gx#stx-pair? _e86508657_)
                      (let ((_e86538665_ (gx#syntax-e _e86508657_)))
                        (let ((_hd86548668_ (##car _e86538665_))
                              (_tl86558670_ (##cdr _e86538665_)))
                          (let ((_body8673_ _tl86558670_))
                            (if (gx#stx-list? _body8673_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate8649_ _body8673_))
                                (_E86528661_)))))
                      (_E86528661_)))))
          (_E86518675_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx8593_)
      (let* ((_e85948607_ _stx8593_)
             (_E85968611_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e85948607_)))
             (_E85958643_
              (lambda ()
                (if (gx#stx-pair? _e85948607_)
                    (let ((_e85978615_ (gx#syntax-e _e85948607_)))
                      (let ((_hd85988618_ (##car _e85978615_))
                            (_tl85998620_ (##cdr _e85978615_)))
                        (if (gx#stx-pair? _tl85998620_)
                            (let ((_e86008623_ (gx#syntax-e _tl85998620_)))
                              (let ((_hd86018626_ (##car _e86008623_))
                                    (_tl86028628_ (##cdr _e86008623_)))
                                (let ((_hd8631_ _hd86018626_))
                                  (if (gx#stx-pair? _tl86028628_)
                                      (let ((_e86038633_
                                             (gx#syntax-e _tl86028628_)))
                                        (let ((_hd86048636_
                                               (##car _e86038633_))
                                              (_tl86058638_
                                               (##cdr _e86038633_)))
                                          (let ((_expr8641_ _hd86048636_))
                                            (if (gx#stx-null? _tl86058638_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd8631_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd8631_)
                        (cons _expr8641_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E85968611_))
                                                (_E85968611_)))))
                                      (_E85968611_)))))
                            (_E85968611_))))
                    (_E85968611_)))))
        (_E85958643_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx8539_)
      (let* ((_e85408553_ _stx8539_)
             (_E85428557_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e85408553_)))
             (_E85418589_
              (lambda ()
                (if (gx#stx-pair? _e85408553_)
                    (let ((_e85438561_ (gx#syntax-e _e85408553_)))
                      (let ((_hd85448564_ (##car _e85438561_))
                            (_tl85458566_ (##cdr _e85438561_)))
                        (if (gx#stx-pair? _tl85458566_)
                            (let ((_e85468569_ (gx#syntax-e _tl85458566_)))
                              (let ((_hd85478572_ (##car _e85468569_))
                                    (_tl85488574_ (##cdr _e85468569_)))
                                (let ((_hd8577_ _hd85478572_))
                                  (if (gx#stx-pair? _tl85488574_)
                                      (let ((_e85498579_
                                             (gx#syntax-e _tl85488574_)))
                                        (let ((_hd85508582_
                                               (##car _e85498579_))
                                              (_tl85518584_
                                               (##cdr _e85498579_)))
                                          (let ((_expr8587_ _hd85508582_))
                                            (if (gx#stx-null? _tl85518584_)
                                                (if (gx#identifier? _hd8577_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd8577_
                                                                (cons _expr8587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E85428557_))
                                                (_E85428557_)))))
                                      (_E85428557_)))))
                            (_E85428557_))))
                    (_E85428557_)))))
        (_E85418589_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx8485_)
      (let* ((_e84868499_ _stx8485_)
             (_E84888503_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e84868499_)))
             (_E84878535_
              (lambda ()
                (if (gx#stx-pair? _e84868499_)
                    (let ((_e84898507_ (gx#syntax-e _e84868499_)))
                      (let ((_hd84908510_ (##car _e84898507_))
                            (_tl84918512_ (##cdr _e84898507_)))
                        (if (gx#stx-pair? _tl84918512_)
                            (let ((_e84928515_ (gx#syntax-e _tl84918512_)))
                              (let ((_hd84938518_ (##car _e84928515_))
                                    (_tl84948520_ (##cdr _e84928515_)))
                                (let ((_id8523_ _hd84938518_))
                                  (if (gx#stx-pair? _tl84948520_)
                                      (let ((_e84958525_
                                             (gx#syntax-e _tl84948520_)))
                                        (let ((_hd84968528_
                                               (##car _e84958525_))
                                              (_tl84978530_
                                               (##cdr _e84958525_)))
                                          (let ((_alias-id8533_ _hd84968528_))
                                            (if (gx#stx-null? _tl84978530_)
                                                (if (if (gx#identifier?
                                                         _id8523_)
                                                        (gx#identifier?
                                                         _alias-id8533_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id8523_
                                                                (cons _alias-id8533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E84888503_))
                                                (_E84888503_)))))
                                      (_E84888503_)))))
                            (_E84888503_))))
                    (_E84888503_)))))
        (_E84878535_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx8442_)
      (let* ((_e84438453_ _stx8442_)
             (_E84458457_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e84438453_)))
             (_E84448481_
              (lambda ()
                (if (gx#stx-pair? _e84438453_)
                    (let ((_e84468461_ (gx#syntax-e _e84438453_)))
                      (let ((_hd84478464_ (##car _e84468461_))
                            (_tl84488466_ (##cdr _e84468461_)))
                        (if (gx#stx-pair? _tl84488466_)
                            (let ((_e84498469_ (gx#syntax-e _tl84488466_)))
                              (let ((_hd84508472_ (##car _e84498469_))
                                    (_tl84518474_ (##cdr _e84498469_)))
                                (let* ((_hd8477_ _hd84508472_)
                                       (_body8479_ _tl84518474_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd8477_)
                                          (if (gx#stx-list? _body8479_)
                                              (not (gx#stx-null? _body8479_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd8477_)
                                       _body8479_)
                                      (_E84458457_)))))
                            (_E84458457_))))
                    (_E84458457_)))))
        (_E84448481_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx8378_)
      (letrec ((_generate8380_
                (lambda (_clause8410_)
                  (let* ((_e84118418_ _clause8410_)
                         (_E84138422_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx8378_
                             _clause8410_)))
                         (_E84128438_
                          (lambda ()
                            (if (gx#stx-pair? _e84118418_)
                                (let ((_e84148426_ (gx#syntax-e _e84118418_)))
                                  (let ((_hd84158429_ (##car _e84148426_))
                                        (_tl84168431_ (##cdr _e84148426_)))
                                    (let* ((_hd8434_ _hd84158429_)
                                           (_body8436_ _tl84168431_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd8434_)
                                              (if (gx#stx-list? _body8436_)
                                                  (not (gx#stx-null?
                                                        _body8436_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd8434_)
                                                 _body8436_)
                                           (gx#stx-source _clause8410_))
                                          (_E84138422_)))))
                                (_E84138422_)))))
                    (_E84128438_)))))
        (let* ((_e83818388_ _stx8378_)
               (_E83838392_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e83818388_)))
               (_E83828406_
                (lambda ()
                  (if (gx#stx-pair? _e83818388_)
                      (let ((_e83848396_ (gx#syntax-e _e83818388_)))
                        (let ((_hd83858399_ (##car _e83848396_))
                              (_tl83868401_ (##cdr _e83848396_)))
                          (let ((_clauses8404_ _tl83868401_))
                            (if (gx#stx-list? _clauses8404_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate8380_ _clauses8404_))
                                (_E83838392_)))))
                      (_E83838392_)))))
          (_E83828406_)))))
  (begin
    (define gx#macro-expand-let-values__%
      (lambda (_stx8279_ _form8280_)
        (letrec ((_generate8282_
                  (lambda (_bind8325_)
                    (let* ((_e83268336_ _bind8325_)
                           (_E83288340_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx8279_
                               _bind8325_)))
                           (_E83278364_
                            (lambda ()
                              (if (gx#stx-pair? _e83268336_)
                                  (let ((_e83298344_
                                         (gx#syntax-e _e83268336_)))
                                    (let ((_hd83308347_ (##car _e83298344_))
                                          (_tl83318349_ (##cdr _e83298344_)))
                                      (let ((_ids8352_ _hd83308347_))
                                        (if (gx#stx-pair? _tl83318349_)
                                            (let ((_e83328354_
                                                   (gx#syntax-e _tl83318349_)))
                                              (let ((_hd83338357_
                                                     (##car _e83328354_))
                                                    (_tl83348359_
                                                     (##cdr _e83328354_)))
                                                (let ((_expr8362_
                                                       _hd83338357_))
                                                  (if (gx#stx-null?
                                                       _tl83348359_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids8352_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids8352_)
                        (cons _expr8362_ '()))
                  (_E83288340_))
              (_E83288340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E83288340_)))))
                                  (_E83288340_)))))
                      (_E83278364_)))))
          (let* ((_e82838293_ _stx8279_)
                 (_E82858297_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e82838293_)))
                 (_E82848321_
                  (lambda ()
                    (if (gx#stx-pair? _e82838293_)
                        (let ((_e82868301_ (gx#syntax-e _e82838293_)))
                          (let ((_hd82878304_ (##car _e82868301_))
                                (_tl82888306_ (##cdr _e82868301_)))
                            (if (gx#stx-pair? _tl82888306_)
                                (let ((_e82898309_ (gx#syntax-e _tl82888306_)))
                                  (let ((_hd82908312_ (##car _e82898309_))
                                        (_tl82918314_ (##cdr _e82898309_)))
                                    (let* ((_hd8317_ _hd82908312_)
                                           (_body8319_ _tl82918314_))
                                      (if (if (gx#stx-list? _hd8317_)
                                              (if (gx#stx-list? _body8319_)
                                                  (not (gx#stx-null?
                                                        _body8319_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form8280_
                                           (gx#stx-map1
                                            _generate8282_
                                            _hd8317_)
                                           _body8319_)
                                          (_E82858297_)))))
                                (_E82858297_))))
                        (_E82858297_)))))
            (_E82848321_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx8371_)
          (let ((_form8373_ '%#let-values))
            (gx#macro-expand-let-values__% _stx8371_ _form8373_))))
      (define gx#macro-expand-let-values
        (lambda _g10723_
          (let ((_g10722_ (length _g10723_)))
            (cond ((fx= _g10722_ 1)
                   (apply gx#macro-expand-let-values__0 _g10723_))
                  ((fx= _g10722_ 2)
                   (apply gx#macro-expand-let-values__% _g10723_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g10723_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx8276_)
      (gx#macro-expand-let-values__% _stx8276_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx8274_)
      (gx#macro-expand-let-values__% _stx8274_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx8165_)
      (let* ((_e81668192_ _stx8165_)
             (_E81788196_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e81668192_)))
             (_E81688238_
              (lambda ()
                (if (gx#stx-pair? _e81668192_)
                    (let ((_e81798200_ (gx#syntax-e _e81668192_)))
                      (let ((_hd81808203_ (##car _e81798200_))
                            (_tl81818205_ (##cdr _e81798200_)))
                        (if (gx#stx-pair? _tl81818205_)
                            (let ((_e81828208_ (gx#syntax-e _tl81818205_)))
                              (let ((_hd81838211_ (##car _e81828208_))
                                    (_tl81848213_ (##cdr _e81828208_)))
                                (let ((_test8216_ _hd81838211_))
                                  (if (gx#stx-pair? _tl81848213_)
                                      (let ((_e81858218_
                                             (gx#syntax-e _tl81848213_)))
                                        (let ((_hd81868221_
                                               (##car _e81858218_))
                                              (_tl81878223_
                                               (##cdr _e81858218_)))
                                          (let ((_K8226_ _hd81868221_))
                                            (if (gx#stx-pair? _tl81878223_)
                                                (let ((_e81888228_
                                                       (gx#syntax-e
                                                        _tl81878223_)))
                                                  (let ((_hd81898231_
                                                         (##car _e81888228_))
                                                        (_tl81908233_
                                                         (##cdr _e81888228_)))
                                                    (let ((_E8236_ _hd81898231_))
                                                      (if (gx#stx-null?
                                                           _tl81908233_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test8216_
                                                               _K8226_
                                                               _E8236_)
                                                              (_E81788196_))
                                                          (_E81788196_)))))
                                                (_E81788196_)))))
                                      (_E81788196_)))))
                            (_E81788196_))))
                    (_E81788196_))))
             (_E81678270_
              (lambda ()
                (if (gx#stx-pair? _e81668192_)
                    (let ((_e81698242_ (gx#syntax-e _e81668192_)))
                      (let ((_hd81708245_ (##car _e81698242_))
                            (_tl81718247_ (##cdr _e81698242_)))
                        (if (gx#stx-pair? _tl81718247_)
                            (let ((_e81728250_ (gx#syntax-e _tl81718247_)))
                              (let ((_hd81738253_ (##car _e81728250_))
                                    (_tl81748255_ (##cdr _e81728250_)))
                                (let ((_test8258_ _hd81738253_))
                                  (if (gx#stx-pair? _tl81748255_)
                                      (let ((_e81758260_
                                             (gx#syntax-e _tl81748255_)))
                                        (let ((_hd81768263_
                                               (##car _e81758260_))
                                              (_tl81778265_
                                               (##cdr _e81758260_)))
                                          (let ((_K8268_ _hd81768263_))
                                            (if (gx#stx-null? _tl81778265_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test8258_
                                                     _K8268_
                                                     '#!void)
                                                    (_E81688238_))
                                                (_E81688238_)))))
                                      (_E81688238_)))))
                            (_E81688238_))))
                    (_E81688238_)))))
        (_E81678270_))))
  (define gx#free-identifier=?
    (lambda (_xid8153_ _yid8154_)
      (let ((_xe8156_ (gx#resolve-identifier__0 _xid8153_))
            (_ye8157_ (gx#resolve-identifier__0 _yid8154_)))
        (if (if _xe8156_ _ye8157_ '#f)
            (let ((_$e8159_ (eq? _xe8156_ _ye8157_)))
              (if _$e8159_
                  _$e8159_
                  (if (##structure-instance-of? _xe8156_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye8157_ 'gx#binding::t)
                          (eq? (##structure-ref _xe8156_ '1 gx#binding::t '#f)
                               (##structure-ref _ye8157_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e8162_ _xe8156_)) (if _$e8162_ _$e8162_ _ye8157_))
                '#f
                (gx#stx-eq? _xid8153_ _yid8154_))))))
  (define gx#bound-identifier=?
    (lambda (_xid8137_ _yid8138_)
      (letrec ((_context8140_
                (lambda (_e8151_)
                  (if (##structure-direct-instance-of?
                       _e8151_
                       'gx#syntax-quote::t)
                      (##direct-structure-ref
                       _e8151_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks8141_
                (lambda (_e8149_)
                  (if (symbol? _e8149_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e8149_
                           'gx#identifier-wrap::t)
                          (##direct-structure-ref
                           _e8149_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##direct-structure-ref
                           _e8149_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap8142_
                (lambda (_e8147_)
                  (if (symbol? _e8147_)
                      _e8147_
                      (gx#syntax-local-unwrap _e8147_)))))
        (let ((_x8144_ (_unwrap8142_ _xid8137_))
              (_y8145_ (_unwrap8142_ _yid8138_)))
          (if (gx#stx-eq? _x8144_ _y8145_)
              (if (eq? (_context8140_ _x8144_) (_context8140_ _y8145_))
                  (equal? (_marks8141_ _x8144_) (_marks8141_ _y8145_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx8135_)
      (if (gx#identifier? _stx8135_) (gx#core-identifier=? _stx8135_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx8133_)
      (if (gx#identifier? _stx8133_)
          (gx#core-identifier=? _stx8133_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x8131_)
      (if (gx#identifier? _x8131_)
          (if (not (gx#underscore? _x8131_)) _x8131_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx8077_ _where8078_)
        (let _lp8080_ ((_rest8082_ (gx#syntax->list _stx8077_)))
          (let* ((_rest80838091_ _rest8082_)
                 (_E80868095_
                  (lambda () (error '"No clause matching" _rest80838091_)))
                 (_else80858099_ (lambda () '#t))
                 (_K80878109_
                  (lambda (_rest8102_ _hd8103_)
                    (if (not (gx#identifier? _hd8103_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where8078_
                         _hd8103_)
                        (if (find (lambda (_g81048106_)
                                    (gx#bound-identifier=?
                                     _g81048106_
                                     _hd8103_))
                                  _rest8102_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where8078_
                             _hd8103_)
                            (_lp8080_ _rest8102_))))))
            (if (##pair? _rest80838091_)
                (let ((_hd80888112_ (##car _rest80838091_))
                      (_tl80898114_ (##cdr _rest80838091_)))
                  (let* ((_hd8117_ _hd80888112_) (_rest8119_ _tl80898114_))
                    (_K80878109_ _rest8119_ _hd8117_)))
                (_else80858099_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx8124_)
          (let ((_where8126_ _stx8124_))
            (gx#check-duplicate-identifiers__% _stx8124_ _where8126_))))
      (define gx#check-duplicate-identifiers
        (lambda _g10725_
          (let ((_g10724_ (length _g10725_)))
            (cond ((fx= _g10724_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g10725_))
                  ((fx= _g10724_ 2)
                   (apply gx#check-duplicate-identifiers__% _g10725_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g10725_))))))))
  (define gx#core-bind-values?
    (lambda (_stx8069_)
      (gx#stx-andmap
       (lambda (_x8071_)
         (let ((_$e8073_ (gx#identifier? _x8071_)))
           (if _$e8073_ _$e8073_ (gx#stx-false? _x8071_))))
       _stx8069_)))
  (begin
    (define gx#core-bind-values!__%
      (lambda (_stx8033_ _rebind?8034_ _phi8035_ _ctx8036_)
        (gx#stx-for-each1
         (lambda (_id8038_)
           (if (gx#identifier? _id8038_)
               (gx#core-bind-runtime!__%
                _id8038_
                _rebind?8034_
                _phi8035_
                _ctx8036_)
               '#!void))
         _stx8033_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx8043_)
          (let* ((_rebind?8045_ '#f)
                 (_phi8047_ (gx#current-expander-phi))
                 (_ctx8049_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8043_
             _rebind?8045_
             _phi8047_
             _ctx8049_))))
      (define gx#core-bind-values!__1
        (lambda (_stx8051_ _rebind?8052_)
          (let* ((_phi8054_ (gx#current-expander-phi))
                 (_ctx8056_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8051_
             _rebind?8052_
             _phi8054_
             _ctx8056_))))
      (define gx#core-bind-values!__2
        (lambda (_stx8058_ _rebind?8059_ _phi8060_)
          (let ((_ctx8062_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8058_
             _rebind?8059_
             _phi8060_
             _ctx8062_))))
      (define gx#core-bind-values!
        (lambda _g10727_
          (let ((_g10726_ (length _g10727_)))
            (cond ((fx= _g10726_ 1) (apply gx#core-bind-values!__0 _g10727_))
                  ((fx= _g10726_ 2) (apply gx#core-bind-values!__1 _g10727_))
                  ((fx= _g10726_ 3) (apply gx#core-bind-values!__2 _g10727_))
                  ((fx= _g10726_ 4) (apply gx#core-bind-values!__% _g10727_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g10727_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx8028_)
      (gx#stx-map1
       (lambda (_x8030_)
         (if (gx#identifier? _x8030_) (gx#core-quote-syntax__0 _x8030_) '#f))
       _stx8028_)))
  (define gx#core-runtime-ref?
    (lambda (_stx8021_)
      (if (gx#identifier? _stx8021_)
          (let* ((_bind8023_ (gx#resolve-identifier__0 _stx8021_))
                 (_$e8025_ (not _bind8023_)))
            (if _$e8025_
                _$e8025_
                (##structure-instance-of? _bind8023_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id8013_ _form8014_)
      (let ((_bind8016_ (gx#resolve-identifier__0 _id8013_)))
        (if (##structure-instance-of? _bind8016_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id8013_)
            (if (not _bind8016_)
                (if (let ((_$e8018_
                           (gx#core-context-rebind?__%
                            (gx#core-context-top__0))))
                      (if _$e8018_
                          _$e8018_
                          (gx#core-extern-symbol? (gx#stx-e _id8013_))))
                    (gx#core-quote-syntax__0 _id8013_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form8014_
                     _id8013_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form8014_
                 _id8013_))))))
  (begin
    (define gx#core-bind-runtime!__%
      (lambda (_id7972_ _rebind?7973_ _phi7974_ _ctx7975_)
        (let* ((_key7977_ (gx#core-identifier-key _id7972_))
               (_eid7979_
                (gx#make-binding-id__% _key7977_ '#f _phi7974_ _ctx7975_))
               (_bind7981_
                (if (##structure-instance-of? _ctx7975_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid7979_
                     _key7977_
                     _phi7974_
                     _ctx7975_)
                    (if (##structure-instance-of? _ctx7975_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid7979_
                         _key7977_
                         _phi7974_)
                        (if (##structure-instance-of?
                             _ctx7975_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid7979_
                             _key7977_
                             _phi7974_)
                            (##structure
                             gx#runtime-binding::t
                             _eid7979_
                             _key7977_
                             _phi7974_))))))
          (gx#bind-identifier!__%
           _id7972_
           _bind7981_
           _rebind?7973_
           _phi7974_
           _ctx7975_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id7987_)
          (let* ((_rebind?7989_ '#f)
                 (_phi7991_ (gx#current-expander-phi))
                 (_ctx7993_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id7987_
             _rebind?7989_
             _phi7991_
             _ctx7993_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id7995_ _rebind?7996_)
          (let* ((_phi7998_ (gx#current-expander-phi))
                 (_ctx8000_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id7995_
             _rebind?7996_
             _phi7998_
             _ctx8000_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id8002_ _rebind?8003_ _phi8004_)
          (let ((_ctx8006_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8002_
             _rebind?8003_
             _phi8004_
             _ctx8006_))))
      (define gx#core-bind-runtime!
        (lambda _g10729_
          (let ((_g10728_ (length _g10729_)))
            (cond ((fx= _g10728_ 1) (apply gx#core-bind-runtime!__0 _g10729_))
                  ((fx= _g10728_ 2) (apply gx#core-bind-runtime!__1 _g10729_))
                  ((fx= _g10728_ 3) (apply gx#core-bind-runtime!__2 _g10729_))
                  ((fx= _g10728_ 4) (apply gx#core-bind-runtime!__% _g10729_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g10729_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id7927_ _eid7928_ _rebind?7929_ _phi7930_ _ctx7931_)
        (let* ((_key7933_ (gx#core-identifier-key _id7927_))
               (_bind7935_
                (if (##structure-instance-of? _ctx7931_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid7928_
                     _key7933_
                     _phi7930_
                     _ctx7931_)
                    (if (##structure-instance-of? _ctx7931_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid7928_
                         _key7933_
                         _phi7930_)
                        (##structure
                         gx#runtime-binding::t
                         _eid7928_
                         _key7933_
                         _phi7930_)))))
          (gx#bind-identifier!__%
           _id7927_
           _bind7935_
           _rebind?7929_
           _phi7930_
           _ctx7931_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id7941_ _eid7942_)
          (let* ((_rebind?7944_ '#f)
                 (_phi7946_ (gx#current-expander-phi))
                 (_ctx7948_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id7941_
             _eid7942_
             _rebind?7944_
             _phi7946_
             _ctx7948_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id7950_ _eid7951_ _rebind?7952_)
          (let* ((_phi7954_ (gx#current-expander-phi))
                 (_ctx7956_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id7950_
             _eid7951_
             _rebind?7952_
             _phi7954_
             _ctx7956_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id7958_ _eid7959_ _rebind?7960_ _phi7961_)
          (let ((_ctx7963_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id7958_
             _eid7959_
             _rebind?7960_
             _phi7961_
             _ctx7963_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g10731_
          (let ((_g10730_ (length _g10731_)))
            (cond ((fx= _g10730_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g10731_))
                  ((fx= _g10730_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g10731_))
                  ((fx= _g10730_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g10731_))
                  ((fx= _g10730_ 5)
                   (apply gx#core-bind-runtime-reference!__% _g10731_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g10731_))))))))
  (begin
    (define gx#core-bind-extern!__%
      (lambda (_id7887_ _eid7888_ _rebind?7889_ _phi7890_ _ctx7891_)
        (gx#bind-identifier!__%
         _id7887_
         (##structure
          gx#extern-binding::t
          _eid7888_
          (gx#core-identifier-key _id7887_)
          _phi7890_)
         _rebind?7889_
         _phi7890_
         _ctx7891_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id7896_ _eid7897_)
          (let* ((_rebind?7899_ '#f)
                 (_phi7901_ (gx#current-expander-phi))
                 (_ctx7903_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id7896_
             _eid7897_
             _rebind?7899_
             _phi7901_
             _ctx7903_))))
      (define gx#core-bind-extern!__1
        (lambda (_id7905_ _eid7906_ _rebind?7907_)
          (let* ((_phi7909_ (gx#current-expander-phi))
                 (_ctx7911_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id7905_
             _eid7906_
             _rebind?7907_
             _phi7909_
             _ctx7911_))))
      (define gx#core-bind-extern!__2
        (lambda (_id7913_ _eid7914_ _rebind?7915_ _phi7916_)
          (let ((_ctx7918_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id7913_
             _eid7914_
             _rebind?7915_
             _phi7916_
             _ctx7918_))))
      (define gx#core-bind-extern!
        (lambda _g10733_
          (let ((_g10732_ (length _g10733_)))
            (cond ((fx= _g10732_ 2) (apply gx#core-bind-extern!__0 _g10733_))
                  ((fx= _g10732_ 3) (apply gx#core-bind-extern!__1 _g10733_))
                  ((fx= _g10732_ 4) (apply gx#core-bind-extern!__2 _g10733_))
                  ((fx= _g10732_ 5) (apply gx#core-bind-extern!__% _g10733_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g10733_))))))))
  (begin
    (define gx#core-bind-syntax!__%
      (lambda (_id7841_ _e7842_ _rebind?7843_ _phi7844_ _ctx7845_)
        (gx#bind-identifier!__%
         _id7841_
         (let ((_key7850_ (gx#core-identifier-key _id7841_))
               (_e7851_ (if (let ((_$e7847_
                                   (##structure-instance-of?
                                    _e7842_
                                    'gx#expander::t)))
                              (if _$e7847_
                                  _$e7847_
                                  (##structure-instance-of?
                                   _e7842_
                                   'gx#expander-context::t)))
                            _e7842_
                            (##structure
                             gx#user-expander::t
                             _e7842_
                             _ctx7845_
                             _phi7844_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key7850_ '#t _phi7844_ _ctx7845_)
            _key7850_
            _phi7844_
            _e7851_))
         _rebind?7843_
         _phi7844_
         _ctx7845_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id7856_ _e7857_)
          (let* ((_rebind?7859_ '#f)
                 (_phi7861_ (gx#current-expander-phi))
                 (_ctx7863_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id7856_
             _e7857_
             _rebind?7859_
             _phi7861_
             _ctx7863_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id7865_ _e7866_ _rebind?7867_)
          (let* ((_phi7869_ (gx#current-expander-phi))
                 (_ctx7871_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id7865_
             _e7866_
             _rebind?7867_
             _phi7869_
             _ctx7871_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id7873_ _e7874_ _rebind?7875_ _phi7876_)
          (let ((_ctx7878_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id7873_
             _e7874_
             _rebind?7875_
             _phi7876_
             _ctx7878_))))
      (define gx#core-bind-syntax!
        (lambda _g10735_
          (let ((_g10734_ (length _g10735_)))
            (cond ((fx= _g10734_ 2) (apply gx#core-bind-syntax!__0 _g10735_))
                  ((fx= _g10734_ 3) (apply gx#core-bind-syntax!__1 _g10735_))
                  ((fx= _g10734_ 4) (apply gx#core-bind-syntax!__2 _g10735_))
                  ((fx= _g10734_ 5) (apply gx#core-bind-syntax!__% _g10735_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g10735_))))))))
  (begin
    (define gx#core-bind-root-syntax!__%
      (lambda (_id7824_ _e7825_ _rebind?7826_)
        (gx#core-bind-syntax!__%
         _id7824_
         _e7825_
         _rebind?7826_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id7831_ _e7832_)
          (let ((_rebind?7834_ '#f))
            (gx#core-bind-root-syntax!__% _id7831_ _e7832_ _rebind?7834_))))
      (define gx#core-bind-root-syntax!
        (lambda _g10737_
          (let ((_g10736_ (length _g10737_)))
            (cond ((fx= _g10736_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g10737_))
                  ((fx= _g10736_ 3)
                   (apply gx#core-bind-root-syntax!__% _g10737_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g10737_))))))))
  (begin
    (define gx#core-bind-alias!__%
      (lambda (_id7782_ _alias-id7783_ _rebind?7784_ _phi7785_ _ctx7786_)
        (gx#bind-identifier!__%
         _id7782_
         (let ((_key7788_ (gx#core-identifier-key _id7782_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key7788_ '#t _phi7785_ _ctx7786_)
            _key7788_
            _phi7785_
            _alias-id7783_))
         _rebind?7784_
         _phi7785_
         _ctx7786_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id7793_ _alias-id7794_)
          (let* ((_rebind?7796_ '#f)
                 (_phi7798_ (gx#current-expander-phi))
                 (_ctx7800_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id7793_
             _alias-id7794_
             _rebind?7796_
             _phi7798_
             _ctx7800_))))
      (define gx#core-bind-alias!__1
        (lambda (_id7802_ _alias-id7803_ _rebind?7804_)
          (let* ((_phi7806_ (gx#current-expander-phi))
                 (_ctx7808_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id7802_
             _alias-id7803_
             _rebind?7804_
             _phi7806_
             _ctx7808_))))
      (define gx#core-bind-alias!__2
        (lambda (_id7810_ _alias-id7811_ _rebind?7812_ _phi7813_)
          (let ((_ctx7815_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id7810_
             _alias-id7811_
             _rebind?7812_
             _phi7813_
             _ctx7815_))))
      (define gx#core-bind-alias!
        (lambda _g10739_
          (let ((_g10738_ (length _g10739_)))
            (cond ((fx= _g10738_ 2) (apply gx#core-bind-alias!__0 _g10739_))
                  ((fx= _g10738_ 3) (apply gx#core-bind-alias!__1 _g10739_))
                  ((fx= _g10738_ 4) (apply gx#core-bind-alias!__2 _g10739_))
                  ((fx= _g10738_ 5) (apply gx#core-bind-alias!__% _g10739_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g10739_))))))))
  (begin
    (define gx#make-binding-id__%
      (lambda (_key7739_ _syntax?7740_ _phi7741_ _ctx7742_)
        (if (uninterned-symbol? _key7739_)
            (gensym 'L)
            (if (pair? _key7739_)
                (gensym (car _key7739_))
                (if (##structure-instance-of? _ctx7742_ 'gx#top-context::t)
                    (let ((_ns7744_ (gx#core-context-namespace__% _ctx7742_)))
                      (if (if (fxzero? _phi7741_) (not _syntax?7740_) '#f)
                          (if _ns7744_
                              (make-symbol _ns7744_ '"#" _key7739_)
                              _key7739_)
                          (if _syntax?7740_
                              (make-symbol
                               (let ((_$e7746_ _ns7744_))
                                 (if _$e7746_ _$e7746_ '""))
                               '"[:"
                               (number->string _phi7741_)
                               '":]#"
                               _key7739_)
                              (make-symbol
                               (let ((_$e7749_ _ns7744_))
                                 (if _$e7749_ _$e7749_ '""))
                               '"["
                               (number->string _phi7741_)
                               '"]#"
                               _key7739_))))
                    (gensym _key7739_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key7755_)
          (let* ((_syntax?7757_ '#f)
                 (_phi7759_ (gx#current-expander-phi))
                 (_ctx7761_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key7755_
             _syntax?7757_
             _phi7759_
             _ctx7761_))))
      (define gx#make-binding-id__1
        (lambda (_key7763_ _syntax?7764_)
          (let* ((_phi7766_ (gx#current-expander-phi))
                 (_ctx7768_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key7763_
             _syntax?7764_
             _phi7766_
             _ctx7768_))))
      (define gx#make-binding-id__2
        (lambda (_key7770_ _syntax?7771_ _phi7772_)
          (let ((_ctx7774_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key7770_
             _syntax?7771_
             _phi7772_
             _ctx7774_))))
      (define gx#make-binding-id
        (lambda _g10741_
          (let ((_g10740_ (length _g10741_)))
            (cond ((fx= _g10740_ 1) (apply gx#make-binding-id__0 _g10741_))
                  ((fx= _g10740_ 2) (apply gx#make-binding-id__1 _g10741_))
                  ((fx= _g10740_ 3) (apply gx#make-binding-id__2 _g10741_))
                  ((fx= _g10740_ 4) (apply gx#make-binding-id__% _g10741_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g10741_)))))))))
