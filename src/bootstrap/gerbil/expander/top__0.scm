(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707840755)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx155817_)
        (letrec ((_expand-special155819_
                  (lambda (_hd155821_ _K155822_ _rest155823_ _r155824_)
                    (_K155822_
                     _rest155823_
                     (cons (gx#core-expand-top _hd155821_) _r155824_)))))
          (gx#core-expand-block__0 _stx155817_ _expand-special155819_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx155570_)
        (letrec ((_expand-special155572_
                  (lambda (_hd155692_ _K155693_ _rest155694_ _r155695_)
                    (let* ((_K155699_
                            (lambda (_e155697_)
                              (_K155693_
                               _rest155694_
                               (cons _e155697_ _r155695_))))
                           (_e155700155729_ _hd155692_)
                           (_E155724155733_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e155700155729_)))
                           (_E155720155745_
                            (lambda ()
                              (if (gx#stx-pair? _e155700155729_)
                                  (let ((_e155725155737_
                                         (gx#syntax-e _e155700155729_)))
                                    (let ((_hd155726155740_
                                           (##car _e155725155737_))
                                          (_tl155727155742_
                                           (##cdr _e155725155737_)))
                                      (if (and (gx#identifier?
                                                _hd155726155740_)
                                               (gx#core-identifier=?
                                                _hd155726155740_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K155699_
                                               (gx#core-expand-define-runtime%
                                                _hd155692_))
                                              (_E155724155733_))
                                          (_E155724155733_))))
                                  (_E155724155733_))))
                           (_E155716155757_
                            (lambda ()
                              (if (gx#stx-pair? _e155700155729_)
                                  (let ((_e155721155749_
                                         (gx#syntax-e _e155700155729_)))
                                    (let ((_hd155722155752_
                                           (##car _e155721155749_))
                                          (_tl155723155754_
                                           (##cdr _e155721155749_)))
                                      (if (and (gx#identifier?
                                                _hd155722155752_)
                                               (gx#core-identifier=?
                                                _hd155722155752_
                                                '%#define-alias))
                                          (if '#t
                                              (_K155699_
                                               (gx#core-expand-define-alias%
                                                _hd155692_))
                                              (_E155720155745_))
                                          (_E155720155745_))))
                                  (_E155720155745_))))
                           (_E155706155769_
                            (lambda ()
                              (if (gx#stx-pair? _e155700155729_)
                                  (let ((_e155717155761_
                                         (gx#syntax-e _e155700155729_)))
                                    (let ((_hd155718155764_
                                           (##car _e155717155761_))
                                          (_tl155719155766_
                                           (##cdr _e155717155761_)))
                                      (if (and (gx#identifier?
                                                _hd155718155764_)
                                               (gx#core-identifier=?
                                                _hd155718155764_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K155699_
                                               (gx#core-expand-define-syntax%
                                                _hd155692_))
                                              (_E155716155757_))
                                          (_E155716155757_))))
                                  (_E155716155757_))))
                           (_E155702155801_
                            (lambda ()
                              (if (gx#stx-pair? _e155700155729_)
                                  (let ((_e155707155773_
                                         (gx#syntax-e _e155700155729_)))
                                    (let ((_hd155708155776_
                                           (##car _e155707155773_))
                                          (_tl155709155778_
                                           (##cdr _e155707155773_)))
                                      (if (and (gx#identifier?
                                                _hd155708155776_)
                                               (gx#core-identifier=?
                                                _hd155708155776_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl155709155778_)
                                              (let ((_e155710155781_
                                                     (gx#syntax-e
                                                      _tl155709155778_)))
                                                (let ((_hd155711155784_
                                                       (##car _e155710155781_))
                                                      (_tl155712155786_
                                                       (##cdr _e155710155781_)))
                                                  (let ((_hd-bind155789_
                                                         _hd155711155784_))
                                                    (if (gx#stx-pair?
                                                         _tl155712155786_)
                                                        (let ((_e155713155791_
                                                               (gx#syntax-e
                                                                _tl155712155786_)))
                                                          (let ((_hd155714155794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e155713155791_))
                        (_tl155715155796_ (##cdr _e155713155791_)))
                    (let ((_expr155799_ _hd155714155794_))
                      (if (gx#stx-null? _tl155715155796_)
                          (if (gx#core-bind-values? _hd-bind155789_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind155789_)
                                (_K155699_ _hd155692_))
                              (_E155706155769_))
                          (_E155706155769_)))))
                (_E155706155769_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155706155769_))
                                          (_E155706155769_))))
                                  (_E155706155769_))))
                           (_E155701155813_
                            (lambda ()
                              (if (gx#stx-pair? _e155700155729_)
                                  (let ((_e155703155805_
                                         (gx#syntax-e _e155700155729_)))
                                    (let ((_hd155704155808_
                                           (##car _e155703155805_))
                                          (_tl155705155810_
                                           (##cdr _e155703155805_)))
                                      (if (and (gx#identifier?
                                                _hd155704155808_)
                                               (gx#core-identifier=?
                                                _hd155704155808_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K155699_
                                               (gx#core-expand-begin-syntax%
                                                _hd155692_))
                                              (_E155702155801_))
                                          (_E155702155801_))))
                                  (_E155702155801_)))))
                      (_E155701155813_))))
                 (_eval-body155573_
                  (lambda (_rbody155581_)
                    (let _lp155583_ ((_rest155585_ _rbody155581_)
                                     (_body155586_ '())
                                     (_ebody155587_ '()))
                      (let* ((_rest155588155596_ _rest155585_)
                             (_else155590155604_
                              (lambda ()
                                (values _body155586_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody155587_)
                                          (gx#stx-source _stx155570_))))))
                             (_K155592155680_
                              (lambda (_rest155607_ _hd155608_)
                                (let* ((_e155609155626_ _hd155608_)
                                       (_E155621155630_
                                        (lambda ()
                                          (_lp155583_
                                           _rest155607_
                                           (cons _hd155608_ _body155586_)
                                           (cons _hd155608_ _ebody155587_))))
                                       (_E155611155642_
                                        (lambda ()
                                          (if (gx#stx-pair? _e155609155626_)
                                              (let ((_e155622155634_
                                                     (gx#syntax-e
                                                      _e155609155626_)))
                                                (let ((_hd155623155637_
                                                       (##car _e155622155634_))
                                                      (_tl155624155639_
                                                       (##cdr _e155622155634_)))
                                                  (if (and (gx#identifier?
                                                            _hd155623155637_)
                                                           (gx#core-identifier=?
                                                            _hd155623155637_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp155583_
                                                           _rest155607_
                                                           (cons _hd155608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body155586_)
                   _ebody155587_)
                  (_E155621155630_))
              (_E155621155630_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155621155630_))))
                                       (_E155610155676_
                                        (lambda ()
                                          (if (gx#stx-pair? _e155609155626_)
                                              (let ((_e155612155646_
                                                     (gx#syntax-e
                                                      _e155609155626_)))
                                                (let ((_hd155613155649_
                                                       (##car _e155612155646_))
                                                      (_tl155614155651_
                                                       (##cdr _e155612155646_)))
                                                  (if (and (gx#identifier?
                                                            _hd155613155649_)
                                                           (gx#core-identifier=?
                                                            _hd155613155649_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl155614155651_)
                                                          (let ((_e155615155654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl155614155651_)))
                    (let ((_hd155616155657_ (##car _e155615155654_))
                          (_tl155617155659_ (##cdr _e155615155654_)))
                      (let ((_hd-bind155662_ _hd155616155657_))
                        (if (gx#stx-pair? _tl155617155659_)
                            (let ((_e155618155664_
                                   (gx#syntax-e _tl155617155659_)))
                              (let ((_hd155619155667_ (##car _e155618155664_))
                                    (_tl155620155669_ (##cdr _e155618155664_)))
                                (let ((_expr155672_ _hd155619155667_))
                                  (if (gx#stx-null? _tl155620155669_)
                                      (if '#t
                                          (let ((_ehd155674_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind155662_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr155672_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd155608_))))
                                            (_lp155583_
                                             _rest155607_
                                             (cons _ehd155674_ _body155586_)
                                             (cons _ehd155674_ _ebody155587_)))
                                          (_E155611155642_))
                                      (_E155611155642_)))))
                            (_E155611155642_)))))
                  (_E155611155642_))
              (_E155611155642_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155611155642_)))))
                                  (_E155610155676_)))))
                        (if (##pair? _rest155588155596_)
                            (let ((_hd155593155683_ (##car _rest155588155596_))
                                  (_tl155594155685_
                                   (##cdr _rest155588155596_)))
                              (let* ((_hd155688_ _hd155593155683_)
                                     (_rest155690_ _tl155594155685_))
                                (_K155592155680_ _rest155690_ _hd155688_)))
                            (_else155590155604_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody155576_
                     (gx#core-expand-block__1
                      _stx155570_
                      _expand-special155572_
                      '#f))
                    (_g160408_ (_eval-body155573_ _rbody155576_)))
               (begin
                 (let ((_g160409_
                        (if (##values? _g160408_)
                            (##vector-length _g160408_)
                            1)))
                   (if (not (##fx= _g160409_ 2))
                       (error "Context expects 2 values" _g160409_)))
                 (let ((_expanded-body155578_ (##vector-ref _g160408_ 0))
                       (_value155579_ (##vector-ref _g160408_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body155578_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value155579_ '())))
                    (gx#stx-source _stx155570_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx155540_)
        (let* ((_e155541155548_ _stx155540_)
               (_E155543155552_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e155541155548_)))
               (_E155542155566_
                (lambda ()
                  (if (gx#stx-pair? _e155541155548_)
                      (let ((_e155544155556_ (gx#syntax-e _e155541155548_)))
                        (let ((_hd155545155559_ (##car _e155544155556_))
                              (_tl155546155561_ (##cdr _e155544155556_)))
                          (let ((_body155564_ _tl155546155561_))
                            (if (gx#stx-list? _body155564_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body155564_)
                                 (gx#stx-source _stx155540_))
                                (_E155543155552_)))))
                      (_E155543155552_)))))
          (_E155542155566_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx155538_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx155538_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx155484_)
        (let* ((_e155485155498_ _stx155484_)
               (_E155487155502_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e155485155498_)))
               (_E155486155534_
                (lambda ()
                  (if (gx#stx-pair? _e155485155498_)
                      (let ((_e155488155506_ (gx#syntax-e _e155485155498_)))
                        (let ((_hd155489155509_ (##car _e155488155506_))
                              (_tl155490155511_ (##cdr _e155488155506_)))
                          (if (gx#stx-pair? _tl155490155511_)
                              (let ((_e155491155514_
                                     (gx#syntax-e _tl155490155511_)))
                                (let ((_hd155492155517_
                                       (##car _e155491155514_))
                                      (_tl155493155519_
                                       (##cdr _e155491155514_)))
                                  (let ((_ann155522_ _hd155492155517_))
                                    (if (gx#stx-pair? _tl155493155519_)
                                        (let ((_e155494155524_
                                               (gx#syntax-e _tl155493155519_)))
                                          (let ((_hd155495155527_
                                                 (##car _e155494155524_))
                                                (_tl155496155529_
                                                 (##cdr _e155494155524_)))
                                            (let ((_expr155532_
                                                   _hd155495155527_))
                                              (if (gx#stx-null?
                                                   _tl155496155529_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann155522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr155532_)
                                 '())))
               (gx#stx-source _stx155484_))
              (_E155487155502_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E155487155502_)))))
                                        (_E155487155502_)))))
                              (_E155487155502_))))
                      (_E155487155502_)))))
          (_E155486155534_))))
    (define gx#core-expand-local-block
      (lambda (_stx155208_ _body155209_)
        (letrec ((_expand-special155211_
                  (lambda (_hd155479_ _K155480_ _rest155481_ _r155482_)
                    (_K155480_
                     '()
                     (cons (_expand-internal155212_ _hd155479_ _rest155481_)
                           _r155482_))))
                 (_expand-internal155212_
                  (lambda (_hd155475_ _rest155476_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal155214_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd155475_ _rest155476_))
                          (gx#stx-source _stx155208_))
                         _expand-internal-special155213_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj160402
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj160402)
                       __obj160402))))
                 (_expand-internal-special155213_
                  (lambda (_hd155370_ _K155371_ _rest155372_ _r155373_)
                    (let* ((_e155374155399_ _hd155370_)
                           (_E155394155403_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e155374155399_)))
                           (_E155390155415_
                            (lambda ()
                              (if (gx#stx-pair? _e155374155399_)
                                  (let ((_e155395155407_
                                         (gx#syntax-e _e155374155399_)))
                                    (let ((_hd155396155410_
                                           (##car _e155395155407_))
                                          (_tl155397155412_
                                           (##cdr _e155395155407_)))
                                      (if (and (gx#identifier?
                                                _hd155396155410_)
                                               (gx#core-identifier=?
                                                _hd155396155410_
                                                '%#declare))
                                          (if '#t
                                              (_K155371_
                                               _rest155372_
                                               (cons (gx#core-expand-declare%
                                                      _hd155370_)
                                                     _r155373_))
                                              (_E155394155403_))
                                          (_E155394155403_))))
                                  (_E155394155403_))))
                           (_E155386155427_
                            (lambda ()
                              (if (gx#stx-pair? _e155374155399_)
                                  (let ((_e155391155419_
                                         (gx#syntax-e _e155374155399_)))
                                    (let ((_hd155392155422_
                                           (##car _e155391155419_))
                                          (_tl155393155424_
                                           (##cdr _e155391155419_)))
                                      (if (and (gx#identifier?
                                                _hd155392155422_)
                                               (gx#core-identifier=?
                                                _hd155392155422_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd155370_)
                                                (_K155371_
                                                 _rest155372_
                                                 _r155373_))
                                              (_E155390155415_))
                                          (_E155390155415_))))
                                  (_E155390155415_))))
                           (_E155376155439_
                            (lambda ()
                              (if (gx#stx-pair? _e155374155399_)
                                  (let ((_e155387155431_
                                         (gx#syntax-e _e155374155399_)))
                                    (let ((_hd155388155434_
                                           (##car _e155387155431_))
                                          (_tl155389155436_
                                           (##cdr _e155387155431_)))
                                      (if (and (gx#identifier?
                                                _hd155388155434_)
                                               (gx#core-identifier=?
                                                _hd155388155434_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd155370_)
                                                (_K155371_
                                                 _rest155372_
                                                 _r155373_))
                                              (_E155386155427_))
                                          (_E155386155427_))))
                                  (_E155386155427_))))
                           (_E155375155471_
                            (lambda ()
                              (if (gx#stx-pair? _e155374155399_)
                                  (let ((_e155377155443_
                                         (gx#syntax-e _e155374155399_)))
                                    (let ((_hd155378155446_
                                           (##car _e155377155443_))
                                          (_tl155379155448_
                                           (##cdr _e155377155443_)))
                                      (if (and (gx#identifier?
                                                _hd155378155446_)
                                               (gx#core-identifier=?
                                                _hd155378155446_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl155379155448_)
                                              (let ((_e155380155451_
                                                     (gx#syntax-e
                                                      _tl155379155448_)))
                                                (let ((_hd155381155454_
                                                       (##car _e155380155451_))
                                                      (_tl155382155456_
                                                       (##cdr _e155380155451_)))
                                                  (let ((_hd-bind155459_
                                                         _hd155381155454_))
                                                    (if (gx#stx-pair?
                                                         _tl155382155456_)
                                                        (let ((_e155383155461_
                                                               (gx#syntax-e
                                                                _tl155382155456_)))
                                                          (let ((_hd155384155464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e155383155461_))
                        (_tl155385155466_ (##cdr _e155383155461_)))
                    (let ((_expr155469_ _hd155384155464_))
                      (if (gx#stx-null? _tl155385155466_)
                          (if (gx#core-bind-values? _hd-bind155459_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind155459_)
                                (_K155371_
                                 _rest155372_
                                 (cons _hd155370_ _r155373_)))
                              (_E155376155439_))
                          (_E155376155439_)))))
                (_E155376155439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E155376155439_))
                                          (_E155376155439_))))
                                  (_E155376155439_)))))
                      (_E155375155471_))))
                 (_wrap-internal155214_
                  (lambda (_rbody155216_)
                    (let _lp155218_ ((_rest155220_ _rbody155216_)
                                     (_decls155221_ '())
                                     (_bind155222_ '())
                                     (_body155223_ '()))
                      (let* ((_e155224155231_ _rest155220_)
                             (_E155226155280_
                              (lambda ()
                                (let* ((_body155275_
                                        (let* ((_body155234155244_
                                                _body155223_)
                                               (_else155237155252_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body155223_)
                                                   (gx#stx-source
                                                    _stx155208_)))))
                                          (let ((_K155242155272_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx155208_)))
                                                (_K155239155258_
                                                 (lambda (_expr155256_)
                                                   _expr155256_)))
                                            (let ((_try-match155236155268_
                                                   (lambda ()
                                                     (if (##pair? _body155234155244_)
                                                         (let ((_tl155241155263_
                                                                (##cdr _body155234155244_))
                                                               (_hd155240155261_
                                                                (##car _body155234155244_)))
                                                           (if (##null? _tl155241155263_)
                                                               (let ((_expr155266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd155240155261_))
                         (_K155239155258_ _expr155266_))
                       (_else155237155252_)))
                 (_else155237155252_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body155234155244_)
                                                  (_K155242155272_)
                                                  (_try-match155236155268_))))))
                                       (_body155277_
                                        (if (null? _bind155222_)
                                            _body155275_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind155222_
                                                         (cons _body155275_
                                                               '())))
                                             (gx#stx-source _stx155208_)))))
                                  (if (null? _decls155221_)
                                      _body155277_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls155221_
                                                   (cons _body155277_ '())))
                                       (gx#stx-source _stx155208_))))))
                             (_E155225155366_
                              (lambda ()
                                (if (gx#stx-pair? _e155224155231_)
                                    (let ((_e155227155284_
                                           (gx#syntax-e _e155224155231_)))
                                      (let ((_hd155228155287_
                                             (##car _e155227155284_))
                                            (_tl155229155289_
                                             (##cdr _e155227155284_)))
                                        (let* ((_hd155292_ _hd155228155287_)
                                               (_rest155294_ _tl155229155289_))
                                          (if '#t
                                              (let* ((_e155295155312_
                                                      _hd155292_)
                                                     (_E155307155316_
                                                      (lambda ()
                                                        (if (null? _bind155222_)
                                                            (_lp155218_
                                                             _rest155294_
                                                             _decls155221_
                                                             _bind155222_
                                                             (cons _hd155292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body155223_))
                    (_lp155218_
                     _rest155294_
                     _decls155221_
                     (cons (cons '#f (cons _hd155292_ '())) _bind155222_)
                     _body155223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E155297155330_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e155295155312_)
                                                            (let ((_e155308155320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e155295155312_)))
                      (let ((_hd155309155323_ (##car _e155308155320_))
                            (_tl155310155325_ (##cdr _e155308155320_)))
                        (if (and (gx#identifier? _hd155309155323_)
                                 (gx#core-identifier=?
                                  _hd155309155323_
                                  '%#declare))
                            (let ((_xdecls155328_ _tl155310155325_))
                              (if '#t
                                  (_lp155218_
                                   _rest155294_
                                   (gx#stx-foldr
                                    cons
                                    _decls155221_
                                    _xdecls155328_)
                                   _bind155222_
                                   _body155223_)
                                  (_E155307155316_)))
                            (_E155307155316_))))
                    (_E155307155316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E155296155362_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e155295155312_)
                                                            (let ((_e155298155334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e155295155312_)))
                      (let ((_hd155299155337_ (##car _e155298155334_))
                            (_tl155300155339_ (##cdr _e155298155334_)))
                        (if (and (gx#identifier? _hd155299155337_)
                                 (gx#core-identifier=?
                                  _hd155299155337_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl155300155339_)
                                (let ((_e155301155342_
                                       (gx#syntax-e _tl155300155339_)))
                                  (let ((_hd155302155345_
                                         (##car _e155301155342_))
                                        (_tl155303155347_
                                         (##cdr _e155301155342_)))
                                    (let ((_hd-bind155350_ _hd155302155345_))
                                      (if (gx#stx-pair? _tl155303155347_)
                                          (let ((_e155304155352_
                                                 (gx#syntax-e
                                                  _tl155303155347_)))
                                            (let ((_hd155305155355_
                                                   (##car _e155304155352_))
                                                  (_tl155306155357_
                                                   (##cdr _e155304155352_)))
                                              (let ((_expr155360_
                                                     _hd155305155355_))
                                                (if (gx#stx-null?
                                                     _tl155306155357_)
                                                    (if '#t
                                                        (_lp155218_
                                                         _rest155294_
                                                         _decls155221_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind155350_)
                             (cons (gx#core-expand-expression _expr155360_)
                                   '()))
                       _bind155222_)
                 _body155223_)
                (_E155297155330_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E155297155330_)))))
                                          (_E155297155330_)))))
                                (_E155297155330_))
                            (_E155297155330_))))
                    (_E155297155330_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E155296155362_))
                                              (_E155226155280_)))))
                                    (_E155226155280_)))))
                        (_E155225155366_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body155209_)
            (gx#stx-source _stx155208_))
           _expand-special155211_))))
    (define gx#core-expand-declare%
      (lambda (_stx155146_)
        (let* ((_e155147155154_ _stx155146_)
               (_E155149155158_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e155147155154_)))
               (_E155148155204_
                (lambda ()
                  (if (gx#stx-pair? _e155147155154_)
                      (let ((_e155150155162_ (gx#syntax-e _e155147155154_)))
                        (let ((_hd155151155165_ (##car _e155150155162_))
                              (_tl155152155167_ (##cdr _e155150155162_)))
                          (let ((_body155170_ _tl155152155167_))
                            (if (gx#stx-list? _body155170_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl155172_)
                                     (let* ((_e155173155180_ _decl155172_)
                                            (_E155175155184_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e155173155180_)))
                                            (_E155174155200_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e155173155180_)
                                                   (let ((_e155176155188_
                                                          (gx#syntax-e
                                                           _e155173155180_)))
                                                     (let ((_hd155177155191_
                                                            (##car _e155176155188_))
                                                           (_tl155178155193_
                                                            (##cdr _e155176155188_)))
                                                       (let* ((_head155196_
                                                               _hd155177155191_)
                                                              (_args155198_
                                                               _tl155178155193_))
                                                         (if (gx#stx-list?
                                                              _args155198_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl155172_)
                                                             (_E155175155184_)))))
                                                   (_E155175155184_)))))
                                       (_E155174155200_)))
                                   _body155170_))
                                 (gx#stx-source _stx155146_))
                                (_E155149155158_)))))
                      (_E155149155158_)))))
          (_E155148155204_))))
    (define gx#core-expand-extern%
      (lambda (_stx155050_)
        (let* ((_e155051155058_ _stx155050_)
               (_E155053155062_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e155051155058_)))
               (_E155052155142_
                (lambda ()
                  (if (gx#stx-pair? _e155051155058_)
                      (let ((_e155054155066_ (gx#syntax-e _e155051155058_)))
                        (let ((_hd155055155069_ (##car _e155054155066_))
                              (_tl155056155071_ (##cdr _e155054155066_)))
                          (let ((_body155074_ _tl155056155071_))
                            (if '#t
                                (let _lp155076_ ((_rest155078_ _body155074_)
                                                 (_r155079_ '()))
                                  (let* ((_e155080155094_ _rest155078_)
                                         (_E155092155098_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx155050_)))
                                         (_E155082155102_
                                          (lambda ()
                                            (if (gx#stx-null? _e155080155094_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r155079_))
                                                     (gx#stx-source
                                                      _stx155050_))
                                                    (_E155092155098_))
                                                (_E155092155098_))))
                                         (_E155081155138_
                                          (lambda ()
                                            (if (gx#stx-pair? _e155080155094_)
                                                (let ((_e155083155106_
                                                       (gx#syntax-e
                                                        _e155080155094_)))
                                                  (let ((_hd155084155109_
                                                         (##car _e155083155106_))
                                                        (_tl155085155111_
                                                         (##cdr _e155083155106_)))
                                                    (if (gx#stx-pair?
                                                         _hd155084155109_)
                                                        (let ((_e155086155114_
                                                               (gx#syntax-e
                                                                _hd155084155109_)))
                                                          (let ((_hd155087155117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e155086155114_))
                        (_tl155088155119_ (##cdr _e155086155114_)))
                    (let ((_id155122_ _hd155087155117_))
                      (if (gx#stx-pair? _tl155088155119_)
                          (let ((_e155089155124_
                                 (gx#syntax-e _tl155088155119_)))
                            (let ((_hd155090155127_ (##car _e155089155124_))
                                  (_tl155091155129_ (##cdr _e155089155124_)))
                              (let ((_eid155132_ _hd155090155127_))
                                (if (gx#stx-null? _tl155091155129_)
                                    (let ((_rest155134_ _tl155085155111_))
                                      (if (and (gx#identifier? _id155122_)
                                               (gx#identifier? _eid155132_))
                                          (let ((_eid155136_
                                                 (gx#stx-e _eid155132_)))
                                            (gx#core-bind-extern!__0
                                             _id155122_
                                             _eid155136_)
                                            (_lp155076_
                                             _rest155134_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id155122_)
                                                         (cons _eid155136_
                                                               '()))
                                                   _r155079_)))
                                          (_E155082155102_)))
                                    (_E155082155102_)))))
                          (_E155082155102_)))))
                (_E155082155102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E155082155102_)))))
                                    (_E155081155138_)))
                                (_E155053155062_)))))
                      (_E155053155062_)))))
          (_E155052155142_))))
    (define gx#core-expand-define-values%
      (lambda (_stx154996_)
        (let* ((_e154997155010_ _stx154996_)
               (_E154999155014_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154997155010_)))
               (_E154998155046_
                (lambda ()
                  (if (gx#stx-pair? _e154997155010_)
                      (let ((_e155000155018_ (gx#syntax-e _e154997155010_)))
                        (let ((_hd155001155021_ (##car _e155000155018_))
                              (_tl155002155023_ (##cdr _e155000155018_)))
                          (if (gx#stx-pair? _tl155002155023_)
                              (let ((_e155003155026_
                                     (gx#syntax-e _tl155002155023_)))
                                (let ((_hd155004155029_
                                       (##car _e155003155026_))
                                      (_tl155005155031_
                                       (##cdr _e155003155026_)))
                                  (let ((_hd155034_ _hd155004155029_))
                                    (if (gx#stx-pair? _tl155005155031_)
                                        (let ((_e155006155036_
                                               (gx#syntax-e _tl155005155031_)))
                                          (let ((_hd155007155039_
                                                 (##car _e155006155036_))
                                                (_tl155008155041_
                                                 (##cdr _e155006155036_)))
                                            (let ((_expr155044_
                                                   _hd155007155039_))
                                              (if (gx#stx-null?
                                                   _tl155008155041_)
                                                  (if (gx#core-bind-values?
                                                       _hd155034_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd155034_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd155034_)
                             (cons (gx#core-expand-expression _expr155044_)
                                   '())))
                 (gx#stx-source _stx154996_)))
              (_E154999155014_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154999155014_)))))
                                        (_E154999155014_)))))
                              (_E154999155014_))))
                      (_E154999155014_)))))
          (_E154998155046_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx154940_)
        (let* ((_e154941154954_ _stx154940_)
               (_E154943154958_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154941154954_)))
               (_E154942154992_
                (lambda ()
                  (if (gx#stx-pair? _e154941154954_)
                      (let ((_e154944154962_ (gx#syntax-e _e154941154954_)))
                        (let ((_hd154945154965_ (##car _e154944154962_))
                              (_tl154946154967_ (##cdr _e154944154962_)))
                          (if (gx#stx-pair? _tl154946154967_)
                              (let ((_e154947154970_
                                     (gx#syntax-e _tl154946154967_)))
                                (let ((_hd154948154973_
                                       (##car _e154947154970_))
                                      (_tl154949154975_
                                       (##cdr _e154947154970_)))
                                  (let ((_id154978_ _hd154948154973_))
                                    (if (gx#stx-pair? _tl154949154975_)
                                        (let ((_e154950154980_
                                               (gx#syntax-e _tl154949154975_)))
                                          (let ((_hd154951154983_
                                                 (##car _e154950154980_))
                                                (_tl154952154985_
                                                 (##cdr _e154950154980_)))
                                            (let ((_binding-id154988_
                                                   _hd154951154983_))
                                              (if (gx#stx-null?
                                                   _tl154952154985_)
                                                  (if (and (gx#identifier?
                                                            _id154978_)
                                                           (gx#identifier?
                                                            _binding-id154988_))
                                                      (let ((_eid154990_
                                                             (gx#stx-e
                                                              _binding-id154988_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id154978_
                                                         _eid154990_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id154978_)
                             (cons _eid154990_ '())))))
              (_E154943154958_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154943154958_)))))
                                        (_E154943154958_)))))
                              (_E154943154958_))))
                      (_E154943154958_)))))
          (_E154942154992_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx154883_)
        (let* ((_e154884154897_ _stx154883_)
               (_E154886154901_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154884154897_)))
               (_E154885154936_
                (lambda ()
                  (if (gx#stx-pair? _e154884154897_)
                      (let ((_e154887154905_ (gx#syntax-e _e154884154897_)))
                        (let ((_hd154888154908_ (##car _e154887154905_))
                              (_tl154889154910_ (##cdr _e154887154905_)))
                          (if (gx#stx-pair? _tl154889154910_)
                              (let ((_e154890154913_
                                     (gx#syntax-e _tl154889154910_)))
                                (let ((_hd154891154916_
                                       (##car _e154890154913_))
                                      (_tl154892154918_
                                       (##cdr _e154890154913_)))
                                  (let ((_id154921_ _hd154891154916_))
                                    (if (gx#stx-pair? _tl154892154918_)
                                        (let ((_e154893154923_
                                               (gx#syntax-e _tl154892154918_)))
                                          (let ((_hd154894154926_
                                                 (##car _e154893154923_))
                                                (_tl154895154928_
                                                 (##cdr _e154893154923_)))
                                            (let ((_expr154931_
                                                   _hd154894154926_))
                                              (if (gx#stx-null?
                                                   _tl154895154928_)
                                                  (if (gx#identifier?
                                                       _id154921_)
                                                      (let ((_g160410_
                                                             (gx#core-expand-expression+1
                                                              _expr154931_)))
                                                        (begin
                                                          (let ((_g160411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g160410_)
                             (##vector-length _g160410_)
                             1)))
                    (if (not (##fx= _g160411_ 2))
                        (error "Context expects 2 values" _g160411_)))
                  (let ((_e-stx154933_ (##vector-ref _g160410_ 0))
                        (_e154934_ (##vector-ref _g160410_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id154921_ _e154934_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id154921_)
                                   (cons _e-stx154933_ '())))
                       (gx#stx-source _stx154883_))))))
              (_E154886154901_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154886154901_)))))
                                        (_E154886154901_)))))
                              (_E154886154901_))))
                      (_E154886154901_)))))
          (_E154885154936_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx154827_)
        (let* ((_e154828154841_ _stx154827_)
               (_E154830154845_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154828154841_)))
               (_E154829154879_
                (lambda ()
                  (if (gx#stx-pair? _e154828154841_)
                      (let ((_e154831154849_ (gx#syntax-e _e154828154841_)))
                        (let ((_hd154832154852_ (##car _e154831154849_))
                              (_tl154833154854_ (##cdr _e154831154849_)))
                          (if (gx#stx-pair? _tl154833154854_)
                              (let ((_e154834154857_
                                     (gx#syntax-e _tl154833154854_)))
                                (let ((_hd154835154860_
                                       (##car _e154834154857_))
                                      (_tl154836154862_
                                       (##cdr _e154834154857_)))
                                  (let ((_id154865_ _hd154835154860_))
                                    (if (gx#stx-pair? _tl154836154862_)
                                        (let ((_e154837154867_
                                               (gx#syntax-e _tl154836154862_)))
                                          (let ((_hd154838154870_
                                                 (##car _e154837154867_))
                                                (_tl154839154872_
                                                 (##cdr _e154837154867_)))
                                            (let ((_alias-id154875_
                                                   _hd154838154870_))
                                              (if (gx#stx-null?
                                                   _tl154839154872_)
                                                  (if (and (gx#identifier?
                                                            _id154865_)
                                                           (gx#identifier?
                                                            _alias-id154875_))
                                                      (let ((_alias-id154877_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id154875_)))
                                                        (gx#core-bind-alias!__0
                                                         _id154865_
                                                         _alias-id154877_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id154865_)
                             (cons _alias-id154877_ '())))))
              (_E154830154845_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154830154845_)))))
                                        (_E154830154845_)))))
                              (_E154830154845_))))
                      (_E154830154845_)))))
          (_E154829154879_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx154770_ _wrap?154771_)
        (let* ((_e154772154782_ _stx154770_)
               (_E154774154786_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154772154782_)))
               (_E154773154813_
                (lambda ()
                  (if (gx#stx-pair? _e154772154782_)
                      (let ((_e154775154790_ (gx#syntax-e _e154772154782_)))
                        (let ((_hd154776154793_ (##car _e154775154790_))
                              (_tl154777154795_ (##cdr _e154775154790_)))
                          (if (gx#stx-pair? _tl154777154795_)
                              (let ((_e154778154798_
                                     (gx#syntax-e _tl154777154795_)))
                                (let ((_hd154779154801_
                                       (##car _e154778154798_))
                                      (_tl154780154803_
                                       (##cdr _e154778154798_)))
                                  (let* ((_hd154806_ _hd154779154801_)
                                         (_body154808_ _tl154780154803_))
                                    (if (gx#core-bind-values? _hd154806_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd154806_)
                                           (let ((_body154811_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd154806_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx154770_
                                                               _body154808_)
                                                              '()))))
                                             (if _wrap?154771_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body154811_)
                                                  (gx#stx-source _stx154770_))
                                                 _body154811_)))
                                         gx#current-expander-context
                                         (let ((__obj160403
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj160403)
                                           __obj160403))
                                        (_E154774154786_)))))
                              (_E154774154786_))))
                      (_E154774154786_)))))
          (_E154773154813_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx154820_)
        (let ((_wrap?154822_ '#t))
          (gx#core-expand-lambda%__% _stx154820_ _wrap?154822_))))
    (define gx#core-expand-lambda%
      (lambda _g160413_
        (let ((_g160412_ (##length _g160413_)))
          (cond ((##fx= _g160412_ 1)
                 (apply (lambda (_stx154820_)
                          (gx#core-expand-lambda%__0 _stx154820_))
                        _g160413_))
                ((##fx= _g160412_ 2)
                 (apply (lambda (_stx154824_ _wrap?154825_)
                          (gx#core-expand-lambda%__%
                           _stx154824_
                           _wrap?154825_))
                        _g160413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g160413_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx154734_)
        (let* ((_e154735154742_ _stx154734_)
               (_E154737154746_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154735154742_)))
               (_E154736154765_
                (lambda ()
                  (if (gx#stx-pair? _e154735154742_)
                      (let ((_e154738154750_ (gx#syntax-e _e154735154742_)))
                        (let ((_hd154739154753_ (##car _e154738154750_))
                              (_tl154740154755_ (##cdr _e154738154750_)))
                          (let ((_clauses154758_ _tl154740154755_))
                            (if (gx#stx-list? _clauses154758_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause154760_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause154760_)
                                       (let ((_$e154762_
                                              (gx#stx-source _clause154760_)))
                                         (if _$e154762_
                                             _$e154762_
                                             (gx#stx-source _stx154734_))))
                                      '#f))
                                   _clauses154758_))
                                 (gx#stx-source _stx154734_))
                                (_E154737154746_)))))
                      (_E154737154746_)))))
          (_E154736154765_))))
    (define gx#core-expand-let-values%
      (lambda (_stx154688_)
        (let* ((_e154689154699_ _stx154688_)
               (_E154691154703_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154689154699_)))
               (_E154690154730_
                (lambda ()
                  (if (gx#stx-pair? _e154689154699_)
                      (let ((_e154692154707_ (gx#syntax-e _e154689154699_)))
                        (let ((_hd154693154710_ (##car _e154692154707_))
                              (_tl154694154712_ (##cdr _e154692154707_)))
                          (if (gx#stx-pair? _tl154694154712_)
                              (let ((_e154695154715_
                                     (gx#syntax-e _tl154694154712_)))
                                (let ((_hd154696154718_
                                       (##car _e154695154715_))
                                      (_tl154697154720_
                                       (##cdr _e154695154715_)))
                                  (let* ((_hd154723_ _hd154696154718_)
                                         (_body154725_ _tl154697154720_))
                                    (if (gx#core-expand-let-bind? _hd154723_)
                                        (let ((_expressions154727_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd154723_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd154723_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd154723_
                                                           _expressions154727_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx154688_
                         _body154725_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx154688_)))
                                           gx#current-expander-context
                                           (let ((__obj160404
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj160404)
                                             __obj160404)))
                                        (_E154691154703_)))))
                              (_E154691154703_))))
                      (_E154691154703_)))))
          (_E154690154730_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx154633_ _form154634_)
        (let* ((_e154635154645_ _stx154633_)
               (_E154637154649_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154635154645_)))
               (_E154636154674_
                (lambda ()
                  (if (gx#stx-pair? _e154635154645_)
                      (let ((_e154638154653_ (gx#syntax-e _e154635154645_)))
                        (let ((_hd154639154656_ (##car _e154638154653_))
                              (_tl154640154658_ (##cdr _e154638154653_)))
                          (if (gx#stx-pair? _tl154640154658_)
                              (let ((_e154641154661_
                                     (gx#syntax-e _tl154640154658_)))
                                (let ((_hd154642154664_
                                       (##car _e154641154661_))
                                      (_tl154643154666_
                                       (##cdr _e154641154661_)))
                                  (let* ((_hd154669_ _hd154642154664_)
                                         (_body154671_ _tl154643154666_))
                                    (if (gx#core-expand-let-bind? _hd154669_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd154669_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form154634_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd154669_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd154669_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx154633_
                                                               _body154671_)
                                                              '())))
                                            (gx#stx-source _stx154633_)))
                                         gx#current-expander-context
                                         (let ((__obj160405
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj160405)
                                           __obj160405))
                                        (_E154637154649_)))))
                              (_E154637154649_))))
                      (_E154637154649_)))))
          (_E154636154674_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx154681_)
        (let ((_form154683_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx154681_ _form154683_))))
    (define gx#core-expand-letrec-values%
      (lambda _g160415_
        (let ((_g160414_ (##length _g160415_)))
          (cond ((##fx= _g160414_ 1)
                 (apply (lambda (_stx154681_)
                          (gx#core-expand-letrec-values%__0 _stx154681_))
                        _g160415_))
                ((##fx= _g160414_ 2)
                 (apply (lambda (_stx154685_ _form154686_)
                          (gx#core-expand-letrec-values%__%
                           _stx154685_
                           _form154686_))
                        _g160415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g160415_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx154630_)
        (gx#core-expand-letrec-values%__% _stx154630_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx154587_)
        (if (gx#stx-list? _stx154587_)
            (gx#stx-andmap
             (lambda (_bind154589_)
               (let* ((_e154590154600_ _bind154589_)
                      (_E154592154604_ (lambda () '#f))
                      (_E154591154626_
                       (lambda ()
                         (if (gx#stx-pair? _e154590154600_)
                             (let ((_e154593154608_
                                    (gx#syntax-e _e154590154600_)))
                               (let ((_hd154594154611_ (##car _e154593154608_))
                                     (_tl154595154613_
                                      (##cdr _e154593154608_)))
                                 (let ((_hd154616_ _hd154594154611_))
                                   (if (gx#stx-pair? _tl154595154613_)
                                       (let ((_e154596154618_
                                              (gx#syntax-e _tl154595154613_)))
                                         (let ((_hd154597154621_
                                                (##car _e154596154618_))
                                               (_tl154598154623_
                                                (##cdr _e154596154618_)))
                                           (if (gx#stx-null? _tl154598154623_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd154616_)
                                                   (_E154592154604_))
                                               (_E154592154604_))))
                                       (_E154592154604_)))))
                             (_E154592154604_)))))
                 (_E154591154626_)))
             _stx154587_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind154546_)
        (let* ((_e154547154557_ _bind154546_)
               (_E154549154561_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154547154557_)))
               (_E154548154583_
                (lambda ()
                  (if (gx#stx-pair? _e154547154557_)
                      (let ((_e154550154565_ (gx#syntax-e _e154547154557_)))
                        (let ((_hd154551154568_ (##car _e154550154565_))
                              (_tl154552154570_ (##cdr _e154550154565_)))
                          (if (gx#stx-pair? _tl154552154570_)
                              (let ((_e154553154573_
                                     (gx#syntax-e _tl154552154570_)))
                                (let ((_hd154554154576_
                                       (##car _e154553154573_))
                                      (_tl154555154578_
                                       (##cdr _e154553154573_)))
                                  (let ((_expr154581_ _hd154554154576_))
                                    (if (gx#stx-null? _tl154555154578_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr154581_)
                                            (_E154549154561_))
                                        (_E154549154561_)))))
                              (_E154549154561_))))
                      (_E154549154561_)))))
          (_E154548154583_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind154505_)
        (let* ((_e154506154516_ _bind154505_)
               (_E154508154520_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154506154516_)))
               (_E154507154542_
                (lambda ()
                  (if (gx#stx-pair? _e154506154516_)
                      (let ((_e154509154524_ (gx#syntax-e _e154506154516_)))
                        (let ((_hd154510154527_ (##car _e154509154524_))
                              (_tl154511154529_ (##cdr _e154509154524_)))
                          (let ((_hd154532_ _hd154510154527_))
                            (if (gx#stx-pair? _tl154511154529_)
                                (let ((_e154512154534_
                                       (gx#syntax-e _tl154511154529_)))
                                  (let ((_hd154513154537_
                                         (##car _e154512154534_))
                                        (_tl154514154539_
                                         (##cdr _e154512154534_)))
                                    (if (gx#stx-null? _tl154514154539_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd154532_)
                                            (_E154508154520_))
                                        (_E154508154520_))))
                                (_E154508154520_)))))
                      (_E154508154520_)))))
          (_E154507154542_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind154463_ _expr154464_)
        (let* ((_e154465154475_ _bind154463_)
               (_E154467154479_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154465154475_)))
               (_E154466154501_
                (lambda ()
                  (if (gx#stx-pair? _e154465154475_)
                      (let ((_e154468154483_ (gx#syntax-e _e154465154475_)))
                        (let ((_hd154469154486_ (##car _e154468154483_))
                              (_tl154470154488_ (##cdr _e154468154483_)))
                          (let ((_hd154491_ _hd154469154486_))
                            (if (gx#stx-pair? _tl154470154488_)
                                (let ((_e154471154493_
                                       (gx#syntax-e _tl154470154488_)))
                                  (let ((_hd154472154496_
                                         (##car _e154471154493_))
                                        (_tl154473154498_
                                         (##cdr _e154471154493_)))
                                    (if (gx#stx-null? _tl154473154498_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd154491_)
                                                  (cons _expr154464_ '()))
                                            (_E154467154479_))
                                        (_E154467154479_))))
                                (_E154467154479_)))))
                      (_E154467154479_)))))
          (_E154466154501_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx154417_)
        (let* ((_e154418154428_ _stx154417_)
               (_E154420154432_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154418154428_)))
               (_E154419154459_
                (lambda ()
                  (if (gx#stx-pair? _e154418154428_)
                      (let ((_e154421154436_ (gx#syntax-e _e154418154428_)))
                        (let ((_hd154422154439_ (##car _e154421154436_))
                              (_tl154423154441_ (##cdr _e154421154436_)))
                          (if (gx#stx-pair? _tl154423154441_)
                              (let ((_e154424154444_
                                     (gx#syntax-e _tl154423154441_)))
                                (let ((_hd154425154447_
                                       (##car _e154424154444_))
                                      (_tl154426154449_
                                       (##cdr _e154424154444_)))
                                  (let* ((_hd154452_ _hd154425154447_)
                                         (_body154454_ _tl154426154449_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd154452_)
                                        (let ((_expanders154456_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd154452_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd154452_
                                              _expanders154456_)
                                             (gx#core-expand-local-block
                                              _stx154417_
                                              _body154454_))
                                           gx#current-expander-context
                                           (let ((__obj160406
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj160406)
                                             __obj160406)))
                                        (_E154420154432_)))))
                              (_E154420154432_))))
                      (_E154420154432_)))))
          (_E154419154459_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx154366_)
        (let* ((_e154367154377_ _stx154366_)
               (_E154369154381_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154367154377_)))
               (_E154368154413_
                (lambda ()
                  (if (gx#stx-pair? _e154367154377_)
                      (let ((_e154370154385_ (gx#syntax-e _e154367154377_)))
                        (let ((_hd154371154388_ (##car _e154370154385_))
                              (_tl154372154390_ (##cdr _e154370154385_)))
                          (if (gx#stx-pair? _tl154372154390_)
                              (let ((_e154373154393_
                                     (gx#syntax-e _tl154372154390_)))
                                (let ((_hd154374154396_
                                       (##car _e154373154393_))
                                      (_tl154375154398_
                                       (##cdr _e154373154393_)))
                                  (let* ((_hd154401_ _hd154374154396_)
                                         (_body154403_ _tl154375154398_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd154401_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd154401_
                                            (make-list
                                             (gx#stx-length _hd154401_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g154405154408_
                                                     _g154406154410_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g154405154408_
                                               _g154406154410_
                                               '#t))
                                            _hd154401_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd154401_))
                                           (gx#core-expand-local-block
                                            _stx154366_
                                            _body154403_))
                                         gx#current-expander-context
                                         (let ((__obj160407
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj160407)
                                           __obj160407))
                                        (_E154369154381_)))))
                              (_E154369154381_))))
                      (_E154369154381_)))))
          (_E154368154413_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx154323_)
        (if (gx#stx-list? _stx154323_)
            (gx#stx-andmap
             (lambda (_bind154325_)
               (let* ((_e154326154336_ _bind154325_)
                      (_E154328154340_ (lambda () '#f))
                      (_E154327154362_
                       (lambda ()
                         (if (gx#stx-pair? _e154326154336_)
                             (let ((_e154329154344_
                                    (gx#syntax-e _e154326154336_)))
                               (let ((_hd154330154347_ (##car _e154329154344_))
                                     (_tl154331154349_
                                      (##cdr _e154329154344_)))
                                 (let ((_hd154352_ _hd154330154347_))
                                   (if (gx#stx-pair? _tl154331154349_)
                                       (let ((_e154332154354_
                                              (gx#syntax-e _tl154331154349_)))
                                         (let ((_hd154333154357_
                                                (##car _e154332154354_))
                                               (_tl154334154359_
                                                (##cdr _e154332154354_)))
                                           (if (gx#stx-null? _tl154334154359_)
                                               (if '#t
                                                   (gx#identifier? _hd154352_)
                                                   (_E154328154340_))
                                               (_E154328154340_))))
                                       (_E154328154340_)))))
                             (_E154328154340_)))))
                 (_E154327154362_)))
             _stx154323_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind154280_)
        (let* ((_e154281154291_ _bind154280_)
               (_E154283154295_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154281154291_)))
               (_E154282154319_
                (lambda ()
                  (if (gx#stx-pair? _e154281154291_)
                      (let ((_e154284154299_ (gx#syntax-e _e154281154291_)))
                        (let ((_hd154285154302_ (##car _e154284154299_))
                              (_tl154286154304_ (##cdr _e154284154299_)))
                          (if (gx#stx-pair? _tl154286154304_)
                              (let ((_e154287154307_
                                     (gx#syntax-e _tl154286154304_)))
                                (let ((_hd154288154310_
                                       (##car _e154287154307_))
                                      (_tl154289154312_
                                       (##cdr _e154287154307_)))
                                  (let ((_expr154315_ _hd154288154310_))
                                    (if (gx#stx-null? _tl154289154312_)
                                        (if '#t
                                            (let ((_g160416_
                                                   (gx#core-expand-expression+1
                                                    _expr154315_)))
                                              (begin
                                                (let ((_g160417_
                                                       (if (##values?
                                                            _g160416_)
                                                           (##vector-length
                                                            _g160416_)
                                                           1)))
                                                  (if (not (##fx= _g160417_ 2))
                                                      (error "Context expects 2 values"
                                                             _g160417_)))
                                                (let ((_e154317_
                                                       (##vector-ref
                                                        _g160416_
                                                        1)))
                                                  _e154317_)))
                                            (_E154283154295_))
                                        (_E154283154295_)))))
                              (_E154283154295_))))
                      (_E154283154295_)))))
          (_E154282154319_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind154225_ _e154226_ _rebind?154227_)
        (let* ((_e154228154238_ _bind154225_)
               (_E154230154242_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154228154238_)))
               (_E154229154264_
                (lambda ()
                  (if (gx#stx-pair? _e154228154238_)
                      (let ((_e154231154246_ (gx#syntax-e _e154228154238_)))
                        (let ((_hd154232154249_ (##car _e154231154246_))
                              (_tl154233154251_ (##cdr _e154231154246_)))
                          (let ((_id154254_ _hd154232154249_))
                            (if (gx#stx-pair? _tl154233154251_)
                                (let ((_e154234154256_
                                       (gx#syntax-e _tl154233154251_)))
                                  (let ((_hd154235154259_
                                         (##car _e154234154256_))
                                        (_tl154236154261_
                                         (##cdr _e154234154256_)))
                                    (if (gx#stx-null? _tl154236154261_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id154254_
                                             _e154226_
                                             _rebind?154227_)
                                            (_E154230154242_))
                                        (_E154230154242_))))
                                (_E154230154242_)))))
                      (_E154230154242_)))))
          (_E154229154264_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind154271_ _e154272_)
        (let ((_rebind?154274_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind154271_
           _e154272_
           _rebind?154274_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g160419_
        (let ((_g160418_ (##length _g160419_)))
          (cond ((##fx= _g160418_ 2)
                 (apply (lambda (_bind154271_ _e154272_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind154271_
                           _e154272_))
                        _g160419_))
                ((##fx= _g160418_ 3)
                 (apply (lambda (_bind154276_ _e154277_ _rebind?154278_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind154276_
                           _e154277_
                           _rebind?154278_))
                        _g160419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g160419_))))))
    (define gx#core-expand-expression%
      (lambda (_stx154183_)
        (let* ((_e154184154194_ _stx154183_)
               (_E154186154198_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154184154194_)))
               (_E154185154220_
                (lambda ()
                  (if (gx#stx-pair? _e154184154194_)
                      (let ((_e154187154202_ (gx#syntax-e _e154184154194_)))
                        (let ((_hd154188154205_ (##car _e154187154202_))
                              (_tl154189154207_ (##cdr _e154187154202_)))
                          (if (gx#stx-pair? _tl154189154207_)
                              (let ((_e154190154210_
                                     (gx#syntax-e _tl154189154207_)))
                                (let ((_hd154191154213_
                                       (##car _e154190154210_))
                                      (_tl154192154215_
                                       (##cdr _e154190154210_)))
                                  (let ((_expr154218_ _hd154191154213_))
                                    (if (gx#stx-null? _tl154192154215_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr154218_)
                                            (_E154186154198_))
                                        (_E154186154198_)))))
                              (_E154186154198_))))
                      (_E154186154198_)))))
          (_E154185154220_))))
    (define gx#core-expand-quote%
      (lambda (_stx154142_)
        (let* ((_e154143154153_ _stx154142_)
               (_E154145154157_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154143154153_)))
               (_E154144154179_
                (lambda ()
                  (if (gx#stx-pair? _e154143154153_)
                      (let ((_e154146154161_ (gx#syntax-e _e154143154153_)))
                        (let ((_hd154147154164_ (##car _e154146154161_))
                              (_tl154148154166_ (##cdr _e154146154161_)))
                          (if (gx#stx-pair? _tl154148154166_)
                              (let ((_e154149154169_
                                     (gx#syntax-e _tl154148154166_)))
                                (let ((_hd154150154172_
                                       (##car _e154149154169_))
                                      (_tl154151154174_
                                       (##cdr _e154149154169_)))
                                  (let ((_e154177_ _hd154150154172_))
                                    (if (gx#stx-null? _tl154151154174_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e154177_)
                                                         '()))
                                             (gx#stx-source _stx154142_))
                                            (_E154145154157_))
                                        (_E154145154157_)))))
                              (_E154145154157_))))
                      (_E154145154157_)))))
          (_E154144154179_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx154101_)
        (let* ((_e154102154112_ _stx154101_)
               (_E154104154116_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154102154112_)))
               (_E154103154138_
                (lambda ()
                  (if (gx#stx-pair? _e154102154112_)
                      (let ((_e154105154120_ (gx#syntax-e _e154102154112_)))
                        (let ((_hd154106154123_ (##car _e154105154120_))
                              (_tl154107154125_ (##cdr _e154105154120_)))
                          (if (gx#stx-pair? _tl154107154125_)
                              (let ((_e154108154128_
                                     (gx#syntax-e _tl154107154125_)))
                                (let ((_hd154109154131_
                                       (##car _e154108154128_))
                                      (_tl154110154133_
                                       (##cdr _e154108154128_)))
                                  (let ((_e154136_ _hd154109154131_))
                                    (if (gx#stx-null? _tl154110154133_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e154136_)
                                                         '()))
                                             (gx#stx-source _stx154101_))
                                            (_E154104154116_))
                                        (_E154104154116_)))))
                              (_E154104154116_))))
                      (_E154104154116_)))))
          (_E154103154138_))))
    (define gx#core-expand-call%
      (lambda (_stx154058_)
        (let* ((_e154059154069_ _stx154058_)
               (_E154061154073_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154059154069_)))
               (_E154060154097_
                (lambda ()
                  (if (gx#stx-pair? _e154059154069_)
                      (let ((_e154062154077_ (gx#syntax-e _e154059154069_)))
                        (let ((_hd154063154080_ (##car _e154062154077_))
                              (_tl154064154082_ (##cdr _e154062154077_)))
                          (if (gx#stx-pair? _tl154064154082_)
                              (let ((_e154065154085_
                                     (gx#syntax-e _tl154064154082_)))
                                (let ((_hd154066154088_
                                       (##car _e154065154085_))
                                      (_tl154067154090_
                                       (##cdr _e154065154085_)))
                                  (let* ((_rator154093_ _hd154066154088_)
                                         (_args154095_ _tl154067154090_))
                                    (if (gx#stx-list? _args154095_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator154093_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args154095_))
                                         (gx#stx-source _stx154058_))
                                        (_E154061154073_)))))
                              (_E154061154073_))))
                      (_E154061154073_)))))
          (_E154060154097_))))
    (define gx#core-expand-if%
      (lambda (_stx153991_)
        (let* ((_e153992154008_ _stx153991_)
               (_E153994154012_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153992154008_)))
               (_E153993154054_
                (lambda ()
                  (if (gx#stx-pair? _e153992154008_)
                      (let ((_e153995154016_ (gx#syntax-e _e153992154008_)))
                        (let ((_hd153996154019_ (##car _e153995154016_))
                              (_tl153997154021_ (##cdr _e153995154016_)))
                          (if (gx#stx-pair? _tl153997154021_)
                              (let ((_e153998154024_
                                     (gx#syntax-e _tl153997154021_)))
                                (let ((_hd153999154027_
                                       (##car _e153998154024_))
                                      (_tl154000154029_
                                       (##cdr _e153998154024_)))
                                  (let ((_test154032_ _hd153999154027_))
                                    (if (gx#stx-pair? _tl154000154029_)
                                        (let ((_e154001154034_
                                               (gx#syntax-e _tl154000154029_)))
                                          (let ((_hd154002154037_
                                                 (##car _e154001154034_))
                                                (_tl154003154039_
                                                 (##cdr _e154001154034_)))
                                            (let ((_K154042_ _hd154002154037_))
                                              (if (gx#stx-pair?
                                                   _tl154003154039_)
                                                  (let ((_e154004154044_
                                                         (gx#syntax-e
                                                          _tl154003154039_)))
                                                    (let ((_hd154005154047_
                                                           (##car _e154004154044_))
                                                          (_tl154006154049_
                                                           (##cdr _e154004154044_)))
                                                      (let ((_E154052_
                                                             _hd154005154047_))
                                                        (if (gx#stx-null?
                                                             _tl154006154049_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test154032_)
                                     (cons (gx#core-expand-expression
                                            _K154042_)
                                           (cons (gx#core-expand-expression
                                                  _E154052_)
                                                 '()))))
                         (gx#stx-source _stx153991_))
                        (_E153994154012_))
                    (_E153994154012_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153994154012_)))))
                                        (_E153994154012_)))))
                              (_E153994154012_))))
                      (_E153994154012_)))))
          (_E153993154054_))))
    (define gx#core-expand-ref%
      (lambda (_stx153950_)
        (let* ((_e153951153961_ _stx153950_)
               (_E153953153965_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153951153961_)))
               (_E153952153987_
                (lambda ()
                  (if (gx#stx-pair? _e153951153961_)
                      (let ((_e153954153969_ (gx#syntax-e _e153951153961_)))
                        (let ((_hd153955153972_ (##car _e153954153969_))
                              (_tl153956153974_ (##cdr _e153954153969_)))
                          (if (gx#stx-pair? _tl153956153974_)
                              (let ((_e153957153977_
                                     (gx#syntax-e _tl153956153974_)))
                                (let ((_hd153958153980_
                                       (##car _e153957153977_))
                                      (_tl153959153982_
                                       (##cdr _e153957153977_)))
                                  (let ((_id153985_ _hd153958153980_))
                                    (if (gx#stx-null? _tl153959153982_)
                                        (if (gx#identifier? _id153985_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id153985_
                                                          _stx153950_)
                                                         '()))
                                             (gx#stx-source _stx153950_))
                                            (_E153953153965_))
                                        (_E153953153965_)))))
                              (_E153953153965_))))
                      (_E153953153965_)))))
          (_E153952153987_))))
    (define gx#core-expand-setq%
      (lambda (_stx153896_)
        (let* ((_e153897153910_ _stx153896_)
               (_E153899153914_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153897153910_)))
               (_E153898153946_
                (lambda ()
                  (if (gx#stx-pair? _e153897153910_)
                      (let ((_e153900153918_ (gx#syntax-e _e153897153910_)))
                        (let ((_hd153901153921_ (##car _e153900153918_))
                              (_tl153902153923_ (##cdr _e153900153918_)))
                          (if (gx#stx-pair? _tl153902153923_)
                              (let ((_e153903153926_
                                     (gx#syntax-e _tl153902153923_)))
                                (let ((_hd153904153929_
                                       (##car _e153903153926_))
                                      (_tl153905153931_
                                       (##cdr _e153903153926_)))
                                  (let ((_id153934_ _hd153904153929_))
                                    (if (gx#stx-pair? _tl153905153931_)
                                        (let ((_e153906153936_
                                               (gx#syntax-e _tl153905153931_)))
                                          (let ((_hd153907153939_
                                                 (##car _e153906153936_))
                                                (_tl153908153941_
                                                 (##cdr _e153906153936_)))
                                            (let ((_expr153944_
                                                   _hd153907153939_))
                                              (if (gx#stx-null?
                                                   _tl153908153941_)
                                                  (if (gx#identifier?
                                                       _id153934_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id153934_
                            _stx153896_)
                           (cons (gx#core-expand-expression _expr153944_)
                                 '())))
               (gx#stx-source _stx153896_))
              (_E153899153914_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153899153914_)))))
                                        (_E153899153914_)))))
                              (_E153899153914_))))
                      (_E153899153914_)))))
          (_E153898153946_))))
    (define gx#macro-expand-extern
      (lambda (_stx153744_)
        (letrec ((_generate153746_
                  (lambda (_body153776_)
                    (let _lp153778_ ((_rest153780_ _body153776_)
                                     (_ns153781_
                                      (gx#core-context-namespace__0))
                                     (_r153782_ '()))
                      (let* ((_e153783153798_ _rest153780_)
                             (_E153796153802_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e153783153798_)))
                             (_E153792153806_
                              (lambda ()
                                (if (gx#stx-null? _e153783153798_)
                                    (if '#t
                                        (reverse _r153782_)
                                        (_E153796153802_))
                                    (_E153796153802_))))
                             (_E153785153863_
                              (lambda ()
                                (if (gx#stx-pair? _e153783153798_)
                                    (let ((_e153793153810_
                                           (gx#syntax-e _e153783153798_)))
                                      (let ((_hd153794153813_
                                             (##car _e153793153810_))
                                            (_tl153795153815_
                                             (##cdr _e153793153810_)))
                                        (let* ((_hd153818_ _hd153794153813_)
                                               (_rest153820_ _tl153795153815_))
                                          (if '#t
                                              (if (gx#identifier? _hd153818_)
                                                  (_lp153778_
                                                   _rest153820_
                                                   _ns153781_
                                                   (cons (cons _hd153818_
                                                               (cons (if _ns153781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd153818_
                                  _ns153781_
                                  '"#"
                                  _hd153818_)
                                 _hd153818_)
                             '()))
                 _r153782_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e153821153831_
                                                          _hd153818_)
                                                         (_E153823153835_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e153821153831_)))
                                                         (_E153822153859_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e153821153831_)
                        (let ((_e153824153839_ (gx#syntax-e _e153821153831_)))
                          (let ((_hd153825153842_ (##car _e153824153839_))
                                (_tl153826153844_ (##cdr _e153824153839_)))
                            (let ((_id153847_ _hd153825153842_))
                              (if (gx#stx-pair? _tl153826153844_)
                                  (let ((_e153827153849_
                                         (gx#syntax-e _tl153826153844_)))
                                    (let ((_hd153828153852_
                                           (##car _e153827153849_))
                                          (_tl153829153854_
                                           (##cdr _e153827153849_)))
                                      (let ((_eid153857_ _hd153828153852_))
                                        (if (gx#stx-null? _tl153829153854_)
                                            (if (and (gx#identifier?
                                                      _id153847_)
                                                     (gx#identifier?
                                                      _eid153857_))
                                                (_lp153778_
                                                 _rest153820_
                                                 _ns153781_
                                                 (cons (cons _id153847_
                                                             (cons _eid153857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r153782_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153823153835_))
                                            (_E153823153835_)))))
                                  (_E153823153835_)))))
                        (_E153823153835_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E153822153859_)))
                                              (_E153792153806_)))))
                                    (_E153792153806_))))
                             (_E153784153892_
                              (lambda ()
                                (if (gx#stx-pair? _e153783153798_)
                                    (let ((_e153786153867_
                                           (gx#syntax-e _e153783153798_)))
                                      (let ((_hd153787153870_
                                             (##car _e153786153867_))
                                            (_tl153788153872_
                                             (##cdr _e153786153867_)))
                                        (if (eq? (gx#stx-e _hd153787153870_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl153788153872_)
                                                (let ((_e153789153875_
                                                       (gx#syntax-e
                                                        _tl153788153872_)))
                                                  (let ((_hd153790153878_
                                                         (##car _e153789153875_))
                                                        (_tl153791153880_
                                                         (##cdr _e153789153875_)))
                                                    (let* ((_ns153883_
                                                            _hd153790153878_)
                                                           (_rest153885_
                                                            _tl153791153880_))
                                                      (if '#t
                                                          (let ((_ns153890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns153883_)
                             (symbol->string (gx#stx-e _ns153883_))
                             (if (or (gx#stx-string? _ns153883_)
                                     (gx#stx-false? _ns153883_))
                                 (gx#stx-e _ns153883_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx153744_
                                  _ns153883_)))))
                    (_lp153778_ _rest153885_ _ns153890_ _r153782_))
                  (_E153785153863_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153785153863_))
                                            (_E153785153863_))))
                                    (_E153785153863_)))))
                        (_E153784153892_))))))
          (let* ((_e153747153754_ _stx153744_)
                 (_E153749153758_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153747153754_)))
                 (_E153748153772_
                  (lambda ()
                    (if (gx#stx-pair? _e153747153754_)
                        (let ((_e153750153762_ (gx#syntax-e _e153747153754_)))
                          (let ((_hd153751153765_ (##car _e153750153762_))
                                (_tl153752153767_ (##cdr _e153750153762_)))
                            (let ((_body153770_ _tl153752153767_))
                              (if (gx#stx-list? _body153770_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate153746_ _body153770_))
                                  (_E153749153758_)))))
                        (_E153749153758_)))))
            (_E153748153772_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx153690_)
        (let* ((_e153691153704_ _stx153690_)
               (_E153693153708_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153691153704_)))
               (_E153692153740_
                (lambda ()
                  (if (gx#stx-pair? _e153691153704_)
                      (let ((_e153694153712_ (gx#syntax-e _e153691153704_)))
                        (let ((_hd153695153715_ (##car _e153694153712_))
                              (_tl153696153717_ (##cdr _e153694153712_)))
                          (if (gx#stx-pair? _tl153696153717_)
                              (let ((_e153697153720_
                                     (gx#syntax-e _tl153696153717_)))
                                (let ((_hd153698153723_
                                       (##car _e153697153720_))
                                      (_tl153699153725_
                                       (##cdr _e153697153720_)))
                                  (let ((_hd153728_ _hd153698153723_))
                                    (if (gx#stx-pair? _tl153699153725_)
                                        (let ((_e153700153730_
                                               (gx#syntax-e _tl153699153725_)))
                                          (let ((_hd153701153733_
                                                 (##car _e153700153730_))
                                                (_tl153702153735_
                                                 (##cdr _e153700153730_)))
                                            (let ((_expr153738_
                                                   _hd153701153733_))
                                              (if (gx#stx-null?
                                                   _tl153702153735_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd153728_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd153728_)
                          (cons _expr153738_ '())))
              (_E153693153708_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153693153708_)))))
                                        (_E153693153708_)))))
                              (_E153693153708_))))
                      (_E153693153708_)))))
          (_E153692153740_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx153636_)
        (let* ((_e153637153650_ _stx153636_)
               (_E153639153654_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153637153650_)))
               (_E153638153686_
                (lambda ()
                  (if (gx#stx-pair? _e153637153650_)
                      (let ((_e153640153658_ (gx#syntax-e _e153637153650_)))
                        (let ((_hd153641153661_ (##car _e153640153658_))
                              (_tl153642153663_ (##cdr _e153640153658_)))
                          (if (gx#stx-pair? _tl153642153663_)
                              (let ((_e153643153666_
                                     (gx#syntax-e _tl153642153663_)))
                                (let ((_hd153644153669_
                                       (##car _e153643153666_))
                                      (_tl153645153671_
                                       (##cdr _e153643153666_)))
                                  (let ((_hd153674_ _hd153644153669_))
                                    (if (gx#stx-pair? _tl153645153671_)
                                        (let ((_e153646153676_
                                               (gx#syntax-e _tl153645153671_)))
                                          (let ((_hd153647153679_
                                                 (##car _e153646153676_))
                                                (_tl153648153681_
                                                 (##cdr _e153646153676_)))
                                            (let ((_expr153684_
                                                   _hd153647153679_))
                                              (if (gx#stx-null?
                                                   _tl153648153681_)
                                                  (if (gx#identifier?
                                                       _hd153674_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd153674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr153684_ '())))
              (_E153639153654_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153639153654_)))))
                                        (_E153639153654_)))))
                              (_E153639153654_))))
                      (_E153639153654_)))))
          (_E153638153686_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx153582_)
        (let* ((_e153583153596_ _stx153582_)
               (_E153585153600_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153583153596_)))
               (_E153584153632_
                (lambda ()
                  (if (gx#stx-pair? _e153583153596_)
                      (let ((_e153586153604_ (gx#syntax-e _e153583153596_)))
                        (let ((_hd153587153607_ (##car _e153586153604_))
                              (_tl153588153609_ (##cdr _e153586153604_)))
                          (if (gx#stx-pair? _tl153588153609_)
                              (let ((_e153589153612_
                                     (gx#syntax-e _tl153588153609_)))
                                (let ((_hd153590153615_
                                       (##car _e153589153612_))
                                      (_tl153591153617_
                                       (##cdr _e153589153612_)))
                                  (let ((_id153620_ _hd153590153615_))
                                    (if (gx#stx-pair? _tl153591153617_)
                                        (let ((_e153592153622_
                                               (gx#syntax-e _tl153591153617_)))
                                          (let ((_hd153593153625_
                                                 (##car _e153592153622_))
                                                (_tl153594153627_
                                                 (##cdr _e153592153622_)))
                                            (let ((_alias-id153630_
                                                   _hd153593153625_))
                                              (if (gx#stx-null?
                                                   _tl153594153627_)
                                                  (if (and (gx#identifier?
                                                            _id153620_)
                                                           (gx#identifier?
                                                            _alias-id153630_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id153620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id153630_ '())))
              (_E153585153600_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153585153600_)))))
                                        (_E153585153600_)))))
                              (_E153585153600_))))
                      (_E153585153600_)))))
          (_E153584153632_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx153539_)
        (let* ((_e153540153550_ _stx153539_)
               (_E153542153554_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153540153550_)))
               (_E153541153578_
                (lambda ()
                  (if (gx#stx-pair? _e153540153550_)
                      (let ((_e153543153558_ (gx#syntax-e _e153540153550_)))
                        (let ((_hd153544153561_ (##car _e153543153558_))
                              (_tl153545153563_ (##cdr _e153543153558_)))
                          (if (gx#stx-pair? _tl153545153563_)
                              (let ((_e153546153566_
                                     (gx#syntax-e _tl153545153563_)))
                                (let ((_hd153547153569_
                                       (##car _e153546153566_))
                                      (_tl153548153571_
                                       (##cdr _e153546153566_)))
                                  (let* ((_hd153574_ _hd153547153569_)
                                         (_body153576_ _tl153548153571_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd153574_)
                                             (gx#stx-list? _body153576_)
                                             (not (gx#stx-null? _body153576_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd153574_)
                                         _body153576_)
                                        (_E153542153554_)))))
                              (_E153542153554_))))
                      (_E153542153554_)))))
          (_E153541153578_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx153475_)
        (letrec ((_generate153477_
                  (lambda (_clause153507_)
                    (let* ((_e153508153515_ _clause153507_)
                           (_E153510153519_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx153475_
                               _clause153507_)))
                           (_E153509153535_
                            (lambda ()
                              (if (gx#stx-pair? _e153508153515_)
                                  (let ((_e153511153523_
                                         (gx#syntax-e _e153508153515_)))
                                    (let ((_hd153512153526_
                                           (##car _e153511153523_))
                                          (_tl153513153528_
                                           (##cdr _e153511153523_)))
                                      (let* ((_hd153531_ _hd153512153526_)
                                             (_body153533_ _tl153513153528_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd153531_)
                                                 (gx#stx-list? _body153533_)
                                                 (not (gx#stx-null?
                                                       _body153533_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd153531_)
                                                   _body153533_)
                                             (gx#stx-source _clause153507_))
                                            (_E153510153519_)))))
                                  (_E153510153519_)))))
                      (_E153509153535_)))))
          (let* ((_e153478153485_ _stx153475_)
                 (_E153480153489_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153478153485_)))
                 (_E153479153503_
                  (lambda ()
                    (if (gx#stx-pair? _e153478153485_)
                        (let ((_e153481153493_ (gx#syntax-e _e153478153485_)))
                          (let ((_hd153482153496_ (##car _e153481153493_))
                                (_tl153483153498_ (##cdr _e153481153493_)))
                            (let ((_clauses153501_ _tl153483153498_))
                              (if (gx#stx-list? _clauses153501_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate153477_
                                    _clauses153501_))
                                  (_E153480153489_)))))
                        (_E153480153489_)))))
            (_E153479153503_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx153376_ _form153377_)
        (letrec ((_generate153379_
                  (lambda (_bind153422_)
                    (let* ((_e153423153433_ _bind153422_)
                           (_E153425153437_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx153376_
                               _bind153422_)))
                           (_E153424153461_
                            (lambda ()
                              (if (gx#stx-pair? _e153423153433_)
                                  (let ((_e153426153441_
                                         (gx#syntax-e _e153423153433_)))
                                    (let ((_hd153427153444_
                                           (##car _e153426153441_))
                                          (_tl153428153446_
                                           (##cdr _e153426153441_)))
                                      (let ((_ids153449_ _hd153427153444_))
                                        (if (gx#stx-pair? _tl153428153446_)
                                            (let ((_e153429153451_
                                                   (gx#syntax-e
                                                    _tl153428153446_)))
                                              (let ((_hd153430153454_
                                                     (##car _e153429153451_))
                                                    (_tl153431153456_
                                                     (##cdr _e153429153451_)))
                                                (let ((_expr153459_
                                                       _hd153430153454_))
                                                  (if (gx#stx-null?
                                                       _tl153431153456_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids153449_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids153449_)
                        (cons _expr153459_ '()))
                  (_E153425153437_))
              (_E153425153437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E153425153437_)))))
                                  (_E153425153437_)))))
                      (_E153424153461_)))))
          (let* ((_e153380153390_ _stx153376_)
                 (_E153382153394_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153380153390_)))
                 (_E153381153418_
                  (lambda ()
                    (if (gx#stx-pair? _e153380153390_)
                        (let ((_e153383153398_ (gx#syntax-e _e153380153390_)))
                          (let ((_hd153384153401_ (##car _e153383153398_))
                                (_tl153385153403_ (##cdr _e153383153398_)))
                            (if (gx#stx-pair? _tl153385153403_)
                                (let ((_e153386153406_
                                       (gx#syntax-e _tl153385153403_)))
                                  (let ((_hd153387153409_
                                         (##car _e153386153406_))
                                        (_tl153388153411_
                                         (##cdr _e153386153406_)))
                                    (let* ((_hd153414_ _hd153387153409_)
                                           (_body153416_ _tl153388153411_))
                                      (if (and (gx#stx-list? _hd153414_)
                                               (gx#stx-list? _body153416_)
                                               (not (gx#stx-null?
                                                     _body153416_)))
                                          (gx#core-cons*
                                           _form153377_
                                           (gx#stx-map1
                                            _generate153379_
                                            _hd153414_)
                                           _body153416_)
                                          (_E153382153394_)))))
                                (_E153382153394_))))
                        (_E153382153394_)))))
            (_E153381153418_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx153468_)
        (let ((_form153470_ '%#let-values))
          (gx#macro-expand-let-values__% _stx153468_ _form153470_))))
    (define gx#macro-expand-let-values
      (lambda _g160421_
        (let ((_g160420_ (##length _g160421_)))
          (cond ((##fx= _g160420_ 1)
                 (apply (lambda (_stx153468_)
                          (gx#macro-expand-let-values__0 _stx153468_))
                        _g160421_))
                ((##fx= _g160420_ 2)
                 (apply (lambda (_stx153472_ _form153473_)
                          (gx#macro-expand-let-values__%
                           _stx153472_
                           _form153473_))
                        _g160421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g160421_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx153373_)
        (gx#macro-expand-let-values__% _stx153373_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx153371_)
        (gx#macro-expand-let-values__% _stx153371_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx153262_)
        (let* ((_e153263153289_ _stx153262_)
               (_E153275153293_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153263153289_)))
               (_E153265153335_
                (lambda ()
                  (if (gx#stx-pair? _e153263153289_)
                      (let ((_e153276153297_ (gx#syntax-e _e153263153289_)))
                        (let ((_hd153277153300_ (##car _e153276153297_))
                              (_tl153278153302_ (##cdr _e153276153297_)))
                          (if (gx#stx-pair? _tl153278153302_)
                              (let ((_e153279153305_
                                     (gx#syntax-e _tl153278153302_)))
                                (let ((_hd153280153308_
                                       (##car _e153279153305_))
                                      (_tl153281153310_
                                       (##cdr _e153279153305_)))
                                  (let ((_test153313_ _hd153280153308_))
                                    (if (gx#stx-pair? _tl153281153310_)
                                        (let ((_e153282153315_
                                               (gx#syntax-e _tl153281153310_)))
                                          (let ((_hd153283153318_
                                                 (##car _e153282153315_))
                                                (_tl153284153320_
                                                 (##cdr _e153282153315_)))
                                            (let ((_K153323_ _hd153283153318_))
                                              (if (gx#stx-pair?
                                                   _tl153284153320_)
                                                  (let ((_e153285153325_
                                                         (gx#syntax-e
                                                          _tl153284153320_)))
                                                    (let ((_hd153286153328_
                                                           (##car _e153285153325_))
                                                          (_tl153287153330_
                                                           (##cdr _e153285153325_)))
                                                      (let ((_E153333_
                                                             _hd153286153328_))
                                                        (if (gx#stx-null?
                                                             _tl153287153330_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test153313_
                         _K153323_
                         _E153333_)
                        (_E153275153293_))
                    (_E153275153293_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153275153293_)))))
                                        (_E153275153293_)))))
                              (_E153275153293_))))
                      (_E153275153293_))))
               (_E153264153367_
                (lambda ()
                  (if (gx#stx-pair? _e153263153289_)
                      (let ((_e153266153339_ (gx#syntax-e _e153263153289_)))
                        (let ((_hd153267153342_ (##car _e153266153339_))
                              (_tl153268153344_ (##cdr _e153266153339_)))
                          (if (gx#stx-pair? _tl153268153344_)
                              (let ((_e153269153347_
                                     (gx#syntax-e _tl153268153344_)))
                                (let ((_hd153270153350_
                                       (##car _e153269153347_))
                                      (_tl153271153352_
                                       (##cdr _e153269153347_)))
                                  (let ((_test153355_ _hd153270153350_))
                                    (if (gx#stx-pair? _tl153271153352_)
                                        (let ((_e153272153357_
                                               (gx#syntax-e _tl153271153352_)))
                                          (let ((_hd153273153360_
                                                 (##car _e153272153357_))
                                                (_tl153274153362_
                                                 (##cdr _e153272153357_)))
                                            (let ((_K153365_ _hd153273153360_))
                                              (if (gx#stx-null?
                                                   _tl153274153362_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test153355_
                                                       _K153365_
                                                       '#!void)
                                                      (_E153265153335_))
                                                  (_E153265153335_)))))
                                        (_E153265153335_)))))
                              (_E153265153335_))))
                      (_E153265153335_)))))
          (_E153264153367_))))
    (define gx#free-identifier=?
      (lambda (_xid153250_ _yid153251_)
        (let ((_xe153253_ (gx#resolve-identifier__0 _xid153250_))
              (_ye153254_ (gx#resolve-identifier__0 _yid153251_)))
          (if (and _xe153253_ _ye153254_)
              (let ((_$e153256_ (eq? _xe153253_ _ye153254_)))
                (if _$e153256_
                    _$e153256_
                    (if (##structure-instance-of? _xe153253_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye153254_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe153253_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye153254_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe153253_ _ye153254_)
                  '#f
                  (gx#stx-eq? _xid153250_ _yid153251_))))))
    (define gx#bound-identifier=?
      (lambda (_xid153234_ _yid153235_)
        (letrec ((_context153237_
                  (lambda (_e153248_)
                    (if (##structure-direct-instance-of?
                         _e153248_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e153248_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks153238_
                  (lambda (_e153246_)
                    (if (symbol? _e153246_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e153246_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e153246_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e153246_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap153239_
                  (lambda (_e153244_)
                    (if (symbol? _e153244_)
                        _e153244_
                        (gx#syntax-local-unwrap _e153244_)))))
          (let ((_x153241_ (_unwrap153239_ _xid153234_))
                (_y153242_ (_unwrap153239_ _yid153235_)))
            (if (gx#stx-eq? _x153241_ _y153242_)
                (if (eq? (_context153237_ _x153241_)
                         (_context153237_ _y153242_))
                    (equal? (_marks153238_ _x153241_)
                            (_marks153238_ _y153242_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx153232_)
        (if (gx#identifier? _stx153232_)
            (gx#core-identifier=? _stx153232_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx153230_)
        (if (gx#identifier? _stx153230_)
            (gx#core-identifier=? _stx153230_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x153228_)
        (if (gx#identifier? _x153228_)
            (if (not (gx#underscore? _x153228_)) _x153228_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx153174_ _where153175_)
        (let _lp153177_ ((_rest153179_ (gx#syntax->list _stx153174_)))
          (let* ((_rest153180153188_ _rest153179_)
                 (_else153182153196_ (lambda () '#t))
                 (_K153184153206_
                  (lambda (_rest153199_ _hd153200_)
                    (if (not (gx#identifier? _hd153200_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where153175_
                         _hd153200_)
                        (if (find (lambda (_g153201153203_)
                                    (gx#bound-identifier=?
                                     _g153201153203_
                                     _hd153200_))
                                  _rest153199_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where153175_
                             _hd153200_)
                            (_lp153177_ _rest153199_))))))
            (if (##pair? _rest153180153188_)
                (let ((_hd153185153209_ (##car _rest153180153188_))
                      (_tl153186153211_ (##cdr _rest153180153188_)))
                  (let* ((_hd153214_ _hd153185153209_)
                         (_rest153216_ _tl153186153211_))
                    (_K153184153206_ _rest153216_ _hd153214_)))
                (_else153182153196_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx153221_)
        (let ((_where153223_ _stx153221_))
          (gx#check-duplicate-identifiers__% _stx153221_ _where153223_))))
    (define gx#check-duplicate-identifiers
      (lambda _g160423_
        (let ((_g160422_ (##length _g160423_)))
          (cond ((##fx= _g160422_ 1)
                 (apply (lambda (_stx153221_)
                          (gx#check-duplicate-identifiers__0 _stx153221_))
                        _g160423_))
                ((##fx= _g160422_ 2)
                 (apply (lambda (_stx153225_ _where153226_)
                          (gx#check-duplicate-identifiers__%
                           _stx153225_
                           _where153226_))
                        _g160423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g160423_))))))
    (define gx#core-bind-values?
      (lambda (_stx153166_)
        (gx#stx-andmap
         (lambda (_x153168_)
           (let ((_$e153170_ (gx#identifier? _x153168_)))
             (if _$e153170_ _$e153170_ (gx#stx-false? _x153168_))))
         _stx153166_)))
    (define gx#core-bind-values!__%
      (lambda (_stx153130_ _rebind?153131_ _phi153132_ _ctx153133_)
        (gx#stx-for-each1
         (lambda (_id153135_)
           (if (gx#identifier? _id153135_)
               (gx#core-bind-runtime!__%
                _id153135_
                _rebind?153131_
                _phi153132_
                _ctx153133_)
               '#!void))
         _stx153130_)))
    (define gx#core-bind-values!__0
      (lambda (_stx153140_)
        (let* ((_rebind?153142_ '#f)
               (_phi153144_ (gx#current-expander-phi))
               (_ctx153146_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx153140_
           _rebind?153142_
           _phi153144_
           _ctx153146_))))
    (define gx#core-bind-values!__1
      (lambda (_stx153148_ _rebind?153149_)
        (let* ((_phi153151_ (gx#current-expander-phi))
               (_ctx153153_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx153148_
           _rebind?153149_
           _phi153151_
           _ctx153153_))))
    (define gx#core-bind-values!__2
      (lambda (_stx153155_ _rebind?153156_ _phi153157_)
        (let ((_ctx153159_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx153155_
           _rebind?153156_
           _phi153157_
           _ctx153159_))))
    (define gx#core-bind-values!
      (lambda _g160425_
        (let ((_g160424_ (##length _g160425_)))
          (cond ((##fx= _g160424_ 1)
                 (apply (lambda (_stx153140_)
                          (gx#core-bind-values!__0 _stx153140_))
                        _g160425_))
                ((##fx= _g160424_ 2)
                 (apply (lambda (_stx153148_ _rebind?153149_)
                          (gx#core-bind-values!__1
                           _stx153148_
                           _rebind?153149_))
                        _g160425_))
                ((##fx= _g160424_ 3)
                 (apply (lambda (_stx153155_ _rebind?153156_ _phi153157_)
                          (gx#core-bind-values!__2
                           _stx153155_
                           _rebind?153156_
                           _phi153157_))
                        _g160425_))
                ((##fx= _g160424_ 4)
                 (apply (lambda (_stx153161_
                                 _rebind?153162_
                                 _phi153163_
                                 _ctx153164_)
                          (gx#core-bind-values!__%
                           _stx153161_
                           _rebind?153162_
                           _phi153163_
                           _ctx153164_))
                        _g160425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g160425_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx153125_)
        (gx#stx-map1
         (lambda (_x153127_)
           (if (gx#identifier? _x153127_)
               (gx#core-quote-syntax__0 _x153127_)
               '#f))
         _stx153125_)))
    (define gx#core-runtime-ref?
      (lambda (_stx153118_)
        (if (gx#identifier? _stx153118_)
            (let* ((_bind153120_ (gx#resolve-identifier__0 _stx153118_))
                   (_$e153122_ (not _bind153120_)))
              (if _$e153122_
                  _$e153122_
                  (##structure-instance-of?
                   _bind153120_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id153110_ _form153111_)
        (let ((_bind153113_ (gx#resolve-identifier__0 _id153110_)))
          (if (##structure-instance-of? _bind153113_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id153110_)
              (if (not _bind153113_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id153110_)))
                      (gx#core-quote-syntax__0 _id153110_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form153111_
                       _id153110_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form153111_
                   _id153110_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id153069_ _rebind?153070_ _phi153071_ _ctx153072_)
        (let* ((_key153074_ (gx#core-identifier-key _id153069_))
               (_eid153076_
                (gx#make-binding-id__%
                 _key153074_
                 '#f
                 _phi153071_
                 _ctx153072_))
               (_bind153078_
                (if (##structure-instance-of?
                     _ctx153072_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid153076_
                     _key153074_
                     _phi153071_
                     _ctx153072_)
                    (if (##structure-instance-of?
                         _ctx153072_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid153076_
                         _key153074_
                         _phi153071_)
                        (if (##structure-instance-of?
                             _ctx153072_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid153076_
                             _key153074_
                             _phi153071_)
                            (##structure
                             gx#runtime-binding::t
                             _eid153076_
                             _key153074_
                             _phi153071_))))))
          (gx#bind-identifier!__%
           _id153069_
           _bind153078_
           _rebind?153070_
           _phi153071_
           _ctx153072_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id153084_)
        (let* ((_rebind?153086_ '#f)
               (_phi153088_ (gx#current-expander-phi))
               (_ctx153090_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id153084_
           _rebind?153086_
           _phi153088_
           _ctx153090_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id153092_ _rebind?153093_)
        (let* ((_phi153095_ (gx#current-expander-phi))
               (_ctx153097_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id153092_
           _rebind?153093_
           _phi153095_
           _ctx153097_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id153099_ _rebind?153100_ _phi153101_)
        (let ((_ctx153103_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id153099_
           _rebind?153100_
           _phi153101_
           _ctx153103_))))
    (define gx#core-bind-runtime!
      (lambda _g160427_
        (let ((_g160426_ (##length _g160427_)))
          (cond ((##fx= _g160426_ 1)
                 (apply (lambda (_id153084_)
                          (gx#core-bind-runtime!__0 _id153084_))
                        _g160427_))
                ((##fx= _g160426_ 2)
                 (apply (lambda (_id153092_ _rebind?153093_)
                          (gx#core-bind-runtime!__1
                           _id153092_
                           _rebind?153093_))
                        _g160427_))
                ((##fx= _g160426_ 3)
                 (apply (lambda (_id153099_ _rebind?153100_ _phi153101_)
                          (gx#core-bind-runtime!__2
                           _id153099_
                           _rebind?153100_
                           _phi153101_))
                        _g160427_))
                ((##fx= _g160426_ 4)
                 (apply (lambda (_id153105_
                                 _rebind?153106_
                                 _phi153107_
                                 _ctx153108_)
                          (gx#core-bind-runtime!__%
                           _id153105_
                           _rebind?153106_
                           _phi153107_
                           _ctx153108_))
                        _g160427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g160427_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id153024_ _eid153025_ _rebind?153026_ _phi153027_ _ctx153028_)
        (let* ((_key153030_ (gx#core-identifier-key _id153024_))
               (_bind153032_
                (if (##structure-instance-of?
                     _ctx153028_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid153025_
                     _key153030_
                     _phi153027_
                     _ctx153028_)
                    (if (##structure-instance-of?
                         _ctx153028_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid153025_
                         _key153030_
                         _phi153027_)
                        (##structure
                         gx#runtime-binding::t
                         _eid153025_
                         _key153030_
                         _phi153027_)))))
          (gx#bind-identifier!__%
           _id153024_
           _bind153032_
           _rebind?153026_
           _phi153027_
           _ctx153028_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id153038_ _eid153039_)
        (let* ((_rebind?153041_ '#f)
               (_phi153043_ (gx#current-expander-phi))
               (_ctx153045_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id153038_
           _eid153039_
           _rebind?153041_
           _phi153043_
           _ctx153045_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id153047_ _eid153048_ _rebind?153049_)
        (let* ((_phi153051_ (gx#current-expander-phi))
               (_ctx153053_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id153047_
           _eid153048_
           _rebind?153049_
           _phi153051_
           _ctx153053_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id153055_ _eid153056_ _rebind?153057_ _phi153058_)
        (let ((_ctx153060_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id153055_
           _eid153056_
           _rebind?153057_
           _phi153058_
           _ctx153060_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g160429_
        (let ((_g160428_ (##length _g160429_)))
          (cond ((##fx= _g160428_ 2)
                 (apply (lambda (_id153038_ _eid153039_)
                          (gx#core-bind-runtime-reference!__0
                           _id153038_
                           _eid153039_))
                        _g160429_))
                ((##fx= _g160428_ 3)
                 (apply (lambda (_id153047_ _eid153048_ _rebind?153049_)
                          (gx#core-bind-runtime-reference!__1
                           _id153047_
                           _eid153048_
                           _rebind?153049_))
                        _g160429_))
                ((##fx= _g160428_ 4)
                 (apply (lambda (_id153055_
                                 _eid153056_
                                 _rebind?153057_
                                 _phi153058_)
                          (gx#core-bind-runtime-reference!__2
                           _id153055_
                           _eid153056_
                           _rebind?153057_
                           _phi153058_))
                        _g160429_))
                ((##fx= _g160428_ 5)
                 (apply (lambda (_id153062_
                                 _eid153063_
                                 _rebind?153064_
                                 _phi153065_
                                 _ctx153066_)
                          (gx#core-bind-runtime-reference!__%
                           _id153062_
                           _eid153063_
                           _rebind?153064_
                           _phi153065_
                           _ctx153066_))
                        _g160429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g160429_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id152984_ _eid152985_ _rebind?152986_ _phi152987_ _ctx152988_)
        (gx#bind-identifier!__%
         _id152984_
         (##structure
          gx#extern-binding::t
          _eid152985_
          (gx#core-identifier-key _id152984_)
          _phi152987_)
         _rebind?152986_
         _phi152987_
         _ctx152988_)))
    (define gx#core-bind-extern!__0
      (lambda (_id152993_ _eid152994_)
        (let* ((_rebind?152996_ '#f)
               (_phi152998_ (gx#current-expander-phi))
               (_ctx153000_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id152993_
           _eid152994_
           _rebind?152996_
           _phi152998_
           _ctx153000_))))
    (define gx#core-bind-extern!__1
      (lambda (_id153002_ _eid153003_ _rebind?153004_)
        (let* ((_phi153006_ (gx#current-expander-phi))
               (_ctx153008_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id153002_
           _eid153003_
           _rebind?153004_
           _phi153006_
           _ctx153008_))))
    (define gx#core-bind-extern!__2
      (lambda (_id153010_ _eid153011_ _rebind?153012_ _phi153013_)
        (let ((_ctx153015_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id153010_
           _eid153011_
           _rebind?153012_
           _phi153013_
           _ctx153015_))))
    (define gx#core-bind-extern!
      (lambda _g160431_
        (let ((_g160430_ (##length _g160431_)))
          (cond ((##fx= _g160430_ 2)
                 (apply (lambda (_id152993_ _eid152994_)
                          (gx#core-bind-extern!__0 _id152993_ _eid152994_))
                        _g160431_))
                ((##fx= _g160430_ 3)
                 (apply (lambda (_id153002_ _eid153003_ _rebind?153004_)
                          (gx#core-bind-extern!__1
                           _id153002_
                           _eid153003_
                           _rebind?153004_))
                        _g160431_))
                ((##fx= _g160430_ 4)
                 (apply (lambda (_id153010_
                                 _eid153011_
                                 _rebind?153012_
                                 _phi153013_)
                          (gx#core-bind-extern!__2
                           _id153010_
                           _eid153011_
                           _rebind?153012_
                           _phi153013_))
                        _g160431_))
                ((##fx= _g160430_ 5)
                 (apply (lambda (_id153017_
                                 _eid153018_
                                 _rebind?153019_
                                 _phi153020_
                                 _ctx153021_)
                          (gx#core-bind-extern!__%
                           _id153017_
                           _eid153018_
                           _rebind?153019_
                           _phi153020_
                           _ctx153021_))
                        _g160431_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g160431_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id152938_ _e152939_ _rebind?152940_ _phi152941_ _ctx152942_)
        (gx#bind-identifier!__%
         _id152938_
         (let ((_key152947_ (gx#core-identifier-key _id152938_))
               (_e152948_
                (if (or (##structure-instance-of? _e152939_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e152939_
                         'gx#expander-context::t))
                    _e152939_
                    (##structure
                     gx#user-expander::t
                     _e152939_
                     _ctx152942_
                     _phi152941_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key152947_ '#t _phi152941_ _ctx152942_)
            _key152947_
            _phi152941_
            _e152948_))
         _rebind?152940_
         _phi152941_
         _ctx152942_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id152953_ _e152954_)
        (let* ((_rebind?152956_ '#f)
               (_phi152958_ (gx#current-expander-phi))
               (_ctx152960_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id152953_
           _e152954_
           _rebind?152956_
           _phi152958_
           _ctx152960_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id152962_ _e152963_ _rebind?152964_)
        (let* ((_phi152966_ (gx#current-expander-phi))
               (_ctx152968_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id152962_
           _e152963_
           _rebind?152964_
           _phi152966_
           _ctx152968_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id152970_ _e152971_ _rebind?152972_ _phi152973_)
        (let ((_ctx152975_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id152970_
           _e152971_
           _rebind?152972_
           _phi152973_
           _ctx152975_))))
    (define gx#core-bind-syntax!
      (lambda _g160433_
        (let ((_g160432_ (##length _g160433_)))
          (cond ((##fx= _g160432_ 2)
                 (apply (lambda (_id152953_ _e152954_)
                          (gx#core-bind-syntax!__0 _id152953_ _e152954_))
                        _g160433_))
                ((##fx= _g160432_ 3)
                 (apply (lambda (_id152962_ _e152963_ _rebind?152964_)
                          (gx#core-bind-syntax!__1
                           _id152962_
                           _e152963_
                           _rebind?152964_))
                        _g160433_))
                ((##fx= _g160432_ 4)
                 (apply (lambda (_id152970_
                                 _e152971_
                                 _rebind?152972_
                                 _phi152973_)
                          (gx#core-bind-syntax!__2
                           _id152970_
                           _e152971_
                           _rebind?152972_
                           _phi152973_))
                        _g160433_))
                ((##fx= _g160432_ 5)
                 (apply (lambda (_id152977_
                                 _e152978_
                                 _rebind?152979_
                                 _phi152980_
                                 _ctx152981_)
                          (gx#core-bind-syntax!__%
                           _id152977_
                           _e152978_
                           _rebind?152979_
                           _phi152980_
                           _ctx152981_))
                        _g160433_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g160433_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id152921_ _e152922_ _rebind?152923_)
        (gx#core-bind-syntax!__%
         _id152921_
         _e152922_
         _rebind?152923_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id152928_ _e152929_)
        (let ((_rebind?152931_ '#f))
          (gx#core-bind-root-syntax!__%
           _id152928_
           _e152929_
           _rebind?152931_))))
    (define gx#core-bind-root-syntax!
      (lambda _g160435_
        (let ((_g160434_ (##length _g160435_)))
          (cond ((##fx= _g160434_ 2)
                 (apply (lambda (_id152928_ _e152929_)
                          (gx#core-bind-root-syntax!__0 _id152928_ _e152929_))
                        _g160435_))
                ((##fx= _g160434_ 3)
                 (apply (lambda (_id152933_ _e152934_ _rebind?152935_)
                          (gx#core-bind-root-syntax!__%
                           _id152933_
                           _e152934_
                           _rebind?152935_))
                        _g160435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g160435_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id152879_
               _alias-id152880_
               _rebind?152881_
               _phi152882_
               _ctx152883_)
        (gx#bind-identifier!__%
         _id152879_
         (let ((_key152885_ (gx#core-identifier-key _id152879_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key152885_ '#t _phi152882_ _ctx152883_)
            _key152885_
            _phi152882_
            _alias-id152880_))
         _rebind?152881_
         _phi152882_
         _ctx152883_)))
    (define gx#core-bind-alias!__0
      (lambda (_id152890_ _alias-id152891_)
        (let* ((_rebind?152893_ '#f)
               (_phi152895_ (gx#current-expander-phi))
               (_ctx152897_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id152890_
           _alias-id152891_
           _rebind?152893_
           _phi152895_
           _ctx152897_))))
    (define gx#core-bind-alias!__1
      (lambda (_id152899_ _alias-id152900_ _rebind?152901_)
        (let* ((_phi152903_ (gx#current-expander-phi))
               (_ctx152905_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id152899_
           _alias-id152900_
           _rebind?152901_
           _phi152903_
           _ctx152905_))))
    (define gx#core-bind-alias!__2
      (lambda (_id152907_ _alias-id152908_ _rebind?152909_ _phi152910_)
        (let ((_ctx152912_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id152907_
           _alias-id152908_
           _rebind?152909_
           _phi152910_
           _ctx152912_))))
    (define gx#core-bind-alias!
      (lambda _g160437_
        (let ((_g160436_ (##length _g160437_)))
          (cond ((##fx= _g160436_ 2)
                 (apply (lambda (_id152890_ _alias-id152891_)
                          (gx#core-bind-alias!__0 _id152890_ _alias-id152891_))
                        _g160437_))
                ((##fx= _g160436_ 3)
                 (apply (lambda (_id152899_ _alias-id152900_ _rebind?152901_)
                          (gx#core-bind-alias!__1
                           _id152899_
                           _alias-id152900_
                           _rebind?152901_))
                        _g160437_))
                ((##fx= _g160436_ 4)
                 (apply (lambda (_id152907_
                                 _alias-id152908_
                                 _rebind?152909_
                                 _phi152910_)
                          (gx#core-bind-alias!__2
                           _id152907_
                           _alias-id152908_
                           _rebind?152909_
                           _phi152910_))
                        _g160437_))
                ((##fx= _g160436_ 5)
                 (apply (lambda (_id152914_
                                 _alias-id152915_
                                 _rebind?152916_
                                 _phi152917_
                                 _ctx152918_)
                          (gx#core-bind-alias!__%
                           _id152914_
                           _alias-id152915_
                           _rebind?152916_
                           _phi152917_
                           _ctx152918_))
                        _g160437_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g160437_))))))
    (define gx#make-binding-id__%
      (lambda (_key152836_ _syntax?152837_ _phi152838_ _ctx152839_)
        (if (uninterned-symbol? _key152836_)
            (gensym 'L)
            (if (pair? _key152836_)
                (gensym (car _key152836_))
                (if (##structure-instance-of? _ctx152839_ 'gx#top-context::t)
                    (let ((_ns152841_
                           (gx#core-context-namespace__% _ctx152839_)))
                      (if (and (fxzero? _phi152838_) (not _syntax?152837_))
                          (if _ns152841_
                              (make-symbol__1 _ns152841_ '"#" _key152836_)
                              _key152836_)
                          (if _syntax?152837_
                              (make-symbol__1
                               (let ((_$e152843_ _ns152841_))
                                 (if _$e152843_ _$e152843_ '""))
                               '"[:"
                               (number->string _phi152838_)
                               '":]#"
                               _key152836_)
                              (make-symbol__1
                               (let ((_$e152846_ _ns152841_))
                                 (if _$e152846_ _$e152846_ '""))
                               '"["
                               (number->string _phi152838_)
                               '"]#"
                               _key152836_))))
                    (gensym _key152836_))))))
    (define gx#make-binding-id__0
      (lambda (_key152852_)
        (let* ((_syntax?152854_ '#f)
               (_phi152856_ (gx#current-expander-phi))
               (_ctx152858_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key152852_
           _syntax?152854_
           _phi152856_
           _ctx152858_))))
    (define gx#make-binding-id__1
      (lambda (_key152860_ _syntax?152861_)
        (let* ((_phi152863_ (gx#current-expander-phi))
               (_ctx152865_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key152860_
           _syntax?152861_
           _phi152863_
           _ctx152865_))))
    (define gx#make-binding-id__2
      (lambda (_key152867_ _syntax?152868_ _phi152869_)
        (let ((_ctx152871_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key152867_
           _syntax?152868_
           _phi152869_
           _ctx152871_))))
    (define gx#make-binding-id
      (lambda _g160439_
        (let ((_g160438_ (##length _g160439_)))
          (cond ((##fx= _g160438_ 1)
                 (apply (lambda (_key152852_)
                          (gx#make-binding-id__0 _key152852_))
                        _g160439_))
                ((##fx= _g160438_ 2)
                 (apply (lambda (_key152860_ _syntax?152861_)
                          (gx#make-binding-id__1 _key152860_ _syntax?152861_))
                        _g160439_))
                ((##fx= _g160438_ 3)
                 (apply (lambda (_key152867_ _syntax?152868_ _phi152869_)
                          (gx#make-binding-id__2
                           _key152867_
                           _syntax?152868_
                           _phi152869_))
                        _g160439_))
                ((##fx= _g160438_ 4)
                 (apply (lambda (_key152873_
                                 _syntax?152874_
                                 _phi152875_
                                 _ctx152876_)
                          (gx#make-binding-id__%
                           _key152873_
                           _syntax?152874_
                           _phi152875_
                           _ctx152876_))
                        _g160439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g160439_))))))))
