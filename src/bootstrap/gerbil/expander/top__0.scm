(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx12481_)
      (letrec ((_expand-special12483_
                (lambda (_hd12485_ _K12486_ _rest12487_ _r12488_)
                  (_K12486_
                   _rest12487_
                   (cons (gx#core-expand-top _hd12485_) _r12488_)))))
        (gx#core-expand-block__0 _stx12481_ _expand-special12483_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx12234_)
      (letrec ((_expand-special12236_
                (lambda (_hd12356_ _K12357_ _rest12358_ _r12359_)
                  (let* ((_K12363_
                          (lambda (_e12361_)
                            (_K12357_ _rest12358_ (cons _e12361_ _r12359_))))
                         (_e1236412393_ _hd12356_)
                         (_E1238812397_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1236412393_)))
                         (_E1238412409_
                          (lambda ()
                            (if (gx#stx-pair? _e1236412393_)
                                (let ((_e1238912401_
                                       (gx#syntax-e _e1236412393_)))
                                  (let ((_hd1239012404_ (##car _e1238912401_))
                                        (_tl1239112406_ (##cdr _e1238912401_)))
                                    (if (if (gx#identifier? _hd1239012404_)
                                            (gx#core-identifier=?
                                             _hd1239012404_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K12363_
                                             (gx#core-expand-define-runtime%
                                              _hd12356_))
                                            (_E1238812397_))
                                        (_E1238812397_))))
                                (_E1238812397_))))
                         (_E1238012421_
                          (lambda ()
                            (if (gx#stx-pair? _e1236412393_)
                                (let ((_e1238512413_
                                       (gx#syntax-e _e1236412393_)))
                                  (let ((_hd1238612416_ (##car _e1238512413_))
                                        (_tl1238712418_ (##cdr _e1238512413_)))
                                    (if (if (gx#identifier? _hd1238612416_)
                                            (gx#core-identifier=?
                                             _hd1238612416_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K12363_
                                             (gx#core-expand-define-alias%
                                              _hd12356_))
                                            (_E1238412409_))
                                        (_E1238412409_))))
                                (_E1238412409_))))
                         (_E1237012433_
                          (lambda ()
                            (if (gx#stx-pair? _e1236412393_)
                                (let ((_e1238112425_
                                       (gx#syntax-e _e1236412393_)))
                                  (let ((_hd1238212428_ (##car _e1238112425_))
                                        (_tl1238312430_ (##cdr _e1238112425_)))
                                    (if (if (gx#identifier? _hd1238212428_)
                                            (gx#core-identifier=?
                                             _hd1238212428_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K12363_
                                             (gx#core-expand-define-syntax%
                                              _hd12356_))
                                            (_E1238012421_))
                                        (_E1238012421_))))
                                (_E1238012421_))))
                         (_E1236612465_
                          (lambda ()
                            (if (gx#stx-pair? _e1236412393_)
                                (let ((_e1237112437_
                                       (gx#syntax-e _e1236412393_)))
                                  (let ((_hd1237212440_ (##car _e1237112437_))
                                        (_tl1237312442_ (##cdr _e1237112437_)))
                                    (if (if (gx#identifier? _hd1237212440_)
                                            (gx#core-identifier=?
                                             _hd1237212440_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1237312442_)
                                            (let ((_e1237412445_
                                                   (gx#syntax-e
                                                    _tl1237312442_)))
                                              (let ((_hd1237512448_
                                                     (##car _e1237412445_))
                                                    (_tl1237612450_
                                                     (##cdr _e1237412445_)))
                                                (let ((_hd-bind12453_
                                                       _hd1237512448_))
                                                  (if (gx#stx-pair?
                                                       _tl1237612450_)
                                                      (let ((_e1237712455_
                                                             (gx#syntax-e
                                                              _tl1237612450_)))
                                                        (let ((_hd1237812458_
                                                               (##car _e1237712455_))
                                                              (_tl1237912460_
                                                               (##cdr _e1237712455_)))
                                                          (let ((_expr12463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1237812458_))
                    (if (gx#stx-null? _tl1237912460_)
                        (if (gx#core-bind-values? _hd-bind12453_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12453_)
                              (_K12363_ _hd12356_))
                            (_E1237012433_))
                        (_E1237012433_)))))
              (_E1237012433_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1237012433_))
                                        (_E1237012433_))))
                                (_E1237012433_))))
                         (_E1236512477_
                          (lambda ()
                            (if (gx#stx-pair? _e1236412393_)
                                (let ((_e1236712469_
                                       (gx#syntax-e _e1236412393_)))
                                  (let ((_hd1236812472_ (##car _e1236712469_))
                                        (_tl1236912474_ (##cdr _e1236712469_)))
                                    (if (if (gx#identifier? _hd1236812472_)
                                            (gx#core-identifier=?
                                             _hd1236812472_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K12363_
                                             (gx#core-expand-begin-syntax%
                                              _hd12356_))
                                            (_E1236612465_))
                                        (_E1236612465_))))
                                (_E1236612465_)))))
                    (_E1236512477_))))
               (_eval-body12237_
                (lambda (_rbody12245_)
                  (let _lp12247_ ((_rest12249_ _rbody12245_)
                                  (_body12250_ '())
                                  (_ebody12251_ '()))
                    (let* ((_rest1225212260_ _rest12249_)
                           (_else1225412268_
                            (lambda ()
                              (values _body12250_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody12251_)
                                        (gx#stx-source _stx12234_))))))
                           (_K1225612344_
                            (lambda (_rest12271_ _hd12272_)
                              (let* ((_e1227312290_ _hd12272_)
                                     (_E1228512294_
                                      (lambda ()
                                        (_lp12247_
                                         _rest12271_
                                         (cons _hd12272_ _body12250_)
                                         (cons _hd12272_ _ebody12251_))))
                                     (_E1227512306_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1227312290_)
                                            (let ((_e1228612298_
                                                   (gx#syntax-e
                                                    _e1227312290_)))
                                              (let ((_hd1228712301_
                                                     (##car _e1228612298_))
                                                    (_tl1228812303_
                                                     (##cdr _e1228612298_)))
                                                (if (if (gx#identifier?
                                                         _hd1228712301_)
                                                        (gx#core-identifier=?
                                                         _hd1228712301_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp12247_
                                                         _rest12271_
                                                         (cons _hd12272_
                                                               _body12250_)
                                                         _ebody12251_)
                                                        (_E1228512294_))
                                                    (_E1228512294_))))
                                            (_E1228512294_))))
                                     (_E1227412340_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1227312290_)
                                            (let ((_e1227612310_
                                                   (gx#syntax-e
                                                    _e1227312290_)))
                                              (let ((_hd1227712313_
                                                     (##car _e1227612310_))
                                                    (_tl1227812315_
                                                     (##cdr _e1227612310_)))
                                                (if (if (gx#identifier?
                                                         _hd1227712313_)
                                                        (gx#core-identifier=?
                                                         _hd1227712313_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1227812315_)
                                                        (let ((_e1227912318_
                                                               (gx#syntax-e
                                                                _tl1227812315_)))
                                                          (let ((_hd1228012321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1227912318_))
                        (_tl1228112323_ (##cdr _e1227912318_)))
                    (let ((_hd-bind12326_ _hd1228012321_))
                      (if (gx#stx-pair? _tl1228112323_)
                          (let ((_e1228212328_ (gx#syntax-e _tl1228112323_)))
                            (let ((_hd1228312331_ (##car _e1228212328_))
                                  (_tl1228412333_ (##cdr _e1228212328_)))
                              (let ((_expr12336_ _hd1228312331_))
                                (if (gx#stx-null? _tl1228412333_)
                                    (if '#t
                                        (let ((_ehd12338_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind12326_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr12336_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd12272_))))
                                          (_lp12247_
                                           _rest12271_
                                           (cons _ehd12338_ _body12250_)
                                           (cons _ehd12338_ _ebody12251_)))
                                        (_E1227512306_))
                                    (_E1227512306_)))))
                          (_E1227512306_)))))
                (_E1227512306_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1227512306_))))
                                            (_E1227512306_)))))
                                (_E1227412340_)))))
                      (if (##pair? _rest1225212260_)
                          (let ((_hd1225712347_ (##car _rest1225212260_))
                                (_tl1225812349_ (##cdr _rest1225212260_)))
                            (let* ((_hd12352_ _hd1225712347_)
                                   (_rest12354_ _tl1225812349_))
                              (_K1225612344_ _rest12354_ _hd12352_)))
                          (_else1225412268_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody12240_
                   (gx#core-expand-block__1
                    _stx12234_
                    _expand-special12236_
                    '#f))
                  (_g12504_ (_eval-body12237_ _rbody12240_)))
             (begin
               (let ((_g12505_
                      (if (##values? _g12504_) (##vector-length _g12504_) 1)))
                 (if (not (##fx= _g12505_ 2))
                     (error "Context expects 2 values" _g12505_)))
               (let ((_expanded-body12242_ (##vector-ref _g12504_ 0))
                     (_value12243_ (##vector-ref _g12504_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body12242_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value12243_ '())))
                  (gx#stx-source _stx12234_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx12204_)
      (let* ((_e1220512212_ _stx12204_)
             (_E1220712216_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1220512212_)))
             (_E1220612230_
              (lambda ()
                (if (gx#stx-pair? _e1220512212_)
                    (let ((_e1220812220_ (gx#syntax-e _e1220512212_)))
                      (let ((_hd1220912223_ (##car _e1220812220_))
                            (_tl1221012225_ (##cdr _e1220812220_)))
                        (let ((_body12228_ _tl1221012225_))
                          (if (gx#stx-list? _body12228_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body12228_)
                               (gx#stx-source _stx12204_))
                              (_E1220712216_)))))
                    (_E1220712216_)))))
        (_E1220612230_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx12202_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx12202_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx12148_)
      (let* ((_e1214912162_ _stx12148_)
             (_E1215112166_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1214912162_)))
             (_E1215012198_
              (lambda ()
                (if (gx#stx-pair? _e1214912162_)
                    (let ((_e1215212170_ (gx#syntax-e _e1214912162_)))
                      (let ((_hd1215312173_ (##car _e1215212170_))
                            (_tl1215412175_ (##cdr _e1215212170_)))
                        (if (gx#stx-pair? _tl1215412175_)
                            (let ((_e1215512178_ (gx#syntax-e _tl1215412175_)))
                              (let ((_hd1215612181_ (##car _e1215512178_))
                                    (_tl1215712183_ (##cdr _e1215512178_)))
                                (let ((_ann12186_ _hd1215612181_))
                                  (if (gx#stx-pair? _tl1215712183_)
                                      (let ((_e1215812188_
                                             (gx#syntax-e _tl1215712183_)))
                                        (let ((_hd1215912191_
                                               (##car _e1215812188_))
                                              (_tl1216012193_
                                               (##cdr _e1215812188_)))
                                          (let ((_expr12196_ _hd1215912191_))
                                            (if (gx#stx-null? _tl1216012193_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#begin-annotation)
                                                           (cons _ann12186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-expand-expression _expr12196_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx12148_))
                                                    (_E1215112166_))
                                                (_E1215112166_)))))
                                      (_E1215112166_)))))
                            (_E1215112166_))))
                    (_E1215112166_)))))
        (_E1215012198_))))
  (define gx#core-expand-local-block
    (lambda (_stx11872_ _body11873_)
      (letrec ((_expand-special11875_
                (lambda (_hd12143_ _K12144_ _rest12145_ _r12146_)
                  (_K12144_
                   '()
                   (cons (_expand-internal11876_ _hd12143_ _rest12145_)
                         _r12146_))))
               (_expand-internal11876_
                (lambda (_hd12139_ _rest12140_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal11878_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons '%#begin (cons _hd12139_ _rest12140_))
                        (gx#stx-source _stx11872_))
                       _expand-internal-special11877_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj12498 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj12498)
                       __obj12498)))))
               (_expand-internal-special11877_
                (lambda (_hd12034_ _K12035_ _rest12036_ _r12037_)
                  (let* ((_e1203812063_ _hd12034_)
                         (_E1205812067_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1203812063_)))
                         (_E1205412079_
                          (lambda ()
                            (if (gx#stx-pair? _e1203812063_)
                                (let ((_e1205912071_
                                       (gx#syntax-e _e1203812063_)))
                                  (let ((_hd1206012074_ (##car _e1205912071_))
                                        (_tl1206112076_ (##cdr _e1205912071_)))
                                    (if (if (gx#identifier? _hd1206012074_)
                                            (gx#core-identifier=?
                                             _hd1206012074_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K12035_
                                             _rest12036_
                                             (cons (gx#core-expand-declare%
                                                    _hd12034_)
                                                   _r12037_))
                                            (_E1205812067_))
                                        (_E1205812067_))))
                                (_E1205812067_))))
                         (_E1205012091_
                          (lambda ()
                            (if (gx#stx-pair? _e1203812063_)
                                (let ((_e1205512083_
                                       (gx#syntax-e _e1203812063_)))
                                  (let ((_hd1205612086_ (##car _e1205512083_))
                                        (_tl1205712088_ (##cdr _e1205512083_)))
                                    (if (if (gx#identifier? _hd1205612086_)
                                            (gx#core-identifier=?
                                             _hd1205612086_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd12034_)
                                              (_K12035_ _rest12036_ _r12037_))
                                            (_E1205412079_))
                                        (_E1205412079_))))
                                (_E1205412079_))))
                         (_E1204012103_
                          (lambda ()
                            (if (gx#stx-pair? _e1203812063_)
                                (let ((_e1205112095_
                                       (gx#syntax-e _e1203812063_)))
                                  (let ((_hd1205212098_ (##car _e1205112095_))
                                        (_tl1205312100_ (##cdr _e1205112095_)))
                                    (if (if (gx#identifier? _hd1205212098_)
                                            (gx#core-identifier=?
                                             _hd1205212098_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd12034_)
                                              (_K12035_ _rest12036_ _r12037_))
                                            (_E1205012091_))
                                        (_E1205012091_))))
                                (_E1205012091_))))
                         (_E1203912135_
                          (lambda ()
                            (if (gx#stx-pair? _e1203812063_)
                                (let ((_e1204112107_
                                       (gx#syntax-e _e1203812063_)))
                                  (let ((_hd1204212110_ (##car _e1204112107_))
                                        (_tl1204312112_ (##cdr _e1204112107_)))
                                    (if (if (gx#identifier? _hd1204212110_)
                                            (gx#core-identifier=?
                                             _hd1204212110_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1204312112_)
                                            (let ((_e1204412115_
                                                   (gx#syntax-e
                                                    _tl1204312112_)))
                                              (let ((_hd1204512118_
                                                     (##car _e1204412115_))
                                                    (_tl1204612120_
                                                     (##cdr _e1204412115_)))
                                                (let ((_hd-bind12123_
                                                       _hd1204512118_))
                                                  (if (gx#stx-pair?
                                                       _tl1204612120_)
                                                      (let ((_e1204712125_
                                                             (gx#syntax-e
                                                              _tl1204612120_)))
                                                        (let ((_hd1204812128_
                                                               (##car _e1204712125_))
                                                              (_tl1204912130_
                                                               (##cdr _e1204712125_)))
                                                          (let ((_expr12133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1204812128_))
                    (if (gx#stx-null? _tl1204912130_)
                        (if (gx#core-bind-values? _hd-bind12123_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12123_)
                              (_K12035_ _rest12036_ (cons _hd12034_ _r12037_)))
                            (_E1204012103_))
                        (_E1204012103_)))))
              (_E1204012103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1204012103_))
                                        (_E1204012103_))))
                                (_E1204012103_)))))
                    (_E1203912135_))))
               (_wrap-internal11878_
                (lambda (_rbody11880_)
                  (let _lp11882_ ((_rest11884_ _rbody11880_)
                                  (_decls11885_ '())
                                  (_bind11886_ '())
                                  (_body11887_ '()))
                    (let* ((_e1188811895_ _rest11884_)
                           (_E1189011944_
                            (lambda ()
                              (let* ((_body11939_
                                      (let* ((_body1189811908_ _body11887_)
                                             (_else1190111916_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body11887_)
                                                 (gx#stx-source _stx11872_)))))
                                        (let ((_K1190611936_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _stx11872_)))
                                              (_K1190311922_
                                               (lambda (_expr11920_)
                                                 _expr11920_)))
                                          (let ((_try-match1190011932_
                                                 (lambda ()
                                                   (if (##pair? _body1189811908_)
                                                       (let ((_tl1190511927_
                                                              (##cdr _body1189811908_))
                                                             (_hd1190411925_
                                                              (##car _body1189811908_)))
                                                         (if (##null? _tl1190511927_)
                                                             (let ((_expr11930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1190411925_))
                       (_K1190311922_ _expr11930_))
                     (_else1190111916_)))
               (_else1190111916_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (##null? _body1189811908_)
                                                (_K1190611936_)
                                                (_try-match1190011932_))))))
                                     (_body11941_
                                      (if (null? _bind11886_)
                                          _body11939_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind11886_
                                                       (cons _body11939_ '())))
                                           (gx#stx-source _stx11872_)))))
                                (if (null? _decls11885_)
                                    _body11941_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls11885_
                                                 (cons _body11941_ '())))
                                     (gx#stx-source _stx11872_))))))
                           (_E1188912030_
                            (lambda ()
                              (if (gx#stx-pair? _e1188811895_)
                                  (let ((_e1189111948_
                                         (gx#syntax-e _e1188811895_)))
                                    (let ((_hd1189211951_
                                           (##car _e1189111948_))
                                          (_tl1189311953_
                                           (##cdr _e1189111948_)))
                                      (let* ((_hd11956_ _hd1189211951_)
                                             (_rest11958_ _tl1189311953_))
                                        (if '#t
                                            (let* ((_e1195911976_ _hd11956_)
                                                   (_E1197111980_
                                                    (lambda ()
                                                      (if (null? _bind11886_)
                                                          (_lp11882_
                                                           _rest11958_
                                                           _decls11885_
                                                           _bind11886_
                                                           (cons _hd11956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body11887_))
                  (_lp11882_
                   _rest11958_
                   _decls11885_
                   (cons (cons '#f (cons _hd11956_ '())) _bind11886_)
                   _body11887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1196111994_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1195911976_)
                                                          (let ((_e1197211984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1195911976_)))
                    (let ((_hd1197311987_ (##car _e1197211984_))
                          (_tl1197411989_ (##cdr _e1197211984_)))
                      (if (if (gx#identifier? _hd1197311987_)
                              (gx#core-identifier=? _hd1197311987_ '%#declare)
                              '#f)
                          (let ((_xdecls11992_ _tl1197411989_))
                            (if '#t
                                (_lp11882_
                                 _rest11958_
                                 (gx#stx-foldr cons _decls11885_ _xdecls11992_)
                                 _bind11886_
                                 _body11887_)
                                (_E1197111980_)))
                          (_E1197111980_))))
                  (_E1197111980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1196012026_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1195911976_)
                                                          (let ((_e1196211998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1195911976_)))
                    (let ((_hd1196312001_ (##car _e1196211998_))
                          (_tl1196412003_ (##cdr _e1196211998_)))
                      (if (if (gx#identifier? _hd1196312001_)
                              (gx#core-identifier=?
                               _hd1196312001_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl1196412003_)
                              (let ((_e1196512006_
                                     (gx#syntax-e _tl1196412003_)))
                                (let ((_hd1196612009_ (##car _e1196512006_))
                                      (_tl1196712011_ (##cdr _e1196512006_)))
                                  (let ((_hd-bind12014_ _hd1196612009_))
                                    (if (gx#stx-pair? _tl1196712011_)
                                        (let ((_e1196812016_
                                               (gx#syntax-e _tl1196712011_)))
                                          (let ((_hd1196912019_
                                                 (##car _e1196812016_))
                                                (_tl1197012021_
                                                 (##cdr _e1196812016_)))
                                            (let ((_expr12024_ _hd1196912019_))
                                              (if (gx#stx-null? _tl1197012021_)
                                                  (if '#t
                                                      (_lp11882_
                                                       _rest11958_
                                                       _decls11885_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind12014_)
                           (cons (gx#core-expand-expression _expr12024_) '()))
                     _bind11886_)
               _body11887_)
              (_E1196111994_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1196111994_)))))
                                        (_E1196111994_)))))
                              (_E1196111994_))
                          (_E1196111994_))))
                  (_E1196111994_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1196012026_))
                                            (_E1189011944_)))))
                                  (_E1189011944_)))))
                      (_E1188912030_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body11873_)
          (gx#stx-source _stx11872_))
         _expand-special11875_))))
  (define gx#core-expand-declare%
    (lambda (_stx11810_)
      (let* ((_e1181111818_ _stx11810_)
             (_E1181311822_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1181111818_)))
             (_E1181211868_
              (lambda ()
                (if (gx#stx-pair? _e1181111818_)
                    (let ((_e1181411826_ (gx#syntax-e _e1181111818_)))
                      (let ((_hd1181511829_ (##car _e1181411826_))
                            (_tl1181611831_ (##cdr _e1181411826_)))
                        (let ((_body11834_ _tl1181611831_))
                          (if (gx#stx-list? _body11834_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl11836_)
                                   (let* ((_e1183711844_ _decl11836_)
                                          (_E1183911848_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1183711844_)))
                                          (_E1183811864_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1183711844_)
                                                 (let ((_e1184011852_
                                                        (gx#syntax-e
                                                         _e1183711844_)))
                                                   (let ((_hd1184111855_
                                                          (##car _e1184011852_))
                                                         (_tl1184211857_
                                                          (##cdr _e1184011852_)))
                                                     (let* ((_head11860_
                                                             _hd1184111855_)
                                                            (_args11862_
                                                             _tl1184211857_))
                                                       (if (gx#stx-list?
                                                            _args11862_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl11836_)
                                                           (_E1183911848_)))))
                                                 (_E1183911848_)))))
                                     (_E1183811864_)))
                                 _body11834_))
                               (gx#stx-source _stx11810_))
                              (_E1181311822_)))))
                    (_E1181311822_)))))
        (_E1181211868_))))
  (define gx#core-expand-extern%
    (lambda (_stx11713_)
      (begin
        (declare (not safe))
        (let* ((_e1171511722_ _stx11713_)
               (_E1171711726_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1171511722_)))
               (_E1171611806_
                (lambda ()
                  (if (gx#stx-pair? _e1171511722_)
                      (let ((_e1171811730_ (gx#syntax-e _e1171511722_)))
                        (let ((_hd1171911733_ (##car _e1171811730_))
                              (_tl1172011735_ (##cdr _e1171811730_)))
                          (let ((_body11738_ _tl1172011735_))
                            (if (gx#stx-list? _body11738_)
                                (let _lp11740_ ((_rest11742_ _body11738_)
                                                (_r11743_ '()))
                                  (let* ((_e1174411758_ _rest11742_)
                                         (_E1175611762_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _stx11713_
                                             (gx#stx-car _rest11742_))))
                                         (_E1174611766_
                                          (lambda ()
                                            (if (gx#stx-null? _e1174411758_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r11743_))
                                                     (gx#stx-source
                                                      _stx11713_))
                                                    (_E1175611762_))
                                                (_E1175611762_))))
                                         (_E1174511802_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1174411758_)
                                                (let ((_e1174711770_
                                                       (gx#syntax-e
                                                        _e1174411758_)))
                                                  (let ((_hd1174811773_
                                                         (##car _e1174711770_))
                                                        (_tl1174911775_
                                                         (##cdr _e1174711770_)))
                                                    (if (gx#stx-pair?
                                                         _hd1174811773_)
                                                        (let ((_e1175011778_
                                                               (gx#syntax-e
                                                                _hd1174811773_)))
                                                          (let ((_hd1175111781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1175011778_))
                        (_tl1175211783_ (##cdr _e1175011778_)))
                    (let ((_id11786_ _hd1175111781_))
                      (if (gx#stx-pair? _tl1175211783_)
                          (let ((_e1175311788_ (gx#syntax-e _tl1175211783_)))
                            (let ((_hd1175411791_ (##car _e1175311788_))
                                  (_tl1175511793_ (##cdr _e1175311788_)))
                              (let ((_eid11796_ _hd1175411791_))
                                (if (gx#stx-null? _tl1175511793_)
                                    (let ((_rest11798_ _tl1174911775_))
                                      (if (if (gx#identifier? _id11786_)
                                              (gx#identifier? _eid11796_)
                                              '#f)
                                          (let ((_eid11800_
                                                 (gx#stx-e _eid11796_)))
                                            (begin
                                              (gx#core-bind-extern!__0
                                               _id11786_
                                               _eid11800_)
                                              (_lp11740_
                                               _rest11798_
                                               (cons (cons (gx#core-quote-syntax__0
                                                            _id11786_)
                                                           (cons _eid11800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r11743_))))
                                          (_E1174611766_)))
                                    (_E1174611766_)))))
                          (_E1174611766_)))))
                (_E1174611766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1174611766_)))))
                                    (_E1174511802_)))
                                (_E1171711726_)))))
                      (_E1171711726_)))))
          (_E1171611806_)))))
  (define gx#core-expand-define-values%
    (lambda (_stx11659_)
      (let* ((_e1166011673_ _stx11659_)
             (_E1166211677_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1166011673_)))
             (_E1166111709_
              (lambda ()
                (if (gx#stx-pair? _e1166011673_)
                    (let ((_e1166311681_ (gx#syntax-e _e1166011673_)))
                      (let ((_hd1166411684_ (##car _e1166311681_))
                            (_tl1166511686_ (##cdr _e1166311681_)))
                        (if (gx#stx-pair? _tl1166511686_)
                            (let ((_e1166611689_ (gx#syntax-e _tl1166511686_)))
                              (let ((_hd1166711692_ (##car _e1166611689_))
                                    (_tl1166811694_ (##cdr _e1166611689_)))
                                (let ((_hd11697_ _hd1166711692_))
                                  (if (gx#stx-pair? _tl1166811694_)
                                      (let ((_e1166911699_
                                             (gx#syntax-e _tl1166811694_)))
                                        (let ((_hd1167011702_
                                               (##car _e1166911699_))
                                              (_tl1167111704_
                                               (##cdr _e1166911699_)))
                                          (let ((_expr11707_ _hd1167011702_))
                                            (if (gx#stx-null? _tl1167111704_)
                                                (if (gx#core-bind-values?
                                                     _hd11697_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd11697_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd11697_)
                           (cons (gx#core-expand-expression _expr11707_) '())))
               (gx#stx-source _stx11659_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1166211677_))
                                                (_E1166211677_)))))
                                      (_E1166211677_)))))
                            (_E1166211677_))))
                    (_E1166211677_)))))
        (_E1166111709_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx11605_)
      (let* ((_e1160611619_ _stx11605_)
             (_E1160811623_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1160611619_)))
             (_E1160711655_
              (lambda ()
                (if (gx#stx-pair? _e1160611619_)
                    (let ((_e1160911627_ (gx#syntax-e _e1160611619_)))
                      (let ((_hd1161011630_ (##car _e1160911627_))
                            (_tl1161111632_ (##cdr _e1160911627_)))
                        (if (gx#stx-pair? _tl1161111632_)
                            (let ((_e1161211635_ (gx#syntax-e _tl1161111632_)))
                              (let ((_hd1161311638_ (##car _e1161211635_))
                                    (_tl1161411640_ (##cdr _e1161211635_)))
                                (let ((_id11643_ _hd1161311638_))
                                  (if (gx#stx-pair? _tl1161411640_)
                                      (let ((_e1161511645_
                                             (gx#syntax-e _tl1161411640_)))
                                        (let ((_hd1161611648_
                                               (##car _e1161511645_))
                                              (_tl1161711650_
                                               (##cdr _e1161511645_)))
                                          (let ((_binding-id11653_
                                                 _hd1161611648_))
                                            (if (gx#stx-null? _tl1161711650_)
                                                (if (if (gx#identifier?
                                                         _id11643_)
                                                        (gx#identifier?
                                                         _binding-id11653_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id11643_
                                                       (gx#stx-e
                                                        _binding-id11653_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11643_)
                           (cons (gx#core-quote-syntax__0 _binding-id11653_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1160811623_))
                                                (_E1160811623_)))))
                                      (_E1160811623_)))))
                            (_E1160811623_))))
                    (_E1160811623_)))))
        (_E1160711655_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx11548_)
      (let* ((_e1154911562_ _stx11548_)
             (_E1155111566_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1154911562_)))
             (_E1155011601_
              (lambda ()
                (if (gx#stx-pair? _e1154911562_)
                    (let ((_e1155211570_ (gx#syntax-e _e1154911562_)))
                      (let ((_hd1155311573_ (##car _e1155211570_))
                            (_tl1155411575_ (##cdr _e1155211570_)))
                        (if (gx#stx-pair? _tl1155411575_)
                            (let ((_e1155511578_ (gx#syntax-e _tl1155411575_)))
                              (let ((_hd1155611581_ (##car _e1155511578_))
                                    (_tl1155711583_ (##cdr _e1155511578_)))
                                (let ((_id11586_ _hd1155611581_))
                                  (if (gx#stx-pair? _tl1155711583_)
                                      (let ((_e1155811588_
                                             (gx#syntax-e _tl1155711583_)))
                                        (let ((_hd1155911591_
                                               (##car _e1155811588_))
                                              (_tl1156011593_
                                               (##cdr _e1155811588_)))
                                          (let ((_expr11596_ _hd1155911591_))
                                            (if (gx#stx-null? _tl1156011593_)
                                                (if (gx#identifier? _id11586_)
                                                    (let ((_g12506_
                                                           (gx#core-expand-expression+1
                                                            _expr11596_)))
                                                      (begin
                                                        (let ((_g12507_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g12506_)
                           (##vector-length _g12506_)
                           1)))
                  (if (not (##fx= _g12507_ 2))
                      (error "Context expects 2 values" _g12507_)))
                (let ((_e-stx11598_ (##vector-ref _g12506_ 0))
                      (_e11599_ (##vector-ref _g12506_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id11586_ _e11599_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id11586_)
                                 (cons _e-stx11598_ '())))
                     (gx#stx-source _stx11548_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1155111566_))
                                                (_E1155111566_)))))
                                      (_E1155111566_)))))
                            (_E1155111566_))))
                    (_E1155111566_)))))
        (_E1155011601_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx11492_)
      (let* ((_e1149311506_ _stx11492_)
             (_E1149511510_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1149311506_)))
             (_E1149411544_
              (lambda ()
                (if (gx#stx-pair? _e1149311506_)
                    (let ((_e1149611514_ (gx#syntax-e _e1149311506_)))
                      (let ((_hd1149711517_ (##car _e1149611514_))
                            (_tl1149811519_ (##cdr _e1149611514_)))
                        (if (gx#stx-pair? _tl1149811519_)
                            (let ((_e1149911522_ (gx#syntax-e _tl1149811519_)))
                              (let ((_hd1150011525_ (##car _e1149911522_))
                                    (_tl1150111527_ (##cdr _e1149911522_)))
                                (let ((_id11530_ _hd1150011525_))
                                  (if (gx#stx-pair? _tl1150111527_)
                                      (let ((_e1150211532_
                                             (gx#syntax-e _tl1150111527_)))
                                        (let ((_hd1150311535_
                                               (##car _e1150211532_))
                                              (_tl1150411537_
                                               (##cdr _e1150211532_)))
                                          (let ((_alias-id11540_
                                                 _hd1150311535_))
                                            (if (gx#stx-null? _tl1150411537_)
                                                (if (if (gx#identifier?
                                                         _id11530_)
                                                        (gx#identifier?
                                                         _alias-id11540_)
                                                        '#f)
                                                    (let ((_alias-id11542_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id11540_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id11530_
                                                         _alias-id11542_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id11530_)
                             (cons _alias-id11542_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1149511510_))
                                                (_E1149511510_)))))
                                      (_E1149511510_)))))
                            (_E1149511510_))))
                    (_E1149511510_)))))
        (_E1149411544_))))
  (begin
    (define gx#core-expand-lambda%__%
      (lambda (_stx11435_ _wrap?11436_)
        (let* ((_e1143711447_ _stx11435_)
               (_E1143911451_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1143711447_)))
               (_E1143811478_
                (lambda ()
                  (if (gx#stx-pair? _e1143711447_)
                      (let ((_e1144011455_ (gx#syntax-e _e1143711447_)))
                        (let ((_hd1144111458_ (##car _e1144011455_))
                              (_tl1144211460_ (##cdr _e1144011455_)))
                          (if (gx#stx-pair? _tl1144211460_)
                              (let ((_e1144311463_
                                     (gx#syntax-e _tl1144211460_)))
                                (let ((_hd1144411466_ (##car _e1144311463_))
                                      (_tl1144511468_ (##cdr _e1144311463_)))
                                  (let* ((_hd11471_ _hd1144411466_)
                                         (_body11473_ _tl1144511468_))
                                    (if (gx#core-bind-values? _hd11471_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0
                                              _hd11471_)
                                             (let ((_body11476_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd11471_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx11435_
                         _body11473_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?11436_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body11476_)
                                                    (gx#stx-source _stx11435_))
                                                   _body11476_))))
                                         gx#current-expander-context
                                         (let ((__obj12499
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12499)
                                             __obj12499)))
                                        (_E1143911451_)))))
                              (_E1143911451_))))
                      (_E1143911451_)))))
          (_E1143811478_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx11485_)
          (let ((_wrap?11487_ '#t))
            (gx#core-expand-lambda%__% _stx11485_ _wrap?11487_))))
      (define gx#core-expand-lambda%
        (lambda _g12509_
          (let ((_g12508_ (length _g12509_)))
            (cond ((##fx= _g12508_ 1)
                   (apply gx#core-expand-lambda%__0 _g12509_))
                  ((##fx= _g12508_ 2)
                   (apply gx#core-expand-lambda%__% _g12509_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g12509_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx11399_)
      (let* ((_e1140011407_ _stx11399_)
             (_E1140211411_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1140011407_)))
             (_E1140111430_
              (lambda ()
                (if (gx#stx-pair? _e1140011407_)
                    (let ((_e1140311415_ (gx#syntax-e _e1140011407_)))
                      (let ((_hd1140411418_ (##car _e1140311415_))
                            (_tl1140511420_ (##cdr _e1140311415_)))
                        (let ((_clauses11423_ _tl1140511420_))
                          (if (gx#stx-list? _clauses11423_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause11425_)
                                   (gx#core-expand-lambda%__%
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause11425_)
                                     (let ((_$e11427_
                                            (gx#stx-source _clause11425_)))
                                       (if _$e11427_
                                           _$e11427_
                                           (gx#stx-source _stx11399_))))
                                    '#f))
                                 _clauses11423_))
                               (gx#stx-source _stx11399_))
                              (_E1140211411_)))))
                    (_E1140211411_)))))
        (_E1140111430_))))
  (define gx#core-expand-let-values%
    (lambda (_stx11353_)
      (let* ((_e1135411364_ _stx11353_)
             (_E1135611368_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1135411364_)))
             (_E1135511395_
              (lambda ()
                (if (gx#stx-pair? _e1135411364_)
                    (let ((_e1135711372_ (gx#syntax-e _e1135411364_)))
                      (let ((_hd1135811375_ (##car _e1135711372_))
                            (_tl1135911377_ (##cdr _e1135711372_)))
                        (if (gx#stx-pair? _tl1135911377_)
                            (let ((_e1136011380_ (gx#syntax-e _tl1135911377_)))
                              (let ((_hd1136111383_ (##car _e1136011380_))
                                    (_tl1136211385_ (##cdr _e1136011380_)))
                                (let* ((_hd11388_ _hd1136111383_)
                                       (_body11390_ _tl1136211385_))
                                  (if (gx#core-expand-let-bind? _hd11388_)
                                      (let ((_expressions11392_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd11388_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd11388_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd11388_
                                                           _expressions11392_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx11353_
                         _body11390_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx11353_))))
                                         gx#current-expander-context
                                         (let ((__obj12500
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12500)
                                             __obj12500))))
                                      (_E1135611368_)))))
                            (_E1135611368_))))
                    (_E1135611368_)))))
        (_E1135511395_))))
  (begin
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx11298_ _form11299_)
        (let* ((_e1130011310_ _stx11298_)
               (_E1130211314_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1130011310_)))
               (_E1130111339_
                (lambda ()
                  (if (gx#stx-pair? _e1130011310_)
                      (let ((_e1130311318_ (gx#syntax-e _e1130011310_)))
                        (let ((_hd1130411321_ (##car _e1130311318_))
                              (_tl1130511323_ (##cdr _e1130311318_)))
                          (if (gx#stx-pair? _tl1130511323_)
                              (let ((_e1130611326_
                                     (gx#syntax-e _tl1130511323_)))
                                (let ((_hd1130711329_ (##car _e1130611326_))
                                      (_tl1130811331_ (##cdr _e1130611326_)))
                                  (let* ((_hd11334_ _hd1130711329_)
                                         (_body11336_ _tl1130811331_))
                                    (if (gx#core-expand-let-bind? _hd11334_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd11334_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form11299_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd11334_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd11334_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx11298_
                         _body11336_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx11298_))))
                                         gx#current-expander-context
                                         (let ((__obj12501
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12501)
                                             __obj12501)))
                                        (_E1130211314_)))))
                              (_E1130211314_))))
                      (_E1130211314_)))))
          (_E1130111339_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx11346_)
          (let ((_form11348_ '%#letrec-values))
            (gx#core-expand-letrec-values%__% _stx11346_ _form11348_))))
      (define gx#core-expand-letrec-values%
        (lambda _g12511_
          (let ((_g12510_ (length _g12511_)))
            (cond ((##fx= _g12510_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g12511_))
                  ((##fx= _g12510_ 2)
                   (apply gx#core-expand-letrec-values%__% _g12511_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g12511_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx11295_)
      (gx#core-expand-letrec-values%__% _stx11295_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx11252_)
      (if (gx#stx-list? _stx11252_)
          (gx#stx-andmap
           (lambda (_bind11254_)
             (let* ((_e1125511265_ _bind11254_)
                    (_E1125711269_ (lambda () '#f))
                    (_E1125611291_
                     (lambda ()
                       (if (gx#stx-pair? _e1125511265_)
                           (let ((_e1125811273_ (gx#syntax-e _e1125511265_)))
                             (let ((_hd1125911276_ (##car _e1125811273_))
                                   (_tl1126011278_ (##cdr _e1125811273_)))
                               (let ((_hd11281_ _hd1125911276_))
                                 (if (gx#stx-pair? _tl1126011278_)
                                     (let ((_e1126111283_
                                            (gx#syntax-e _tl1126011278_)))
                                       (let ((_hd1126211286_
                                              (##car _e1126111283_))
                                             (_tl1126311288_
                                              (##cdr _e1126111283_)))
                                         (if (gx#stx-null? _tl1126311288_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd11281_)
                                                 (_E1125711269_))
                                             (_E1125711269_))))
                                     (_E1125711269_)))))
                           (_E1125711269_)))))
               (_E1125611291_)))
           _stx11252_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind11211_)
      (let* ((_e1121211222_ _bind11211_)
             (_E1121411226_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1121211222_)))
             (_E1121311248_
              (lambda ()
                (if (gx#stx-pair? _e1121211222_)
                    (let ((_e1121511230_ (gx#syntax-e _e1121211222_)))
                      (let ((_hd1121611233_ (##car _e1121511230_))
                            (_tl1121711235_ (##cdr _e1121511230_)))
                        (if (gx#stx-pair? _tl1121711235_)
                            (let ((_e1121811238_ (gx#syntax-e _tl1121711235_)))
                              (let ((_hd1121911241_ (##car _e1121811238_))
                                    (_tl1122011243_ (##cdr _e1121811238_)))
                                (let ((_expr11246_ _hd1121911241_))
                                  (if (gx#stx-null? _tl1122011243_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr11246_)
                                          (_E1121411226_))
                                      (_E1121411226_)))))
                            (_E1121411226_))))
                    (_E1121411226_)))))
        (_E1121311248_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind11170_)
      (let* ((_e1117111181_ _bind11170_)
             (_E1117311185_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1117111181_)))
             (_E1117211207_
              (lambda ()
                (if (gx#stx-pair? _e1117111181_)
                    (let ((_e1117411189_ (gx#syntax-e _e1117111181_)))
                      (let ((_hd1117511192_ (##car _e1117411189_))
                            (_tl1117611194_ (##cdr _e1117411189_)))
                        (let ((_hd11197_ _hd1117511192_))
                          (if (gx#stx-pair? _tl1117611194_)
                              (let ((_e1117711199_
                                     (gx#syntax-e _tl1117611194_)))
                                (let ((_hd1117811202_ (##car _e1117711199_))
                                      (_tl1117911204_ (##cdr _e1117711199_)))
                                  (if (gx#stx-null? _tl1117911204_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd11197_)
                                          (_E1117311185_))
                                      (_E1117311185_))))
                              (_E1117311185_)))))
                    (_E1117311185_)))))
        (_E1117211207_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind11128_ _expr11129_)
      (let* ((_e1113011140_ _bind11128_)
             (_E1113211144_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1113011140_)))
             (_E1113111166_
              (lambda ()
                (if (gx#stx-pair? _e1113011140_)
                    (let ((_e1113311148_ (gx#syntax-e _e1113011140_)))
                      (let ((_hd1113411151_ (##car _e1113311148_))
                            (_tl1113511153_ (##cdr _e1113311148_)))
                        (let ((_hd11156_ _hd1113411151_))
                          (if (gx#stx-pair? _tl1113511153_)
                              (let ((_e1113611158_
                                     (gx#syntax-e _tl1113511153_)))
                                (let ((_hd1113711161_ (##car _e1113611158_))
                                      (_tl1113811163_ (##cdr _e1113611158_)))
                                  (if (gx#stx-null? _tl1113811163_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd11156_)
                                                (cons _expr11129_ '()))
                                          (_E1113211144_))
                                      (_E1113211144_))))
                              (_E1113211144_)))))
                    (_E1113211144_)))))
        (_E1113111166_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx11082_)
      (let* ((_e1108311093_ _stx11082_)
             (_E1108511097_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1108311093_)))
             (_E1108411124_
              (lambda ()
                (if (gx#stx-pair? _e1108311093_)
                    (let ((_e1108611101_ (gx#syntax-e _e1108311093_)))
                      (let ((_hd1108711104_ (##car _e1108611101_))
                            (_tl1108811106_ (##cdr _e1108611101_)))
                        (if (gx#stx-pair? _tl1108811106_)
                            (let ((_e1108911109_ (gx#syntax-e _tl1108811106_)))
                              (let ((_hd1109011112_ (##car _e1108911109_))
                                    (_tl1109111114_ (##cdr _e1108911109_)))
                                (let* ((_hd11117_ _hd1109011112_)
                                       (_body11119_ _tl1109111114_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd11117_)
                                      (let ((_expanders11121_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd11117_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd11117_
                                              _expanders11121_)
                                             (gx#core-expand-local-block
                                              _stx11082_
                                              _body11119_)))
                                         gx#current-expander-context
                                         (let ((__obj12502
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj12502)
                                             __obj12502))))
                                      (_E1108511097_)))))
                            (_E1108511097_))))
                    (_E1108511097_)))))
        (_E1108411124_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx11031_)
      (let* ((_e1103211042_ _stx11031_)
             (_E1103411046_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1103211042_)))
             (_E1103311078_
              (lambda ()
                (if (gx#stx-pair? _e1103211042_)
                    (let ((_e1103511050_ (gx#syntax-e _e1103211042_)))
                      (let ((_hd1103611053_ (##car _e1103511050_))
                            (_tl1103711055_ (##cdr _e1103511050_)))
                        (if (gx#stx-pair? _tl1103711055_)
                            (let ((_e1103811058_ (gx#syntax-e _tl1103711055_)))
                              (let ((_hd1103911061_ (##car _e1103811058_))
                                    (_tl1104011063_ (##cdr _e1103811058_)))
                                (let* ((_hd11066_ _hd1103911061_)
                                       (_body11068_ _tl1104011063_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd11066_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd11066_
                                            (make-list
                                             (gx#stx-length _hd11066_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g1107011073_
                                                     _g1107111075_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g1107011073_
                                               _g1107111075_
                                               '#t))
                                            _hd11066_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd11066_))
                                           (gx#core-expand-local-block
                                            _stx11031_
                                            _body11068_)))
                                       gx#current-expander-context
                                       (let ((__obj12503
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj12503)
                                           __obj12503)))
                                      (_E1103411046_)))))
                            (_E1103411046_))))
                    (_E1103411046_)))))
        (_E1103311078_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx10988_)
      (if (gx#stx-list? _stx10988_)
          (gx#stx-andmap
           (lambda (_bind10990_)
             (let* ((_e1099111001_ _bind10990_)
                    (_E1099311005_ (lambda () '#f))
                    (_E1099211027_
                     (lambda ()
                       (if (gx#stx-pair? _e1099111001_)
                           (let ((_e1099411009_ (gx#syntax-e _e1099111001_)))
                             (let ((_hd1099511012_ (##car _e1099411009_))
                                   (_tl1099611014_ (##cdr _e1099411009_)))
                               (let ((_hd11017_ _hd1099511012_))
                                 (if (gx#stx-pair? _tl1099611014_)
                                     (let ((_e1099711019_
                                            (gx#syntax-e _tl1099611014_)))
                                       (let ((_hd1099811022_
                                              (##car _e1099711019_))
                                             (_tl1099911024_
                                              (##cdr _e1099711019_)))
                                         (if (gx#stx-null? _tl1099911024_)
                                             (if '#t
                                                 (gx#identifier? _hd11017_)
                                                 (_E1099311005_))
                                             (_E1099311005_))))
                                     (_E1099311005_)))))
                           (_E1099311005_)))))
               (_E1099211027_)))
           _stx10988_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind10945_)
      (let* ((_e1094610956_ _bind10945_)
             (_E1094810960_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1094610956_)))
             (_E1094710984_
              (lambda ()
                (if (gx#stx-pair? _e1094610956_)
                    (let ((_e1094910964_ (gx#syntax-e _e1094610956_)))
                      (let ((_hd1095010967_ (##car _e1094910964_))
                            (_tl1095110969_ (##cdr _e1094910964_)))
                        (if (gx#stx-pair? _tl1095110969_)
                            (let ((_e1095210972_ (gx#syntax-e _tl1095110969_)))
                              (let ((_hd1095310975_ (##car _e1095210972_))
                                    (_tl1095410977_ (##cdr _e1095210972_)))
                                (let ((_expr10980_ _hd1095310975_))
                                  (if (gx#stx-null? _tl1095410977_)
                                      (if '#t
                                          (let ((_g12512_
                                                 (gx#core-expand-expression+1
                                                  _expr10980_)))
                                            (begin
                                              (let ((_g12513_
                                                     (if (##values? _g12512_)
                                                         (##vector-length
                                                          _g12512_)
                                                         1)))
                                                (if (not (##fx= _g12513_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12513_)))
                                              (let ((_e10982_
                                                     (##vector-ref
                                                      _g12512_
                                                      1)))
                                                _e10982_)))
                                          (_E1094810960_))
                                      (_E1094810960_)))))
                            (_E1094810960_))))
                    (_E1094810960_)))))
        (_E1094710984_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind10890_ _e10891_ _rebind?10892_)
        (let* ((_e1089310903_ _bind10890_)
               (_E1089510907_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1089310903_)))
               (_E1089410929_
                (lambda ()
                  (if (gx#stx-pair? _e1089310903_)
                      (let ((_e1089610911_ (gx#syntax-e _e1089310903_)))
                        (let ((_hd1089710914_ (##car _e1089610911_))
                              (_tl1089810916_ (##cdr _e1089610911_)))
                          (let ((_id10919_ _hd1089710914_))
                            (if (gx#stx-pair? _tl1089810916_)
                                (let ((_e1089910921_
                                       (gx#syntax-e _tl1089810916_)))
                                  (let ((_hd1090010924_ (##car _e1089910921_))
                                        (_tl1090110926_ (##cdr _e1089910921_)))
                                    (if (gx#stx-null? _tl1090110926_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id10919_
                                             _e10891_
                                             _rebind?10892_)
                                            (_E1089510907_))
                                        (_E1089510907_))))
                                (_E1089510907_)))))
                      (_E1089510907_)))))
          (_E1089410929_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind10936_ _e10937_)
          (let ((_rebind?10939_ '#f))
            (gx#core-expand-let-bind-syntax!__%
             _bind10936_
             _e10937_
             _rebind?10939_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g12515_
          (let ((_g12514_ (length _g12515_)))
            (cond ((##fx= _g12514_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g12515_))
                  ((##fx= _g12514_ 3)
                   (apply gx#core-expand-let-bind-syntax!__% _g12515_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g12515_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx10848_)
      (let* ((_e1084910859_ _stx10848_)
             (_E1085110863_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1084910859_)))
             (_E1085010885_
              (lambda ()
                (if (gx#stx-pair? _e1084910859_)
                    (let ((_e1085210867_ (gx#syntax-e _e1084910859_)))
                      (let ((_hd1085310870_ (##car _e1085210867_))
                            (_tl1085410872_ (##cdr _e1085210867_)))
                        (if (gx#stx-pair? _tl1085410872_)
                            (let ((_e1085510875_ (gx#syntax-e _tl1085410872_)))
                              (let ((_hd1085610878_ (##car _e1085510875_))
                                    (_tl1085710880_ (##cdr _e1085510875_)))
                                (let ((_expr10883_ _hd1085610878_))
                                  (if (gx#stx-null? _tl1085710880_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr10883_)
                                          (_E1085110863_))
                                      (_E1085110863_)))))
                            (_E1085110863_))))
                    (_E1085110863_)))))
        (_E1085010885_))))
  (define gx#core-expand-quote%
    (lambda (_stx10807_)
      (let* ((_e1080810818_ _stx10807_)
             (_E1081010822_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1080810818_)))
             (_E1080910844_
              (lambda ()
                (if (gx#stx-pair? _e1080810818_)
                    (let ((_e1081110826_ (gx#syntax-e _e1080810818_)))
                      (let ((_hd1081210829_ (##car _e1081110826_))
                            (_tl1081310831_ (##cdr _e1081110826_)))
                        (if (gx#stx-pair? _tl1081310831_)
                            (let ((_e1081410834_ (gx#syntax-e _tl1081310831_)))
                              (let ((_hd1081510837_ (##car _e1081410834_))
                                    (_tl1081610839_ (##cdr _e1081410834_)))
                                (let ((_e10842_ _hd1081510837_))
                                  (if (gx#stx-null? _tl1081610839_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e10842_)
                                                       '()))
                                           (gx#stx-source _stx10807_))
                                          (_E1081010822_))
                                      (_E1081010822_)))))
                            (_E1081010822_))))
                    (_E1081010822_)))))
        (_E1080910844_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx10766_)
      (let* ((_e1076710777_ _stx10766_)
             (_E1076910781_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1076710777_)))
             (_E1076810803_
              (lambda ()
                (if (gx#stx-pair? _e1076710777_)
                    (let ((_e1077010785_ (gx#syntax-e _e1076710777_)))
                      (let ((_hd1077110788_ (##car _e1077010785_))
                            (_tl1077210790_ (##cdr _e1077010785_)))
                        (if (gx#stx-pair? _tl1077210790_)
                            (let ((_e1077310793_ (gx#syntax-e _tl1077210790_)))
                              (let ((_hd1077410796_ (##car _e1077310793_))
                                    (_tl1077510798_ (##cdr _e1077310793_)))
                                (let ((_e10801_ _hd1077410796_))
                                  (if (gx#stx-null? _tl1077510798_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e10801_)
                                                       '()))
                                           (gx#stx-source _stx10766_))
                                          (_E1076910781_))
                                      (_E1076910781_)))))
                            (_E1076910781_))))
                    (_E1076910781_)))))
        (_E1076810803_))))
  (define gx#core-expand-call%
    (lambda (_stx10723_)
      (let* ((_e1072410734_ _stx10723_)
             (_E1072610738_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1072410734_)))
             (_E1072510762_
              (lambda ()
                (if (gx#stx-pair? _e1072410734_)
                    (let ((_e1072710742_ (gx#syntax-e _e1072410734_)))
                      (let ((_hd1072810745_ (##car _e1072710742_))
                            (_tl1072910747_ (##cdr _e1072710742_)))
                        (if (gx#stx-pair? _tl1072910747_)
                            (let ((_e1073010750_ (gx#syntax-e _tl1072910747_)))
                              (let ((_hd1073110753_ (##car _e1073010750_))
                                    (_tl1073210755_ (##cdr _e1073010750_)))
                                (let* ((_rator10758_ _hd1073110753_)
                                       (_args10760_ _tl1073210755_))
                                  (if (gx#stx-list? _args10760_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression
                                         _rator10758_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args10760_))
                                       (gx#stx-source _stx10723_))
                                      (_E1072610738_)))))
                            (_E1072610738_))))
                    (_E1072610738_)))))
        (_E1072510762_))))
  (define gx#core-expand-if%
    (lambda (_stx10656_)
      (let* ((_e1065710673_ _stx10656_)
             (_E1065910677_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1065710673_)))
             (_E1065810719_
              (lambda ()
                (if (gx#stx-pair? _e1065710673_)
                    (let ((_e1066010681_ (gx#syntax-e _e1065710673_)))
                      (let ((_hd1066110684_ (##car _e1066010681_))
                            (_tl1066210686_ (##cdr _e1066010681_)))
                        (if (gx#stx-pair? _tl1066210686_)
                            (let ((_e1066310689_ (gx#syntax-e _tl1066210686_)))
                              (let ((_hd1066410692_ (##car _e1066310689_))
                                    (_tl1066510694_ (##cdr _e1066310689_)))
                                (let ((_test10697_ _hd1066410692_))
                                  (if (gx#stx-pair? _tl1066510694_)
                                      (let ((_e1066610699_
                                             (gx#syntax-e _tl1066510694_)))
                                        (let ((_hd1066710702_
                                               (##car _e1066610699_))
                                              (_tl1066810704_
                                               (##cdr _e1066610699_)))
                                          (let ((_K10707_ _hd1066710702_))
                                            (if (gx#stx-pair? _tl1066810704_)
                                                (let ((_e1066910709_
                                                       (gx#syntax-e
                                                        _tl1066810704_)))
                                                  (let ((_hd1067010712_
                                                         (##car _e1066910709_))
                                                        (_tl1067110714_
                                                         (##cdr _e1066910709_)))
                                                    (let ((_E10717_
                                                           _hd1067010712_))
                                                      (if (gx#stx-null?
                                                           _tl1067110714_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test10697_)
                                   (cons (gx#core-expand-expression _K10707_)
                                         (cons (gx#core-expand-expression
                                                _E10717_)
                                               '()))))
                       (gx#stx-source _stx10656_))
                      (_E1065910677_))
                  (_E1065910677_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1065910677_)))))
                                      (_E1065910677_)))))
                            (_E1065910677_))))
                    (_E1065910677_)))))
        (_E1065810719_))))
  (define gx#core-expand-ref%
    (lambda (_stx10615_)
      (let* ((_e1061610626_ _stx10615_)
             (_E1061810630_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1061610626_)))
             (_E1061710652_
              (lambda ()
                (if (gx#stx-pair? _e1061610626_)
                    (let ((_e1061910634_ (gx#syntax-e _e1061610626_)))
                      (let ((_hd1062010637_ (##car _e1061910634_))
                            (_tl1062110639_ (##cdr _e1061910634_)))
                        (if (gx#stx-pair? _tl1062110639_)
                            (let ((_e1062210642_ (gx#syntax-e _tl1062110639_)))
                              (let ((_hd1062310645_ (##car _e1062210642_))
                                    (_tl1062410647_ (##cdr _e1062210642_)))
                                (let ((_id10650_ _hd1062310645_))
                                  (if (gx#stx-null? _tl1062410647_)
                                      (if (gx#core-runtime-ref? _id10650_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id10650_
                                                        _stx10615_)
                                                       '()))
                                           (gx#stx-source _stx10615_))
                                          (_E1061810630_))
                                      (_E1061810630_)))))
                            (_E1061810630_))))
                    (_E1061810630_)))))
        (_E1061710652_))))
  (define gx#core-expand-setq%
    (lambda (_stx10561_)
      (let* ((_e1056210575_ _stx10561_)
             (_E1056410579_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1056210575_)))
             (_E1056310611_
              (lambda ()
                (if (gx#stx-pair? _e1056210575_)
                    (let ((_e1056510583_ (gx#syntax-e _e1056210575_)))
                      (let ((_hd1056610586_ (##car _e1056510583_))
                            (_tl1056710588_ (##cdr _e1056510583_)))
                        (if (gx#stx-pair? _tl1056710588_)
                            (let ((_e1056810591_ (gx#syntax-e _tl1056710588_)))
                              (let ((_hd1056910594_ (##car _e1056810591_))
                                    (_tl1057010596_ (##cdr _e1056810591_)))
                                (let ((_id10599_ _hd1056910594_))
                                  (if (gx#stx-pair? _tl1057010596_)
                                      (let ((_e1057110601_
                                             (gx#syntax-e _tl1057010596_)))
                                        (let ((_hd1057210604_
                                               (##car _e1057110601_))
                                              (_tl1057310606_
                                               (##cdr _e1057110601_)))
                                          (let ((_expr10609_ _hd1057210604_))
                                            (if (gx#stx-null? _tl1057310606_)
                                                (if (gx#core-runtime-ref?
                                                     _id10599_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id10599_
                          _stx10561_)
                         (cons (gx#core-expand-expression _expr10609_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx10561_))
                                                    (_E1056410579_))
                                                (_E1056410579_)))))
                                      (_E1056410579_)))))
                            (_E1056410579_))))
                    (_E1056410579_)))))
        (_E1056310611_))))
  (define gx#macro-expand-extern
    (lambda (_stx10409_)
      (letrec ((_generate10411_
                (lambda (_body10441_)
                  (let _lp10443_ ((_rest10445_ _body10441_)
                                  (_ns10446_ (gx#core-context-namespace__0))
                                  (_r10447_ '()))
                    (let* ((_e1044810463_ _rest10445_)
                           (_E1046110467_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1044810463_)))
                           (_E1045710471_
                            (lambda ()
                              (if (gx#stx-null? _e1044810463_)
                                  (if '#t (reverse _r10447_) (_E1046110467_))
                                  (_E1046110467_))))
                           (_E1045010528_
                            (lambda ()
                              (if (gx#stx-pair? _e1044810463_)
                                  (let ((_e1045810475_
                                         (gx#syntax-e _e1044810463_)))
                                    (let ((_hd1045910478_
                                           (##car _e1045810475_))
                                          (_tl1046010480_
                                           (##cdr _e1045810475_)))
                                      (let* ((_hd10483_ _hd1045910478_)
                                             (_rest10485_ _tl1046010480_))
                                        (if '#t
                                            (if (gx#identifier? _hd10483_)
                                                (_lp10443_
                                                 _rest10485_
                                                 _ns10446_
                                                 (cons (cons _hd10483_
                                                             (cons (if _ns10446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd10483_
                                _ns10446_
                                '"#"
                                _hd10483_)
                               _hd10483_)
                           '()))
               _r10447_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e1048610496_
                                                        _hd10483_)
                                                       (_E1048810500_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e1048610496_)))
                                                       (_E1048710524_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1048610496_)
                                                              (let ((_e1048910504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1048610496_)))
                        (let ((_hd1049010507_ (##car _e1048910504_))
                              (_tl1049110509_ (##cdr _e1048910504_)))
                          (let ((_id10512_ _hd1049010507_))
                            (if (gx#stx-pair? _tl1049110509_)
                                (let ((_e1049210514_
                                       (gx#syntax-e _tl1049110509_)))
                                  (let ((_hd1049310517_ (##car _e1049210514_))
                                        (_tl1049410519_ (##cdr _e1049210514_)))
                                    (let ((_eid10522_ _hd1049310517_))
                                      (if (gx#stx-null? _tl1049410519_)
                                          (if (if (gx#identifier? _id10512_)
                                                  (gx#identifier? _eid10522_)
                                                  '#f)
                                              (_lp10443_
                                               _rest10485_
                                               _ns10446_
                                               (cons (cons _id10512_
                                                           (cons _eid10522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r10447_))
                                              (_E1048810500_))
                                          (_E1048810500_)))))
                                (_E1048810500_)))))
                      (_E1048810500_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1048710524_)))
                                            (_E1045710471_)))))
                                  (_E1045710471_))))
                           (_E1044910557_
                            (lambda ()
                              (if (gx#stx-pair? _e1044810463_)
                                  (let ((_e1045110532_
                                         (gx#syntax-e _e1044810463_)))
                                    (let ((_hd1045210535_
                                           (##car _e1045110532_))
                                          (_tl1045310537_
                                           (##cdr _e1045110532_)))
                                      (if (eq? (gx#stx-e _hd1045210535_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl1045310537_)
                                              (let ((_e1045410540_
                                                     (gx#syntax-e
                                                      _tl1045310537_)))
                                                (let ((_hd1045510543_
                                                       (##car _e1045410540_))
                                                      (_tl1045610545_
                                                       (##cdr _e1045410540_)))
                                                  (let* ((_ns10548_
                                                          _hd1045510543_)
                                                         (_rest10550_
                                                          _tl1045610545_))
                                                    (if '#t
                                                        (let ((_ns10555_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns10548_)
                           (symbol->string (gx#stx-e _ns10548_))
                           (if (let ((_$e10552_ (gx#stx-string? _ns10548_)))
                                 (if _$e10552_
                                     _$e10552_
                                     (gx#stx-false? _ns10548_)))
                               (gx#stx-e _ns10548_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx10409_
                                _ns10548_)))))
                  (_lp10443_ _rest10550_ _ns10555_ _r10447_))
                (_E1045010528_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1045010528_))
                                          (_E1045010528_))))
                                  (_E1045010528_)))))
                      (_E1044910557_))))))
        (let* ((_e1041210419_ _stx10409_)
               (_E1041410423_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1041210419_)))
               (_E1041310437_
                (lambda ()
                  (if (gx#stx-pair? _e1041210419_)
                      (let ((_e1041510427_ (gx#syntax-e _e1041210419_)))
                        (let ((_hd1041610430_ (##car _e1041510427_))
                              (_tl1041710432_ (##cdr _e1041510427_)))
                          (let ((_body10435_ _tl1041710432_))
                            (if (gx#stx-list? _body10435_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate10411_ _body10435_))
                                (_E1041410423_)))))
                      (_E1041410423_)))))
          (_E1041310437_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx10355_)
      (let* ((_e1035610369_ _stx10355_)
             (_E1035810373_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1035610369_)))
             (_E1035710405_
              (lambda ()
                (if (gx#stx-pair? _e1035610369_)
                    (let ((_e1035910377_ (gx#syntax-e _e1035610369_)))
                      (let ((_hd1036010380_ (##car _e1035910377_))
                            (_tl1036110382_ (##cdr _e1035910377_)))
                        (if (gx#stx-pair? _tl1036110382_)
                            (let ((_e1036210385_ (gx#syntax-e _tl1036110382_)))
                              (let ((_hd1036310388_ (##car _e1036210385_))
                                    (_tl1036410390_ (##cdr _e1036210385_)))
                                (let ((_hd10393_ _hd1036310388_))
                                  (if (gx#stx-pair? _tl1036410390_)
                                      (let ((_e1036510395_
                                             (gx#syntax-e _tl1036410390_)))
                                        (let ((_hd1036610398_
                                               (##car _e1036510395_))
                                              (_tl1036710400_
                                               (##cdr _e1036510395_)))
                                          (let ((_expr10403_ _hd1036610398_))
                                            (if (gx#stx-null? _tl1036710400_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd10393_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd10393_)
                        (cons _expr10403_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1035810373_))
                                                (_E1035810373_)))))
                                      (_E1035810373_)))))
                            (_E1035810373_))))
                    (_E1035810373_)))))
        (_E1035710405_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx10301_)
      (let* ((_e1030210315_ _stx10301_)
             (_E1030410319_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1030210315_)))
             (_E1030310351_
              (lambda ()
                (if (gx#stx-pair? _e1030210315_)
                    (let ((_e1030510323_ (gx#syntax-e _e1030210315_)))
                      (let ((_hd1030610326_ (##car _e1030510323_))
                            (_tl1030710328_ (##cdr _e1030510323_)))
                        (if (gx#stx-pair? _tl1030710328_)
                            (let ((_e1030810331_ (gx#syntax-e _tl1030710328_)))
                              (let ((_hd1030910334_ (##car _e1030810331_))
                                    (_tl1031010336_ (##cdr _e1030810331_)))
                                (let ((_hd10339_ _hd1030910334_))
                                  (if (gx#stx-pair? _tl1031010336_)
                                      (let ((_e1031110341_
                                             (gx#syntax-e _tl1031010336_)))
                                        (let ((_hd1031210344_
                                               (##car _e1031110341_))
                                              (_tl1031310346_
                                               (##cdr _e1031110341_)))
                                          (let ((_expr10349_ _hd1031210344_))
                                            (if (gx#stx-null? _tl1031310346_)
                                                (if (gx#identifier? _hd10339_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd10339_
                                                                (cons _expr10349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1030410319_))
                                                (_E1030410319_)))))
                                      (_E1030410319_)))))
                            (_E1030410319_))))
                    (_E1030410319_)))))
        (_E1030310351_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx10247_)
      (let* ((_e1024810261_ _stx10247_)
             (_E1025010265_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1024810261_)))
             (_E1024910297_
              (lambda ()
                (if (gx#stx-pair? _e1024810261_)
                    (let ((_e1025110269_ (gx#syntax-e _e1024810261_)))
                      (let ((_hd1025210272_ (##car _e1025110269_))
                            (_tl1025310274_ (##cdr _e1025110269_)))
                        (if (gx#stx-pair? _tl1025310274_)
                            (let ((_e1025410277_ (gx#syntax-e _tl1025310274_)))
                              (let ((_hd1025510280_ (##car _e1025410277_))
                                    (_tl1025610282_ (##cdr _e1025410277_)))
                                (let ((_id10285_ _hd1025510280_))
                                  (if (gx#stx-pair? _tl1025610282_)
                                      (let ((_e1025710287_
                                             (gx#syntax-e _tl1025610282_)))
                                        (let ((_hd1025810290_
                                               (##car _e1025710287_))
                                              (_tl1025910292_
                                               (##cdr _e1025710287_)))
                                          (let ((_alias-id10295_
                                                 _hd1025810290_))
                                            (if (gx#stx-null? _tl1025910292_)
                                                (if (if (gx#identifier?
                                                         _id10285_)
                                                        (gx#identifier?
                                                         _alias-id10295_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id10285_
                                                                (cons _alias-id10295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1025010265_))
                                                (_E1025010265_)))))
                                      (_E1025010265_)))))
                            (_E1025010265_))))
                    (_E1025010265_)))))
        (_E1024910297_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx10204_)
      (let* ((_e1020510215_ _stx10204_)
             (_E1020710219_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1020510215_)))
             (_E1020610243_
              (lambda ()
                (if (gx#stx-pair? _e1020510215_)
                    (let ((_e1020810223_ (gx#syntax-e _e1020510215_)))
                      (let ((_hd1020910226_ (##car _e1020810223_))
                            (_tl1021010228_ (##cdr _e1020810223_)))
                        (if (gx#stx-pair? _tl1021010228_)
                            (let ((_e1021110231_ (gx#syntax-e _tl1021010228_)))
                              (let ((_hd1021210234_ (##car _e1021110231_))
                                    (_tl1021310236_ (##cdr _e1021110231_)))
                                (let* ((_hd10239_ _hd1021210234_)
                                       (_body10241_ _tl1021310236_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd10239_)
                                          (if (gx#stx-list? _body10241_)
                                              (not (gx#stx-null? _body10241_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd10239_)
                                       _body10241_)
                                      (_E1020710219_)))))
                            (_E1020710219_))))
                    (_E1020710219_)))))
        (_E1020610243_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx10140_)
      (letrec ((_generate10142_
                (lambda (_clause10172_)
                  (let* ((_e1017310180_ _clause10172_)
                         (_E1017510184_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx10140_
                             _clause10172_)))
                         (_E1017410200_
                          (lambda ()
                            (if (gx#stx-pair? _e1017310180_)
                                (let ((_e1017610188_
                                       (gx#syntax-e _e1017310180_)))
                                  (let ((_hd1017710191_ (##car _e1017610188_))
                                        (_tl1017810193_ (##cdr _e1017610188_)))
                                    (let* ((_hd10196_ _hd1017710191_)
                                           (_body10198_ _tl1017810193_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd10196_)
                                              (if (gx#stx-list? _body10198_)
                                                  (not (gx#stx-null?
                                                        _body10198_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd10196_)
                                                 _body10198_)
                                           (gx#stx-source _clause10172_))
                                          (_E1017510184_)))))
                                (_E1017510184_)))))
                    (_E1017410200_)))))
        (let* ((_e1014310150_ _stx10140_)
               (_E1014510154_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1014310150_)))
               (_E1014410168_
                (lambda ()
                  (if (gx#stx-pair? _e1014310150_)
                      (let ((_e1014610158_ (gx#syntax-e _e1014310150_)))
                        (let ((_hd1014710161_ (##car _e1014610158_))
                              (_tl1014810163_ (##cdr _e1014610158_)))
                          (let ((_clauses10166_ _tl1014810163_))
                            (if (gx#stx-list? _clauses10166_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate10142_ _clauses10166_))
                                (_E1014510154_)))))
                      (_E1014510154_)))))
          (_E1014410168_)))))
  (begin
    (define gx#macro-expand-let-values__%
      (lambda (_stx10041_ _form10042_)
        (letrec ((_generate10044_
                  (lambda (_bind10087_)
                    (let* ((_e1008810098_ _bind10087_)
                           (_E1009010102_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx10041_
                               _bind10087_)))
                           (_E1008910126_
                            (lambda ()
                              (if (gx#stx-pair? _e1008810098_)
                                  (let ((_e1009110106_
                                         (gx#syntax-e _e1008810098_)))
                                    (let ((_hd1009210109_
                                           (##car _e1009110106_))
                                          (_tl1009310111_
                                           (##cdr _e1009110106_)))
                                      (let ((_ids10114_ _hd1009210109_))
                                        (if (gx#stx-pair? _tl1009310111_)
                                            (let ((_e1009410116_
                                                   (gx#syntax-e
                                                    _tl1009310111_)))
                                              (let ((_hd1009510119_
                                                     (##car _e1009410116_))
                                                    (_tl1009610121_
                                                     (##cdr _e1009410116_)))
                                                (let ((_expr10124_
                                                       _hd1009510119_))
                                                  (if (gx#stx-null?
                                                       _tl1009610121_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids10114_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids10114_)
                        (cons _expr10124_ '()))
                  (_E1009010102_))
              (_E1009010102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1009010102_)))))
                                  (_E1009010102_)))))
                      (_E1008910126_)))))
          (let* ((_e1004510055_ _stx10041_)
                 (_E1004710059_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1004510055_)))
                 (_E1004610083_
                  (lambda ()
                    (if (gx#stx-pair? _e1004510055_)
                        (let ((_e1004810063_ (gx#syntax-e _e1004510055_)))
                          (let ((_hd1004910066_ (##car _e1004810063_))
                                (_tl1005010068_ (##cdr _e1004810063_)))
                            (if (gx#stx-pair? _tl1005010068_)
                                (let ((_e1005110071_
                                       (gx#syntax-e _tl1005010068_)))
                                  (let ((_hd1005210074_ (##car _e1005110071_))
                                        (_tl1005310076_ (##cdr _e1005110071_)))
                                    (let* ((_hd10079_ _hd1005210074_)
                                           (_body10081_ _tl1005310076_))
                                      (if (if (gx#stx-list? _hd10079_)
                                              (if (gx#stx-list? _body10081_)
                                                  (not (gx#stx-null?
                                                        _body10081_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form10042_
                                           (gx#stx-map1
                                            _generate10044_
                                            _hd10079_)
                                           _body10081_)
                                          (_E1004710059_)))))
                                (_E1004710059_))))
                        (_E1004710059_)))))
            (_E1004610083_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx10133_)
          (let ((_form10135_ '%#let-values))
            (gx#macro-expand-let-values__% _stx10133_ _form10135_))))
      (define gx#macro-expand-let-values
        (lambda _g12517_
          (let ((_g12516_ (length _g12517_)))
            (cond ((##fx= _g12516_ 1)
                   (apply gx#macro-expand-let-values__0 _g12517_))
                  ((##fx= _g12516_ 2)
                   (apply gx#macro-expand-let-values__% _g12517_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g12517_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx10038_)
      (gx#macro-expand-let-values__% _stx10038_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx10036_)
      (gx#macro-expand-let-values__% _stx10036_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx9927_)
      (let* ((_e99289954_ _stx9927_)
             (_E99409958_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e99289954_)))
             (_E993010000_
              (lambda ()
                (if (gx#stx-pair? _e99289954_)
                    (let ((_e99419962_ (gx#syntax-e _e99289954_)))
                      (let ((_hd99429965_ (##car _e99419962_))
                            (_tl99439967_ (##cdr _e99419962_)))
                        (if (gx#stx-pair? _tl99439967_)
                            (let ((_e99449970_ (gx#syntax-e _tl99439967_)))
                              (let ((_hd99459973_ (##car _e99449970_))
                                    (_tl99469975_ (##cdr _e99449970_)))
                                (let ((_test9978_ _hd99459973_))
                                  (if (gx#stx-pair? _tl99469975_)
                                      (let ((_e99479980_
                                             (gx#syntax-e _tl99469975_)))
                                        (let ((_hd99489983_
                                               (##car _e99479980_))
                                              (_tl99499985_
                                               (##cdr _e99479980_)))
                                          (let ((_K9988_ _hd99489983_))
                                            (if (gx#stx-pair? _tl99499985_)
                                                (let ((_e99509990_
                                                       (gx#syntax-e
                                                        _tl99499985_)))
                                                  (let ((_hd99519993_
                                                         (##car _e99509990_))
                                                        (_tl99529995_
                                                         (##cdr _e99509990_)))
                                                    (let ((_E9998_ _hd99519993_))
                                                      (if (gx#stx-null?
                                                           _tl99529995_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test9978_
                                                               _K9988_
                                                               _E9998_)
                                                              (_E99409958_))
                                                          (_E99409958_)))))
                                                (_E99409958_)))))
                                      (_E99409958_)))))
                            (_E99409958_))))
                    (_E99409958_))))
             (_E992910032_
              (lambda ()
                (if (gx#stx-pair? _e99289954_)
                    (let ((_e993110004_ (gx#syntax-e _e99289954_)))
                      (let ((_hd993210007_ (##car _e993110004_))
                            (_tl993310009_ (##cdr _e993110004_)))
                        (if (gx#stx-pair? _tl993310009_)
                            (let ((_e993410012_ (gx#syntax-e _tl993310009_)))
                              (let ((_hd993510015_ (##car _e993410012_))
                                    (_tl993610017_ (##cdr _e993410012_)))
                                (let ((_test10020_ _hd993510015_))
                                  (if (gx#stx-pair? _tl993610017_)
                                      (let ((_e993710022_
                                             (gx#syntax-e _tl993610017_)))
                                        (let ((_hd993810025_
                                               (##car _e993710022_))
                                              (_tl993910027_
                                               (##cdr _e993710022_)))
                                          (let ((_K10030_ _hd993810025_))
                                            (if (gx#stx-null? _tl993910027_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test10020_
                                                     _K10030_
                                                     '#!void)
                                                    (_E993010000_))
                                                (_E993010000_)))))
                                      (_E993010000_)))))
                            (_E993010000_))))
                    (_E993010000_)))))
        (_E992910032_))))
  (define gx#free-identifier=?
    (lambda (_xid9915_ _yid9916_)
      (let ((_xe9918_ (gx#resolve-identifier__0 _xid9915_))
            (_ye9919_ (gx#resolve-identifier__0 _yid9916_)))
        (if (if _xe9918_ _ye9919_ '#f)
            (let ((_$e9921_ (eq? _xe9918_ _ye9919_)))
              (if _$e9921_
                  _$e9921_
                  (if (##structure-instance-of? _xe9918_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye9919_ 'gx#binding::t)
                          (eq? (##unchecked-structure-ref
                                _xe9918_
                                '1
                                gx#binding::t
                                '#f)
                               (##unchecked-structure-ref
                                _ye9919_
                                '1
                                gx#binding::t
                                '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e9924_ _xe9918_)) (if _$e9924_ _$e9924_ _ye9919_))
                '#f
                (gx#stx-eq? _xid9915_ _yid9916_))))))
  (define gx#bound-identifier=?
    (lambda (_xid9899_ _yid9900_)
      (letrec ((_context9902_
                (lambda (_e9913_)
                  (if (##structure-direct-instance-of?
                       _e9913_
                       'gx#syntax-quote::t)
                      (##unchecked-structure-ref
                       _e9913_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks9903_
                (lambda (_e9911_)
                  (if (symbol? _e9911_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e9911_
                           'gx#identifier-wrap::t)
                          (##unchecked-structure-ref
                           _e9911_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##unchecked-structure-ref
                           _e9911_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap9904_
                (lambda (_e9909_)
                  (if (symbol? _e9909_)
                      _e9909_
                      (gx#syntax-local-unwrap _e9909_)))))
        (let ((_x9906_ (_unwrap9904_ _xid9899_))
              (_y9907_ (_unwrap9904_ _yid9900_)))
          (if (gx#stx-eq? _x9906_ _y9907_)
              (if (eq? (_context9902_ _x9906_) (_context9902_ _y9907_))
                  (equal? (_marks9903_ _x9906_) (_marks9903_ _y9907_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx9897_)
      (if (gx#identifier? _stx9897_) (gx#core-identifier=? _stx9897_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx9895_)
      (if (gx#identifier? _stx9895_)
          (gx#core-identifier=? _stx9895_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x9893_)
      (if (gx#identifier? _x9893_)
          (if (not (gx#underscore? _x9893_)) _x9893_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx9839_ _where9840_)
        (let _lp9842_ ((_rest9844_ (gx#syntax->list _stx9839_)))
          (let* ((_rest98459853_ _rest9844_)
                 (_else98479861_ (lambda () '#t))
                 (_K98499871_
                  (lambda (_rest9864_ _hd9865_)
                    (if (not (gx#identifier? _hd9865_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where9840_
                         _hd9865_)
                        (if (find (lambda (_g98669868_)
                                    (gx#bound-identifier=?
                                     _g98669868_
                                     _hd9865_))
                                  _rest9864_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where9840_
                             _hd9865_)
                            (_lp9842_ _rest9864_))))))
            (if (##pair? _rest98459853_)
                (let ((_hd98509874_ (##car _rest98459853_))
                      (_tl98519876_ (##cdr _rest98459853_)))
                  (let* ((_hd9879_ _hd98509874_) (_rest9881_ _tl98519876_))
                    (_K98499871_ _rest9881_ _hd9879_)))
                (_else98479861_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx9886_)
          (let ((_where9888_ _stx9886_))
            (gx#check-duplicate-identifiers__% _stx9886_ _where9888_))))
      (define gx#check-duplicate-identifiers
        (lambda _g12519_
          (let ((_g12518_ (length _g12519_)))
            (cond ((##fx= _g12518_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g12519_))
                  ((##fx= _g12518_ 2)
                   (apply gx#check-duplicate-identifiers__% _g12519_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g12519_))))))))
  (define gx#core-bind-values?
    (lambda (_stx9831_)
      (gx#stx-andmap
       (lambda (_x9833_)
         (let ((_$e9835_ (gx#identifier? _x9833_)))
           (if _$e9835_ _$e9835_ (gx#stx-false? _x9833_))))
       _stx9831_)))
  (begin
    (define gx#core-bind-values!__%
      (lambda (_stx9795_ _rebind?9796_ _phi9797_ _ctx9798_)
        (gx#stx-for-each1
         (lambda (_id9800_)
           (if (gx#identifier? _id9800_)
               (gx#core-bind-runtime!__%
                _id9800_
                _rebind?9796_
                _phi9797_
                _ctx9798_)
               '#!void))
         _stx9795_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx9805_)
          (let* ((_rebind?9807_ '#f)
                 (_phi9809_ (gx#current-expander-phi))
                 (_ctx9811_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx9805_
             _rebind?9807_
             _phi9809_
             _ctx9811_))))
      (define gx#core-bind-values!__1
        (lambda (_stx9813_ _rebind?9814_)
          (let* ((_phi9816_ (gx#current-expander-phi))
                 (_ctx9818_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx9813_
             _rebind?9814_
             _phi9816_
             _ctx9818_))))
      (define gx#core-bind-values!__2
        (lambda (_stx9820_ _rebind?9821_ _phi9822_)
          (let ((_ctx9824_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx9820_
             _rebind?9821_
             _phi9822_
             _ctx9824_))))
      (define gx#core-bind-values!
        (lambda _g12521_
          (let ((_g12520_ (length _g12521_)))
            (cond ((##fx= _g12520_ 1) (apply gx#core-bind-values!__0 _g12521_))
                  ((##fx= _g12520_ 2) (apply gx#core-bind-values!__1 _g12521_))
                  ((##fx= _g12520_ 3) (apply gx#core-bind-values!__2 _g12521_))
                  ((##fx= _g12520_ 4) (apply gx#core-bind-values!__% _g12521_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g12521_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx9790_)
      (gx#stx-map1
       (lambda (_x9792_)
         (if (gx#identifier? _x9792_) (gx#core-quote-syntax__0 _x9792_) '#f))
       _stx9790_)))
  (define gx#core-runtime-ref?
    (lambda (_stx9783_)
      (if (gx#identifier? _stx9783_)
          (let* ((_bind9785_ (gx#resolve-identifier__0 _stx9783_))
                 (_$e9787_ (not _bind9785_)))
            (if _$e9787_
                _$e9787_
                (##structure-instance-of? _bind9785_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id9775_ _form9776_)
      (let ((_bind9778_ (gx#resolve-identifier__0 _id9775_)))
        (if (##structure-instance-of? _bind9778_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id9775_)
            (if (not _bind9778_)
                (if (let ((_$e9780_
                           (gx#core-context-rebind?__%
                            (gx#core-context-top__0))))
                      (if _$e9780_
                          _$e9780_
                          (gx#core-extern-symbol? (gx#stx-e _id9775_))))
                    (gx#core-quote-syntax__0 _id9775_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form9776_
                     _id9775_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form9776_
                 _id9775_))))))
  (begin
    (define gx#core-bind-runtime!__%
      (lambda (_id9734_ _rebind?9735_ _phi9736_ _ctx9737_)
        (let* ((_key9739_ (gx#core-identifier-key _id9734_))
               (_eid9741_
                (gx#make-binding-id__% _key9739_ '#f _phi9736_ _ctx9737_))
               (_bind9743_
                (if (##structure-instance-of? _ctx9737_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid9741_
                     _key9739_
                     _phi9736_
                     _ctx9737_)
                    (if (##structure-instance-of? _ctx9737_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid9741_
                         _key9739_
                         _phi9736_)
                        (if (##structure-instance-of?
                             _ctx9737_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid9741_
                             _key9739_
                             _phi9736_)
                            (##structure
                             gx#runtime-binding::t
                             _eid9741_
                             _key9739_
                             _phi9736_))))))
          (gx#bind-identifier!__%
           _id9734_
           _bind9743_
           _rebind?9735_
           _phi9736_
           _ctx9737_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id9749_)
          (let* ((_rebind?9751_ '#f)
                 (_phi9753_ (gx#current-expander-phi))
                 (_ctx9755_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id9749_
             _rebind?9751_
             _phi9753_
             _ctx9755_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id9757_ _rebind?9758_)
          (let* ((_phi9760_ (gx#current-expander-phi))
                 (_ctx9762_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id9757_
             _rebind?9758_
             _phi9760_
             _ctx9762_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id9764_ _rebind?9765_ _phi9766_)
          (let ((_ctx9768_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id9764_
             _rebind?9765_
             _phi9766_
             _ctx9768_))))
      (define gx#core-bind-runtime!
        (lambda _g12523_
          (let ((_g12522_ (length _g12523_)))
            (cond ((##fx= _g12522_ 1)
                   (apply gx#core-bind-runtime!__0 _g12523_))
                  ((##fx= _g12522_ 2)
                   (apply gx#core-bind-runtime!__1 _g12523_))
                  ((##fx= _g12522_ 3)
                   (apply gx#core-bind-runtime!__2 _g12523_))
                  ((##fx= _g12522_ 4)
                   (apply gx#core-bind-runtime!__% _g12523_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g12523_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id9689_ _eid9690_ _rebind?9691_ _phi9692_ _ctx9693_)
        (let* ((_key9695_ (gx#core-identifier-key _id9689_))
               (_bind9697_
                (if (##structure-instance-of? _ctx9693_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid9690_
                     _key9695_
                     _phi9692_
                     _ctx9693_)
                    (if (##structure-instance-of? _ctx9693_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid9690_
                         _key9695_
                         _phi9692_)
                        (##structure
                         gx#runtime-binding::t
                         _eid9690_
                         _key9695_
                         _phi9692_)))))
          (gx#bind-identifier!__%
           _id9689_
           _bind9697_
           _rebind?9691_
           _phi9692_
           _ctx9693_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id9703_ _eid9704_)
          (let* ((_rebind?9706_ '#f)
                 (_phi9708_ (gx#current-expander-phi))
                 (_ctx9710_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id9703_
             _eid9704_
             _rebind?9706_
             _phi9708_
             _ctx9710_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id9712_ _eid9713_ _rebind?9714_)
          (let* ((_phi9716_ (gx#current-expander-phi))
                 (_ctx9718_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id9712_
             _eid9713_
             _rebind?9714_
             _phi9716_
             _ctx9718_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id9720_ _eid9721_ _rebind?9722_ _phi9723_)
          (let ((_ctx9725_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id9720_
             _eid9721_
             _rebind?9722_
             _phi9723_
             _ctx9725_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g12525_
          (let ((_g12524_ (length _g12525_)))
            (cond ((##fx= _g12524_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g12525_))
                  ((##fx= _g12524_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g12525_))
                  ((##fx= _g12524_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g12525_))
                  ((##fx= _g12524_ 5)
                   (apply gx#core-bind-runtime-reference!__% _g12525_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g12525_))))))))
  (begin
    (define gx#core-bind-extern!__%
      (lambda (_id9649_ _eid9650_ _rebind?9651_ _phi9652_ _ctx9653_)
        (gx#bind-identifier!__%
         _id9649_
         (##structure
          gx#extern-binding::t
          _eid9650_
          (gx#core-identifier-key _id9649_)
          _phi9652_)
         _rebind?9651_
         _phi9652_
         _ctx9653_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id9658_ _eid9659_)
          (let* ((_rebind?9661_ '#f)
                 (_phi9663_ (gx#current-expander-phi))
                 (_ctx9665_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id9658_
             _eid9659_
             _rebind?9661_
             _phi9663_
             _ctx9665_))))
      (define gx#core-bind-extern!__1
        (lambda (_id9667_ _eid9668_ _rebind?9669_)
          (let* ((_phi9671_ (gx#current-expander-phi))
                 (_ctx9673_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id9667_
             _eid9668_
             _rebind?9669_
             _phi9671_
             _ctx9673_))))
      (define gx#core-bind-extern!__2
        (lambda (_id9675_ _eid9676_ _rebind?9677_ _phi9678_)
          (let ((_ctx9680_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id9675_
             _eid9676_
             _rebind?9677_
             _phi9678_
             _ctx9680_))))
      (define gx#core-bind-extern!
        (lambda _g12527_
          (let ((_g12526_ (length _g12527_)))
            (cond ((##fx= _g12526_ 2) (apply gx#core-bind-extern!__0 _g12527_))
                  ((##fx= _g12526_ 3) (apply gx#core-bind-extern!__1 _g12527_))
                  ((##fx= _g12526_ 4) (apply gx#core-bind-extern!__2 _g12527_))
                  ((##fx= _g12526_ 5) (apply gx#core-bind-extern!__% _g12527_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g12527_))))))))
  (begin
    (define gx#core-bind-syntax!__%
      (lambda (_id9603_ _e9604_ _rebind?9605_ _phi9606_ _ctx9607_)
        (gx#bind-identifier!__%
         _id9603_
         (let ((_key9612_ (gx#core-identifier-key _id9603_))
               (_e9613_ (if (let ((_$e9609_
                                   (##structure-instance-of?
                                    _e9604_
                                    'gx#expander::t)))
                              (if _$e9609_
                                  _$e9609_
                                  (##structure-instance-of?
                                   _e9604_
                                   'gx#expander-context::t)))
                            _e9604_
                            (##structure
                             gx#user-expander::t
                             _e9604_
                             _ctx9607_
                             _phi9606_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key9612_ '#t _phi9606_ _ctx9607_)
            _key9612_
            _phi9606_
            _e9613_))
         _rebind?9605_
         _phi9606_
         _ctx9607_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id9618_ _e9619_)
          (let* ((_rebind?9621_ '#f)
                 (_phi9623_ (gx#current-expander-phi))
                 (_ctx9625_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id9618_
             _e9619_
             _rebind?9621_
             _phi9623_
             _ctx9625_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id9627_ _e9628_ _rebind?9629_)
          (let* ((_phi9631_ (gx#current-expander-phi))
                 (_ctx9633_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id9627_
             _e9628_
             _rebind?9629_
             _phi9631_
             _ctx9633_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id9635_ _e9636_ _rebind?9637_ _phi9638_)
          (let ((_ctx9640_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id9635_
             _e9636_
             _rebind?9637_
             _phi9638_
             _ctx9640_))))
      (define gx#core-bind-syntax!
        (lambda _g12529_
          (let ((_g12528_ (length _g12529_)))
            (cond ((##fx= _g12528_ 2) (apply gx#core-bind-syntax!__0 _g12529_))
                  ((##fx= _g12528_ 3) (apply gx#core-bind-syntax!__1 _g12529_))
                  ((##fx= _g12528_ 4) (apply gx#core-bind-syntax!__2 _g12529_))
                  ((##fx= _g12528_ 5) (apply gx#core-bind-syntax!__% _g12529_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g12529_))))))))
  (begin
    (define gx#core-bind-root-syntax!__%
      (lambda (_id9586_ _e9587_ _rebind?9588_)
        (gx#core-bind-syntax!__%
         _id9586_
         _e9587_
         _rebind?9588_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id9593_ _e9594_)
          (let ((_rebind?9596_ '#f))
            (gx#core-bind-root-syntax!__% _id9593_ _e9594_ _rebind?9596_))))
      (define gx#core-bind-root-syntax!
        (lambda _g12531_
          (let ((_g12530_ (length _g12531_)))
            (cond ((##fx= _g12530_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g12531_))
                  ((##fx= _g12530_ 3)
                   (apply gx#core-bind-root-syntax!__% _g12531_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g12531_))))))))
  (begin
    (define gx#core-bind-alias!__%
      (lambda (_id9544_ _alias-id9545_ _rebind?9546_ _phi9547_ _ctx9548_)
        (gx#bind-identifier!__%
         _id9544_
         (let ((_key9550_ (gx#core-identifier-key _id9544_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key9550_ '#t _phi9547_ _ctx9548_)
            _key9550_
            _phi9547_
            _alias-id9545_))
         _rebind?9546_
         _phi9547_
         _ctx9548_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id9555_ _alias-id9556_)
          (let* ((_rebind?9558_ '#f)
                 (_phi9560_ (gx#current-expander-phi))
                 (_ctx9562_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id9555_
             _alias-id9556_
             _rebind?9558_
             _phi9560_
             _ctx9562_))))
      (define gx#core-bind-alias!__1
        (lambda (_id9564_ _alias-id9565_ _rebind?9566_)
          (let* ((_phi9568_ (gx#current-expander-phi))
                 (_ctx9570_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id9564_
             _alias-id9565_
             _rebind?9566_
             _phi9568_
             _ctx9570_))))
      (define gx#core-bind-alias!__2
        (lambda (_id9572_ _alias-id9573_ _rebind?9574_ _phi9575_)
          (let ((_ctx9577_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id9572_
             _alias-id9573_
             _rebind?9574_
             _phi9575_
             _ctx9577_))))
      (define gx#core-bind-alias!
        (lambda _g12533_
          (let ((_g12532_ (length _g12533_)))
            (cond ((##fx= _g12532_ 2) (apply gx#core-bind-alias!__0 _g12533_))
                  ((##fx= _g12532_ 3) (apply gx#core-bind-alias!__1 _g12533_))
                  ((##fx= _g12532_ 4) (apply gx#core-bind-alias!__2 _g12533_))
                  ((##fx= _g12532_ 5) (apply gx#core-bind-alias!__% _g12533_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g12533_))))))))
  (begin
    (define gx#make-binding-id__%
      (lambda (_key9501_ _syntax?9502_ _phi9503_ _ctx9504_)
        (if (uninterned-symbol? _key9501_)
            (gensym 'L)
            (if (pair? _key9501_)
                (gensym (car _key9501_))
                (if (##structure-instance-of? _ctx9504_ 'gx#top-context::t)
                    (let ((_ns9506_ (gx#core-context-namespace__% _ctx9504_)))
                      (if (if (fxzero? _phi9503_) (not _syntax?9502_) '#f)
                          (if _ns9506_
                              (make-symbol _ns9506_ '"#" _key9501_)
                              _key9501_)
                          (if _syntax?9502_
                              (make-symbol
                               (let ((_$e9508_ _ns9506_))
                                 (if _$e9508_ _$e9508_ '""))
                               '"[:"
                               (number->string _phi9503_)
                               '":]#"
                               _key9501_)
                              (make-symbol
                               (let ((_$e9511_ _ns9506_))
                                 (if _$e9511_ _$e9511_ '""))
                               '"["
                               (number->string _phi9503_)
                               '"]#"
                               _key9501_))))
                    (gensym _key9501_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key9517_)
          (let* ((_syntax?9519_ '#f)
                 (_phi9521_ (gx#current-expander-phi))
                 (_ctx9523_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key9517_
             _syntax?9519_
             _phi9521_
             _ctx9523_))))
      (define gx#make-binding-id__1
        (lambda (_key9525_ _syntax?9526_)
          (let* ((_phi9528_ (gx#current-expander-phi))
                 (_ctx9530_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key9525_
             _syntax?9526_
             _phi9528_
             _ctx9530_))))
      (define gx#make-binding-id__2
        (lambda (_key9532_ _syntax?9533_ _phi9534_)
          (let ((_ctx9536_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key9532_
             _syntax?9533_
             _phi9534_
             _ctx9536_))))
      (define gx#make-binding-id
        (lambda _g12535_
          (let ((_g12534_ (length _g12535_)))
            (cond ((##fx= _g12534_ 1) (apply gx#make-binding-id__0 _g12535_))
                  ((##fx= _g12534_ 2) (apply gx#make-binding-id__1 _g12535_))
                  ((##fx= _g12534_ 3) (apply gx#make-binding-id__2 _g12535_))
                  ((##fx= _g12534_ 4) (apply gx#make-binding-id__% _g12535_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g12535_)))))))))
