(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1695117494)
  (begin
    (define gx#syntax-pattern::t
      (make-struct-type
       'gx#syntax-pattern::t
       gx#expander::t
       '2
       'syntax-pattern
       '()
       '#f
       '(id depth)))
    (define gx#syntax-pattern? (make-struct-predicate gx#syntax-pattern::t))
    (define gx#make-syntax-pattern
      (lambda _$args19757_
        (apply make-struct-instance gx#syntax-pattern::t _$args19757_)))
    (define gx#syntax-pattern-id
      (make-struct-field-accessor gx#syntax-pattern::t '0))
    (define gx#syntax-pattern-depth
      (make-struct-field-accessor gx#syntax-pattern::t '1))
    (define gx#syntax-pattern-id-set!
      (make-struct-field-mutator gx#syntax-pattern::t '0))
    (define gx#syntax-pattern-depth-set!
      (make-struct-field-mutator gx#syntax-pattern::t '1))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_self19754_ _stx19755_)
        (gx#raise-syntax-error
         '#f
         '"Identifier used out of context"
         _stx19755_)))
    (bind-method!
     gx#syntax-pattern::t
     'apply-macro-expander
     gx#syntax-pattern::apply-macro-expander
     '#f)
    (define gx#macro-expand-syntax
      (lambda (_stx19236_)
        (letrec ((_generate19238_
                  (lambda (_e19465_)
                    (letrec ((_BUG19467_
                              (lambda (_q19629_)
                                (error '"BUG: syntax; generate"
                                       _stx19236_
                                       _e19465_
                                       _q19629_)))
                             (_local-pattern-e19468_
                              (lambda (_pat19627_)
                                (gx#syntax-local-rewrap
                                 (##structure-ref
                                  _pat19627_
                                  '2
                                  gx#syntax-pattern::t
                                  '#f))))
                             (_getvar19469_
                              (lambda (_q19624_ _vars19625_)
                                (assgetq _q19624_ _vars19625_ _BUG19467_)))
                             (_getarg19470_
                              (lambda (_arg19590_ _vars19591_)
                                (let* ((_arg1959219599_ _arg19590_)
                                       (_E1959419603_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg1959219599_)))
                                       (_K1959519612_
                                        (lambda (_e19606_ _tag19607_)
                                          (let ((_$e19609_ _tag19607_))
                                            (if (eq? 'ref _$e19609_)
                                                (_getvar19469_
                                                 _e19606_
                                                 _vars19591_)
                                                (if (eq? 'pattern _$e19609_)
                                                    (_local-pattern-e19468_
                                                     _e19606_)
                                                    (_BUG19467_
                                                     _arg19590_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg1959219599_))
                                      (let ((_hd1959619615_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg1959219599_)))
                                            (_tl1959719617_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg1959219599_))))
                                        (let* ((_tag19620_ _hd1959619615_)
                                               (_e19622_ _tl1959719617_))
                                          (_K1959519612_ _e19622_ _tag19620_)))
                                      (_E1959419603_))))))
                      (let _recur19472_ ((_e19474_ _e19465_) (_vars19475_ '()))
                        (let* ((_e1947619483_ _e19474_)
                               (_E1947819487_
                                (lambda ()
                                  (error '"No clause matching" _e1947619483_)))
                               (_K1947919578_
                                (lambda (_body19490_ _tag19491_)
                                  (let ((_$e19493_ _tag19491_))
                                    (if (eq? 'datum _$e19493_)
                                        (gx#core-list 'quote _body19490_)
                                        (if (eq? 'term _$e19493_)
                                            (let ((_id19496_
                                                   (gx#syntax-local-unwrap
                                                    _body19490_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id19496_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks19498_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id19496_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (null? _marks19498_)
                                                        (gx#core-list
                                                         'datum->syntax
                                                         '#f
                                                         (gx#core-list
                                                          'quote
                                                          _body19490_))
                                                        (gx#core-list
                                                         'datum->syntax
                                                         (gx#core-list
                                                          'quote-syntax
                                                          _body19490_)
                                                         (gx#core-list
                                                          'quote
                                                          _body19490_)
                                                         '#f
                                                         '#f)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id19496_
                                                         'gx#syntax-quote::t))
                                                      (gx#core-list
                                                       'quote-syntax
                                                       _body19490_)
                                                      (_BUG19467_ _e19474_))))
                                            (if (eq? 'pattern _$e19493_)
                                                (_local-pattern-e19468_
                                                 _body19490_)
                                                (if (eq? 'ref _$e19493_)
                                                    (_getvar19469_
                                                     _body19490_
                                                     _vars19475_)
                                                    (if (eq? 'cons _$e19493_)
                                                        (gx#core-list
                                                         'cons
                                                         (_recur19472_
                                                          (car _body19490_)
                                                          _vars19475_)
                                                         (_recur19472_
                                                          (cdr _body19490_)
                                                          _vars19475_))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e19493_)
                    (gx#core-list
                     'list->vector
                     (_recur19472_ _body19490_ _vars19475_))
                    (if (eq? 'box _$e19493_)
                        (gx#core-list
                         'box
                         (_recur19472_ _body19490_ _vars19475_))
                        (if (eq? 'splice _$e19493_)
                            (let* ((_body1949919510_ _body19490_)
                                   (_E1950119514_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body1949919510_)))
                                   (_K1950219552_
                                    (lambda (_args19517_
                                             _iv19518_
                                             _hd19519_
                                             _depth19520_)
                                      (let* ((_targets19526_
                                              (map (lambda (_g1952119523_)
                                                     (_getarg19470_
                                                      _g1952119523_
                                                      _vars19475_))
                                                   _args19517_))
                                             (_fold-in19528_
                                              (gx#gentemps _args19517_))
                                             (_fold-out19530_ (gx#genident__0))
                                             (_lambda-args19532_
                                              (foldr1 cons
                                                      (cons _fold-out19530_
                                                            '())
                                                      _fold-in19528_))
                                             (_lambda-body19549_
                                              (if (fx> _depth19520_ '1)
                                                  (let ((_r-args19540_
                                                         (map (lambda (_arg19534_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _arg19534_)))
                      _args19517_))
                (_r-vars19541_
                 (foldr2 (lambda (_arg19536_ _var19537_ _r19538_)
                           (cons (cons (cdr _arg19536_) _var19537_) _r19538_))
                         _vars19475_
                         _args19517_
                         _fold-in19528_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_recur19472_
                                                     (cons 'splice
                                                           (cons (fx- _depth19520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '1)
                         (cons _hd19519_
                               (cons (cons 'var _fold-out19530_)
                                     _r-args19540_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r-vars19541_))
                                                  (let ((_hd-vars19547_
                                                         (foldr2 (lambda (_arg19543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _var19544_
                                  _r19545_)
                           (cons (cons (cdr _arg19543_) _var19544_) _r19545_))
                         _vars19475_
                         _args19517_
                         _fold-in19528_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#core-list
                                                     'cons
                                                     (_recur19472_
                                                      _hd19519_
                                                      _hd-vars19547_)
                                                     _fold-out19530_)))))
                                        (gx#core-list
                                         'begin
                                         (if (fx> (length _targets19526_) '1)
                                             (gx#core-cons*
                                              'syntax-check-splice-targets
                                              _targets19526_)
                                             '#!void)
                                         (gx#core-cons*
                                          'foldr
                                          (gx#core-list
                                           'lambda%
                                           _lambda-args19532_
                                           _lambda-body19549_)
                                          (_recur19472_ _iv19518_ _vars19475_)
                                          _targets19526_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body1949919510_))
                                  (let ((_hd1950319555_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body1949919510_)))
                                        (_tl1950419557_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body1949919510_))))
                                    (let ((_depth19560_ _hd1950319555_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1950419557_))
                                          (let ((_hd1950519562_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1950419557_)))
                                                (_tl1950619564_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1950419557_))))
                                            (let ((_hd19567_ _hd1950519562_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl1950619564_))
                                                  (let ((_hd1950719569_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl1950619564_)))
                                                        (_tl1950819571_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl1950619564_))))
                                                    (let* ((_iv19574_
                                                            _hd1950719569_)
                                                           (_args19576_
                                                            _tl1950819571_))
                                                      (_K1950219552_
                                                       _args19576_
                                                       _iv19574_
                                                       _hd19567_
                                                       _depth19560_)))
                                                  (_E1950119514_))))
                                          (_E1950119514_))))
                                  (_E1950119514_)))
                            (if (eq? 'var _$e19493_)
                                _body19490_
                                (_BUG19467_ _e19474_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e1947619483_))
                              (let ((_hd1948019581_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1947619483_)))
                                    (_tl1948119583_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1947619483_))))
                                (let* ((_tag19586_ _hd1948019581_)
                                       (_body19588_ _tl1948119583_))
                                  (_K1947919578_ _body19588_ _tag19586_)))
                              (_E1947819487_)))))))
                 (_parse19239_
                  (lambda (_e19280_)
                    (letrec ((_make-cons19282_
                              (lambda (_hd19457_ _tl19458_)
                                (let ((_g19759_ _hd19457_)
                                      (_g19761_ _tl19458_))
                                  (begin
                                    (let ((_g19760_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g19759_)
                                                 (##vector-length _g19759_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g19760_ 2)))
                                          (error "Context expects 2 values"
                                                 _g19760_)))
                                    (let ((_g19762_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g19761_)
                                                 (##vector-length _g19761_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g19762_ 2)))
                                          (error "Context expects 2 values"
                                                 _g19762_)))
                                    (let ((_hd-e19460_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g19759_ 0)))
                                          (_hd-vars19461_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g19759_ 1))))
                                      (let ((_tl-e19462_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g19761_ 0)))
                                            (_tl-vars19463_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g19761_ 1))))
                                        (values (cons 'cons
                                                      (cons _hd-e19460_
                                                            _tl-e19462_))
                                                (append _hd-vars19461_
                                                        _tl-vars19463_))))))))
                             (_make-splice19283_
                              (lambda (_where19396_
                                       _depth19397_
                                       _hd19398_
                                       _tl19399_)
                                (let ((_g19763_ _hd19398_)
                                      (_g19765_ _tl19399_))
                                  (begin
                                    (let ((_g19764_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g19763_)
                                                 (##vector-length _g19763_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g19764_ 2)))
                                          (error "Context expects 2 values"
                                                 _g19764_)))
                                    (let ((_g19766_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g19765_)
                                                 (##vector-length _g19765_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g19766_ 2)))
                                          (error "Context expects 2 values"
                                                 _g19766_)))
                                    (let ((_hd-e19401_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g19763_ 0)))
                                          (_hd-vars19402_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g19763_ 1))))
                                      (let ((_tl-e19403_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g19765_ 0)))
                                            (_tl-vars19404_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g19765_ 1))))
                                        (let _lp19406_ ((_rest19408_
                                                         _hd-vars19402_)
                                                        (_targets19409_ '())
                                                        (_vars19410_
                                                         _tl-vars19404_))
                                          (let* ((_rest1941119421_ _rest19408_)
                                                 (_else1941319429_
                                                  (lambda ()
                                                    (if (null? _targets19409_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Misplaced ellipsis"
                                                         _stx19236_
                                                         _where19396_)
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _depth19397_
                                    (cons _hd-e19401_
                                          (cons _tl-e19403_ _targets19409_))))
                        _vars19410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K1941519438_
                                                  (lambda (_rest19432_
                                                           _hd-pat19433_
                                                           _hd-depth*19434_)
                                                    (let ((_hd-depth19436_
                                                           (fx- _hd-depth*19434_
                                                                _depth19397_)))
                                                      (if (fxpositive?
                                                           _hd-depth19436_)
                                                          (_lp19406_
                                                           _rest19432_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd-pat19433_)
                         _targets19409_)
                   (cons (cons _hd-depth19436_ _hd-pat19433_) _vars19410_))
                  (if (fxzero? _hd-depth19436_)
                      (_lp19406_
                       _rest19432_
                       (cons (cons 'pattern _hd-pat19433_) _targets19409_)
                       _vars19410_)
                      (gx#raise-syntax-error
                       '#f
                       '"Too many ellipses"
                       _stx19236_
                       _where19396_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest1941119421_))
                                                (let ((_hd1941619441_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest1941119421_)))
                                                      (_tl1941719443_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest1941119421_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1941619441_))
                                                      (let ((_hd1941819446_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1941619441_)))
                    (_tl1941919448_
                     (let () (declare (not safe)) (##cdr _hd1941619441_))))
                (let* ((_hd-depth*19451_ _hd1941819446_)
                       (_hd-pat19453_ _tl1941919448_)
                       (_rest19455_ _tl1941719443_))
                  (_K1941519438_ _rest19455_ _hd-pat19453_ _hd-depth*19451_)))
              (_else1941319429_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_else1941319429_))))))))))
                             (_recur19284_
                              (lambda (_e19289_ _is-e?19290_)
                                (if (_is-e?19290_ _e19289_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Mislpaced ellipsis"
                                     _stx19236_)
                                    (if (gx#syntax-local-pattern? _e19289_)
                                        (let* ((_pat19292_
                                                (gx#syntax-local-e__0
                                                 _e19289_))
                                               (_depth19294_
                                                (##structure-ref
                                                 _pat19292_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth19294_)
                                              (values (cons 'ref _pat19292_)
                                                      (cons (cons _depth19294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pat19292_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _pat19292_)
                                                      '())))
                                        (if (gx#identifier? _e19289_)
                                            (values (cons 'term _e19289_) '())
                                            (if (gx#stx-pair? _e19289_)
                                                (let* ((_e1929619303_ _e19289_)
                                                       (_E1929819307_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e1929619303_)))
                                                       (_E1929719386_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1929619303_)
                                                              (let ((_e1929919311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1929619303_)))
                        (let ((_hd1930019314_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1929919311_)))
                              (_tl1930119316_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1929919311_))))
                          (let* ((_hd19319_ _hd1930019314_)
                                 (_rest19321_ _tl1930119316_))
                            (if '#t
                                (if (_is-e?19290_ _hd19319_)
                                    (let* ((_e1932219329_ _rest19321_)
                                           (_E1932419333_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad ellipsis syntax"
                                               _stx19236_
                                               _e19289_)))
                                           (_E1932319347_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1932219329_)
                                                  (let ((_e1932519337_
                                                         (gx#syntax-e
                                                          _e1932219329_)))
                                                    (let ((_hd1932619340_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1932519337_)))
                                                          (_tl1932719342_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1932519337_))))
                                                      (let ((_rest19345_
                                                             _hd1932619340_))
                                                        (if (gx#stx-null?
                                                             _tl1932719342_)
                                                            (if '#t
                                                                (_recur19284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest19345_
                         false)
                        (_E1932419333_))
                    (_E1932419333_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1932419333_)))))
                                      (_E1932319347_))
                                    (let _lp19351_ ((_rest19353_ _rest19321_)
                                                    (_depth19354_ '0))
                                      (let* ((_e1935519362_ _rest19353_)
                                             (_E1935719366_
                                              (lambda ()
                                                (if (fxpositive? _depth19354_)
                                                    (_make-splice19283_
                                                     _e19289_
                                                     _depth19354_
                                                     (_recur19284_
                                                      _hd19319_
                                                      _is-e?19290_)
                                                     (_recur19284_
                                                      _rest19353_
                                                      _is-e?19290_))
                                                    (_make-cons19282_
                                                     (_recur19284_
                                                      _hd19319_
                                                      _is-e?19290_)
                                                     (_recur19284_
                                                      _rest19353_
                                                      _is-e?19290_)))))
                                             (_E1935619382_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _e1935519362_)
                                                    (let ((_e1935819370_
                                                           (gx#syntax-e
                                                            _e1935519362_)))
                                                      (let ((_hd1935919373_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1935819370_)))
                    (_tl1936019375_
                     (let () (declare (not safe)) (##cdr _e1935819370_))))
                (let* ((_rest-hd19378_ _hd1935919373_)
                       (_rest-tl19380_ _tl1936019375_))
                  (if '#t
                      (if (_is-e?19290_ _rest-hd19378_)
                          (_lp19351_ _rest-tl19380_ (fx+ _depth19354_ '1))
                          (if (fxpositive? _depth19354_)
                              (_make-splice19283_
                               _e19289_
                               _depth19354_
                               (_recur19284_ _hd19319_ _is-e?19290_)
                               (_recur19284_ _rest19353_ _is-e?19290_))
                              (_make-cons19282_
                               (_recur19284_ _hd19319_ _is-e?19290_)
                               (_recur19284_ _rest19353_ _is-e?19290_))))
                      (_E1935719366_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1935719366_)))))
                                        (_E1935619382_))))
                                (_E1929819307_)))))
                      (_E1929819307_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1929719386_))
                                                (if (gx#stx-vector? _e19289_)
                                                    (let ((_g19767_
                                                           (_recur19284_
                                                            (vector->list
                                                             (gx#stx-unwrap__0
                                                              _e19289_))
                                                            _is-e?19290_)))
                                                      (begin
                                                        (let ((_g19768_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g19767_)
                             (##vector-length _g19767_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g19768_ 2)))
                      (error "Context expects 2 values" _g19768_)))
                (let ((_e19390_
                       (let () (declare (not safe)) (##vector-ref _g19767_ 0)))
                      (_vars19391_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g19767_ 1))))
                  (values (cons 'vector _e19390_) _vars19391_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-box? _e19289_)
                                                        (let ((_g19769_
                                                               (_recur19284_
                                                                (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e19289_))
                        _is-e?19290_)))
                  (begin
                    (let ((_g19770_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g19769_)
                                 (##vector-length _g19769_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g19770_ 2)))
                          (error "Context expects 2 values" _g19770_)))
                    (let ((_e19393_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g19769_ 0)))
                          (_vars19394_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g19769_ 1))))
                      (values (cons 'box _e19393_) _vars19394_))))
                (values (cons 'datum _e19289_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g19771_ (_recur19284_ _e19280_ gx#ellipsis?)))
                        (begin
                          (let ((_g19772_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g19771_)
                                       (##vector-length _g19771_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g19772_ 2)))
                                (error "Context expects 2 values" _g19772_)))
                          (let ((_tree19286_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g19771_ 0)))
                                (_vars19287_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g19771_ 1))))
                            (if (null? _vars19287_)
                                _tree19286_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Missing ellipsis"
                                 _stx19236_
                                 _vars19287_)))))))))
          (let* ((_e1924019250_ _stx19236_)
                 (_E1924219254_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx19236_)))
                 (_E1924119276_
                  (lambda ()
                    (if (gx#stx-pair? _e1924019250_)
                        (let ((_e1924319258_ (gx#syntax-e _e1924019250_)))
                          (let ((_hd1924419261_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1924319258_)))
                                (_tl1924519263_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1924319258_))))
                            (if (gx#stx-pair? _tl1924519263_)
                                (let ((_e1924619266_
                                       (gx#syntax-e _tl1924519263_)))
                                  (let ((_hd1924719269_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1924619266_)))
                                        (_tl1924819271_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1924619266_))))
                                    (let ((_form19274_ _hd1924719269_))
                                      (if (gx#stx-null? _tl1924819271_)
                                          (if '#t
                                              (gx#stx-wrap-source
                                               (_generate19238_
                                                (_parse19239_ _form19274_))
                                               (gx#stx-source _stx19236_))
                                              (_E1924219254_))
                                          (_E1924219254_)))))
                                (_E1924219254_))))
                        (_E1924219254_)))))
            (_E1924119276_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx18500_ _identifier=?18501_ _unwrap-e18502_ _wrap-e18503_)
        (letrec ((_generate-bindings18505_
                  (lambda (_target19100_
                           _ids19101_
                           _clauses19102_
                           _clause-ids19103_
                           _E19104_)
                    (letrec ((_generate119106_
                              (lambda (_clause19203_ _clause-id19204_ _E19205_)
                                (cons (cons _clause-id19204_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target19100_ '())
                                             (_generate-clause18507_
                                              _target19100_
                                              _ids19101_
                                              _clause19203_
                                              _E19205_))
                                            '())))))
                      (let _lp19108_ ((_rest19110_ _clauses19102_)
                                      (_rest-ids19111_ _clause-ids19103_)
                                      (_bindings19112_ '()))
                        (let* ((_rest1911319121_ _rest19110_)
                               (_else1911519129_ (lambda () _bindings19112_))
                               (_K1911719191_
                                (lambda (_rest19132_ _clause19133_)
                                  (let* ((_rest-ids1913419141_ _rest-ids19111_)
                                         (_E1913619145_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1913419141_)))
                                         (_K1913719179_
                                          (lambda (_rest-ids19148_
                                                   _clause-id19149_)
                                            (let* ((_rest-ids1915019158_
                                                    _rest-ids19148_)
                                                   (_else1915219166_
                                                    (lambda ()
                                                      (cons (_generate119106_
                                                             _clause19133_
                                                             _clause-id19149_
                                                             _E19104_)
                                                            _bindings19112_)))
                                                   (_K1915419171_
                                                    (lambda (_next-clause-id19169_)
                                                      (_lp19108_
                                                       _rest19132_
                                                       _rest-ids19148_
                                                       (cons (_generate119106_
                                                              _clause19133_
                                                              _clause-id19149_
                                                              _next-clause-id19169_)
                                                             _bindings19112_)))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids1915019158_))
                                                  (let* ((_hd1915519174_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids1915019158_)))
                                                         (_next-clause-id19177_
                                                          _hd1915519174_))
                                                    (_K1915419171_
                                                     _next-clause-id19177_))
                                                  (_else1915219166_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids1913419141_))
                                        (let ((_hd1913819182_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids1913419141_)))
                                              (_tl1913919184_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids1913419141_))))
                                          (let* ((_clause-id19187_
                                                  _hd1913819182_)
                                                 (_rest-ids19189_
                                                  _tl1913919184_))
                                            (_K1913719179_
                                             _rest-ids19189_
                                             _clause-id19187_)))
                                        (_E1913619145_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1911319121_))
                              (let ((_hd1911819194_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1911319121_)))
                                    (_tl1911919196_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1911319121_))))
                                (let* ((_clause19199_ _hd1911819194_)
                                       (_rest19201_ _tl1911919196_))
                                  (_K1911719191_ _rest19201_ _clause19199_)))
                              (_else1911519129_)))))))
                 (_generate-body18506_
                  (lambda (_bindings19060_ _body19061_)
                    (let _recur19063_ ((_rest19065_ _bindings19060_))
                      (let* ((_rest1906619074_ _rest19065_)
                             (_else1906819082_ (lambda () _body19061_))
                             (_K1907019088_
                              (lambda (_rest19085_ _hd19086_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd19086_ '())
                                 (_recur19063_ _rest19085_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1906619074_))
                            (let ((_hd1907119091_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1906619074_)))
                                  (_tl1907219093_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1906619074_))))
                              (let* ((_hd19096_ _hd1907119091_)
                                     (_rest19098_ _tl1907219093_))
                                (_K1907019088_ _rest19098_ _hd19096_)))
                            (_else1906819082_))))))
                 (_generate-clause18507_
                  (lambda (_target18923_ _ids18924_ _clause18925_ _E18926_)
                    (letrec ((_generate118928_
                              (lambda (_hd19015_ _fender19016_ _body19017_)
                                (let ((_g19773_
                                       (_parse-clause18509_
                                        _hd19015_
                                        _ids18924_)))
                                  (begin
                                    (let ((_g19774_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g19773_)
                                                 (##vector-length _g19773_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g19774_ 2)))
                                          (error "Context expects 2 values"
                                                 _g19774_)))
                                    (let ((_e19019_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g19773_ 0)))
                                          (_mvars19020_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g19773_ 1))))
                                      (let* ((_pvars19022_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars19020_)))
                                             (_E19024_
                                              (cons _E18926_
                                                    (cons _target18923_ '())))
                                             (_K19057_
                                              (gx#core-list
                                               'lambda%
                                               _pvars19022_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar19026_
                                                              _pvar19027_)
                                                       (let* ((_mvar1902819035_
                                                               _mvar19026_)
                                                              (_E1903019039_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1902819035_)))
                      (_K1903119045_
                       (lambda (_depth19042_ _id19043_)
                         (cons _id19043_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id19043_)
                                      (gx#core-list 'quote _pvar19027_)
                                      _depth19042_)
                                     '())))))
                 (if (let () (declare (not safe)) (##pair? _mvar1902819035_))
                     (let ((_hd1903219048_
                            (let ()
                              (declare (not safe))
                              (##car _mvar1902819035_)))
                           (_tl1903319050_
                            (let ()
                              (declare (not safe))
                              (##cdr _mvar1902819035_))))
                       (let* ((_id19053_ _hd1903219048_)
                              (_depth19055_ _tl1903319050_))
                         (_K1903119045_ _depth19055_ _id19053_)))
                     (_E1903019039_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars19020_
                                                     _pvars19022_)
                                                (if (eq? _fender19016_ '#t)
                                                    _body19017_
                                                    (gx#core-list
                                                     'if
                                                     _fender19016_
                                                     _body19017_
                                                     _E19024_))))))
                                        (_generate-match18508_
                                         _hd19015_
                                         _target18923_
                                         _e19019_
                                         _mvars19020_
                                         _K19057_
                                         _E19024_))))))))
                      (let* ((_e1892918949_ _clause18925_)
                             (_E1893818953_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1892918949_)))
                             (_E1893118987_
                              (lambda ()
                                (if (gx#stx-pair? _e1892918949_)
                                    (let ((_e1893918957_
                                           (gx#syntax-e _e1892918949_)))
                                      (let ((_hd1894018960_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1893918957_)))
                                            (_tl1894118962_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1893918957_))))
                                        (let ((_hd18965_ _hd1894018960_))
                                          (if (gx#stx-pair? _tl1894118962_)
                                              (let ((_e1894218967_
                                                     (gx#syntax-e
                                                      _tl1894118962_)))
                                                (let ((_hd1894318970_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1894218967_)))
                                                      (_tl1894418972_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1894218967_))))
                                                  (let ((_fender18975_
                                                         _hd1894318970_))
                                                    (if (gx#stx-pair?
                                                         _tl1894418972_)
                                                        (let ((_e1894518977_
                                                               (gx#syntax-e
                                                                _tl1894418972_)))
                                                          (let ((_hd1894618980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1894518977_)))
                        (_tl1894718982_
                         (let () (declare (not safe)) (##cdr _e1894518977_))))
                    (let ((_body18985_ _hd1894618980_))
                      (if (gx#stx-null? _tl1894718982_)
                          (if '#t
                              (_generate118928_
                               _hd18965_
                               _fender18975_
                               _body18985_)
                              (_E1893818953_))
                          (_E1893818953_)))))
                (_E1893818953_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1893818953_)))))
                                    (_E1893818953_))))
                             (_E1893019011_
                              (lambda ()
                                (if (gx#stx-pair? _e1892918949_)
                                    (let ((_e1893218991_
                                           (gx#syntax-e _e1892918949_)))
                                      (let ((_hd1893318994_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1893218991_)))
                                            (_tl1893418996_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1893218991_))))
                                        (let ((_hd18999_ _hd1893318994_))
                                          (if (gx#stx-pair? _tl1893418996_)
                                              (let ((_e1893519001_
                                                     (gx#syntax-e
                                                      _tl1893418996_)))
                                                (let ((_hd1893619004_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1893519001_)))
                                                      (_tl1893719006_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1893519001_))))
                                                  (let ((_body19009_
                                                         _hd1893619004_))
                                                    (if (gx#stx-null?
                                                         _tl1893719006_)
                                                        (if '#t
                                                            (_generate118928_
                                                             _hd18999_
                                                             '#t
                                                             _body19009_)
                                                            (_E1893118987_))
                                                        (_E1893118987_)))))
                                              (_E1893118987_)))))
                                    (_E1893118987_)))))
                        (_E1893019011_)))))
                 (_generate-match18508_
                  (lambda (_where18672_
                           _target18673_
                           _hd18674_
                           _mvars18675_
                           _K18676_
                           _E18677_)
                    (letrec ((_BUG18679_
                              (lambda (_q18921_)
                                (error '"BUG: syntax-case; generate"
                                       _stx18500_
                                       _hd18674_
                                       _q18921_)))
                             (_recur18680_
                              (lambda (_e18771_
                                       _vars18772_
                                       _target18773_
                                       _E18774_
                                       _k18775_)
                                (let* ((_e1877618783_ _e18771_)
                                       (_E1877818787_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1877618783_)))
                                       (_K1877918909_
                                        (lambda (_body18790_ _tag18791_)
                                          (let ((_$e18793_ _tag18791_))
                                            (if (eq? 'any _$e18793_)
                                                (_k18775_ _vars18772_)
                                                (if (eq? 'id _$e18793_)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target18773_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?18501_
                                                       (gx#core-list
                                                        _wrap-e18503_
                                                        _body18790_)
                                                       _target18773_)
                                                      (_k18775_ _vars18772_)
                                                      _E18774_)
                                                     _E18774_)
                                                    (if (eq? 'var _$e18793_)
                                                        (_k18775_
                                                         (cons (cons _body18790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target18773_)
                       _vars18772_))
                (if (eq? 'cons _$e18793_)
                    (let ((_$e18796_ (gx#genident__1 'e))
                          (_$hd18797_ (gx#genident__1 'hd))
                          (_$tl18798_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target18773_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e18796_ '())
                                    (cons (gx#core-list
                                           _unwrap-e18502_
                                           _target18773_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd18797_ '())
                                     (cons (gx#core-list '##car _$e18796_)
                                           '()))
                               (cons (cons (cons _$tl18798_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e18796_)
                                                 '()))
                                     '()))
                         (let* ((_body1879918806_ _body18790_)
                                (_E1880118810_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1879918806_)))
                                (_K1880218818_
                                 (lambda (_tl18813_ _hd18814_)
                                   (_recur18680_
                                    _hd18814_
                                    _vars18772_
                                    _$hd18797_
                                    _E18774_
                                    (lambda (_vars18816_)
                                      (_recur18680_
                                       _tl18813_
                                       _vars18816_
                                       _$tl18798_
                                       _E18774_
                                       _k18775_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _body1879918806_))
                               (let ((_hd1880318821_
                                      (let ()
                                        (declare (not safe))
                                        (##car _body1879918806_)))
                                     (_tl1880418823_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _body1879918806_))))
                                 (let* ((_hd18826_ _hd1880318821_)
                                        (_tl18828_ _tl1880418823_))
                                   (_K1880218818_ _tl18828_ _hd18826_)))
                               (_E1880118810_)))))
                       _E18774_))
                    (if (eq? 'splice _$e18793_)
                        (let* ((_body1882918836_ _body18790_)
                               (_E1883118840_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1882918836_)))
                               (_K1883218891_
                                (lambda (_tl18843_ _hd18844_)
                                  (let* ((_rlen18846_
                                          (_splice-rlen18681_ _tl18843_))
                                         (_$target18848_
                                          (gx#genident__1 'target))
                                         (_$hd18850_ (gx#genident__1 'hd))
                                         (_$tl18852_ (gx#genident__1 'tl))
                                         (_$lp18854_ (gx#genident__1 'loop))
                                         (_$lp-e18856_ (gx#genident__1 'e))
                                         (_$lp-hd18858_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl18860_
                                          (gx#genident__1 'lp-tl))
                                         (_svars18862_
                                          (_splice-vars18682_ _hd18844_))
                                         (_lvars18864_
                                          (gx#gentemps _svars18862_))
                                         (_tlvars18866_
                                          (gx#gentemps _svars18862_))
                                         (_linit18870_
                                          (map (lambda (_var18868_)
                                                 (gx#core-list 'quote '()))
                                               _lvars18864_)))
                                    (letrec ((_make-loop18873_
                                              (lambda (_vars18877_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp18854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd18850_ _lvars18864_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd18850_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e18856_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e18502_
                                                 _$hd18850_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd18858_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e18856_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl18860_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e18856_)
                                                       '()))
                                           '()))
                               (_recur18680_
                                _hd18844_
                                '()
                                _$lp-hd18858_
                                _E18774_
                                (lambda (_hdvars18879_)
                                  (cons _$lp18854_
                                        (cons _$lp-tl18860_
                                              (map (lambda (_svar18881_
                                                            _lvar18882_)
                                                     (gx#core-list
                                                      'cons
                                                      (assgetq _svar18881_
                                                               _hdvars18879_
                                                               _BUG18679_)
                                                      _lvar18882_))
                                                   _svars18862_
                                                   _lvars18864_)))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar18884_ _tlvar18885_)
                                     (cons (cons _tlvar18885_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar18884_)
                                                 '())))
                                   _lvars18864_
                                   _tlvars18866_)
                              (_k18775_
                               (foldl2 (lambda (_svar18887_
                                                _tlvar18888_
                                                _r18889_)
                                         (cons (cons _svar18887_ _tlvar18888_)
                                               _r18889_))
                                       _vars18877_
                                       _svars18862_
                                       _tlvars18866_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _$lp18854_
                                                       (cons _$target18848_
                                                             _linit18870_))))))
                                      (let ((_body18875_
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$target18848_
                                                                (cons _$tl18852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (gx#core-list
                         'syntax-split-splice
                         _target18773_
                         _rlen18846_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur18680_
                                               _tl18843_
                                               _vars18772_
                                               _$tl18852_
                                               _E18774_
                                               _make-loop18873_))))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-pair/null?
                                          _target18773_)
                                         (if (zero? _rlen18846_)
                                             _body18875_
                                             (gx#core-list
                                              'if
                                              (gx#core-list
                                               'fx>=
                                               (gx#core-list
                                                'stx-length
                                                _target18773_)
                                               _rlen18846_)
                                              _body18875_
                                              _E18774_))
                                         _E18774_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body1882918836_))
                              (let ((_hd1883318894_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body1882918836_)))
                                    (_tl1883418896_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body1882918836_))))
                                (let* ((_hd18899_ _hd1883318894_)
                                       (_tl18901_ _tl1883418896_))
                                  (_K1883218891_ _tl18901_ _hd18899_)))
                              (_E1883118840_)))
                        (if (eq? 'null _$e18793_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target18773_)
                             (_k18775_ _vars18772_)
                             _E18774_)
                            (if (eq? 'vector _$e18793_)
                                (let ((_$e18903_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target18773_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e18903_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e18502_
                                                        _target18773_))
                                                      '()))
                                          '())
                                    (_recur18680_
                                     _body18790_
                                     _vars18772_
                                     _$e18903_
                                     _E18774_
                                     _k18775_))
                                   _E18774_))
                                (if (eq? 'box _$e18793_)
                                    (let ((_$e18905_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target18773_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e18905_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e18502_
                                                            _target18773_))
                                                          '()))
                                              '())
                                        (_recur18680_
                                         _body18790_
                                         _vars18772_
                                         _$e18905_
                                         _E18774_
                                         _k18775_))
                                       _E18774_))
                                    (if (eq? 'datum _$e18793_)
                                        (let ((_$e18907_ (gx#genident__1 'e)))
                                          (gx#core-list
                                           'if
                                           (gx#core-list
                                            'stx-datum?
                                            _target18773_)
                                           (gx#core-list
                                            'let-values
                                            (cons (cons (cons _$e18907_ '())
                                                        (cons (gx#core-list
                                                               'stx-e
                                                               _target18773_)
                                                              '()))
                                                  '())
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'equal?
                                              _$e18907_
                                              _body18790_)
                                             (_k18775_ _vars18772_)
                                             _E18774_))
                                           _E18774_))
                                        (_BUG18679_ _e18771_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e1877618783_))
                                      (let ((_hd1878018912_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1877618783_)))
                                            (_tl1878118914_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1877618783_))))
                                        (let* ((_tag18917_ _hd1878018912_)
                                               (_body18919_ _tl1878118914_))
                                          (_K1877918909_
                                           _body18919_
                                           _tag18917_)))
                                      (_E1877818787_)))))
                             (_splice-rlen18681_
                              (lambda (_e18733_)
                                (let _lp18735_ ((_e18737_ _e18733_)
                                                (_n18738_ '0))
                                  (let* ((_e1873918746_ _e18737_)
                                         (_E1874118750_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1873918746_)))
                                         (_K1874218759_
                                          (lambda (_body18753_ _tag18754_)
                                            (let ((_$e18756_ _tag18754_))
                                              (if (eq? 'splice _$e18756_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx18500_
                                                   _where18672_)
                                                  (if (eq? 'cons _$e18756_)
                                                      (_lp18735_
                                                       (cdr _body18753_)
                                                       (fx+ _n18738_ '1))
                                                      _n18738_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e1873918746_))
                                        (let ((_hd1874318762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1873918746_)))
                                              (_tl1874418764_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1873918746_))))
                                          (let* ((_tag18767_ _hd1874318762_)
                                                 (_body18769_ _tl1874418764_))
                                            (_K1874218759_
                                             _body18769_
                                             _tag18767_)))
                                        (_E1874118750_))))))
                             (_splice-vars18682_
                              (lambda (_e18689_)
                                (let _recur18691_ ((_e18693_ _e18689_)
                                                   (_vars18694_ '()))
                                  (let* ((_e1869518702_ _e18693_)
                                         (_E1869718706_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1869518702_)))
                                         (_K1869818721_
                                          (lambda (_body18709_ _tag18710_)
                                            (let ((_$e18712_ _tag18710_))
                                              (if (eq? 'var _$e18712_)
                                                  (cons _body18709_
                                                        _vars18694_)
                                                  (if (or (eq? 'cons _$e18712_)
                                                          (eq? 'splice
                                                               _$e18712_))
                                                      (_recur18691_
                                                       (cdr _body18709_)
                                                       (_recur18691_
                                                        (car _body18709_)
                                                        _vars18694_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e18712_)
                      (eq? 'box _$e18712_))
                  (_recur18691_ _body18709_ _vars18694_)
                  _vars18694_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e1869518702_))
                                        (let ((_hd1869918724_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1869518702_)))
                                              (_tl1870018726_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1869518702_))))
                                          (let* ((_tag18729_ _hd1869918724_)
                                                 (_body18731_ _tl1870018726_))
                                            (_K1869818721_
                                             _body18731_
                                             _tag18729_)))
                                        (_E1869718706_))))))
                             (_make-body18683_
                              (lambda (_vars18685_)
                                (cons _K18676_
                                      (map (lambda (_mvar18687_)
                                             (assgetq (car _mvar18687_)
                                                      _vars18685_
                                                      _BUG18679_))
                                           _mvars18675_)))))
                      (_recur18680_
                       _hd18674_
                       '()
                       _target18673_
                       _E18677_
                       _make-body18683_))))
                 (_parse-clause18509_
                  (lambda (_hd18578_ _ids18579_)
                    (let _recur18581_ ((_e18583_ _hd18578_)
                                       (_vars18584_ '())
                                       (_depth18585_ '0))
                      (if (gx#identifier? _e18583_)
                          (if (gx#underscore? _e18583_)
                              (values '(any) _vars18584_)
                              (if (gx#ellipsis? _e18583_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx18500_
                                   _hd18578_)
                                  (if (find (lambda (_id18587_)
                                              (gx#bound-identifier=?
                                               _e18583_
                                               _id18587_))
                                            _ids18579_)
                                      (values (cons 'id _e18583_) _vars18584_)
                                      (if (find (lambda (_var18589_)
                                                  (gx#bound-identifier=?
                                                   _e18583_
                                                   (car _var18589_)))
                                                _vars18584_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx18500_
                                           _e18583_)
                                          (values (cons 'var _e18583_)
                                                  (cons (cons _e18583_
                                                              _depth18585_)
                                                        _vars18584_))))))
                          (if (gx#stx-pair? _e18583_)
                              (let* ((_e1859018597_ _e18583_)
                                     (_E1859218601_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1859018597_)))
                                     (_E1859118662_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1859018597_)
                                            (let ((_e1859318605_
                                                   (gx#syntax-e
                                                    _e1859018597_)))
                                              (let ((_hd1859418608_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1859318605_)))
                                                    (_tl1859518610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1859318605_))))
                                                (let* ((_hd18613_
                                                        _hd1859418608_)
                                                       (_rest18615_
                                                        _tl1859518610_))
                                                  (if '#t
                                                      (let* ((_make-pair18630_
                                                              (lambda (_tag18617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd18618_
                               _tl18619_)
                        (let* ((_hd-depth18621_
                                (if (eq? _tag18617_ 'splice)
                                    (fx+ _depth18585_ '1)
                                    _depth18585_))
                               (_g19775_
                                (_recur18581_
                                 _hd18618_
                                 _vars18584_
                                 _hd-depth18621_)))
                          (begin
                            (let ((_g19776_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g19775_)
                                         (##vector-length _g19775_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g19776_ 2)))
                                  (error "Context expects 2 values" _g19776_)))
                            (let ((_hd18623_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g19775_ 0)))
                                  (_vars18624_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g19775_ 1))))
                              (let ((_g19777_
                                     (_recur18581_
                                      _tl18619_
                                      _vars18624_
                                      _depth18585_)))
                                (begin
                                  (let ((_g19778_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g19777_)
                                               (##vector-length _g19777_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g19778_ 2)))
                                        (error "Context expects 2 values"
                                               _g19778_)))
                                  (let ((_tl18626_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g19777_ 0)))
                                        (_vars18627_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g19777_ 1))))
                                    (let ()
                                      (values (cons _tag18617_
                                                    (cons _hd18623_ _tl18626_))
                                              _vars18627_))))))))))
                     (_e1863118638_ _rest18615_)
                     (_E1863318642_
                      (lambda ()
                        (_make-pair18630_ 'cons _hd18613_ _rest18615_)))
                     (_E1863218658_
                      (lambda ()
                        (if (gx#stx-pair? _e1863118638_)
                            (let ((_e1863418646_ (gx#syntax-e _e1863118638_)))
                              (let ((_hd1863518649_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1863418646_)))
                                    (_tl1863618651_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1863418646_))))
                                (let* ((_rest-hd18654_ _hd1863518649_)
                                       (_rest-tl18656_ _tl1863618651_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd18654_)
                                          (_make-pair18630_
                                           'splice
                                           _hd18613_
                                           _rest-tl18656_)
                                          (_make-pair18630_
                                           'cons
                                           _hd18613_
                                           _rest18615_))
                                      (_E1863318642_)))))
                            (_E1863318642_)))))
                (_E1863218658_))
              (_E1859218601_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1859218601_)))))
                                (_E1859118662_))
                              (if (gx#stx-null? _e18583_)
                                  (values '(null) _vars18584_)
                                  (if (gx#stx-vector? _e18583_)
                                      (let ((_g19779_
                                             (_recur18581_
                                              (vector->list
                                               (gx#syntax-e _e18583_))
                                              _vars18584_
                                              _depth18585_)))
                                        (begin
                                          (let ((_g19780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g19779_)
                                                       (##vector-length
                                                        _g19779_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g19780_ 2)))
                                                (error "Context expects 2 values"
                                                       _g19780_)))
                                          (let ((_e18666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g19779_ 0)))
                                                (_vars18667_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g19779_ 1))))
                                            (values (cons 'vector _e18666_)
                                                    _vars18667_))))
                                      (if (gx#stx-box? _e18583_)
                                          (let ((_g19781_
                                                 (_recur18581_
                                                  (unbox (gx#syntax-e
                                                          _e18583_))
                                                  _vars18584_
                                                  _depth18585_)))
                                            (begin
                                              (let ((_g19782_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g19781_)
                                                           (##vector-length
                                                            _g19781_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g19782_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g19782_)))
                                              (let ((_e18669_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g19781_
                                                        0)))
                                                    (_vars18670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g19781_
                                                        1))))
                                                (values (cons 'box _e18669_)
                                                        _vars18670_))))
                                          (if (gx#stx-datum? _e18583_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e18583_))
                                                      _vars18584_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx18500_
                                               _e18583_)))))))))))
          (let* ((_e1851018523_ _stx18500_)
                 (_E1851218527_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1851018523_)))
                 (_E1851118574_
                  (lambda ()
                    (if (gx#stx-pair? _e1851018523_)
                        (let ((_e1851318531_ (gx#syntax-e _e1851018523_)))
                          (let ((_hd1851418534_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1851318531_)))
                                (_tl1851518536_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1851318531_))))
                            (if (gx#stx-pair? _tl1851518536_)
                                (let ((_e1851618539_
                                       (gx#syntax-e _tl1851518536_)))
                                  (let ((_hd1851718542_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1851618539_)))
                                        (_tl1851818544_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1851618539_))))
                                    (let ((_expr18547_ _hd1851718542_))
                                      (if (gx#stx-pair? _tl1851818544_)
                                          (let ((_e1851918549_
                                                 (gx#syntax-e _tl1851818544_)))
                                            (let ((_hd1852018552_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1851918549_)))
                                                  (_tl1852118554_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1851918549_))))
                                              (let* ((_ids18557_
                                                      _hd1852018552_)
                                                     (_clauses18559_
                                                      _tl1852118554_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids18557_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx18500_
                                                         _ids18557_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses18559_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx18500_)
                    (let* ((_ids18561_ (gx#syntax->list _ids18557_))
                           (_clauses18563_ (gx#syntax->list _clauses18559_))
                           (_clause-ids18565_ (gx#gentemps _clauses18563_))
                           (_E18567_ (gx#genident__0))
                           (_target18569_ (gx#genident__0))
                           (_first18571_
                            (if (null? _clauses18563_)
                                _E18567_
                                (car _clause-ids18565_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'begin-annotation
                        '@syntax-case
                        (gx#stx-wrap-source
                         (gx#core-list
                          'let-values
                          (cons (cons (cons _E18567_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target18569_ '())
                                             (gx#core-list
                                              'raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _target18569_))
                                            '()))
                                '())
                          (_generate-body18506_
                           (_generate-bindings18505_
                            _target18569_
                            _ids18561_
                            _clauses18563_
                            _clause-ids18565_
                            _E18567_)
                           (cons _first18571_ (cons _expr18547_ '()))))
                         (gx#stx-source _stx18500_)))
                       (gx#stx-source _stx18500_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1851218527_)))))
                                          (_E1851218527_)))))
                                (_E1851218527_))))
                        (_E1851218527_)))))
            (_E1851118574_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx19210_)
        (let* ((_identifier=?19212_ 'free-identifier=?)
               (_unwrap-e19214_ 'syntax-e)
               (_wrap-e19216_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _stx19210_
           _identifier=?19212_
           _unwrap-e19214_
           _wrap-e19216_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx19218_ _identifier=?19219_)
        (let* ((_unwrap-e19221_ 'syntax-e) (_wrap-e19223_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _stx19218_
           _identifier=?19219_
           _unwrap-e19221_
           _wrap-e19223_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx19225_ _identifier=?19226_ _unwrap-e19227_)
        (let ((_wrap-e19229_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _stx19225_
           _identifier=?19226_
           _unwrap-e19227_
           _wrap-e19229_))))
    (define gx#macro-expand-syntax-case
      (lambda _g19784_
        (let ((_g19783_ (let () (declare (not safe)) (##length _g19784_))))
          (cond ((let () (declare (not safe)) (##fx= _g19783_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g19784_))
                ((let () (declare (not safe)) (##fx= _g19783_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g19784_))
                ((let () (declare (not safe)) (##fx= _g19783_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g19784_))
                ((let () (declare (not safe)) (##fx= _g19783_ 4))
                 (apply gx#macro-expand-syntax-case__% _g19784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g19784_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx18497_)
        (if (gx#identifier? _stx18497_)
            (let ((__tmp19785 (gx#syntax-local-e__% _stx18497_ false)))
              (declare (not safe))
              (##structure-instance-of? __tmp19785 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd18455_ . _rest18456_)
        (let ((_len18458_ (length _hd18455_)))
          (let _lp18460_ ((_rest18462_ _rest18456_))
            (let* ((_rest1846318471_ _rest18462_)
                   (_else1846518479_ (lambda () '#!void))
                   (_K1846718485_
                    (lambda (_rest18482_ _hd18483_)
                      (if (fx= _len18458_ (length _hd18483_))
                          (_lp18460_ _rest18482_)
                          (gx#raise-syntax-error
                           '#f
                           '"Splice length mismatch"
                           _hd18483_)))))
              (if (let () (declare (not safe)) (##pair? _rest1846318471_))
                  (let ((_hd1846818488_
                         (let ()
                           (declare (not safe))
                           (##car _rest1846318471_)))
                        (_tl1846918490_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest1846318471_))))
                    (let* ((_hd18493_ _hd1846818488_)
                           (_rest18495_ _tl1846918490_))
                      (_K1846718485_ _rest18495_ _hd18493_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx18413_ _n18414_)
        (let _lp18416_ ((_rest18418_ _stx18413_) (_r18419_ '()))
          (if (gx#stx-pair? _rest18418_)
              (let* ((_g1842018427_ (gx#syntax-e _rest18418_))
                     (_E1842218431_
                      (lambda () (error '"No clause matching" _g1842018427_)))
                     (_K1842318437_
                      (lambda (_rest18434_ _hd18435_)
                        (_lp18416_ _rest18434_ (cons _hd18435_ _r18419_)))))
                (if (let () (declare (not safe)) (##pair? _g1842018427_))
                    (let ((_hd1842418440_
                           (let () (declare (not safe)) (##car _g1842018427_)))
                          (_tl1842518442_
                           (let ()
                             (declare (not safe))
                             (##cdr _g1842018427_))))
                      (let* ((_hd18445_ _hd1842418440_)
                             (_rest18447_ _tl1842518442_))
                        (_K1842318437_ _rest18447_ _hd18445_)))
                    (_E1842218431_)))
              (let _lp18449_ ((_n18451_ _n18414_)
                              (_l18452_ _r18419_)
                              (_r18453_ _rest18418_))
                (if (null? _l18452_)
                    (values _l18452_ _r18453_)
                    (if (fxpositive? _n18451_)
                        (_lp18449_
                         (fx- _n18451_ '1)
                         (cdr _l18452_)
                         (cons (car _l18452_) _r18453_))
                        (values (reverse _l18452_) _r18453_))))))))))
