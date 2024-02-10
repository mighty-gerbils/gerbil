(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707601716)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx152950_)
        (letrec ((_expand-special152952_
                  (lambda (_hd152954_ _K152955_ _rest152956_ _r152957_)
                    (_K152955_
                     _rest152956_
                     (cons (gx#core-expand-top _hd152954_) _r152957_)))))
          (gx#core-expand-block__0 _stx152950_ _expand-special152952_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx152703_)
        (letrec ((_expand-special152705_
                  (lambda (_hd152825_ _K152826_ _rest152827_ _r152828_)
                    (let* ((_K152832_
                            (lambda (_e152830_)
                              (_K152826_
                               _rest152827_
                               (cons _e152830_ _r152828_))))
                           (_e152833152862_ _hd152825_)
                           (_E152857152866_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152833152862_)))
                           (_E152853152878_
                            (lambda ()
                              (if (gx#stx-pair? _e152833152862_)
                                  (let ((_e152858152870_
                                         (gx#syntax-e _e152833152862_)))
                                    (let ((_hd152859152873_
                                           (##car _e152858152870_))
                                          (_tl152860152875_
                                           (##cdr _e152858152870_)))
                                      (if (and (gx#identifier?
                                                _hd152859152873_)
                                               (gx#core-identifier=?
                                                _hd152859152873_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K152832_
                                               (gx#core-expand-define-runtime%
                                                _hd152825_))
                                              (_E152857152866_))
                                          (_E152857152866_))))
                                  (_E152857152866_))))
                           (_E152849152890_
                            (lambda ()
                              (if (gx#stx-pair? _e152833152862_)
                                  (let ((_e152854152882_
                                         (gx#syntax-e _e152833152862_)))
                                    (let ((_hd152855152885_
                                           (##car _e152854152882_))
                                          (_tl152856152887_
                                           (##cdr _e152854152882_)))
                                      (if (and (gx#identifier?
                                                _hd152855152885_)
                                               (gx#core-identifier=?
                                                _hd152855152885_
                                                '%#define-alias))
                                          (if '#t
                                              (_K152832_
                                               (gx#core-expand-define-alias%
                                                _hd152825_))
                                              (_E152853152878_))
                                          (_E152853152878_))))
                                  (_E152853152878_))))
                           (_E152839152902_
                            (lambda ()
                              (if (gx#stx-pair? _e152833152862_)
                                  (let ((_e152850152894_
                                         (gx#syntax-e _e152833152862_)))
                                    (let ((_hd152851152897_
                                           (##car _e152850152894_))
                                          (_tl152852152899_
                                           (##cdr _e152850152894_)))
                                      (if (and (gx#identifier?
                                                _hd152851152897_)
                                               (gx#core-identifier=?
                                                _hd152851152897_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K152832_
                                               (gx#core-expand-define-syntax%
                                                _hd152825_))
                                              (_E152849152890_))
                                          (_E152849152890_))))
                                  (_E152849152890_))))
                           (_E152835152934_
                            (lambda ()
                              (if (gx#stx-pair? _e152833152862_)
                                  (let ((_e152840152906_
                                         (gx#syntax-e _e152833152862_)))
                                    (let ((_hd152841152909_
                                           (##car _e152840152906_))
                                          (_tl152842152911_
                                           (##cdr _e152840152906_)))
                                      (if (and (gx#identifier?
                                                _hd152841152909_)
                                               (gx#core-identifier=?
                                                _hd152841152909_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152842152911_)
                                              (let ((_e152843152914_
                                                     (gx#syntax-e
                                                      _tl152842152911_)))
                                                (let ((_hd152844152917_
                                                       (##car _e152843152914_))
                                                      (_tl152845152919_
                                                       (##cdr _e152843152914_)))
                                                  (let ((_hd-bind152922_
                                                         _hd152844152917_))
                                                    (if (gx#stx-pair?
                                                         _tl152845152919_)
                                                        (let ((_e152846152924_
                                                               (gx#syntax-e
                                                                _tl152845152919_)))
                                                          (let ((_hd152847152927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152846152924_))
                        (_tl152848152929_ (##cdr _e152846152924_)))
                    (let ((_expr152932_ _hd152847152927_))
                      (if (gx#stx-null? _tl152848152929_)
                          (if (gx#core-bind-values? _hd-bind152922_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152922_)
                                (_K152832_ _hd152825_))
                              (_E152839152902_))
                          (_E152839152902_)))))
                (_E152839152902_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152839152902_))
                                          (_E152839152902_))))
                                  (_E152839152902_))))
                           (_E152834152946_
                            (lambda ()
                              (if (gx#stx-pair? _e152833152862_)
                                  (let ((_e152836152938_
                                         (gx#syntax-e _e152833152862_)))
                                    (let ((_hd152837152941_
                                           (##car _e152836152938_))
                                          (_tl152838152943_
                                           (##cdr _e152836152938_)))
                                      (if (and (gx#identifier?
                                                _hd152837152941_)
                                               (gx#core-identifier=?
                                                _hd152837152941_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K152832_
                                               (gx#core-expand-begin-syntax%
                                                _hd152825_))
                                              (_E152835152934_))
                                          (_E152835152934_))))
                                  (_E152835152934_)))))
                      (_E152834152946_))))
                 (_eval-body152706_
                  (lambda (_rbody152714_)
                    (let _lp152716_ ((_rest152718_ _rbody152714_)
                                     (_body152719_ '())
                                     (_ebody152720_ '()))
                      (let* ((_rest152721152729_ _rest152718_)
                             (_else152723152737_
                              (lambda ()
                                (values _body152719_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody152720_)
                                          (gx#stx-source _stx152703_))))))
                             (_K152725152813_
                              (lambda (_rest152740_ _hd152741_)
                                (let* ((_e152742152759_ _hd152741_)
                                       (_E152754152763_
                                        (lambda ()
                                          (_lp152716_
                                           _rest152740_
                                           (cons _hd152741_ _body152719_)
                                           (cons _hd152741_ _ebody152720_))))
                                       (_E152744152775_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152742152759_)
                                              (let ((_e152755152767_
                                                     (gx#syntax-e
                                                      _e152742152759_)))
                                                (let ((_hd152756152770_
                                                       (##car _e152755152767_))
                                                      (_tl152757152772_
                                                       (##cdr _e152755152767_)))
                                                  (if (and (gx#identifier?
                                                            _hd152756152770_)
                                                           (gx#core-identifier=?
                                                            _hd152756152770_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp152716_
                                                           _rest152740_
                                                           (cons _hd152741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body152719_)
                   _ebody152720_)
                  (_E152754152763_))
              (_E152754152763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152754152763_))))
                                       (_E152743152809_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152742152759_)
                                              (let ((_e152745152779_
                                                     (gx#syntax-e
                                                      _e152742152759_)))
                                                (let ((_hd152746152782_
                                                       (##car _e152745152779_))
                                                      (_tl152747152784_
                                                       (##cdr _e152745152779_)))
                                                  (if (and (gx#identifier?
                                                            _hd152746152782_)
                                                           (gx#core-identifier=?
                                                            _hd152746152782_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl152747152784_)
                                                          (let ((_e152748152787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl152747152784_)))
                    (let ((_hd152749152790_ (##car _e152748152787_))
                          (_tl152750152792_ (##cdr _e152748152787_)))
                      (let ((_hd-bind152795_ _hd152749152790_))
                        (if (gx#stx-pair? _tl152750152792_)
                            (let ((_e152751152797_
                                   (gx#syntax-e _tl152750152792_)))
                              (let ((_hd152752152800_ (##car _e152751152797_))
                                    (_tl152753152802_ (##cdr _e152751152797_)))
                                (let ((_expr152805_ _hd152752152800_))
                                  (if (gx#stx-null? _tl152753152802_)
                                      (if '#t
                                          (let ((_ehd152807_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind152795_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr152805_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd152741_))))
                                            (_lp152716_
                                             _rest152740_
                                             (cons _ehd152807_ _body152719_)
                                             (cons _ehd152807_ _ebody152720_)))
                                          (_E152744152775_))
                                      (_E152744152775_)))))
                            (_E152744152775_)))))
                  (_E152744152775_))
              (_E152744152775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152744152775_)))))
                                  (_E152743152809_)))))
                        (if (##pair? _rest152721152729_)
                            (let ((_hd152726152816_ (##car _rest152721152729_))
                                  (_tl152727152818_
                                   (##cdr _rest152721152729_)))
                              (let* ((_hd152821_ _hd152726152816_)
                                     (_rest152823_ _tl152727152818_))
                                (_K152725152813_ _rest152823_ _hd152821_)))
                            (_else152723152737_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody152709_
                     (gx#core-expand-block__1
                      _stx152703_
                      _expand-special152705_
                      '#f))
                    (_g157441_ (_eval-body152706_ _rbody152709_)))
               (begin
                 (let ((_g157442_
                        (if (##values? _g157441_)
                            (##vector-length _g157441_)
                            1)))
                   (if (not (##fx= _g157442_ 2))
                       (error "Context expects 2 values" _g157442_)))
                 (let ((_expanded-body152711_ (##vector-ref _g157441_ 0))
                       (_value152712_ (##vector-ref _g157441_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body152711_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value152712_ '())))
                    (gx#stx-source _stx152703_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx152673_)
        (let* ((_e152674152681_ _stx152673_)
               (_E152676152685_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152674152681_)))
               (_E152675152699_
                (lambda ()
                  (if (gx#stx-pair? _e152674152681_)
                      (let ((_e152677152689_ (gx#syntax-e _e152674152681_)))
                        (let ((_hd152678152692_ (##car _e152677152689_))
                              (_tl152679152694_ (##cdr _e152677152689_)))
                          (let ((_body152697_ _tl152679152694_))
                            (if (gx#stx-list? _body152697_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body152697_)
                                 (gx#stx-source _stx152673_))
                                (_E152676152685_)))))
                      (_E152676152685_)))))
          (_E152675152699_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx152671_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx152671_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx152617_)
        (let* ((_e152618152631_ _stx152617_)
               (_E152620152635_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152618152631_)))
               (_E152619152667_
                (lambda ()
                  (if (gx#stx-pair? _e152618152631_)
                      (let ((_e152621152639_ (gx#syntax-e _e152618152631_)))
                        (let ((_hd152622152642_ (##car _e152621152639_))
                              (_tl152623152644_ (##cdr _e152621152639_)))
                          (if (gx#stx-pair? _tl152623152644_)
                              (let ((_e152624152647_
                                     (gx#syntax-e _tl152623152644_)))
                                (let ((_hd152625152650_
                                       (##car _e152624152647_))
                                      (_tl152626152652_
                                       (##cdr _e152624152647_)))
                                  (let ((_ann152655_ _hd152625152650_))
                                    (if (gx#stx-pair? _tl152626152652_)
                                        (let ((_e152627152657_
                                               (gx#syntax-e _tl152626152652_)))
                                          (let ((_hd152628152660_
                                                 (##car _e152627152657_))
                                                (_tl152629152662_
                                                 (##cdr _e152627152657_)))
                                            (let ((_expr152665_
                                                   _hd152628152660_))
                                              (if (gx#stx-null?
                                                   _tl152629152662_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann152655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr152665_)
                                 '())))
               (gx#stx-source _stx152617_))
              (_E152620152635_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152620152635_)))))
                                        (_E152620152635_)))))
                              (_E152620152635_))))
                      (_E152620152635_)))))
          (_E152619152667_))))
    (define gx#core-expand-local-block
      (lambda (_stx152341_ _body152342_)
        (letrec ((_expand-special152344_
                  (lambda (_hd152612_ _K152613_ _rest152614_ _r152615_)
                    (_K152613_
                     '()
                     (cons (_expand-internal152345_ _hd152612_ _rest152614_)
                           _r152615_))))
                 (_expand-internal152345_
                  (lambda (_hd152608_ _rest152609_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal152347_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd152608_ _rest152609_))
                          (gx#stx-source _stx152341_))
                         _expand-internal-special152346_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj157435
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj157435)
                       __obj157435))))
                 (_expand-internal-special152346_
                  (lambda (_hd152503_ _K152504_ _rest152505_ _r152506_)
                    (let* ((_e152507152532_ _hd152503_)
                           (_E152527152536_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152507152532_)))
                           (_E152523152548_
                            (lambda ()
                              (if (gx#stx-pair? _e152507152532_)
                                  (let ((_e152528152540_
                                         (gx#syntax-e _e152507152532_)))
                                    (let ((_hd152529152543_
                                           (##car _e152528152540_))
                                          (_tl152530152545_
                                           (##cdr _e152528152540_)))
                                      (if (and (gx#identifier?
                                                _hd152529152543_)
                                               (gx#core-identifier=?
                                                _hd152529152543_
                                                '%#declare))
                                          (if '#t
                                              (_K152504_
                                               _rest152505_
                                               (cons (gx#core-expand-declare%
                                                      _hd152503_)
                                                     _r152506_))
                                              (_E152527152536_))
                                          (_E152527152536_))))
                                  (_E152527152536_))))
                           (_E152519152560_
                            (lambda ()
                              (if (gx#stx-pair? _e152507152532_)
                                  (let ((_e152524152552_
                                         (gx#syntax-e _e152507152532_)))
                                    (let ((_hd152525152555_
                                           (##car _e152524152552_))
                                          (_tl152526152557_
                                           (##cdr _e152524152552_)))
                                      (if (and (gx#identifier?
                                                _hd152525152555_)
                                               (gx#core-identifier=?
                                                _hd152525152555_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd152503_)
                                                (_K152504_
                                                 _rest152505_
                                                 _r152506_))
                                              (_E152523152548_))
                                          (_E152523152548_))))
                                  (_E152523152548_))))
                           (_E152509152572_
                            (lambda ()
                              (if (gx#stx-pair? _e152507152532_)
                                  (let ((_e152520152564_
                                         (gx#syntax-e _e152507152532_)))
                                    (let ((_hd152521152567_
                                           (##car _e152520152564_))
                                          (_tl152522152569_
                                           (##cdr _e152520152564_)))
                                      (if (and (gx#identifier?
                                                _hd152521152567_)
                                               (gx#core-identifier=?
                                                _hd152521152567_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd152503_)
                                                (_K152504_
                                                 _rest152505_
                                                 _r152506_))
                                              (_E152519152560_))
                                          (_E152519152560_))))
                                  (_E152519152560_))))
                           (_E152508152604_
                            (lambda ()
                              (if (gx#stx-pair? _e152507152532_)
                                  (let ((_e152510152576_
                                         (gx#syntax-e _e152507152532_)))
                                    (let ((_hd152511152579_
                                           (##car _e152510152576_))
                                          (_tl152512152581_
                                           (##cdr _e152510152576_)))
                                      (if (and (gx#identifier?
                                                _hd152511152579_)
                                               (gx#core-identifier=?
                                                _hd152511152579_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152512152581_)
                                              (let ((_e152513152584_
                                                     (gx#syntax-e
                                                      _tl152512152581_)))
                                                (let ((_hd152514152587_
                                                       (##car _e152513152584_))
                                                      (_tl152515152589_
                                                       (##cdr _e152513152584_)))
                                                  (let ((_hd-bind152592_
                                                         _hd152514152587_))
                                                    (if (gx#stx-pair?
                                                         _tl152515152589_)
                                                        (let ((_e152516152594_
                                                               (gx#syntax-e
                                                                _tl152515152589_)))
                                                          (let ((_hd152517152597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152516152594_))
                        (_tl152518152599_ (##cdr _e152516152594_)))
                    (let ((_expr152602_ _hd152517152597_))
                      (if (gx#stx-null? _tl152518152599_)
                          (if (gx#core-bind-values? _hd-bind152592_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152592_)
                                (_K152504_
                                 _rest152505_
                                 (cons _hd152503_ _r152506_)))
                              (_E152509152572_))
                          (_E152509152572_)))))
                (_E152509152572_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152509152572_))
                                          (_E152509152572_))))
                                  (_E152509152572_)))))
                      (_E152508152604_))))
                 (_wrap-internal152347_
                  (lambda (_rbody152349_)
                    (let _lp152351_ ((_rest152353_ _rbody152349_)
                                     (_decls152354_ '())
                                     (_bind152355_ '())
                                     (_body152356_ '()))
                      (let* ((_e152357152364_ _rest152353_)
                             (_E152359152413_
                              (lambda ()
                                (let* ((_body152408_
                                        (let* ((_body152367152377_
                                                _body152356_)
                                               (_else152370152385_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body152356_)
                                                   (gx#stx-source
                                                    _stx152341_)))))
                                          (let ((_K152375152405_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx152341_)))
                                                (_K152372152391_
                                                 (lambda (_expr152389_)
                                                   _expr152389_)))
                                            (let ((_try-match152369152401_
                                                   (lambda ()
                                                     (if (##pair? _body152367152377_)
                                                         (let ((_tl152374152396_
                                                                (##cdr _body152367152377_))
                                                               (_hd152373152394_
                                                                (##car _body152367152377_)))
                                                           (if (##null? _tl152374152396_)
                                                               (let ((_expr152399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152373152394_))
                         (_K152372152391_ _expr152399_))
                       (_else152370152385_)))
                 (_else152370152385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body152367152377_)
                                                  (_K152375152405_)
                                                  (_try-match152369152401_))))))
                                       (_body152410_
                                        (if (null? _bind152355_)
                                            _body152408_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind152355_
                                                         (cons _body152408_
                                                               '())))
                                             (gx#stx-source _stx152341_)))))
                                  (if (null? _decls152354_)
                                      _body152410_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls152354_
                                                   (cons _body152410_ '())))
                                       (gx#stx-source _stx152341_))))))
                             (_E152358152499_
                              (lambda ()
                                (if (gx#stx-pair? _e152357152364_)
                                    (let ((_e152360152417_
                                           (gx#syntax-e _e152357152364_)))
                                      (let ((_hd152361152420_
                                             (##car _e152360152417_))
                                            (_tl152362152422_
                                             (##cdr _e152360152417_)))
                                        (let* ((_hd152425_ _hd152361152420_)
                                               (_rest152427_ _tl152362152422_))
                                          (if '#t
                                              (let* ((_e152428152445_
                                                      _hd152425_)
                                                     (_E152440152449_
                                                      (lambda ()
                                                        (if (null? _bind152355_)
                                                            (_lp152351_
                                                             _rest152427_
                                                             _decls152354_
                                                             _bind152355_
                                                             (cons _hd152425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body152356_))
                    (_lp152351_
                     _rest152427_
                     _decls152354_
                     (cons (cons '#f (cons _hd152425_ '())) _bind152355_)
                     _body152356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152430152463_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152428152445_)
                                                            (let ((_e152441152453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152428152445_)))
                      (let ((_hd152442152456_ (##car _e152441152453_))
                            (_tl152443152458_ (##cdr _e152441152453_)))
                        (if (and (gx#identifier? _hd152442152456_)
                                 (gx#core-identifier=?
                                  _hd152442152456_
                                  '%#declare))
                            (let ((_xdecls152461_ _tl152443152458_))
                              (if '#t
                                  (_lp152351_
                                   _rest152427_
                                   (gx#stx-foldr
                                    cons
                                    _decls152354_
                                    _xdecls152461_)
                                   _bind152355_
                                   _body152356_)
                                  (_E152440152449_)))
                            (_E152440152449_))))
                    (_E152440152449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152429152495_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152428152445_)
                                                            (let ((_e152431152467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152428152445_)))
                      (let ((_hd152432152470_ (##car _e152431152467_))
                            (_tl152433152472_ (##cdr _e152431152467_)))
                        (if (and (gx#identifier? _hd152432152470_)
                                 (gx#core-identifier=?
                                  _hd152432152470_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl152433152472_)
                                (let ((_e152434152475_
                                       (gx#syntax-e _tl152433152472_)))
                                  (let ((_hd152435152478_
                                         (##car _e152434152475_))
                                        (_tl152436152480_
                                         (##cdr _e152434152475_)))
                                    (let ((_hd-bind152483_ _hd152435152478_))
                                      (if (gx#stx-pair? _tl152436152480_)
                                          (let ((_e152437152485_
                                                 (gx#syntax-e
                                                  _tl152436152480_)))
                                            (let ((_hd152438152488_
                                                   (##car _e152437152485_))
                                                  (_tl152439152490_
                                                   (##cdr _e152437152485_)))
                                              (let ((_expr152493_
                                                     _hd152438152488_))
                                                (if (gx#stx-null?
                                                     _tl152439152490_)
                                                    (if '#t
                                                        (_lp152351_
                                                         _rest152427_
                                                         _decls152354_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind152483_)
                             (cons (gx#core-expand-expression _expr152493_)
                                   '()))
                       _bind152355_)
                 _body152356_)
                (_E152430152463_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152430152463_)))))
                                          (_E152430152463_)))))
                                (_E152430152463_))
                            (_E152430152463_))))
                    (_E152430152463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152429152495_))
                                              (_E152359152413_)))))
                                    (_E152359152413_)))))
                        (_E152358152499_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body152342_)
            (gx#stx-source _stx152341_))
           _expand-special152344_))))
    (define gx#core-expand-declare%
      (lambda (_stx152279_)
        (let* ((_e152280152287_ _stx152279_)
               (_E152282152291_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152280152287_)))
               (_E152281152337_
                (lambda ()
                  (if (gx#stx-pair? _e152280152287_)
                      (let ((_e152283152295_ (gx#syntax-e _e152280152287_)))
                        (let ((_hd152284152298_ (##car _e152283152295_))
                              (_tl152285152300_ (##cdr _e152283152295_)))
                          (let ((_body152303_ _tl152285152300_))
                            (if (gx#stx-list? _body152303_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl152305_)
                                     (let* ((_e152306152313_ _decl152305_)
                                            (_E152308152317_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e152306152313_)))
                                            (_E152307152333_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e152306152313_)
                                                   (let ((_e152309152321_
                                                          (gx#syntax-e
                                                           _e152306152313_)))
                                                     (let ((_hd152310152324_
                                                            (##car _e152309152321_))
                                                           (_tl152311152326_
                                                            (##cdr _e152309152321_)))
                                                       (let* ((_head152329_
                                                               _hd152310152324_)
                                                              (_args152331_
                                                               _tl152311152326_))
                                                         (if (gx#stx-list?
                                                              _args152331_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl152305_)
                                                             (_E152308152317_)))))
                                                   (_E152308152317_)))))
                                       (_E152307152333_)))
                                   _body152303_))
                                 (gx#stx-source _stx152279_))
                                (_E152282152291_)))))
                      (_E152282152291_)))))
          (_E152281152337_))))
    (define gx#core-expand-extern%
      (lambda (_stx152183_)
        (let* ((_e152184152191_ _stx152183_)
               (_E152186152195_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152184152191_)))
               (_E152185152275_
                (lambda ()
                  (if (gx#stx-pair? _e152184152191_)
                      (let ((_e152187152199_ (gx#syntax-e _e152184152191_)))
                        (let ((_hd152188152202_ (##car _e152187152199_))
                              (_tl152189152204_ (##cdr _e152187152199_)))
                          (let ((_body152207_ _tl152189152204_))
                            (if '#t
                                (let _lp152209_ ((_rest152211_ _body152207_)
                                                 (_r152212_ '()))
                                  (let* ((_e152213152227_ _rest152211_)
                                         (_E152225152231_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx152183_)))
                                         (_E152215152235_
                                          (lambda ()
                                            (if (gx#stx-null? _e152213152227_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r152212_))
                                                     (gx#stx-source
                                                      _stx152183_))
                                                    (_E152225152231_))
                                                (_E152225152231_))))
                                         (_E152214152271_
                                          (lambda ()
                                            (if (gx#stx-pair? _e152213152227_)
                                                (let ((_e152216152239_
                                                       (gx#syntax-e
                                                        _e152213152227_)))
                                                  (let ((_hd152217152242_
                                                         (##car _e152216152239_))
                                                        (_tl152218152244_
                                                         (##cdr _e152216152239_)))
                                                    (if (gx#stx-pair?
                                                         _hd152217152242_)
                                                        (let ((_e152219152247_
                                                               (gx#syntax-e
                                                                _hd152217152242_)))
                                                          (let ((_hd152220152250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152219152247_))
                        (_tl152221152252_ (##cdr _e152219152247_)))
                    (let ((_id152255_ _hd152220152250_))
                      (if (gx#stx-pair? _tl152221152252_)
                          (let ((_e152222152257_
                                 (gx#syntax-e _tl152221152252_)))
                            (let ((_hd152223152260_ (##car _e152222152257_))
                                  (_tl152224152262_ (##cdr _e152222152257_)))
                              (let ((_eid152265_ _hd152223152260_))
                                (if (gx#stx-null? _tl152224152262_)
                                    (let ((_rest152267_ _tl152218152244_))
                                      (if (and (gx#identifier? _id152255_)
                                               (gx#identifier? _eid152265_))
                                          (let ((_eid152269_
                                                 (gx#stx-e _eid152265_)))
                                            (gx#core-bind-extern!__0
                                             _id152255_
                                             _eid152269_)
                                            (_lp152209_
                                             _rest152267_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id152255_)
                                                         (cons _eid152269_
                                                               '()))
                                                   _r152212_)))
                                          (_E152215152235_)))
                                    (_E152215152235_)))))
                          (_E152215152235_)))))
                (_E152215152235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152215152235_)))))
                                    (_E152214152271_)))
                                (_E152186152195_)))))
                      (_E152186152195_)))))
          (_E152185152275_))))
    (define gx#core-expand-define-values%
      (lambda (_stx152129_)
        (let* ((_e152130152143_ _stx152129_)
               (_E152132152147_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152130152143_)))
               (_E152131152179_
                (lambda ()
                  (if (gx#stx-pair? _e152130152143_)
                      (let ((_e152133152151_ (gx#syntax-e _e152130152143_)))
                        (let ((_hd152134152154_ (##car _e152133152151_))
                              (_tl152135152156_ (##cdr _e152133152151_)))
                          (if (gx#stx-pair? _tl152135152156_)
                              (let ((_e152136152159_
                                     (gx#syntax-e _tl152135152156_)))
                                (let ((_hd152137152162_
                                       (##car _e152136152159_))
                                      (_tl152138152164_
                                       (##cdr _e152136152159_)))
                                  (let ((_hd152167_ _hd152137152162_))
                                    (if (gx#stx-pair? _tl152138152164_)
                                        (let ((_e152139152169_
                                               (gx#syntax-e _tl152138152164_)))
                                          (let ((_hd152140152172_
                                                 (##car _e152139152169_))
                                                (_tl152141152174_
                                                 (##cdr _e152139152169_)))
                                            (let ((_expr152177_
                                                   _hd152140152172_))
                                              (if (gx#stx-null?
                                                   _tl152141152174_)
                                                  (if (gx#core-bind-values?
                                                       _hd152167_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd152167_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152167_)
                             (cons (gx#core-expand-expression _expr152177_)
                                   '())))
                 (gx#stx-source _stx152129_)))
              (_E152132152147_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152132152147_)))))
                                        (_E152132152147_)))))
                              (_E152132152147_))))
                      (_E152132152147_)))))
          (_E152131152179_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx152073_)
        (let* ((_e152074152087_ _stx152073_)
               (_E152076152091_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152074152087_)))
               (_E152075152125_
                (lambda ()
                  (if (gx#stx-pair? _e152074152087_)
                      (let ((_e152077152095_ (gx#syntax-e _e152074152087_)))
                        (let ((_hd152078152098_ (##car _e152077152095_))
                              (_tl152079152100_ (##cdr _e152077152095_)))
                          (if (gx#stx-pair? _tl152079152100_)
                              (let ((_e152080152103_
                                     (gx#syntax-e _tl152079152100_)))
                                (let ((_hd152081152106_
                                       (##car _e152080152103_))
                                      (_tl152082152108_
                                       (##cdr _e152080152103_)))
                                  (let ((_id152111_ _hd152081152106_))
                                    (if (gx#stx-pair? _tl152082152108_)
                                        (let ((_e152083152113_
                                               (gx#syntax-e _tl152082152108_)))
                                          (let ((_hd152084152116_
                                                 (##car _e152083152113_))
                                                (_tl152085152118_
                                                 (##cdr _e152083152113_)))
                                            (let ((_binding-id152121_
                                                   _hd152084152116_))
                                              (if (gx#stx-null?
                                                   _tl152085152118_)
                                                  (if (and (gx#identifier?
                                                            _id152111_)
                                                           (gx#identifier?
                                                            _binding-id152121_))
                                                      (let ((_eid152123_
                                                             (gx#stx-e
                                                              _binding-id152121_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id152111_
                                                         _eid152123_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id152111_)
                             (cons _eid152123_ '())))))
              (_E152076152091_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152076152091_)))))
                                        (_E152076152091_)))))
                              (_E152076152091_))))
                      (_E152076152091_)))))
          (_E152075152125_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx152016_)
        (let* ((_e152017152030_ _stx152016_)
               (_E152019152034_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152017152030_)))
               (_E152018152069_
                (lambda ()
                  (if (gx#stx-pair? _e152017152030_)
                      (let ((_e152020152038_ (gx#syntax-e _e152017152030_)))
                        (let ((_hd152021152041_ (##car _e152020152038_))
                              (_tl152022152043_ (##cdr _e152020152038_)))
                          (if (gx#stx-pair? _tl152022152043_)
                              (let ((_e152023152046_
                                     (gx#syntax-e _tl152022152043_)))
                                (let ((_hd152024152049_
                                       (##car _e152023152046_))
                                      (_tl152025152051_
                                       (##cdr _e152023152046_)))
                                  (let ((_id152054_ _hd152024152049_))
                                    (if (gx#stx-pair? _tl152025152051_)
                                        (let ((_e152026152056_
                                               (gx#syntax-e _tl152025152051_)))
                                          (let ((_hd152027152059_
                                                 (##car _e152026152056_))
                                                (_tl152028152061_
                                                 (##cdr _e152026152056_)))
                                            (let ((_expr152064_
                                                   _hd152027152059_))
                                              (if (gx#stx-null?
                                                   _tl152028152061_)
                                                  (if (gx#identifier?
                                                       _id152054_)
                                                      (let ((_g157443_
                                                             (gx#core-expand-expression+1
                                                              _expr152064_)))
                                                        (begin
                                                          (let ((_g157444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g157443_)
                             (##vector-length _g157443_)
                             1)))
                    (if (not (##fx= _g157444_ 2))
                        (error "Context expects 2 values" _g157444_)))
                  (let ((_e-stx152066_ (##vector-ref _g157443_ 0))
                        (_e152067_ (##vector-ref _g157443_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id152054_ _e152067_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id152054_)
                                   (cons _e-stx152066_ '())))
                       (gx#stx-source _stx152016_))))))
              (_E152019152034_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152019152034_)))))
                                        (_E152019152034_)))))
                              (_E152019152034_))))
                      (_E152019152034_)))))
          (_E152018152069_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx151960_)
        (let* ((_e151961151974_ _stx151960_)
               (_E151963151978_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151961151974_)))
               (_E151962152012_
                (lambda ()
                  (if (gx#stx-pair? _e151961151974_)
                      (let ((_e151964151982_ (gx#syntax-e _e151961151974_)))
                        (let ((_hd151965151985_ (##car _e151964151982_))
                              (_tl151966151987_ (##cdr _e151964151982_)))
                          (if (gx#stx-pair? _tl151966151987_)
                              (let ((_e151967151990_
                                     (gx#syntax-e _tl151966151987_)))
                                (let ((_hd151968151993_
                                       (##car _e151967151990_))
                                      (_tl151969151995_
                                       (##cdr _e151967151990_)))
                                  (let ((_id151998_ _hd151968151993_))
                                    (if (gx#stx-pair? _tl151969151995_)
                                        (let ((_e151970152000_
                                               (gx#syntax-e _tl151969151995_)))
                                          (let ((_hd151971152003_
                                                 (##car _e151970152000_))
                                                (_tl151972152005_
                                                 (##cdr _e151970152000_)))
                                            (let ((_alias-id152008_
                                                   _hd151971152003_))
                                              (if (gx#stx-null?
                                                   _tl151972152005_)
                                                  (if (and (gx#identifier?
                                                            _id151998_)
                                                           (gx#identifier?
                                                            _alias-id152008_))
                                                      (let ((_alias-id152010_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id152008_)))
                                                        (gx#core-bind-alias!__0
                                                         _id151998_
                                                         _alias-id152010_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id151998_)
                             (cons _alias-id152010_ '())))))
              (_E151963151978_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151963151978_)))))
                                        (_E151963151978_)))))
                              (_E151963151978_))))
                      (_E151963151978_)))))
          (_E151962152012_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx151903_ _wrap?151904_)
        (let* ((_e151905151915_ _stx151903_)
               (_E151907151919_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151905151915_)))
               (_E151906151946_
                (lambda ()
                  (if (gx#stx-pair? _e151905151915_)
                      (let ((_e151908151923_ (gx#syntax-e _e151905151915_)))
                        (let ((_hd151909151926_ (##car _e151908151923_))
                              (_tl151910151928_ (##cdr _e151908151923_)))
                          (if (gx#stx-pair? _tl151910151928_)
                              (let ((_e151911151931_
                                     (gx#syntax-e _tl151910151928_)))
                                (let ((_hd151912151934_
                                       (##car _e151911151931_))
                                      (_tl151913151936_
                                       (##cdr _e151911151931_)))
                                  (let* ((_hd151939_ _hd151912151934_)
                                         (_body151941_ _tl151913151936_))
                                    (if (gx#core-bind-values? _hd151939_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd151939_)
                                           (let ((_body151944_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd151939_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx151903_
                                                               _body151941_)
                                                              '()))))
                                             (if _wrap?151904_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body151944_)
                                                  (gx#stx-source _stx151903_))
                                                 _body151944_)))
                                         gx#current-expander-context
                                         (let ((__obj157436
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157436)
                                           __obj157436))
                                        (_E151907151919_)))))
                              (_E151907151919_))))
                      (_E151907151919_)))))
          (_E151906151946_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx151953_)
        (let ((_wrap?151955_ '#t))
          (gx#core-expand-lambda%__% _stx151953_ _wrap?151955_))))
    (define gx#core-expand-lambda%
      (lambda _g157446_
        (let ((_g157445_ (##length _g157446_)))
          (cond ((##fx= _g157445_ 1)
                 (apply (lambda (_stx151953_)
                          (gx#core-expand-lambda%__0 _stx151953_))
                        _g157446_))
                ((##fx= _g157445_ 2)
                 (apply (lambda (_stx151957_ _wrap?151958_)
                          (gx#core-expand-lambda%__%
                           _stx151957_
                           _wrap?151958_))
                        _g157446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g157446_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx151867_)
        (let* ((_e151868151875_ _stx151867_)
               (_E151870151879_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151868151875_)))
               (_E151869151898_
                (lambda ()
                  (if (gx#stx-pair? _e151868151875_)
                      (let ((_e151871151883_ (gx#syntax-e _e151868151875_)))
                        (let ((_hd151872151886_ (##car _e151871151883_))
                              (_tl151873151888_ (##cdr _e151871151883_)))
                          (let ((_clauses151891_ _tl151873151888_))
                            (if (gx#stx-list? _clauses151891_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause151893_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause151893_)
                                       (let ((_$e151895_
                                              (gx#stx-source _clause151893_)))
                                         (if _$e151895_
                                             _$e151895_
                                             (gx#stx-source _stx151867_))))
                                      '#f))
                                   _clauses151891_))
                                 (gx#stx-source _stx151867_))
                                (_E151870151879_)))))
                      (_E151870151879_)))))
          (_E151869151898_))))
    (define gx#core-expand-let-values%
      (lambda (_stx151821_)
        (let* ((_e151822151832_ _stx151821_)
               (_E151824151836_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151822151832_)))
               (_E151823151863_
                (lambda ()
                  (if (gx#stx-pair? _e151822151832_)
                      (let ((_e151825151840_ (gx#syntax-e _e151822151832_)))
                        (let ((_hd151826151843_ (##car _e151825151840_))
                              (_tl151827151845_ (##cdr _e151825151840_)))
                          (if (gx#stx-pair? _tl151827151845_)
                              (let ((_e151828151848_
                                     (gx#syntax-e _tl151827151845_)))
                                (let ((_hd151829151851_
                                       (##car _e151828151848_))
                                      (_tl151830151853_
                                       (##cdr _e151828151848_)))
                                  (let* ((_hd151856_ _hd151829151851_)
                                         (_body151858_ _tl151830151853_))
                                    (if (gx#core-expand-let-bind? _hd151856_)
                                        (let ((_expressions151860_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd151856_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd151856_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd151856_
                                                           _expressions151860_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx151821_
                         _body151858_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx151821_)))
                                           gx#current-expander-context
                                           (let ((__obj157437
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157437)
                                             __obj157437)))
                                        (_E151824151836_)))))
                              (_E151824151836_))))
                      (_E151824151836_)))))
          (_E151823151863_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx151766_ _form151767_)
        (let* ((_e151768151778_ _stx151766_)
               (_E151770151782_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151768151778_)))
               (_E151769151807_
                (lambda ()
                  (if (gx#stx-pair? _e151768151778_)
                      (let ((_e151771151786_ (gx#syntax-e _e151768151778_)))
                        (let ((_hd151772151789_ (##car _e151771151786_))
                              (_tl151773151791_ (##cdr _e151771151786_)))
                          (if (gx#stx-pair? _tl151773151791_)
                              (let ((_e151774151794_
                                     (gx#syntax-e _tl151773151791_)))
                                (let ((_hd151775151797_
                                       (##car _e151774151794_))
                                      (_tl151776151799_
                                       (##cdr _e151774151794_)))
                                  (let* ((_hd151802_ _hd151775151797_)
                                         (_body151804_ _tl151776151799_))
                                    (if (gx#core-expand-let-bind? _hd151802_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd151802_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form151767_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd151802_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd151802_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx151766_
                                                               _body151804_)
                                                              '())))
                                            (gx#stx-source _stx151766_)))
                                         gx#current-expander-context
                                         (let ((__obj157438
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157438)
                                           __obj157438))
                                        (_E151770151782_)))))
                              (_E151770151782_))))
                      (_E151770151782_)))))
          (_E151769151807_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx151814_)
        (let ((_form151816_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx151814_ _form151816_))))
    (define gx#core-expand-letrec-values%
      (lambda _g157448_
        (let ((_g157447_ (##length _g157448_)))
          (cond ((##fx= _g157447_ 1)
                 (apply (lambda (_stx151814_)
                          (gx#core-expand-letrec-values%__0 _stx151814_))
                        _g157448_))
                ((##fx= _g157447_ 2)
                 (apply (lambda (_stx151818_ _form151819_)
                          (gx#core-expand-letrec-values%__%
                           _stx151818_
                           _form151819_))
                        _g157448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g157448_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx151763_)
        (gx#core-expand-letrec-values%__% _stx151763_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx151720_)
        (if (gx#stx-list? _stx151720_)
            (gx#stx-andmap
             (lambda (_bind151722_)
               (let* ((_e151723151733_ _bind151722_)
                      (_E151725151737_ (lambda () '#f))
                      (_E151724151759_
                       (lambda ()
                         (if (gx#stx-pair? _e151723151733_)
                             (let ((_e151726151741_
                                    (gx#syntax-e _e151723151733_)))
                               (let ((_hd151727151744_ (##car _e151726151741_))
                                     (_tl151728151746_
                                      (##cdr _e151726151741_)))
                                 (let ((_hd151749_ _hd151727151744_))
                                   (if (gx#stx-pair? _tl151728151746_)
                                       (let ((_e151729151751_
                                              (gx#syntax-e _tl151728151746_)))
                                         (let ((_hd151730151754_
                                                (##car _e151729151751_))
                                               (_tl151731151756_
                                                (##cdr _e151729151751_)))
                                           (if (gx#stx-null? _tl151731151756_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd151749_)
                                                   (_E151725151737_))
                                               (_E151725151737_))))
                                       (_E151725151737_)))))
                             (_E151725151737_)))))
                 (_E151724151759_)))
             _stx151720_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind151679_)
        (let* ((_e151680151690_ _bind151679_)
               (_E151682151694_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151680151690_)))
               (_E151681151716_
                (lambda ()
                  (if (gx#stx-pair? _e151680151690_)
                      (let ((_e151683151698_ (gx#syntax-e _e151680151690_)))
                        (let ((_hd151684151701_ (##car _e151683151698_))
                              (_tl151685151703_ (##cdr _e151683151698_)))
                          (if (gx#stx-pair? _tl151685151703_)
                              (let ((_e151686151706_
                                     (gx#syntax-e _tl151685151703_)))
                                (let ((_hd151687151709_
                                       (##car _e151686151706_))
                                      (_tl151688151711_
                                       (##cdr _e151686151706_)))
                                  (let ((_expr151714_ _hd151687151709_))
                                    (if (gx#stx-null? _tl151688151711_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151714_)
                                            (_E151682151694_))
                                        (_E151682151694_)))))
                              (_E151682151694_))))
                      (_E151682151694_)))))
          (_E151681151716_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind151638_)
        (let* ((_e151639151649_ _bind151638_)
               (_E151641151653_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151639151649_)))
               (_E151640151675_
                (lambda ()
                  (if (gx#stx-pair? _e151639151649_)
                      (let ((_e151642151657_ (gx#syntax-e _e151639151649_)))
                        (let ((_hd151643151660_ (##car _e151642151657_))
                              (_tl151644151662_ (##cdr _e151642151657_)))
                          (let ((_hd151665_ _hd151643151660_))
                            (if (gx#stx-pair? _tl151644151662_)
                                (let ((_e151645151667_
                                       (gx#syntax-e _tl151644151662_)))
                                  (let ((_hd151646151670_
                                         (##car _e151645151667_))
                                        (_tl151647151672_
                                         (##cdr _e151645151667_)))
                                    (if (gx#stx-null? _tl151647151672_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd151665_)
                                            (_E151641151653_))
                                        (_E151641151653_))))
                                (_E151641151653_)))))
                      (_E151641151653_)))))
          (_E151640151675_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind151596_ _expr151597_)
        (let* ((_e151598151608_ _bind151596_)
               (_E151600151612_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151598151608_)))
               (_E151599151634_
                (lambda ()
                  (if (gx#stx-pair? _e151598151608_)
                      (let ((_e151601151616_ (gx#syntax-e _e151598151608_)))
                        (let ((_hd151602151619_ (##car _e151601151616_))
                              (_tl151603151621_ (##cdr _e151601151616_)))
                          (let ((_hd151624_ _hd151602151619_))
                            (if (gx#stx-pair? _tl151603151621_)
                                (let ((_e151604151626_
                                       (gx#syntax-e _tl151603151621_)))
                                  (let ((_hd151605151629_
                                         (##car _e151604151626_))
                                        (_tl151606151631_
                                         (##cdr _e151604151626_)))
                                    (if (gx#stx-null? _tl151606151631_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd151624_)
                                                  (cons _expr151597_ '()))
                                            (_E151600151612_))
                                        (_E151600151612_))))
                                (_E151600151612_)))))
                      (_E151600151612_)))))
          (_E151599151634_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx151550_)
        (let* ((_e151551151561_ _stx151550_)
               (_E151553151565_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151551151561_)))
               (_E151552151592_
                (lambda ()
                  (if (gx#stx-pair? _e151551151561_)
                      (let ((_e151554151569_ (gx#syntax-e _e151551151561_)))
                        (let ((_hd151555151572_ (##car _e151554151569_))
                              (_tl151556151574_ (##cdr _e151554151569_)))
                          (if (gx#stx-pair? _tl151556151574_)
                              (let ((_e151557151577_
                                     (gx#syntax-e _tl151556151574_)))
                                (let ((_hd151558151580_
                                       (##car _e151557151577_))
                                      (_tl151559151582_
                                       (##cdr _e151557151577_)))
                                  (let* ((_hd151585_ _hd151558151580_)
                                         (_body151587_ _tl151559151582_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151585_)
                                        (let ((_expanders151589_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd151585_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd151585_
                                              _expanders151589_)
                                             (gx#core-expand-local-block
                                              _stx151550_
                                              _body151587_))
                                           gx#current-expander-context
                                           (let ((__obj157439
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157439)
                                             __obj157439)))
                                        (_E151553151565_)))))
                              (_E151553151565_))))
                      (_E151553151565_)))))
          (_E151552151592_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx151499_)
        (let* ((_e151500151510_ _stx151499_)
               (_E151502151514_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151500151510_)))
               (_E151501151546_
                (lambda ()
                  (if (gx#stx-pair? _e151500151510_)
                      (let ((_e151503151518_ (gx#syntax-e _e151500151510_)))
                        (let ((_hd151504151521_ (##car _e151503151518_))
                              (_tl151505151523_ (##cdr _e151503151518_)))
                          (if (gx#stx-pair? _tl151505151523_)
                              (let ((_e151506151526_
                                     (gx#syntax-e _tl151505151523_)))
                                (let ((_hd151507151529_
                                       (##car _e151506151526_))
                                      (_tl151508151531_
                                       (##cdr _e151506151526_)))
                                  (let* ((_hd151534_ _hd151507151529_)
                                         (_body151536_ _tl151508151531_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151534_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd151534_
                                            (make-list
                                             (gx#stx-length _hd151534_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g151538151541_
                                                     _g151539151543_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g151538151541_
                                               _g151539151543_
                                               '#t))
                                            _hd151534_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd151534_))
                                           (gx#core-expand-local-block
                                            _stx151499_
                                            _body151536_))
                                         gx#current-expander-context
                                         (let ((__obj157440
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157440)
                                           __obj157440))
                                        (_E151502151514_)))))
                              (_E151502151514_))))
                      (_E151502151514_)))))
          (_E151501151546_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx151456_)
        (if (gx#stx-list? _stx151456_)
            (gx#stx-andmap
             (lambda (_bind151458_)
               (let* ((_e151459151469_ _bind151458_)
                      (_E151461151473_ (lambda () '#f))
                      (_E151460151495_
                       (lambda ()
                         (if (gx#stx-pair? _e151459151469_)
                             (let ((_e151462151477_
                                    (gx#syntax-e _e151459151469_)))
                               (let ((_hd151463151480_ (##car _e151462151477_))
                                     (_tl151464151482_
                                      (##cdr _e151462151477_)))
                                 (let ((_hd151485_ _hd151463151480_))
                                   (if (gx#stx-pair? _tl151464151482_)
                                       (let ((_e151465151487_
                                              (gx#syntax-e _tl151464151482_)))
                                         (let ((_hd151466151490_
                                                (##car _e151465151487_))
                                               (_tl151467151492_
                                                (##cdr _e151465151487_)))
                                           (if (gx#stx-null? _tl151467151492_)
                                               (if '#t
                                                   (gx#identifier? _hd151485_)
                                                   (_E151461151473_))
                                               (_E151461151473_))))
                                       (_E151461151473_)))))
                             (_E151461151473_)))))
                 (_E151460151495_)))
             _stx151456_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind151413_)
        (let* ((_e151414151424_ _bind151413_)
               (_E151416151428_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151414151424_)))
               (_E151415151452_
                (lambda ()
                  (if (gx#stx-pair? _e151414151424_)
                      (let ((_e151417151432_ (gx#syntax-e _e151414151424_)))
                        (let ((_hd151418151435_ (##car _e151417151432_))
                              (_tl151419151437_ (##cdr _e151417151432_)))
                          (if (gx#stx-pair? _tl151419151437_)
                              (let ((_e151420151440_
                                     (gx#syntax-e _tl151419151437_)))
                                (let ((_hd151421151443_
                                       (##car _e151420151440_))
                                      (_tl151422151445_
                                       (##cdr _e151420151440_)))
                                  (let ((_expr151448_ _hd151421151443_))
                                    (if (gx#stx-null? _tl151422151445_)
                                        (if '#t
                                            (let ((_g157449_
                                                   (gx#core-expand-expression+1
                                                    _expr151448_)))
                                              (begin
                                                (let ((_g157450_
                                                       (if (##values?
                                                            _g157449_)
                                                           (##vector-length
                                                            _g157449_)
                                                           1)))
                                                  (if (not (##fx= _g157450_ 2))
                                                      (error "Context expects 2 values"
                                                             _g157450_)))
                                                (let ((_e151450_
                                                       (##vector-ref
                                                        _g157449_
                                                        1)))
                                                  _e151450_)))
                                            (_E151416151428_))
                                        (_E151416151428_)))))
                              (_E151416151428_))))
                      (_E151416151428_)))))
          (_E151415151452_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind151358_ _e151359_ _rebind?151360_)
        (let* ((_e151361151371_ _bind151358_)
               (_E151363151375_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151361151371_)))
               (_E151362151397_
                (lambda ()
                  (if (gx#stx-pair? _e151361151371_)
                      (let ((_e151364151379_ (gx#syntax-e _e151361151371_)))
                        (let ((_hd151365151382_ (##car _e151364151379_))
                              (_tl151366151384_ (##cdr _e151364151379_)))
                          (let ((_id151387_ _hd151365151382_))
                            (if (gx#stx-pair? _tl151366151384_)
                                (let ((_e151367151389_
                                       (gx#syntax-e _tl151366151384_)))
                                  (let ((_hd151368151392_
                                         (##car _e151367151389_))
                                        (_tl151369151394_
                                         (##cdr _e151367151389_)))
                                    (if (gx#stx-null? _tl151369151394_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id151387_
                                             _e151359_
                                             _rebind?151360_)
                                            (_E151363151375_))
                                        (_E151363151375_))))
                                (_E151363151375_)))))
                      (_E151363151375_)))))
          (_E151362151397_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind151404_ _e151405_)
        (let ((_rebind?151407_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind151404_
           _e151405_
           _rebind?151407_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g157452_
        (let ((_g157451_ (##length _g157452_)))
          (cond ((##fx= _g157451_ 2)
                 (apply (lambda (_bind151404_ _e151405_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind151404_
                           _e151405_))
                        _g157452_))
                ((##fx= _g157451_ 3)
                 (apply (lambda (_bind151409_ _e151410_ _rebind?151411_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind151409_
                           _e151410_
                           _rebind?151411_))
                        _g157452_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g157452_))))))
    (define gx#core-expand-expression%
      (lambda (_stx151316_)
        (let* ((_e151317151327_ _stx151316_)
               (_E151319151331_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151317151327_)))
               (_E151318151353_
                (lambda ()
                  (if (gx#stx-pair? _e151317151327_)
                      (let ((_e151320151335_ (gx#syntax-e _e151317151327_)))
                        (let ((_hd151321151338_ (##car _e151320151335_))
                              (_tl151322151340_ (##cdr _e151320151335_)))
                          (if (gx#stx-pair? _tl151322151340_)
                              (let ((_e151323151343_
                                     (gx#syntax-e _tl151322151340_)))
                                (let ((_hd151324151346_
                                       (##car _e151323151343_))
                                      (_tl151325151348_
                                       (##cdr _e151323151343_)))
                                  (let ((_expr151351_ _hd151324151346_))
                                    (if (gx#stx-null? _tl151325151348_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151351_)
                                            (_E151319151331_))
                                        (_E151319151331_)))))
                              (_E151319151331_))))
                      (_E151319151331_)))))
          (_E151318151353_))))
    (define gx#core-expand-quote%
      (lambda (_stx151275_)
        (let* ((_e151276151286_ _stx151275_)
               (_E151278151290_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151276151286_)))
               (_E151277151312_
                (lambda ()
                  (if (gx#stx-pair? _e151276151286_)
                      (let ((_e151279151294_ (gx#syntax-e _e151276151286_)))
                        (let ((_hd151280151297_ (##car _e151279151294_))
                              (_tl151281151299_ (##cdr _e151279151294_)))
                          (if (gx#stx-pair? _tl151281151299_)
                              (let ((_e151282151302_
                                     (gx#syntax-e _tl151281151299_)))
                                (let ((_hd151283151305_
                                       (##car _e151282151302_))
                                      (_tl151284151307_
                                       (##cdr _e151282151302_)))
                                  (let ((_e151310_ _hd151283151305_))
                                    (if (gx#stx-null? _tl151284151307_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e151310_)
                                                         '()))
                                             (gx#stx-source _stx151275_))
                                            (_E151278151290_))
                                        (_E151278151290_)))))
                              (_E151278151290_))))
                      (_E151278151290_)))))
          (_E151277151312_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx151234_)
        (let* ((_e151235151245_ _stx151234_)
               (_E151237151249_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151235151245_)))
               (_E151236151271_
                (lambda ()
                  (if (gx#stx-pair? _e151235151245_)
                      (let ((_e151238151253_ (gx#syntax-e _e151235151245_)))
                        (let ((_hd151239151256_ (##car _e151238151253_))
                              (_tl151240151258_ (##cdr _e151238151253_)))
                          (if (gx#stx-pair? _tl151240151258_)
                              (let ((_e151241151261_
                                     (gx#syntax-e _tl151240151258_)))
                                (let ((_hd151242151264_
                                       (##car _e151241151261_))
                                      (_tl151243151266_
                                       (##cdr _e151241151261_)))
                                  (let ((_e151269_ _hd151242151264_))
                                    (if (gx#stx-null? _tl151243151266_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e151269_)
                                                         '()))
                                             (gx#stx-source _stx151234_))
                                            (_E151237151249_))
                                        (_E151237151249_)))))
                              (_E151237151249_))))
                      (_E151237151249_)))))
          (_E151236151271_))))
    (define gx#core-expand-call%
      (lambda (_stx151191_)
        (let* ((_e151192151202_ _stx151191_)
               (_E151194151206_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151192151202_)))
               (_E151193151230_
                (lambda ()
                  (if (gx#stx-pair? _e151192151202_)
                      (let ((_e151195151210_ (gx#syntax-e _e151192151202_)))
                        (let ((_hd151196151213_ (##car _e151195151210_))
                              (_tl151197151215_ (##cdr _e151195151210_)))
                          (if (gx#stx-pair? _tl151197151215_)
                              (let ((_e151198151218_
                                     (gx#syntax-e _tl151197151215_)))
                                (let ((_hd151199151221_
                                       (##car _e151198151218_))
                                      (_tl151200151223_
                                       (##cdr _e151198151218_)))
                                  (let* ((_rator151226_ _hd151199151221_)
                                         (_args151228_ _tl151200151223_))
                                    (if (gx#stx-list? _args151228_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator151226_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args151228_))
                                         (gx#stx-source _stx151191_))
                                        (_E151194151206_)))))
                              (_E151194151206_))))
                      (_E151194151206_)))))
          (_E151193151230_))))
    (define gx#core-expand-if%
      (lambda (_stx151124_)
        (let* ((_e151125151141_ _stx151124_)
               (_E151127151145_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151125151141_)))
               (_E151126151187_
                (lambda ()
                  (if (gx#stx-pair? _e151125151141_)
                      (let ((_e151128151149_ (gx#syntax-e _e151125151141_)))
                        (let ((_hd151129151152_ (##car _e151128151149_))
                              (_tl151130151154_ (##cdr _e151128151149_)))
                          (if (gx#stx-pair? _tl151130151154_)
                              (let ((_e151131151157_
                                     (gx#syntax-e _tl151130151154_)))
                                (let ((_hd151132151160_
                                       (##car _e151131151157_))
                                      (_tl151133151162_
                                       (##cdr _e151131151157_)))
                                  (let ((_test151165_ _hd151132151160_))
                                    (if (gx#stx-pair? _tl151133151162_)
                                        (let ((_e151134151167_
                                               (gx#syntax-e _tl151133151162_)))
                                          (let ((_hd151135151170_
                                                 (##car _e151134151167_))
                                                (_tl151136151172_
                                                 (##cdr _e151134151167_)))
                                            (let ((_K151175_ _hd151135151170_))
                                              (if (gx#stx-pair?
                                                   _tl151136151172_)
                                                  (let ((_e151137151177_
                                                         (gx#syntax-e
                                                          _tl151136151172_)))
                                                    (let ((_hd151138151180_
                                                           (##car _e151137151177_))
                                                          (_tl151139151182_
                                                           (##cdr _e151137151177_)))
                                                      (let ((_E151185_
                                                             _hd151138151180_))
                                                        (if (gx#stx-null?
                                                             _tl151139151182_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test151165_)
                                     (cons (gx#core-expand-expression
                                            _K151175_)
                                           (cons (gx#core-expand-expression
                                                  _E151185_)
                                                 '()))))
                         (gx#stx-source _stx151124_))
                        (_E151127151145_))
                    (_E151127151145_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151127151145_)))))
                                        (_E151127151145_)))))
                              (_E151127151145_))))
                      (_E151127151145_)))))
          (_E151126151187_))))
    (define gx#core-expand-ref%
      (lambda (_stx151083_)
        (let* ((_e151084151094_ _stx151083_)
               (_E151086151098_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151084151094_)))
               (_E151085151120_
                (lambda ()
                  (if (gx#stx-pair? _e151084151094_)
                      (let ((_e151087151102_ (gx#syntax-e _e151084151094_)))
                        (let ((_hd151088151105_ (##car _e151087151102_))
                              (_tl151089151107_ (##cdr _e151087151102_)))
                          (if (gx#stx-pair? _tl151089151107_)
                              (let ((_e151090151110_
                                     (gx#syntax-e _tl151089151107_)))
                                (let ((_hd151091151113_
                                       (##car _e151090151110_))
                                      (_tl151092151115_
                                       (##cdr _e151090151110_)))
                                  (let ((_id151118_ _hd151091151113_))
                                    (if (gx#stx-null? _tl151092151115_)
                                        (if (gx#identifier? _id151118_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id151118_
                                                          _stx151083_)
                                                         '()))
                                             (gx#stx-source _stx151083_))
                                            (_E151086151098_))
                                        (_E151086151098_)))))
                              (_E151086151098_))))
                      (_E151086151098_)))))
          (_E151085151120_))))
    (define gx#core-expand-setq%
      (lambda (_stx151029_)
        (let* ((_e151030151043_ _stx151029_)
               (_E151032151047_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151030151043_)))
               (_E151031151079_
                (lambda ()
                  (if (gx#stx-pair? _e151030151043_)
                      (let ((_e151033151051_ (gx#syntax-e _e151030151043_)))
                        (let ((_hd151034151054_ (##car _e151033151051_))
                              (_tl151035151056_ (##cdr _e151033151051_)))
                          (if (gx#stx-pair? _tl151035151056_)
                              (let ((_e151036151059_
                                     (gx#syntax-e _tl151035151056_)))
                                (let ((_hd151037151062_
                                       (##car _e151036151059_))
                                      (_tl151038151064_
                                       (##cdr _e151036151059_)))
                                  (let ((_id151067_ _hd151037151062_))
                                    (if (gx#stx-pair? _tl151038151064_)
                                        (let ((_e151039151069_
                                               (gx#syntax-e _tl151038151064_)))
                                          (let ((_hd151040151072_
                                                 (##car _e151039151069_))
                                                (_tl151041151074_
                                                 (##cdr _e151039151069_)))
                                            (let ((_expr151077_
                                                   _hd151040151072_))
                                              (if (gx#stx-null?
                                                   _tl151041151074_)
                                                  (if (gx#identifier?
                                                       _id151067_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id151067_
                            _stx151029_)
                           (cons (gx#core-expand-expression _expr151077_)
                                 '())))
               (gx#stx-source _stx151029_))
              (_E151032151047_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151032151047_)))))
                                        (_E151032151047_)))))
                              (_E151032151047_))))
                      (_E151032151047_)))))
          (_E151031151079_))))
    (define gx#macro-expand-extern
      (lambda (_stx150877_)
        (letrec ((_generate150879_
                  (lambda (_body150909_)
                    (let _lp150911_ ((_rest150913_ _body150909_)
                                     (_ns150914_
                                      (gx#core-context-namespace__0))
                                     (_r150915_ '()))
                      (let* ((_e150916150931_ _rest150913_)
                             (_E150929150935_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e150916150931_)))
                             (_E150925150939_
                              (lambda ()
                                (if (gx#stx-null? _e150916150931_)
                                    (if '#t
                                        (reverse _r150915_)
                                        (_E150929150935_))
                                    (_E150929150935_))))
                             (_E150918150996_
                              (lambda ()
                                (if (gx#stx-pair? _e150916150931_)
                                    (let ((_e150926150943_
                                           (gx#syntax-e _e150916150931_)))
                                      (let ((_hd150927150946_
                                             (##car _e150926150943_))
                                            (_tl150928150948_
                                             (##cdr _e150926150943_)))
                                        (let* ((_hd150951_ _hd150927150946_)
                                               (_rest150953_ _tl150928150948_))
                                          (if '#t
                                              (if (gx#identifier? _hd150951_)
                                                  (_lp150911_
                                                   _rest150953_
                                                   _ns150914_
                                                   (cons (cons _hd150951_
                                                               (cons (if _ns150914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd150951_
                                  _ns150914_
                                  '"#"
                                  _hd150951_)
                                 _hd150951_)
                             '()))
                 _r150915_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e150954150964_
                                                          _hd150951_)
                                                         (_E150956150968_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e150954150964_)))
                                                         (_E150955150992_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e150954150964_)
                        (let ((_e150957150972_ (gx#syntax-e _e150954150964_)))
                          (let ((_hd150958150975_ (##car _e150957150972_))
                                (_tl150959150977_ (##cdr _e150957150972_)))
                            (let ((_id150980_ _hd150958150975_))
                              (if (gx#stx-pair? _tl150959150977_)
                                  (let ((_e150960150982_
                                         (gx#syntax-e _tl150959150977_)))
                                    (let ((_hd150961150985_
                                           (##car _e150960150982_))
                                          (_tl150962150987_
                                           (##cdr _e150960150982_)))
                                      (let ((_eid150990_ _hd150961150985_))
                                        (if (gx#stx-null? _tl150962150987_)
                                            (if (and (gx#identifier?
                                                      _id150980_)
                                                     (gx#identifier?
                                                      _eid150990_))
                                                (_lp150911_
                                                 _rest150953_
                                                 _ns150914_
                                                 (cons (cons _id150980_
                                                             (cons _eid150990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r150915_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150956150968_))
                                            (_E150956150968_)))))
                                  (_E150956150968_)))))
                        (_E150956150968_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E150955150992_)))
                                              (_E150925150939_)))))
                                    (_E150925150939_))))
                             (_E150917151025_
                              (lambda ()
                                (if (gx#stx-pair? _e150916150931_)
                                    (let ((_e150919151000_
                                           (gx#syntax-e _e150916150931_)))
                                      (let ((_hd150920151003_
                                             (##car _e150919151000_))
                                            (_tl150921151005_
                                             (##cdr _e150919151000_)))
                                        (if (eq? (gx#stx-e _hd150920151003_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl150921151005_)
                                                (let ((_e150922151008_
                                                       (gx#syntax-e
                                                        _tl150921151005_)))
                                                  (let ((_hd150923151011_
                                                         (##car _e150922151008_))
                                                        (_tl150924151013_
                                                         (##cdr _e150922151008_)))
                                                    (let* ((_ns151016_
                                                            _hd150923151011_)
                                                           (_rest151018_
                                                            _tl150924151013_))
                                                      (if '#t
                                                          (let ((_ns151023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns151016_)
                             (symbol->string (gx#stx-e _ns151016_))
                             (if (or (gx#stx-string? _ns151016_)
                                     (gx#stx-false? _ns151016_))
                                 (gx#stx-e _ns151016_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx150877_
                                  _ns151016_)))))
                    (_lp150911_ _rest151018_ _ns151023_ _r150915_))
                  (_E150918150996_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150918150996_))
                                            (_E150918150996_))))
                                    (_E150918150996_)))))
                        (_E150917151025_))))))
          (let* ((_e150880150887_ _stx150877_)
                 (_E150882150891_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150880150887_)))
                 (_E150881150905_
                  (lambda ()
                    (if (gx#stx-pair? _e150880150887_)
                        (let ((_e150883150895_ (gx#syntax-e _e150880150887_)))
                          (let ((_hd150884150898_ (##car _e150883150895_))
                                (_tl150885150900_ (##cdr _e150883150895_)))
                            (let ((_body150903_ _tl150885150900_))
                              (if (gx#stx-list? _body150903_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate150879_ _body150903_))
                                  (_E150882150891_)))))
                        (_E150882150891_)))))
            (_E150881150905_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx150823_)
        (let* ((_e150824150837_ _stx150823_)
               (_E150826150841_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150824150837_)))
               (_E150825150873_
                (lambda ()
                  (if (gx#stx-pair? _e150824150837_)
                      (let ((_e150827150845_ (gx#syntax-e _e150824150837_)))
                        (let ((_hd150828150848_ (##car _e150827150845_))
                              (_tl150829150850_ (##cdr _e150827150845_)))
                          (if (gx#stx-pair? _tl150829150850_)
                              (let ((_e150830150853_
                                     (gx#syntax-e _tl150829150850_)))
                                (let ((_hd150831150856_
                                       (##car _e150830150853_))
                                      (_tl150832150858_
                                       (##cdr _e150830150853_)))
                                  (let ((_hd150861_ _hd150831150856_))
                                    (if (gx#stx-pair? _tl150832150858_)
                                        (let ((_e150833150863_
                                               (gx#syntax-e _tl150832150858_)))
                                          (let ((_hd150834150866_
                                                 (##car _e150833150863_))
                                                (_tl150835150868_
                                                 (##cdr _e150833150863_)))
                                            (let ((_expr150871_
                                                   _hd150834150866_))
                                              (if (gx#stx-null?
                                                   _tl150835150868_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd150861_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd150861_)
                          (cons _expr150871_ '())))
              (_E150826150841_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150826150841_)))))
                                        (_E150826150841_)))))
                              (_E150826150841_))))
                      (_E150826150841_)))))
          (_E150825150873_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx150769_)
        (let* ((_e150770150783_ _stx150769_)
               (_E150772150787_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150770150783_)))
               (_E150771150819_
                (lambda ()
                  (if (gx#stx-pair? _e150770150783_)
                      (let ((_e150773150791_ (gx#syntax-e _e150770150783_)))
                        (let ((_hd150774150794_ (##car _e150773150791_))
                              (_tl150775150796_ (##cdr _e150773150791_)))
                          (if (gx#stx-pair? _tl150775150796_)
                              (let ((_e150776150799_
                                     (gx#syntax-e _tl150775150796_)))
                                (let ((_hd150777150802_
                                       (##car _e150776150799_))
                                      (_tl150778150804_
                                       (##cdr _e150776150799_)))
                                  (let ((_hd150807_ _hd150777150802_))
                                    (if (gx#stx-pair? _tl150778150804_)
                                        (let ((_e150779150809_
                                               (gx#syntax-e _tl150778150804_)))
                                          (let ((_hd150780150812_
                                                 (##car _e150779150809_))
                                                (_tl150781150814_
                                                 (##cdr _e150779150809_)))
                                            (let ((_expr150817_
                                                   _hd150780150812_))
                                              (if (gx#stx-null?
                                                   _tl150781150814_)
                                                  (if (gx#identifier?
                                                       _hd150807_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd150807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr150817_ '())))
              (_E150772150787_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150772150787_)))))
                                        (_E150772150787_)))))
                              (_E150772150787_))))
                      (_E150772150787_)))))
          (_E150771150819_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx150715_)
        (let* ((_e150716150729_ _stx150715_)
               (_E150718150733_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150716150729_)))
               (_E150717150765_
                (lambda ()
                  (if (gx#stx-pair? _e150716150729_)
                      (let ((_e150719150737_ (gx#syntax-e _e150716150729_)))
                        (let ((_hd150720150740_ (##car _e150719150737_))
                              (_tl150721150742_ (##cdr _e150719150737_)))
                          (if (gx#stx-pair? _tl150721150742_)
                              (let ((_e150722150745_
                                     (gx#syntax-e _tl150721150742_)))
                                (let ((_hd150723150748_
                                       (##car _e150722150745_))
                                      (_tl150724150750_
                                       (##cdr _e150722150745_)))
                                  (let ((_id150753_ _hd150723150748_))
                                    (if (gx#stx-pair? _tl150724150750_)
                                        (let ((_e150725150755_
                                               (gx#syntax-e _tl150724150750_)))
                                          (let ((_hd150726150758_
                                                 (##car _e150725150755_))
                                                (_tl150727150760_
                                                 (##cdr _e150725150755_)))
                                            (let ((_alias-id150763_
                                                   _hd150726150758_))
                                              (if (gx#stx-null?
                                                   _tl150727150760_)
                                                  (if (and (gx#identifier?
                                                            _id150753_)
                                                           (gx#identifier?
                                                            _alias-id150763_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id150753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id150763_ '())))
              (_E150718150733_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150718150733_)))))
                                        (_E150718150733_)))))
                              (_E150718150733_))))
                      (_E150718150733_)))))
          (_E150717150765_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx150672_)
        (let* ((_e150673150683_ _stx150672_)
               (_E150675150687_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150673150683_)))
               (_E150674150711_
                (lambda ()
                  (if (gx#stx-pair? _e150673150683_)
                      (let ((_e150676150691_ (gx#syntax-e _e150673150683_)))
                        (let ((_hd150677150694_ (##car _e150676150691_))
                              (_tl150678150696_ (##cdr _e150676150691_)))
                          (if (gx#stx-pair? _tl150678150696_)
                              (let ((_e150679150699_
                                     (gx#syntax-e _tl150678150696_)))
                                (let ((_hd150680150702_
                                       (##car _e150679150699_))
                                      (_tl150681150704_
                                       (##cdr _e150679150699_)))
                                  (let* ((_hd150707_ _hd150680150702_)
                                         (_body150709_ _tl150681150704_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd150707_)
                                             (gx#stx-list? _body150709_)
                                             (not (gx#stx-null? _body150709_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd150707_)
                                         _body150709_)
                                        (_E150675150687_)))))
                              (_E150675150687_))))
                      (_E150675150687_)))))
          (_E150674150711_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx150608_)
        (letrec ((_generate150610_
                  (lambda (_clause150640_)
                    (let* ((_e150641150648_ _clause150640_)
                           (_E150643150652_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx150608_
                               _clause150640_)))
                           (_E150642150668_
                            (lambda ()
                              (if (gx#stx-pair? _e150641150648_)
                                  (let ((_e150644150656_
                                         (gx#syntax-e _e150641150648_)))
                                    (let ((_hd150645150659_
                                           (##car _e150644150656_))
                                          (_tl150646150661_
                                           (##cdr _e150644150656_)))
                                      (let* ((_hd150664_ _hd150645150659_)
                                             (_body150666_ _tl150646150661_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd150664_)
                                                 (gx#stx-list? _body150666_)
                                                 (not (gx#stx-null?
                                                       _body150666_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd150664_)
                                                   _body150666_)
                                             (gx#stx-source _clause150640_))
                                            (_E150643150652_)))))
                                  (_E150643150652_)))))
                      (_E150642150668_)))))
          (let* ((_e150611150618_ _stx150608_)
                 (_E150613150622_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150611150618_)))
                 (_E150612150636_
                  (lambda ()
                    (if (gx#stx-pair? _e150611150618_)
                        (let ((_e150614150626_ (gx#syntax-e _e150611150618_)))
                          (let ((_hd150615150629_ (##car _e150614150626_))
                                (_tl150616150631_ (##cdr _e150614150626_)))
                            (let ((_clauses150634_ _tl150616150631_))
                              (if (gx#stx-list? _clauses150634_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate150610_
                                    _clauses150634_))
                                  (_E150613150622_)))))
                        (_E150613150622_)))))
            (_E150612150636_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx150509_ _form150510_)
        (letrec ((_generate150512_
                  (lambda (_bind150555_)
                    (let* ((_e150556150566_ _bind150555_)
                           (_E150558150570_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx150509_
                               _bind150555_)))
                           (_E150557150594_
                            (lambda ()
                              (if (gx#stx-pair? _e150556150566_)
                                  (let ((_e150559150574_
                                         (gx#syntax-e _e150556150566_)))
                                    (let ((_hd150560150577_
                                           (##car _e150559150574_))
                                          (_tl150561150579_
                                           (##cdr _e150559150574_)))
                                      (let ((_ids150582_ _hd150560150577_))
                                        (if (gx#stx-pair? _tl150561150579_)
                                            (let ((_e150562150584_
                                                   (gx#syntax-e
                                                    _tl150561150579_)))
                                              (let ((_hd150563150587_
                                                     (##car _e150562150584_))
                                                    (_tl150564150589_
                                                     (##cdr _e150562150584_)))
                                                (let ((_expr150592_
                                                       _hd150563150587_))
                                                  (if (gx#stx-null?
                                                       _tl150564150589_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids150582_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids150582_)
                        (cons _expr150592_ '()))
                  (_E150558150570_))
              (_E150558150570_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E150558150570_)))))
                                  (_E150558150570_)))))
                      (_E150557150594_)))))
          (let* ((_e150513150523_ _stx150509_)
                 (_E150515150527_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150513150523_)))
                 (_E150514150551_
                  (lambda ()
                    (if (gx#stx-pair? _e150513150523_)
                        (let ((_e150516150531_ (gx#syntax-e _e150513150523_)))
                          (let ((_hd150517150534_ (##car _e150516150531_))
                                (_tl150518150536_ (##cdr _e150516150531_)))
                            (if (gx#stx-pair? _tl150518150536_)
                                (let ((_e150519150539_
                                       (gx#syntax-e _tl150518150536_)))
                                  (let ((_hd150520150542_
                                         (##car _e150519150539_))
                                        (_tl150521150544_
                                         (##cdr _e150519150539_)))
                                    (let* ((_hd150547_ _hd150520150542_)
                                           (_body150549_ _tl150521150544_))
                                      (if (and (gx#stx-list? _hd150547_)
                                               (gx#stx-list? _body150549_)
                                               (not (gx#stx-null?
                                                     _body150549_)))
                                          (gx#core-cons*
                                           _form150510_
                                           (gx#stx-map1
                                            _generate150512_
                                            _hd150547_)
                                           _body150549_)
                                          (_E150515150527_)))))
                                (_E150515150527_))))
                        (_E150515150527_)))))
            (_E150514150551_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx150601_)
        (let ((_form150603_ '%#let-values))
          (gx#macro-expand-let-values__% _stx150601_ _form150603_))))
    (define gx#macro-expand-let-values
      (lambda _g157454_
        (let ((_g157453_ (##length _g157454_)))
          (cond ((##fx= _g157453_ 1)
                 (apply (lambda (_stx150601_)
                          (gx#macro-expand-let-values__0 _stx150601_))
                        _g157454_))
                ((##fx= _g157453_ 2)
                 (apply (lambda (_stx150605_ _form150606_)
                          (gx#macro-expand-let-values__%
                           _stx150605_
                           _form150606_))
                        _g157454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g157454_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx150506_)
        (gx#macro-expand-let-values__% _stx150506_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx150504_)
        (gx#macro-expand-let-values__% _stx150504_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx150395_)
        (let* ((_e150396150422_ _stx150395_)
               (_E150408150426_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150396150422_)))
               (_E150398150468_
                (lambda ()
                  (if (gx#stx-pair? _e150396150422_)
                      (let ((_e150409150430_ (gx#syntax-e _e150396150422_)))
                        (let ((_hd150410150433_ (##car _e150409150430_))
                              (_tl150411150435_ (##cdr _e150409150430_)))
                          (if (gx#stx-pair? _tl150411150435_)
                              (let ((_e150412150438_
                                     (gx#syntax-e _tl150411150435_)))
                                (let ((_hd150413150441_
                                       (##car _e150412150438_))
                                      (_tl150414150443_
                                       (##cdr _e150412150438_)))
                                  (let ((_test150446_ _hd150413150441_))
                                    (if (gx#stx-pair? _tl150414150443_)
                                        (let ((_e150415150448_
                                               (gx#syntax-e _tl150414150443_)))
                                          (let ((_hd150416150451_
                                                 (##car _e150415150448_))
                                                (_tl150417150453_
                                                 (##cdr _e150415150448_)))
                                            (let ((_K150456_ _hd150416150451_))
                                              (if (gx#stx-pair?
                                                   _tl150417150453_)
                                                  (let ((_e150418150458_
                                                         (gx#syntax-e
                                                          _tl150417150453_)))
                                                    (let ((_hd150419150461_
                                                           (##car _e150418150458_))
                                                          (_tl150420150463_
                                                           (##cdr _e150418150458_)))
                                                      (let ((_E150466_
                                                             _hd150419150461_))
                                                        (if (gx#stx-null?
                                                             _tl150420150463_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test150446_
                         _K150456_
                         _E150466_)
                        (_E150408150426_))
                    (_E150408150426_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150408150426_)))))
                                        (_E150408150426_)))))
                              (_E150408150426_))))
                      (_E150408150426_))))
               (_E150397150500_
                (lambda ()
                  (if (gx#stx-pair? _e150396150422_)
                      (let ((_e150399150472_ (gx#syntax-e _e150396150422_)))
                        (let ((_hd150400150475_ (##car _e150399150472_))
                              (_tl150401150477_ (##cdr _e150399150472_)))
                          (if (gx#stx-pair? _tl150401150477_)
                              (let ((_e150402150480_
                                     (gx#syntax-e _tl150401150477_)))
                                (let ((_hd150403150483_
                                       (##car _e150402150480_))
                                      (_tl150404150485_
                                       (##cdr _e150402150480_)))
                                  (let ((_test150488_ _hd150403150483_))
                                    (if (gx#stx-pair? _tl150404150485_)
                                        (let ((_e150405150490_
                                               (gx#syntax-e _tl150404150485_)))
                                          (let ((_hd150406150493_
                                                 (##car _e150405150490_))
                                                (_tl150407150495_
                                                 (##cdr _e150405150490_)))
                                            (let ((_K150498_ _hd150406150493_))
                                              (if (gx#stx-null?
                                                   _tl150407150495_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test150488_
                                                       _K150498_
                                                       '#!void)
                                                      (_E150398150468_))
                                                  (_E150398150468_)))))
                                        (_E150398150468_)))))
                              (_E150398150468_))))
                      (_E150398150468_)))))
          (_E150397150500_))))
    (define gx#free-identifier=?
      (lambda (_xid150383_ _yid150384_)
        (let ((_xe150386_ (gx#resolve-identifier__0 _xid150383_))
              (_ye150387_ (gx#resolve-identifier__0 _yid150384_)))
          (if (and _xe150386_ _ye150387_)
              (let ((_$e150389_ (eq? _xe150386_ _ye150387_)))
                (if _$e150389_
                    _$e150389_
                    (if (##structure-instance-of? _xe150386_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye150387_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe150386_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye150387_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe150386_ _ye150387_)
                  '#f
                  (gx#stx-eq? _xid150383_ _yid150384_))))))
    (define gx#bound-identifier=?
      (lambda (_xid150367_ _yid150368_)
        (letrec ((_context150370_
                  (lambda (_e150381_)
                    (if (##structure-direct-instance-of?
                         _e150381_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e150381_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks150371_
                  (lambda (_e150379_)
                    (if (symbol? _e150379_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e150379_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e150379_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e150379_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap150372_
                  (lambda (_e150377_)
                    (if (symbol? _e150377_)
                        _e150377_
                        (gx#syntax-local-unwrap _e150377_)))))
          (let ((_x150374_ (_unwrap150372_ _xid150367_))
                (_y150375_ (_unwrap150372_ _yid150368_)))
            (if (gx#stx-eq? _x150374_ _y150375_)
                (if (eq? (_context150370_ _x150374_)
                         (_context150370_ _y150375_))
                    (equal? (_marks150371_ _x150374_)
                            (_marks150371_ _y150375_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx150365_)
        (if (gx#identifier? _stx150365_)
            (gx#core-identifier=? _stx150365_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx150363_)
        (if (gx#identifier? _stx150363_)
            (gx#core-identifier=? _stx150363_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x150361_)
        (if (gx#identifier? _x150361_)
            (if (not (gx#underscore? _x150361_)) _x150361_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx150307_ _where150308_)
        (let _lp150310_ ((_rest150312_ (gx#syntax->list _stx150307_)))
          (let* ((_rest150313150321_ _rest150312_)
                 (_else150315150329_ (lambda () '#t))
                 (_K150317150339_
                  (lambda (_rest150332_ _hd150333_)
                    (if (not (gx#identifier? _hd150333_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where150308_
                         _hd150333_)
                        (if (find (lambda (_g150334150336_)
                                    (gx#bound-identifier=?
                                     _g150334150336_
                                     _hd150333_))
                                  _rest150332_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where150308_
                             _hd150333_)
                            (_lp150310_ _rest150332_))))))
            (if (##pair? _rest150313150321_)
                (let ((_hd150318150342_ (##car _rest150313150321_))
                      (_tl150319150344_ (##cdr _rest150313150321_)))
                  (let* ((_hd150347_ _hd150318150342_)
                         (_rest150349_ _tl150319150344_))
                    (_K150317150339_ _rest150349_ _hd150347_)))
                (_else150315150329_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx150354_)
        (let ((_where150356_ _stx150354_))
          (gx#check-duplicate-identifiers__% _stx150354_ _where150356_))))
    (define gx#check-duplicate-identifiers
      (lambda _g157456_
        (let ((_g157455_ (##length _g157456_)))
          (cond ((##fx= _g157455_ 1)
                 (apply (lambda (_stx150354_)
                          (gx#check-duplicate-identifiers__0 _stx150354_))
                        _g157456_))
                ((##fx= _g157455_ 2)
                 (apply (lambda (_stx150358_ _where150359_)
                          (gx#check-duplicate-identifiers__%
                           _stx150358_
                           _where150359_))
                        _g157456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g157456_))))))
    (define gx#core-bind-values?
      (lambda (_stx150299_)
        (gx#stx-andmap
         (lambda (_x150301_)
           (let ((_$e150303_ (gx#identifier? _x150301_)))
             (if _$e150303_ _$e150303_ (gx#stx-false? _x150301_))))
         _stx150299_)))
    (define gx#core-bind-values!__%
      (lambda (_stx150263_ _rebind?150264_ _phi150265_ _ctx150266_)
        (gx#stx-for-each1
         (lambda (_id150268_)
           (if (gx#identifier? _id150268_)
               (gx#core-bind-runtime!__%
                _id150268_
                _rebind?150264_
                _phi150265_
                _ctx150266_)
               '#!void))
         _stx150263_)))
    (define gx#core-bind-values!__0
      (lambda (_stx150273_)
        (let* ((_rebind?150275_ '#f)
               (_phi150277_ (gx#current-expander-phi))
               (_ctx150279_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150273_
           _rebind?150275_
           _phi150277_
           _ctx150279_))))
    (define gx#core-bind-values!__1
      (lambda (_stx150281_ _rebind?150282_)
        (let* ((_phi150284_ (gx#current-expander-phi))
               (_ctx150286_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150281_
           _rebind?150282_
           _phi150284_
           _ctx150286_))))
    (define gx#core-bind-values!__2
      (lambda (_stx150288_ _rebind?150289_ _phi150290_)
        (let ((_ctx150292_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150288_
           _rebind?150289_
           _phi150290_
           _ctx150292_))))
    (define gx#core-bind-values!
      (lambda _g157458_
        (let ((_g157457_ (##length _g157458_)))
          (cond ((##fx= _g157457_ 1)
                 (apply (lambda (_stx150273_)
                          (gx#core-bind-values!__0 _stx150273_))
                        _g157458_))
                ((##fx= _g157457_ 2)
                 (apply (lambda (_stx150281_ _rebind?150282_)
                          (gx#core-bind-values!__1
                           _stx150281_
                           _rebind?150282_))
                        _g157458_))
                ((##fx= _g157457_ 3)
                 (apply (lambda (_stx150288_ _rebind?150289_ _phi150290_)
                          (gx#core-bind-values!__2
                           _stx150288_
                           _rebind?150289_
                           _phi150290_))
                        _g157458_))
                ((##fx= _g157457_ 4)
                 (apply (lambda (_stx150294_
                                 _rebind?150295_
                                 _phi150296_
                                 _ctx150297_)
                          (gx#core-bind-values!__%
                           _stx150294_
                           _rebind?150295_
                           _phi150296_
                           _ctx150297_))
                        _g157458_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g157458_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx150258_)
        (gx#stx-map1
         (lambda (_x150260_)
           (if (gx#identifier? _x150260_)
               (gx#core-quote-syntax__0 _x150260_)
               '#f))
         _stx150258_)))
    (define gx#core-runtime-ref?
      (lambda (_stx150251_)
        (if (gx#identifier? _stx150251_)
            (let* ((_bind150253_ (gx#resolve-identifier__0 _stx150251_))
                   (_$e150255_ (not _bind150253_)))
              (if _$e150255_
                  _$e150255_
                  (##structure-instance-of?
                   _bind150253_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id150243_ _form150244_)
        (let ((_bind150246_ (gx#resolve-identifier__0 _id150243_)))
          (if (##structure-instance-of? _bind150246_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id150243_)
              (if (not _bind150246_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id150243_)))
                      (gx#core-quote-syntax__0 _id150243_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form150244_
                       _id150243_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form150244_
                   _id150243_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id150202_ _rebind?150203_ _phi150204_ _ctx150205_)
        (let* ((_key150207_ (gx#core-identifier-key _id150202_))
               (_eid150209_
                (gx#make-binding-id__%
                 _key150207_
                 '#f
                 _phi150204_
                 _ctx150205_))
               (_bind150211_
                (if (##structure-instance-of?
                     _ctx150205_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150209_
                     _key150207_
                     _phi150204_
                     _ctx150205_)
                    (if (##structure-instance-of?
                         _ctx150205_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150209_
                         _key150207_
                         _phi150204_)
                        (if (##structure-instance-of?
                             _ctx150205_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid150209_
                             _key150207_
                             _phi150204_)
                            (##structure
                             gx#runtime-binding::t
                             _eid150209_
                             _key150207_
                             _phi150204_))))))
          (gx#bind-identifier!__%
           _id150202_
           _bind150211_
           _rebind?150203_
           _phi150204_
           _ctx150205_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id150217_)
        (let* ((_rebind?150219_ '#f)
               (_phi150221_ (gx#current-expander-phi))
               (_ctx150223_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150217_
           _rebind?150219_
           _phi150221_
           _ctx150223_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id150225_ _rebind?150226_)
        (let* ((_phi150228_ (gx#current-expander-phi))
               (_ctx150230_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150225_
           _rebind?150226_
           _phi150228_
           _ctx150230_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id150232_ _rebind?150233_ _phi150234_)
        (let ((_ctx150236_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150232_
           _rebind?150233_
           _phi150234_
           _ctx150236_))))
    (define gx#core-bind-runtime!
      (lambda _g157460_
        (let ((_g157459_ (##length _g157460_)))
          (cond ((##fx= _g157459_ 1)
                 (apply (lambda (_id150217_)
                          (gx#core-bind-runtime!__0 _id150217_))
                        _g157460_))
                ((##fx= _g157459_ 2)
                 (apply (lambda (_id150225_ _rebind?150226_)
                          (gx#core-bind-runtime!__1
                           _id150225_
                           _rebind?150226_))
                        _g157460_))
                ((##fx= _g157459_ 3)
                 (apply (lambda (_id150232_ _rebind?150233_ _phi150234_)
                          (gx#core-bind-runtime!__2
                           _id150232_
                           _rebind?150233_
                           _phi150234_))
                        _g157460_))
                ((##fx= _g157459_ 4)
                 (apply (lambda (_id150238_
                                 _rebind?150239_
                                 _phi150240_
                                 _ctx150241_)
                          (gx#core-bind-runtime!__%
                           _id150238_
                           _rebind?150239_
                           _phi150240_
                           _ctx150241_))
                        _g157460_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g157460_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id150157_ _eid150158_ _rebind?150159_ _phi150160_ _ctx150161_)
        (let* ((_key150163_ (gx#core-identifier-key _id150157_))
               (_bind150165_
                (if (##structure-instance-of?
                     _ctx150161_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150158_
                     _key150163_
                     _phi150160_
                     _ctx150161_)
                    (if (##structure-instance-of?
                         _ctx150161_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150158_
                         _key150163_
                         _phi150160_)
                        (##structure
                         gx#runtime-binding::t
                         _eid150158_
                         _key150163_
                         _phi150160_)))))
          (gx#bind-identifier!__%
           _id150157_
           _bind150165_
           _rebind?150159_
           _phi150160_
           _ctx150161_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id150171_ _eid150172_)
        (let* ((_rebind?150174_ '#f)
               (_phi150176_ (gx#current-expander-phi))
               (_ctx150178_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150171_
           _eid150172_
           _rebind?150174_
           _phi150176_
           _ctx150178_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id150180_ _eid150181_ _rebind?150182_)
        (let* ((_phi150184_ (gx#current-expander-phi))
               (_ctx150186_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150180_
           _eid150181_
           _rebind?150182_
           _phi150184_
           _ctx150186_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id150188_ _eid150189_ _rebind?150190_ _phi150191_)
        (let ((_ctx150193_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150188_
           _eid150189_
           _rebind?150190_
           _phi150191_
           _ctx150193_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g157462_
        (let ((_g157461_ (##length _g157462_)))
          (cond ((##fx= _g157461_ 2)
                 (apply (lambda (_id150171_ _eid150172_)
                          (gx#core-bind-runtime-reference!__0
                           _id150171_
                           _eid150172_))
                        _g157462_))
                ((##fx= _g157461_ 3)
                 (apply (lambda (_id150180_ _eid150181_ _rebind?150182_)
                          (gx#core-bind-runtime-reference!__1
                           _id150180_
                           _eid150181_
                           _rebind?150182_))
                        _g157462_))
                ((##fx= _g157461_ 4)
                 (apply (lambda (_id150188_
                                 _eid150189_
                                 _rebind?150190_
                                 _phi150191_)
                          (gx#core-bind-runtime-reference!__2
                           _id150188_
                           _eid150189_
                           _rebind?150190_
                           _phi150191_))
                        _g157462_))
                ((##fx= _g157461_ 5)
                 (apply (lambda (_id150195_
                                 _eid150196_
                                 _rebind?150197_
                                 _phi150198_
                                 _ctx150199_)
                          (gx#core-bind-runtime-reference!__%
                           _id150195_
                           _eid150196_
                           _rebind?150197_
                           _phi150198_
                           _ctx150199_))
                        _g157462_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g157462_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id150117_ _eid150118_ _rebind?150119_ _phi150120_ _ctx150121_)
        (gx#bind-identifier!__%
         _id150117_
         (##structure
          gx#extern-binding::t
          _eid150118_
          (gx#core-identifier-key _id150117_)
          _phi150120_)
         _rebind?150119_
         _phi150120_
         _ctx150121_)))
    (define gx#core-bind-extern!__0
      (lambda (_id150126_ _eid150127_)
        (let* ((_rebind?150129_ '#f)
               (_phi150131_ (gx#current-expander-phi))
               (_ctx150133_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150126_
           _eid150127_
           _rebind?150129_
           _phi150131_
           _ctx150133_))))
    (define gx#core-bind-extern!__1
      (lambda (_id150135_ _eid150136_ _rebind?150137_)
        (let* ((_phi150139_ (gx#current-expander-phi))
               (_ctx150141_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150135_
           _eid150136_
           _rebind?150137_
           _phi150139_
           _ctx150141_))))
    (define gx#core-bind-extern!__2
      (lambda (_id150143_ _eid150144_ _rebind?150145_ _phi150146_)
        (let ((_ctx150148_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150143_
           _eid150144_
           _rebind?150145_
           _phi150146_
           _ctx150148_))))
    (define gx#core-bind-extern!
      (lambda _g157464_
        (let ((_g157463_ (##length _g157464_)))
          (cond ((##fx= _g157463_ 2)
                 (apply (lambda (_id150126_ _eid150127_)
                          (gx#core-bind-extern!__0 _id150126_ _eid150127_))
                        _g157464_))
                ((##fx= _g157463_ 3)
                 (apply (lambda (_id150135_ _eid150136_ _rebind?150137_)
                          (gx#core-bind-extern!__1
                           _id150135_
                           _eid150136_
                           _rebind?150137_))
                        _g157464_))
                ((##fx= _g157463_ 4)
                 (apply (lambda (_id150143_
                                 _eid150144_
                                 _rebind?150145_
                                 _phi150146_)
                          (gx#core-bind-extern!__2
                           _id150143_
                           _eid150144_
                           _rebind?150145_
                           _phi150146_))
                        _g157464_))
                ((##fx= _g157463_ 5)
                 (apply (lambda (_id150150_
                                 _eid150151_
                                 _rebind?150152_
                                 _phi150153_
                                 _ctx150154_)
                          (gx#core-bind-extern!__%
                           _id150150_
                           _eid150151_
                           _rebind?150152_
                           _phi150153_
                           _ctx150154_))
                        _g157464_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g157464_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id150071_ _e150072_ _rebind?150073_ _phi150074_ _ctx150075_)
        (gx#bind-identifier!__%
         _id150071_
         (let ((_key150080_ (gx#core-identifier-key _id150071_))
               (_e150081_
                (if (or (##structure-instance-of? _e150072_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e150072_
                         'gx#expander-context::t))
                    _e150072_
                    (##structure
                     gx#user-expander::t
                     _e150072_
                     _ctx150075_
                     _phi150074_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key150080_ '#t _phi150074_ _ctx150075_)
            _key150080_
            _phi150074_
            _e150081_))
         _rebind?150073_
         _phi150074_
         _ctx150075_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id150086_ _e150087_)
        (let* ((_rebind?150089_ '#f)
               (_phi150091_ (gx#current-expander-phi))
               (_ctx150093_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150086_
           _e150087_
           _rebind?150089_
           _phi150091_
           _ctx150093_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id150095_ _e150096_ _rebind?150097_)
        (let* ((_phi150099_ (gx#current-expander-phi))
               (_ctx150101_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150095_
           _e150096_
           _rebind?150097_
           _phi150099_
           _ctx150101_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id150103_ _e150104_ _rebind?150105_ _phi150106_)
        (let ((_ctx150108_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150103_
           _e150104_
           _rebind?150105_
           _phi150106_
           _ctx150108_))))
    (define gx#core-bind-syntax!
      (lambda _g157466_
        (let ((_g157465_ (##length _g157466_)))
          (cond ((##fx= _g157465_ 2)
                 (apply (lambda (_id150086_ _e150087_)
                          (gx#core-bind-syntax!__0 _id150086_ _e150087_))
                        _g157466_))
                ((##fx= _g157465_ 3)
                 (apply (lambda (_id150095_ _e150096_ _rebind?150097_)
                          (gx#core-bind-syntax!__1
                           _id150095_
                           _e150096_
                           _rebind?150097_))
                        _g157466_))
                ((##fx= _g157465_ 4)
                 (apply (lambda (_id150103_
                                 _e150104_
                                 _rebind?150105_
                                 _phi150106_)
                          (gx#core-bind-syntax!__2
                           _id150103_
                           _e150104_
                           _rebind?150105_
                           _phi150106_))
                        _g157466_))
                ((##fx= _g157465_ 5)
                 (apply (lambda (_id150110_
                                 _e150111_
                                 _rebind?150112_
                                 _phi150113_
                                 _ctx150114_)
                          (gx#core-bind-syntax!__%
                           _id150110_
                           _e150111_
                           _rebind?150112_
                           _phi150113_
                           _ctx150114_))
                        _g157466_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g157466_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id150054_ _e150055_ _rebind?150056_)
        (gx#core-bind-syntax!__%
         _id150054_
         _e150055_
         _rebind?150056_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id150061_ _e150062_)
        (let ((_rebind?150064_ '#f))
          (gx#core-bind-root-syntax!__%
           _id150061_
           _e150062_
           _rebind?150064_))))
    (define gx#core-bind-root-syntax!
      (lambda _g157468_
        (let ((_g157467_ (##length _g157468_)))
          (cond ((##fx= _g157467_ 2)
                 (apply (lambda (_id150061_ _e150062_)
                          (gx#core-bind-root-syntax!__0 _id150061_ _e150062_))
                        _g157468_))
                ((##fx= _g157467_ 3)
                 (apply (lambda (_id150066_ _e150067_ _rebind?150068_)
                          (gx#core-bind-root-syntax!__%
                           _id150066_
                           _e150067_
                           _rebind?150068_))
                        _g157468_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g157468_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id150012_
               _alias-id150013_
               _rebind?150014_
               _phi150015_
               _ctx150016_)
        (gx#bind-identifier!__%
         _id150012_
         (let ((_key150018_ (gx#core-identifier-key _id150012_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key150018_ '#t _phi150015_ _ctx150016_)
            _key150018_
            _phi150015_
            _alias-id150013_))
         _rebind?150014_
         _phi150015_
         _ctx150016_)))
    (define gx#core-bind-alias!__0
      (lambda (_id150023_ _alias-id150024_)
        (let* ((_rebind?150026_ '#f)
               (_phi150028_ (gx#current-expander-phi))
               (_ctx150030_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150023_
           _alias-id150024_
           _rebind?150026_
           _phi150028_
           _ctx150030_))))
    (define gx#core-bind-alias!__1
      (lambda (_id150032_ _alias-id150033_ _rebind?150034_)
        (let* ((_phi150036_ (gx#current-expander-phi))
               (_ctx150038_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150032_
           _alias-id150033_
           _rebind?150034_
           _phi150036_
           _ctx150038_))))
    (define gx#core-bind-alias!__2
      (lambda (_id150040_ _alias-id150041_ _rebind?150042_ _phi150043_)
        (let ((_ctx150045_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150040_
           _alias-id150041_
           _rebind?150042_
           _phi150043_
           _ctx150045_))))
    (define gx#core-bind-alias!
      (lambda _g157470_
        (let ((_g157469_ (##length _g157470_)))
          (cond ((##fx= _g157469_ 2)
                 (apply (lambda (_id150023_ _alias-id150024_)
                          (gx#core-bind-alias!__0 _id150023_ _alias-id150024_))
                        _g157470_))
                ((##fx= _g157469_ 3)
                 (apply (lambda (_id150032_ _alias-id150033_ _rebind?150034_)
                          (gx#core-bind-alias!__1
                           _id150032_
                           _alias-id150033_
                           _rebind?150034_))
                        _g157470_))
                ((##fx= _g157469_ 4)
                 (apply (lambda (_id150040_
                                 _alias-id150041_
                                 _rebind?150042_
                                 _phi150043_)
                          (gx#core-bind-alias!__2
                           _id150040_
                           _alias-id150041_
                           _rebind?150042_
                           _phi150043_))
                        _g157470_))
                ((##fx= _g157469_ 5)
                 (apply (lambda (_id150047_
                                 _alias-id150048_
                                 _rebind?150049_
                                 _phi150050_
                                 _ctx150051_)
                          (gx#core-bind-alias!__%
                           _id150047_
                           _alias-id150048_
                           _rebind?150049_
                           _phi150050_
                           _ctx150051_))
                        _g157470_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g157470_))))))
    (define gx#make-binding-id__%
      (lambda (_key149969_ _syntax?149970_ _phi149971_ _ctx149972_)
        (if (uninterned-symbol? _key149969_)
            (gensym 'L)
            (if (pair? _key149969_)
                (gensym (car _key149969_))
                (if (##structure-instance-of? _ctx149972_ 'gx#top-context::t)
                    (let ((_ns149974_
                           (gx#core-context-namespace__% _ctx149972_)))
                      (if (and (fxzero? _phi149971_) (not _syntax?149970_))
                          (if _ns149974_
                              (make-symbol__1 _ns149974_ '"#" _key149969_)
                              _key149969_)
                          (if _syntax?149970_
                              (make-symbol__1
                               (let ((_$e149976_ _ns149974_))
                                 (if _$e149976_ _$e149976_ '""))
                               '"[:"
                               (number->string _phi149971_)
                               '":]#"
                               _key149969_)
                              (make-symbol__1
                               (let ((_$e149979_ _ns149974_))
                                 (if _$e149979_ _$e149979_ '""))
                               '"["
                               (number->string _phi149971_)
                               '"]#"
                               _key149969_))))
                    (gensym _key149969_))))))
    (define gx#make-binding-id__0
      (lambda (_key149985_)
        (let* ((_syntax?149987_ '#f)
               (_phi149989_ (gx#current-expander-phi))
               (_ctx149991_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149985_
           _syntax?149987_
           _phi149989_
           _ctx149991_))))
    (define gx#make-binding-id__1
      (lambda (_key149993_ _syntax?149994_)
        (let* ((_phi149996_ (gx#current-expander-phi))
               (_ctx149998_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key149993_
           _syntax?149994_
           _phi149996_
           _ctx149998_))))
    (define gx#make-binding-id__2
      (lambda (_key150000_ _syntax?150001_ _phi150002_)
        (let ((_ctx150004_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150000_
           _syntax?150001_
           _phi150002_
           _ctx150004_))))
    (define gx#make-binding-id
      (lambda _g157472_
        (let ((_g157471_ (##length _g157472_)))
          (cond ((##fx= _g157471_ 1)
                 (apply (lambda (_key149985_)
                          (gx#make-binding-id__0 _key149985_))
                        _g157472_))
                ((##fx= _g157471_ 2)
                 (apply (lambda (_key149993_ _syntax?149994_)
                          (gx#make-binding-id__1 _key149993_ _syntax?149994_))
                        _g157472_))
                ((##fx= _g157471_ 3)
                 (apply (lambda (_key150000_ _syntax?150001_ _phi150002_)
                          (gx#make-binding-id__2
                           _key150000_
                           _syntax?150001_
                           _phi150002_))
                        _g157472_))
                ((##fx= _g157471_ 4)
                 (apply (lambda (_key150006_
                                 _syntax?150007_
                                 _phi150008_
                                 _ctx150009_)
                          (gx#make-binding-id__%
                           _key150006_
                           _syntax?150007_
                           _phi150008_
                           _ctx150009_))
                        _g157472_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g157472_))))))))
