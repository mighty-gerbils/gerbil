(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1695377612)
  (begin
    (define gx#syntax-pattern::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gx#syntax-pattern::t
         gx#expander::t
         '2
         'syntax-pattern
         '()
         '#f
         '(id depth))))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-struct-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args21069_
        (apply make-struct-instance gx#syntax-pattern::t _$args21069_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gx#syntax-pattern::t '0)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gx#syntax-pattern::t '1)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gx#syntax-pattern::t '0)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gx#syntax-pattern::t '1)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_self21066_ _stx21067_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx21067_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx20548_)
        (letrec ((_generate20550_
                  (lambda (_e20777_)
                    (letrec ((_BUG20779_
                              (lambda (_q20941_)
                                (error '"BUG: syntax; generate"
                                       _stx20548_
                                       _e20777_
                                       _q20941_)))
                             (_local-pattern-e20780_
                              (lambda (_pat20939_)
                                (let ((__tmp21071
                                       (##structure-ref
                                        _pat20939_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp21071))))
                             (_getvar20781_
                              (lambda (_q20936_ _vars20937_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q20936_ _vars20937_ _BUG20779_))))
                             (_getarg20782_
                              (lambda (_arg20902_ _vars20903_)
                                (let* ((_arg2090420911_ _arg20902_)
                                       (_E2090620915_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg2090420911_)))
                                       (_K2090720924_
                                        (lambda (_e20918_ _tag20919_)
                                          (let ((_$e20921_ _tag20919_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e20921_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar20781_
                                                   _e20918_
                                                   _vars20903_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e20921_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e20780_
                                                       _e20918_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG20779_
                                                       _arg20902_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg2090420911_))
                                      (let ((_hd2090820927_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg2090420911_)))
                                            (_tl2090920929_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg2090420911_))))
                                        (let* ((_tag20932_ _hd2090820927_)
                                               (_e20934_ _tl2090920929_))
                                          (declare (not safe))
                                          (_K2090720924_ _e20934_ _tag20932_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E2090620915_)))))))
                      (let _recur20784_ ((_e20786_ _e20777_) (_vars20787_ '()))
                        (let* ((_e2078820795_ _e20786_)
                               (_E2079020799_
                                (lambda ()
                                  (error '"No clause matching" _e2078820795_)))
                               (_K2079120890_
                                (lambda (_body20802_ _tag20803_)
                                  (let ((_$e20805_ _tag20803_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e20805_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body20802_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e20805_))
                                            (let ((_id20808_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body20802_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id20808_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks20810_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id20808_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks20810_))
                                                        (let ((__tmp21099
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body20802_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp21099))
                (let ((__tmp21098
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body20802_)))
                      (__tmp21097
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body20802_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp21098
                   __tmp21097
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id20808_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body20802_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG20779_
                                                         _e20786_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e20805_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e20780_
                                                   _body20802_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e20805_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar20781_
                                                       _body20802_
                                                       _vars20787_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e20805_))
                                                        (let ((__tmp21095
                                                               (let ((__tmp21096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body20802_)))
                         (declare (not safe))
                         (_recur20784_ __tmp21096 _vars20787_)))
                      (__tmp21093
                       (let ((__tmp21094 (cdr _body20802_)))
                         (declare (not safe))
                         (_recur20784_ __tmp21094 _vars20787_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp21095 __tmp21093))
                (if (let () (declare (not safe)) (eq? 'vector _$e20805_))
                    (let ((__tmp21092
                           (let ()
                             (declare (not safe))
                             (_recur20784_ _body20802_ _vars20787_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp21092))
                    (if (let () (declare (not safe)) (eq? 'box _$e20805_))
                        (let ((__tmp21091
                               (let ()
                                 (declare (not safe))
                                 (_recur20784_ _body20802_ _vars20787_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp21091))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e20805_))
                            (let* ((_body2081120822_ _body20802_)
                                   (_E2081320826_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body2081120822_)))
                                   (_K2081420864_
                                    (lambda (_args20829_
                                             _iv20830_
                                             _hd20831_
                                             _depth20832_)
                                      (let* ((_targets20838_
                                              (map (lambda (_g2083320835_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg20782_
                                                        _g2083320835_
                                                        _vars20787_)))
                                                   _args20829_))
                                             (_fold-in20840_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args20829_)))
                                             (_fold-out20842_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args20844_
                                              (let ((__tmp21072
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out20842_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp21072
                                                        _fold-in20840_)))
                                             (_lambda-body20861_
                                              (if (fx> _depth20832_ '1)
                                                  (let ((_r-args20852_
                                                         (map (lambda (_arg20846_)
                                                                (let ((__tmp21077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg20846_)))
                          (declare (not safe))
                          (cons 'ref __tmp21077)))
                      _args20829_))
                (_r-vars20853_
                 (let ((__tmp21078
                        (lambda (_arg20848_ _var20849_ _r20850_)
                          (let ((__tmp21079
                                 (let ((__tmp21080 (cdr _arg20848_)))
                                   (declare (not safe))
                                   (cons __tmp21080 _var20849_))))
                            (declare (not safe))
                            (cons __tmp21079 _r20850_)))))
                   (declare (not safe))
                   (foldr2 __tmp21078
                           _vars20787_
                           _args20829_
                           _fold-in20840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp21081
                                                           (let ((__tmp21082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp21086
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth20832_ '1)))
                                (__tmp21083
                                 (let ((__tmp21084
                                        (let ((__tmp21085
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out20842_))))
                                          (declare (not safe))
                                          (cons __tmp21085 _r-args20852_))))
                                   (declare (not safe))
                                   (cons _hd20831_ __tmp21084))))
                            (declare (not safe))
                            (cons __tmp21086 __tmp21083))))
                     (declare (not safe))
                     (cons 'splice __tmp21082))))
              (declare (not safe))
              (_recur20784_ __tmp21081 _r-vars20853_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars20859_
                                                          (let ((__tmp21073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg20855_ _var20856_ _r20857_)
                           (let ((__tmp21074
                                  (let ((__tmp21075 (cdr _arg20855_)))
                                    (declare (not safe))
                                    (cons __tmp21075 _var20856_))))
                             (declare (not safe))
                             (cons __tmp21074 _r20857_)))))
                    (declare (not safe))
                    (foldr2 __tmp21073
                            _vars20787_
                            _args20829_
                            _fold-in20840_)))
                 (__tmp21076
                  (let ()
                    (declare (not safe))
                    (_recur20784_ _hd20831_ _hd-vars20859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp21076
                                                     _fold-out20842_)))))
                                        (let ((__tmp21090
                                               (if (fx> (length _targets20838_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets20838_))
                                                   '#!void))
                                              (__tmp21087
                                               (let ((__tmp21089
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args20844_
                                                         _lambda-body20861_)))
                                                     (__tmp21088
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur20784_
                                                         _iv20830_
                                                         _vars20787_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp21089
                                                  __tmp21088
                                                  _targets20838_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp21090
                                           __tmp21087))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body2081120822_))
                                  (let ((_hd2081520867_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body2081120822_)))
                                        (_tl2081620869_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body2081120822_))))
                                    (let ((_depth20872_ _hd2081520867_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl2081620869_))
                                          (let ((_hd2081720874_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl2081620869_)))
                                                (_tl2081820876_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl2081620869_))))
                                            (let ((_hd20879_ _hd2081720874_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl2081820876_))
                                                  (let ((_hd2081920881_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl2081820876_)))
                                                        (_tl2082020883_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl2081820876_))))
                                                    (let* ((_iv20886_
                                                            _hd2081920881_)
                                                           (_args20888_
                                                            _tl2082020883_))
                                                      (declare (not safe))
                                                      (_K2081420864_
                                                       _args20888_
                                                       _iv20886_
                                                       _hd20879_
                                                       _depth20872_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E2081320826_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E2081320826_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E2081320826_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e20805_))
                                _body20802_
                                (let ()
                                  (declare (not safe))
                                  (_BUG20779_ _e20786_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e2078820795_))
                              (let ((_hd2079220893_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2078820795_)))
                                    (_tl2079320895_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2078820795_))))
                                (let* ((_tag20898_ _hd2079220893_)
                                       (_body20900_ _tl2079320895_))
                                  (declare (not safe))
                                  (_K2079120890_ _body20900_ _tag20898_)))
                              (let ()
                                (declare (not safe))
                                (_E2079020799_))))))))
                 (_parse20551_
                  (lambda (_e20592_)
                    (letrec ((_make-cons20594_
                              (lambda (_hd20769_ _tl20770_)
                                (let ((_g21100_ _hd20769_)
                                      (_g21102_ _tl20770_))
                                  (begin
                                    (let ((_g21101_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21100_)
                                                 (##vector-length _g21100_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21101_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21101_)))
                                    (let ((_g21103_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21102_)
                                                 (##vector-length _g21102_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21103_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21103_)))
                                    (let ((_hd-e20772_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21100_ 0)))
                                          (_hd-vars20773_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21100_ 1))))
                                      (let ((_tl-e20774_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g21102_ 0)))
                                            (_tl-vars20775_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g21102_ 1))))
                                        (values (let ((__tmp21104
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e20772_
                                                               _tl-e20774_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp21104))
                                                (append _hd-vars20773_
                                                        _tl-vars20775_))))))))
                             (_make-splice20595_
                              (lambda (_where20708_
                                       _depth20709_
                                       _hd20710_
                                       _tl20711_)
                                (let ((_g21105_ _hd20710_)
                                      (_g21107_ _tl20711_))
                                  (begin
                                    (let ((_g21106_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21105_)
                                                 (##vector-length _g21105_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21106_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21106_)))
                                    (let ((_g21108_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21107_)
                                                 (##vector-length _g21107_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21108_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21108_)))
                                    (let ((_hd-e20713_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21105_ 0)))
                                          (_hd-vars20714_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21105_ 1))))
                                      (let ((_tl-e20715_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g21107_ 0)))
                                            (_tl-vars20716_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g21107_ 1))))
                                        (let _lp20718_ ((_rest20720_
                                                         _hd-vars20714_)
                                                        (_targets20721_ '())
                                                        (_vars20722_
                                                         _tl-vars20716_))
                                          (let* ((_rest2072320733_ _rest20720_)
                                                 (_else2072520741_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets20721_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx20548_
                                                           _where20708_))
                                                        (values (let ((__tmp21109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp21110
                                      (let ((__tmp21111
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e20715_
                                                     _targets20721_))))
                                        (declare (not safe))
                                        (cons _hd-e20713_ __tmp21111))))
                                 (declare (not safe))
                                 (cons _depth20709_ __tmp21110))))
                          (declare (not safe))
                          (cons 'splice __tmp21109))
                        _vars20722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K2072720750_
                                                  (lambda (_rest20744_
                                                           _hd-pat20745_
                                                           _hd-depth*20746_)
                                                    (let ((_hd-depth20748_
                                                           (fx- _hd-depth*20746_
                                                                _depth20709_)))
                                                      (if (fxpositive?
                                                           _hd-depth20748_)
                                                          (let ((__tmp21116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp21117
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat20745_))))
                           (declare (not safe))
                           (cons __tmp21117 _targets20721_)))
                        (__tmp21114
                         (let ((__tmp21115
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth20748_ _hd-pat20745_))))
                           (declare (not safe))
                           (cons __tmp21115 _vars20722_))))
                    (declare (not safe))
                    (_lp20718_ _rest20744_ __tmp21116 __tmp21114))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth20748_))
                      (let ((__tmp21112
                             (let ((__tmp21113
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat20745_))))
                               (declare (not safe))
                               (cons __tmp21113 _targets20721_))))
                        (declare (not safe))
                        (_lp20718_ _rest20744_ __tmp21112 _vars20722_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx20548_
                         _where20708_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest2072320733_))
                                                (let ((_hd2072820753_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest2072320733_)))
                                                      (_tl2072920755_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest2072320733_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd2072820753_))
                                                      (let ((_hd2073020758_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd2072820753_)))
                    (_tl2073120760_
                     (let () (declare (not safe)) (##cdr _hd2072820753_))))
                (let* ((_hd-depth*20763_ _hd2073020758_)
                       (_hd-pat20765_ _tl2073120760_)
                       (_rest20767_ _tl2072920755_))
                  (declare (not safe))
                  (_K2072720750_ _rest20767_ _hd-pat20765_ _hd-depth*20763_)))
              (let () (declare (not safe)) (_else2072520741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else2072520741_)))))))))))
                             (_recur20596_
                              (lambda (_e20601_ _is-e?20602_)
                                (if (_is-e?20602_ _e20601_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx20548_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e20601_))
                                        (let* ((_pat20604_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e20601_)))
                                               (_depth20606_
                                                (##structure-ref
                                                 _pat20604_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth20606_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat20604_))
                                                      (let ((__tmp21133
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth20606_ _pat20604_))))
                (declare (not safe))
                (cons __tmp21133 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat20604_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e20601_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e20601_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e20601_))
                                                (let* ((_e2060820615_ _e20601_)
                                                       (_E2061020619_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e2060820615_))))
                                                       (_E2060920698_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e2060820615_))
                      (let ((_e2061120623_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e2060820615_))))
                        (let ((_hd2061220626_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2061120623_)))
                              (_tl2061320628_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2061120623_))))
                          (let* ((_hd20631_ _hd2061220626_)
                                 (_rest20633_ _tl2061320628_))
                            (if '#t
                                (if (_is-e?20602_ _hd20631_)
                                    (let* ((_e2063420641_ _rest20633_)
                                           (_E2063620645_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx20548_
                                                 _e20601_))))
                                           (_E2063520659_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e2063420641_))
                                                  (let ((_e2063720649_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e2063420641_))))
                                                    (let ((_hd2063820652_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2063720649_)))
                                                          (_tl2063920654_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2063720649_))))
                                                      (let ((_rest20657_
                                                             _hd2063820652_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl2063920654_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur20596_ _rest20657_ false))
                        (let () (declare (not safe)) (_E2063620645_)))
                    (let () (declare (not safe)) (_E2063620645_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E2063620645_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E2063520659_)))
                                    (let _lp20663_ ((_rest20665_ _rest20633_)
                                                    (_depth20666_ '0))
                                      (let* ((_e2066720674_ _rest20665_)
                                             (_E2066920678_
                                              (lambda ()
                                                (if (fxpositive? _depth20666_)
                                                    (let ((__tmp21127
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur20596_
                                                              _hd20631_
                                                              _is-e?20602_)))
                                                          (__tmp21126
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur20596_
                                                              _rest20665_
                                                              _is-e?20602_))))
                                                      (declare (not safe))
                                                      (_make-splice20595_
                                                       _e20601_
                                                       _depth20666_
                                                       __tmp21127
                                                       __tmp21126))
                                                    (let ((__tmp21125
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur20596_
                                                              _hd20631_
                                                              _is-e?20602_)))
                                                          (__tmp21124
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur20596_
                                                              _rest20665_
                                                              _is-e?20602_))))
                                                      (declare (not safe))
                                                      (_make-cons20594_
                                                       __tmp21125
                                                       __tmp21124)))))
                                             (_E2066820694_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e2066720674_))
                                                    (let ((_e2067020682_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e2066720674_))))
                                                      (let ((_hd2067120685_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e2067020682_)))
                    (_tl2067220687_
                     (let () (declare (not safe)) (##cdr _e2067020682_))))
                (let* ((_rest-hd20690_ _hd2067120685_)
                       (_rest-tl20692_ _tl2067220687_))
                  (if '#t
                      (if (_is-e?20602_ _rest-hd20690_)
                          (let ((__tmp21132
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth20666_ '1))))
                            (declare (not safe))
                            (_lp20663_ _rest-tl20692_ __tmp21132))
                          (if (fxpositive? _depth20666_)
                              (let ((__tmp21131
                                     (let ()
                                       (declare (not safe))
                                       (_recur20596_ _hd20631_ _is-e?20602_)))
                                    (__tmp21130
                                     (let ()
                                       (declare (not safe))
                                       (_recur20596_
                                        _rest20665_
                                        _is-e?20602_))))
                                (declare (not safe))
                                (_make-splice20595_
                                 _e20601_
                                 _depth20666_
                                 __tmp21131
                                 __tmp21130))
                              (let ((__tmp21129
                                     (let ()
                                       (declare (not safe))
                                       (_recur20596_ _hd20631_ _is-e?20602_)))
                                    (__tmp21128
                                     (let ()
                                       (declare (not safe))
                                       (_recur20596_
                                        _rest20665_
                                        _is-e?20602_))))
                                (declare (not safe))
                                (_make-cons20594_ __tmp21129 __tmp21128))))
                      (let () (declare (not safe)) (_E2066920678_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E2066920678_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E2066820694_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E2061020619_))))))
                      (let () (declare (not safe)) (_E2061020619_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E2060920698_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e20601_))
                                                    (let ((_g21121_
                                                           (let ((__tmp21123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e20601_)))))
                     (declare (not safe))
                     (_recur20596_ __tmp21123 _is-e?20602_))))
              (begin
                (let ((_g21122_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g21121_)
                             (##vector-length _g21121_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g21122_ 2)))
                      (error "Context expects 2 values" _g21122_)))
                (let ((_e20702_
                       (let () (declare (not safe)) (##vector-ref _g21121_ 0)))
                      (_vars20703_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g21121_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e20702_))
                          _vars20703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e20601_))
                                                        (let ((_g21118_
                                                               (let ((__tmp21120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e20601_)))))
                         (declare (not safe))
                         (_recur20596_ __tmp21120 _is-e?20602_))))
                  (begin
                    (let ((_g21119_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g21118_)
                                 (##vector-length _g21118_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g21119_ 2)))
                          (error "Context expects 2 values" _g21119_)))
                    (let ((_e20705_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g21118_ 0)))
                          (_vars20706_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g21118_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e20705_))
                              _vars20706_))))
                (values (let () (declare (not safe)) (cons 'datum _e20601_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g21134_
                             (let ()
                               (declare (not safe))
                               (_recur20596_ _e20592_ gx#ellipsis?))))
                        (begin
                          (let ((_g21135_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g21134_)
                                       (##vector-length _g21134_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g21135_ 2)))
                                (error "Context expects 2 values" _g21135_)))
                          (let ((_tree20598_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g21134_ 0)))
                                (_vars20599_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g21134_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars20599_))
                                _tree20598_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx20548_
                                   _vars20599_))))))))))
          (let* ((_e2055220562_ _stx20548_)
                 (_E2055420566_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _stx20548_))))
                 (_E2055320588_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e2055220562_))
                        (let ((_e2055520570_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e2055220562_))))
                          (let ((_hd2055620573_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2055520570_)))
                                (_tl2055720575_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2055520570_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl2055720575_))
                                (let ((_e2055820578_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl2055720575_))))
                                  (let ((_hd2055920581_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2055820578_)))
                                        (_tl2056020583_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2055820578_))))
                                    (let ((_form20586_ _hd2055920581_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl2056020583_))
                                          (if '#t
                                              (let ((__tmp21137
                                                     (let ((__tmp21138
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse20551_
                                                               _form20586_))))
                                                       (declare (not safe))
                                                       (_generate20550_
                                                        __tmp21138)))
                                                    (__tmp21136
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx20548_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp21137
                                                 __tmp21136))
                                              (let ()
                                                (declare (not safe))
                                                (_E2055420566_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E2055420566_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E2055420566_)))))
                        (let () (declare (not safe)) (_E2055420566_))))))
            (let () (declare (not safe)) (_E2055320588_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx19812_ _identifier=?19813_ _unwrap-e19814_ _wrap-e19815_)
        (letrec ((_generate-bindings19817_
                  (lambda (_target20412_
                           _ids20413_
                           _clauses20414_
                           _clause-ids20415_
                           _E20416_)
                    (letrec ((_generate120418_
                              (lambda (_clause20515_ _clause-id20516_ _E20517_)
                                (let ((__tmp21143
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id20516_ '())))
                                      (__tmp21139
                                       (let ((__tmp21140
                                              (let ((__tmp21142
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target20412_
                                                             '())))
                                                    (__tmp21141
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause19819_
                                                        _target20412_
                                                        _ids20413_
                                                        _clause20515_
                                                        _E20517_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp21142
                                                 __tmp21141))))
                                         (declare (not safe))
                                         (cons __tmp21140 '()))))
                                  (declare (not safe))
                                  (cons __tmp21143 __tmp21139)))))
                      (let _lp20420_ ((_rest20422_ _clauses20414_)
                                      (_rest-ids20423_ _clause-ids20415_)
                                      (_bindings20424_ '()))
                        (let* ((_rest2042520433_ _rest20422_)
                               (_else2042720441_ (lambda () _bindings20424_))
                               (_K2042920503_
                                (lambda (_rest20444_ _clause20445_)
                                  (let* ((_rest-ids2044620453_ _rest-ids20423_)
                                         (_E2044820457_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids2044620453_)))
                                         (_K2044920491_
                                          (lambda (_rest-ids20460_
                                                   _clause-id20461_)
                                            (let* ((_rest-ids2046220470_
                                                    _rest-ids20460_)
                                                   (_else2046420478_
                                                    (lambda ()
                                                      (let ((__tmp21144
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate120418_
                        _clause20445_
                        _clause-id20461_
                        _E20416_))))
                (declare (not safe))
                (cons __tmp21144 _bindings20424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K2046620483_
                                                    (lambda (_next-clause-id20481_)
                                                      (let ((__tmp21145
                                                             (let ((__tmp21146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate120418_
                               _clause20445_
                               _clause-id20461_
                               _next-clause-id20481_))))
                       (declare (not safe))
                       (cons __tmp21146 _bindings20424_))))
                (declare (not safe))
                (_lp20420_ _rest20444_ _rest-ids20460_ __tmp21145)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids2046220470_))
                                                  (let* ((_hd2046720486_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids2046220470_)))
                                                         (_next-clause-id20489_
                                                          _hd2046720486_))
                                                    (declare (not safe))
                                                    (_K2046620483_
                                                     _next-clause-id20489_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else2046420478_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids2044620453_))
                                        (let ((_hd2045020494_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids2044620453_)))
                                              (_tl2045120496_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids2044620453_))))
                                          (let* ((_clause-id20499_
                                                  _hd2045020494_)
                                                 (_rest-ids20501_
                                                  _tl2045120496_))
                                            (declare (not safe))
                                            (_K2044920491_
                                             _rest-ids20501_
                                             _clause-id20499_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E2044820457_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest2042520433_))
                              (let ((_hd2043020506_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest2042520433_)))
                                    (_tl2043120508_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest2042520433_))))
                                (let* ((_clause20511_ _hd2043020506_)
                                       (_rest20513_ _tl2043120508_))
                                  (declare (not safe))
                                  (_K2042920503_ _rest20513_ _clause20511_)))
                              (let ()
                                (declare (not safe))
                                (_else2042720441_))))))))
                 (_generate-body19818_
                  (lambda (_bindings20372_ _body20373_)
                    (let _recur20375_ ((_rest20377_ _bindings20372_))
                      (let* ((_rest2037820386_ _rest20377_)
                             (_else2038020394_ (lambda () _body20373_))
                             (_K2038220400_
                              (lambda (_rest20397_ _hd20398_)
                                (let ((__tmp21148
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd20398_ '())))
                                      (__tmp21147
                                       (let ()
                                         (declare (not safe))
                                         (_recur20375_ _rest20397_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp21148
                                   __tmp21147)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest2037820386_))
                            (let ((_hd2038320403_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest2037820386_)))
                                  (_tl2038420405_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest2037820386_))))
                              (let* ((_hd20408_ _hd2038320403_)
                                     (_rest20410_ _tl2038420405_))
                                (declare (not safe))
                                (_K2038220400_ _rest20410_ _hd20408_)))
                            (let ()
                              (declare (not safe))
                              (_else2038020394_)))))))
                 (_generate-clause19819_
                  (lambda (_target20235_ _ids20236_ _clause20237_ _E20238_)
                    (letrec ((_generate120240_
                              (lambda (_hd20327_ _fender20328_ _body20329_)
                                (let ((_g21149_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause19821_
                                          _hd20327_
                                          _ids20236_))))
                                  (begin
                                    (let ((_g21150_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21149_)
                                                 (##vector-length _g21149_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21150_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21150_)))
                                    (let ((_e20331_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21149_ 0)))
                                          (_mvars20332_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g21149_ 1))))
                                      (let* ((_pvars20334_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars20332_))))
                                             (_E20336_
                                              (let ((__tmp21151
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target20235_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E20238_ __tmp21151)))
                                             (_K20369_
                                              (let ((__tmp21152
                                                     (let ((__tmp21154
                                                            (map (lambda (_mvar20338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar20339_)
                           (let* ((_mvar2034020347_ _mvar20338_)
                                  (_E2034220351_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar2034020347_)))
                                  (_K2034320357_
                                   (lambda (_depth20354_ _id20355_)
                                     (let ((__tmp21155
                                            (let ((__tmp21156
                                                   (let ((__tmp21158
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id20355_)))
                                                         (__tmp21157
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar20339_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp21158
                                                      __tmp21157
                                                      _depth20354_))))
                                              (declare (not safe))
                                              (cons __tmp21156 '()))))
                                       (declare (not safe))
                                       (cons _id20355_ __tmp21155)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar2034020347_))
                                 (let ((_hd2034420360_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar2034020347_)))
                                       (_tl2034520362_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar2034020347_))))
                                   (let* ((_id20365_ _hd2034420360_)
                                          (_depth20367_ _tl2034520362_))
                                     (declare (not safe))
                                     (_K2034320357_ _depth20367_ _id20365_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E2034220351_)))))
                         _mvars20332_
                         _pvars20334_))
                   (__tmp21153
                    (if (let () (declare (not safe)) (eq? _fender20328_ '#t))
                        _body20329_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender20328_
                           _body20329_
                           _E20336_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp21154 __tmp21153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars20334_
                                                 __tmp21152))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match19820_
                                           _hd20327_
                                           _target20235_
                                           _e20331_
                                           _mvars20332_
                                           _K20369_
                                           _E20336_)))))))))
                      (let* ((_e2024120261_ _clause20237_)
                             (_E2025020265_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e2024120261_))))
                             (_E2024320299_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e2024120261_))
                                    (let ((_e2025120269_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e2024120261_))))
                                      (let ((_hd2025220272_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2025120269_)))
                                            (_tl2025320274_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2025120269_))))
                                        (let ((_hd20277_ _hd2025220272_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl2025320274_))
                                              (let ((_e2025420279_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl2025320274_))))
                                                (let ((_hd2025520282_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2025420279_)))
                                                      (_tl2025620284_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2025420279_))))
                                                  (let ((_fender20287_
                                                         _hd2025520282_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl2025620284_))
                                                        (let ((_e2025720289_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl2025620284_))))
                  (let ((_hd2025820292_
                         (let () (declare (not safe)) (##car _e2025720289_)))
                        (_tl2025920294_
                         (let () (declare (not safe)) (##cdr _e2025720289_))))
                    (let ((_body20297_ _hd2025820292_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl2025920294_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate120240_
                                 _hd20277_
                                 _fender20287_
                                 _body20297_))
                              (let () (declare (not safe)) (_E2025020265_)))
                          (let () (declare (not safe)) (_E2025020265_))))))
                (let () (declare (not safe)) (_E2025020265_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E2025020265_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E2025020265_)))))
                             (_E2024220323_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e2024120261_))
                                    (let ((_e2024420303_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e2024120261_))))
                                      (let ((_hd2024520306_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2024420303_)))
                                            (_tl2024620308_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2024420303_))))
                                        (let ((_hd20311_ _hd2024520306_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl2024620308_))
                                              (let ((_e2024720313_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl2024620308_))))
                                                (let ((_hd2024820316_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2024720313_)))
                                                      (_tl2024920318_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2024720313_))))
                                                  (let ((_body20321_
                                                         _hd2024820316_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl2024920318_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate120240_
                                                               _hd20311_
                                                               '#t
                                                               _body20321_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E2024320299_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E2024320299_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E2024320299_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E2024320299_))))))
                        (let () (declare (not safe)) (_E2024220323_))))))
                 (_generate-match19820_
                  (lambda (_where19984_
                           _target19985_
                           _hd19986_
                           _mvars19987_
                           _K19988_
                           _E19989_)
                    (letrec ((_BUG19991_
                              (lambda (_q20233_)
                                (error '"BUG: syntax-case; generate"
                                       _stx19812_
                                       _hd19986_
                                       _q20233_)))
                             (_recur19992_
                              (lambda (_e20083_
                                       _vars20084_
                                       _target20085_
                                       _E20086_
                                       _k20087_)
                                (let* ((_e2008820095_ _e20083_)
                                       (_E2009020099_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e2008820095_)))
                                       (_K2009120221_
                                        (lambda (_body20102_ _tag20103_)
                                          (let ((_$e20105_ _tag20103_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e20105_))
                                                (_k20087_ _vars20084_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e20105_))
                                                    (let ((__tmp21265
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target20085_)))
                                                          (__tmp21261
                                                           (let ((__tmp21263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp21264
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e19815_ _body20102_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?19813_
                             __tmp21264
                             _target20085_)))
                         (__tmp21262 (_k20087_ _vars20084_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp21263 __tmp21262 _E20086_))))
              (declare (not safe))
              (gx#core-list 'if __tmp21265 __tmp21261 _E20086_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e20105_))
                                                        (_k20087_
                                                         (let ((__tmp21260
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body20102_ _target20085_))))
                   (declare (not safe))
                   (cons __tmp21260 _vars20084_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e20105_))
                    (let ((_$e20108_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd20109_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl20110_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp21259
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target20085_)))
                            (__tmp21240
                             (let ((__tmp21254
                                    (let ((__tmp21255
                                           (let ((__tmp21258
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e20108_ '())))
                                                 (__tmp21256
                                                  (let ((__tmp21257
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e19814_
                                                            _target20085_))))
                                                    (declare (not safe))
                                                    (cons __tmp21257 '()))))
                                             (declare (not safe))
                                             (cons __tmp21258 __tmp21256))))
                                      (declare (not safe))
                                      (cons __tmp21255 '())))
                                   (__tmp21241
                                    (let ((__tmp21244
                                           (let ((__tmp21250
                                                  (let ((__tmp21253
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd20109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp21251
                 (let ((__tmp21252
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e20108_))))
                   (declare (not safe))
                   (cons __tmp21252 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp21253
                                                          __tmp21251)))
                                                 (__tmp21245
                                                  (let ((__tmp21246
                                                         (let ((__tmp21249
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl20110_ '())))
                       (__tmp21247
                        (let ((__tmp21248
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e20108_))))
                          (declare (not safe))
                          (cons __tmp21248 '()))))
                   (declare (not safe))
                   (cons __tmp21249 __tmp21247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp21246 '()))))
                                             (declare (not safe))
                                             (cons __tmp21250 __tmp21245)))
                                          (__tmp21242
                                           (let* ((_body2011120118_
                                                   _body20102_)
                                                  (_E2011320122_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body2011120118_)))
                                                  (_K2011420130_
                                                   (lambda (_tl20125_
                                                            _hd20126_)
                                                     (let ((__tmp21243
                                                            (lambda (_vars20128_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur19992_
                         _tl20125_
                         _vars20128_
                         _$tl20110_
                         _E20086_
                         _k20087_)))))
               (declare (not safe))
               (_recur19992_
                _hd20126_
                _vars20084_
                _$hd20109_
                _E20086_
                __tmp21243)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body2011120118_))
                                                 (let ((_hd2011520133_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body2011120118_)))
                                                       (_tl2011620135_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body2011120118_))))
                                                   (let* ((_hd20138_
                                                           _hd2011520133_)
                                                          (_tl20140_
                                                           _tl2011620135_))
                                                     (declare (not safe))
                                                     (_K2011420130_
                                                      _tl20140_
                                                      _hd20138_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E2011320122_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp21244
                                       __tmp21242))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp21254
                                __tmp21241))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp21259 __tmp21240 _E20086_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e20105_))
                        (let* ((_body2014120148_ _body20102_)
                               (_E2014320152_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body2014120148_)))
                               (_K2014420203_
                                (lambda (_tl20155_ _hd20156_)
                                  (let* ((_rlen20158_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen19993_ _tl20155_)))
                                         (_$target20160_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd20162_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl20164_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp20166_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e20168_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd20170_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl20172_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars20174_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars19994_ _hd20156_)))
                                         (_lvars20176_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars20174_)))
                                         (_tlvars20178_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars20174_)))
                                         (_linit20182_
                                          (map (lambda (_var20180_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars20176_)))
                                    (letrec ((_make-loop20185_
                                              (lambda (_vars20189_)
                                                (let ((__tmp21191
                                                       (let ((__tmp21192
                                                              (let ((__tmp21228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp20166_ '())))
                            (__tmp21193
                             (let ((__tmp21194
                                    (let ((__tmp21227
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd20162_ _lvars20176_)))
                                          (__tmp21195
                                           (let ((__tmp21226
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd20162_)))
                                                 (__tmp21204
                                                  (let ((__tmp21221
                                                         (let ((__tmp21222
                                                                (let ((__tmp21225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e20168_ '())))
                              (__tmp21223
                               (let ((__tmp21224
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e19814_
                                         _$hd20162_))))
                                 (declare (not safe))
                                 (cons __tmp21224 '()))))
                          (declare (not safe))
                          (cons __tmp21225 __tmp21223))))
                   (declare (not safe))
                   (cons __tmp21222 '())))
                (__tmp21205
                 (let ((__tmp21211
                        (let ((__tmp21217
                               (let ((__tmp21220
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd20170_ '())))
                                     (__tmp21218
                                      (let ((__tmp21219
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e20168_))))
                                        (declare (not safe))
                                        (cons __tmp21219 '()))))
                                 (declare (not safe))
                                 (cons __tmp21220 __tmp21218)))
                              (__tmp21212
                               (let ((__tmp21213
                                      (let ((__tmp21216
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl20172_ '())))
                                            (__tmp21214
                                             (let ((__tmp21215
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e20168_))))
                                               (declare (not safe))
                                               (cons __tmp21215 '()))))
                                        (declare (not safe))
                                        (cons __tmp21216 __tmp21214))))
                                 (declare (not safe))
                                 (cons __tmp21213 '()))))
                          (declare (not safe))
                          (cons __tmp21217 __tmp21212)))
                       (__tmp21206
                        (let ((__tmp21207
                               (lambda (_hdvars20191_)
                                 (let ((__tmp21208
                                        (let ((__tmp21209
                                               (map (lambda (_svar20193_
                                                             _lvar20194_)
                                                      (let ((__tmp21210
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar20193_ _hdvars20191_ _BUG19991_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp21210 _lvar20194_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars20174_
                                                    _lvars20176_)))
                                          (declare (not safe))
                                          (cons _$lp-tl20172_ __tmp21209))))
                                   (declare (not safe))
                                   (cons _$lp20166_ __tmp21208)))))
                          (declare (not safe))
                          (_recur19992_
                           _hd20156_
                           '()
                           _$lp-hd20170_
                           _E20086_
                           __tmp21207))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp21211 __tmp21206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp21221
                                                     __tmp21205)))
                                                 (__tmp21196
                                                  (let ((__tmp21200
                                                         (map (lambda (_lvar20196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar20197_)
                        (let ((__tmp21203
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar20197_ '())))
                              (__tmp21201
                               (let ((__tmp21202
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar20196_))))
                                 (declare (not safe))
                                 (cons __tmp21202 '()))))
                          (declare (not safe))
                          (cons __tmp21203 __tmp21201)))
                      _lvars20176_
                      _tlvars20178_))
                (__tmp21197
                 (_k20087_
                  (let ((__tmp21198
                         (lambda (_svar20199_ _tlvar20200_ _r20201_)
                           (let ((__tmp21199
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar20199_ _tlvar20200_))))
                             (declare (not safe))
                             (cons __tmp21199 _r20201_)))))
                    (declare (not safe))
                    (foldl2 __tmp21198
                            _vars20189_
                            _svars20174_
                            _tlvars20178_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp21200
                                                     __tmp21197))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp21226
                                              __tmp21204
                                              __tmp21196))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp21227
                                       __tmp21195))))
                               (declare (not safe))
                               (cons __tmp21194 '()))))
                        (declare (not safe))
                        (cons __tmp21228 __tmp21193))))
                 (declare (not safe))
                 (cons __tmp21192 '())))
              (__tmp21189
               (let ((__tmp21190
                      (let ()
                        (declare (not safe))
                        (cons _$target20160_ _linit20182_))))
                 (declare (not safe))
                 (cons _$lp20166_ __tmp21190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp21191
                                                   __tmp21189)))))
                                      (let ((_body20187_
                                             (let ((__tmp21230
                                                    (let ((__tmp21231
                                                           (let ((__tmp21234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp21235
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl20164_ '()))))
                            (declare (not safe))
                            (cons _$target20160_ __tmp21235)))
                         (__tmp21232
                          (let ((__tmp21233
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target20085_
                                    _rlen20158_))))
                            (declare (not safe))
                            (cons __tmp21233 '()))))
                     (declare (not safe))
                     (cons __tmp21234 __tmp21232))))
              (declare (not safe))
              (cons __tmp21231 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp21229
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur19992_
                                                       _tl20155_
                                                       _vars20084_
                                                       _$tl20164_
                                                       _E20086_
                                                       _make-loop20185_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp21230
                                                __tmp21229))))
                                        (let ((__tmp21239
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target20085_)))
                                              (__tmp21236
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen20158_))
                                                   _body20187_
                                                   (let ((__tmp21237
                                                          (let ((__tmp21238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target20085_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp21238 _rlen20158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp21237
                                                      _body20187_
                                                      _E20086_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp21239
                                           __tmp21236
                                           _E20086_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body2014120148_))
                              (let ((_hd2014520206_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body2014120148_)))
                                    (_tl2014620208_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body2014120148_))))
                                (let* ((_hd20211_ _hd2014520206_)
                                       (_tl20213_ _tl2014620208_))
                                  (declare (not safe))
                                  (_K2014420203_ _tl20213_ _hd20211_)))
                              (let () (declare (not safe)) (_E2014320152_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e20105_))
                            (let ((__tmp21188
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target20085_)))
                                  (__tmp21187 (_k20087_ _vars20084_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp21188
                               __tmp21187
                               _E20086_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e20105_))
                                (let ((_$e20215_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp21186
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target20085_)))
                                        (__tmp21178
                                         (let ((__tmp21180
                                                (let ((__tmp21181
                                                       (let ((__tmp21185
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e20215_ '())))
                     (__tmp21182
                      (let ((__tmp21183
                             (let ((__tmp21184
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e19814_
                                       _target20085_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp21184))))
                        (declare (not safe))
                        (cons __tmp21183 '()))))
                 (declare (not safe))
                 (cons __tmp21185 __tmp21182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp21181 '())))
                                               (__tmp21179
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur19992_
                                                   _body20102_
                                                   _vars20084_
                                                   _$e20215_
                                                   _E20086_
                                                   _k20087_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp21180
                                            __tmp21179))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp21186
                                     __tmp21178
                                     _E20086_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e20105_))
                                    (let ((_$e20217_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp21177
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target20085_)))
                                            (__tmp21169
                                             (let ((__tmp21171
                                                    (let ((__tmp21172
                                                           (let ((__tmp21176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e20217_ '())))
                         (__tmp21173
                          (let ((__tmp21174
                                 (let ((__tmp21175
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e19814_
                                           _target20085_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp21175))))
                            (declare (not safe))
                            (cons __tmp21174 '()))))
                     (declare (not safe))
                     (cons __tmp21176 __tmp21173))))
              (declare (not safe))
              (cons __tmp21172 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp21170
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur19992_
                                                       _body20102_
                                                       _vars20084_
                                                       _$e20217_
                                                       _E20086_
                                                       _k20087_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp21171
                                                __tmp21170))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp21177
                                         __tmp21169
                                         _E20086_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e20105_))
                                        (let ((_$e20219_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp21168
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target20085_)))
                                                (__tmp21159
                                                 (let ((__tmp21163
                                                        (let ((__tmp21164
                                                               (let ((__tmp21167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e20219_ '())))
                             (__tmp21165
                              (let ((__tmp21166
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target20085_))))
                                (declare (not safe))
                                (cons __tmp21166 '()))))
                         (declare (not safe))
                         (cons __tmp21167 __tmp21165))))
                  (declare (not safe))
                  (cons __tmp21164 '())))
               (__tmp21160
                (let ((__tmp21162
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e20219_ _body20102_)))
                      (__tmp21161 (_k20087_ _vars20084_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp21162 __tmp21161 _E20086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp21163
                                                    __tmp21160))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp21168
                                             __tmp21159
                                             _E20086_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG19991_ _e20083_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e2008820095_))
                                      (let ((_hd2009220224_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2008820095_)))
                                            (_tl2009320226_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2008820095_))))
                                        (let* ((_tag20229_ _hd2009220224_)
                                               (_body20231_ _tl2009320226_))
                                          (declare (not safe))
                                          (_K2009120221_
                                           _body20231_
                                           _tag20229_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E2009020099_))))))
                             (_splice-rlen19993_
                              (lambda (_e20045_)
                                (let _lp20047_ ((_e20049_ _e20045_)
                                                (_n20050_ '0))
                                  (let* ((_e2005120058_ _e20049_)
                                         (_E2005320062_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e2005120058_)))
                                         (_K2005420071_
                                          (lambda (_body20065_ _tag20066_)
                                            (let ((_$e20068_ _tag20066_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e20068_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx19812_
                                                     _where19984_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e20068_))
                                                      (let ((__tmp21267
                                                             (cdr _body20065_))
                                                            (__tmp21266
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n20050_ '1))))
                (declare (not safe))
                (_lp20047_ __tmp21267 __tmp21266))
              _n20050_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e2005120058_))
                                        (let ((_hd2005520074_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2005120058_)))
                                              (_tl2005620076_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2005120058_))))
                                          (let* ((_tag20079_ _hd2005520074_)
                                                 (_body20081_ _tl2005620076_))
                                            (declare (not safe))
                                            (_K2005420071_
                                             _body20081_
                                             _tag20079_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E2005320062_)))))))
                             (_splice-vars19994_
                              (lambda (_e20001_)
                                (let _recur20003_ ((_e20005_ _e20001_)
                                                   (_vars20006_ '()))
                                  (let* ((_e2000720014_ _e20005_)
                                         (_E2000920018_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e2000720014_)))
                                         (_K2001020033_
                                          (lambda (_body20021_ _tag20022_)
                                            (let ((_$e20024_ _tag20022_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e20024_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body20021_
                                                          _vars20006_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e20024_))
                  (let () (declare (not safe)) (eq? 'splice _$e20024_)))
              (let ((__tmp21270 (cdr _body20021_))
                    (__tmp21268
                     (let ((__tmp21269 (car _body20021_)))
                       (declare (not safe))
                       (_recur20003_ __tmp21269 _vars20006_))))
                (declare (not safe))
                (_recur20003_ __tmp21270 __tmp21268))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e20024_))
                      (let () (declare (not safe)) (eq? 'box _$e20024_)))
                  (let ()
                    (declare (not safe))
                    (_recur20003_ _body20021_ _vars20006_))
                  _vars20006_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e2000720014_))
                                        (let ((_hd2001120036_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2000720014_)))
                                              (_tl2001220038_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2000720014_))))
                                          (let* ((_tag20041_ _hd2001120036_)
                                                 (_body20043_ _tl2001220038_))
                                            (declare (not safe))
                                            (_K2001020033_
                                             _body20043_
                                             _tag20041_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E2000920018_)))))))
                             (_make-body19995_
                              (lambda (_vars19997_)
                                (let ((__tmp21271
                                       (map (lambda (_mvar19999_)
                                              (let ((__tmp21272
                                                     (car _mvar19999_)))
                                                (declare (not safe))
                                                (assgetq __tmp21272
                                                         _vars19997_
                                                         _BUG19991_)))
                                            _mvars19987_)))
                                  (declare (not safe))
                                  (cons _K19988_ __tmp21271)))))
                      (let ()
                        (declare (not safe))
                        (_recur19992_
                         _hd19986_
                         '()
                         _target19985_
                         _E19989_
                         _make-body19995_)))))
                 (_parse-clause19821_
                  (lambda (_hd19890_ _ids19891_)
                    (let _recur19893_ ((_e19895_ _hd19890_)
                                       (_vars19896_ '())
                                       (_depth19897_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e19895_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e19895_))
                              (values '(any) _vars19896_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e19895_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx19812_
                                     _hd19890_))
                                  (if (let ((__tmp21288
                                             (lambda (_id19899_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e19895_
                                                  _id19899_)))))
                                        (declare (not safe))
                                        (find __tmp21288 _ids19891_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e19895_))
                                              _vars19896_)
                                      (if (let ((__tmp21286
                                                 (lambda (_var19901_)
                                                   (let ((__tmp21287
                                                          (car _var19901_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e19895_
                                                      __tmp21287)))))
                                            (declare (not safe))
                                            (find __tmp21286 _vars19896_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx19812_
                                             _e19895_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e19895_))
                                                  (let ((__tmp21285
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e19895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth19897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp21285
                                                          _vars19896_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e19895_))
                              (let* ((_e1990219909_ _e19895_)
                                     (_E1990419913_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e1990219909_))))
                                     (_E1990319974_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e1990219909_))
                                            (let ((_e1990519917_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e1990219909_))))
                                              (let ((_hd1990619920_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1990519917_)))
                                                    (_tl1990719922_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1990519917_))))
                                                (let* ((_hd19925_
                                                        _hd1990619920_)
                                                       (_rest19927_
                                                        _tl1990719922_))
                                                  (if '#t
                                                      (let* ((_make-pair19942_
                                                              (lambda (_tag19929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd19930_
                               _tl19931_)
                        (let* ((_hd-depth19933_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag19929_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth19897_ '1))
                                    _depth19897_))
                               (_g21280_
                                (let ()
                                  (declare (not safe))
                                  (_recur19893_
                                   _hd19930_
                                   _vars19896_
                                   _hd-depth19933_))))
                          (begin
                            (let ((_g21281_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g21280_)
                                         (##vector-length _g21280_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g21281_ 2)))
                                  (error "Context expects 2 values" _g21281_)))
                            (let ((_hd19935_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g21280_ 0)))
                                  (_vars19936_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g21280_ 1))))
                              (let ((_g21282_
                                     (let ()
                                       (declare (not safe))
                                       (_recur19893_
                                        _tl19931_
                                        _vars19936_
                                        _depth19897_))))
                                (begin
                                  (let ((_g21283_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g21282_)
                                               (##vector-length _g21282_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g21283_ 2)))
                                        (error "Context expects 2 values"
                                               _g21283_)))
                                  (let ((_tl19938_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g21282_ 0)))
                                        (_vars19939_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g21282_ 1))))
                                    (let ()
                                      (values (let ((__tmp21284
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd19935_
                                                             _tl19938_))))
                                                (declare (not safe))
                                                (cons _tag19929_ __tmp21284))
                                              _vars19939_))))))))))
                     (_e1994319950_ _rest19927_)
                     (_E1994519954_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair19942_ 'cons _hd19925_ _rest19927_))))
                     (_E1994419970_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e1994319950_))
                            (let ((_e1994619958_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e1994319950_))))
                              (let ((_hd1994719961_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1994619958_)))
                                    (_tl1994819963_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1994619958_))))
                                (let* ((_rest-hd19966_ _hd1994719961_)
                                       (_rest-tl19968_ _tl1994819963_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd19966_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair19942_
                                             'splice
                                             _hd19925_
                                             _rest-tl19968_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair19942_
                                             'cons
                                             _hd19925_
                                             _rest19927_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E1994519954_))))))
                            (let () (declare (not safe)) (_E1994519954_))))))
                (let () (declare (not safe)) (_E1994419970_)))
              (let () (declare (not safe)) (_E1990419913_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E1990419913_))))))
                                (let () (declare (not safe)) (_E1990319974_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e19895_))
                                  (values '(null) _vars19896_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e19895_))
                                      (let ((_g21277_
                                             (let ((__tmp21279
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e19895_)))))
                                               (declare (not safe))
                                               (_recur19893_
                                                __tmp21279
                                                _vars19896_
                                                _depth19897_))))
                                        (begin
                                          (let ((_g21278_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21277_)
                                                       (##vector-length
                                                        _g21277_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21278_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21278_)))
                                          (let ((_e19978_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21277_ 0)))
                                                (_vars19979_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g21277_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e19978_))
                                                    _vars19979_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e19895_))
                                          (let ((_g21274_
                                                 (let ((__tmp21276
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e19895_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur19893_
                                                    __tmp21276
                                                    _vars19896_
                                                    _depth19897_))))
                                            (begin
                                              (let ((_g21275_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g21274_)
                                                           (##vector-length
                                                            _g21274_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g21275_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g21275_)))
                                              (let ((_e19981_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g21274_
                                                        0)))
                                                    (_vars19982_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g21274_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e19981_))
                                                        _vars19982_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e19895_))
                                              (values (let ((__tmp21273
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e19895_))))
                (declare (not safe))
                (cons 'datum __tmp21273))
              _vars19896_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx19812_
                                                 _e19895_))))))))))))
          (let* ((_e1982219835_ _stx19812_)
                 (_E1982419839_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _e1982219835_))))
                 (_E1982319886_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e1982219835_))
                        (let ((_e1982519843_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e1982219835_))))
                          (let ((_hd1982619846_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1982519843_)))
                                (_tl1982719848_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1982519843_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1982719848_))
                                (let ((_e1982819851_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl1982719848_))))
                                  (let ((_hd1982919854_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1982819851_)))
                                        (_tl1983019856_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1982819851_))))
                                    (let ((_expr19859_ _hd1982919854_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl1983019856_))
                                          (let ((_e1983119861_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl1983019856_))))
                                            (let ((_hd1983219864_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1983119861_)))
                                                  (_tl1983319866_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1983119861_))))
                                              (let* ((_ids19869_
                                                      _hd1983219864_)
                                                     (_clauses19871_
                                                      _tl1983319866_))
                                                (if '#t
                                                    (if (let ((__tmp21306
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids19869_))))
                  (declare (not safe))
                  (not __tmp21306))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx19812_
                   _ids19869_))
                (if (let ((__tmp21305
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses19871_))))
                      (declare (not safe))
                      (not __tmp21305))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _stx19812_))
                    (let* ((_ids19873_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids19869_)))
                           (_clauses19875_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses19871_)))
                           (_clause-ids19877_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses19875_)))
                           (_E19879_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target19881_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first19883_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses19875_))
                                _E19879_
                                (car _clause-ids19877_))))
                      (let ((__tmp21290
                             (let ((__tmp21291
                                    (let ((__tmp21293
                                           (let ((__tmp21298
                                                  (let ((__tmp21299
                                                         (let ((__tmp21304
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E19879_ '())))
                       (__tmp21300
                        (let ((__tmp21301
                               (let ((__tmp21303
                                      (let ()
                                        (declare (not safe))
                                        (cons _target19881_ '())))
                                     (__tmp21302
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _target19881_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp21303
                                  __tmp21302))))
                          (declare (not safe))
                          (cons __tmp21301 '()))))
                   (declare (not safe))
                   (cons __tmp21304 __tmp21300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp21299 '())))
                                                 (__tmp21294
                                                  (let ((__tmp21297
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings19817_
                                                            _target19881_
                                                            _ids19873_
                                                            _clauses19875_
                                                            _clause-ids19877_
                                                            _E19879_)))
                                                        (__tmp21295
                                                         (let ((__tmp21296
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr19859_ '()))))
                   (declare (not safe))
                   (cons _first19883_ __tmp21296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body19818_
                                                     __tmp21297
                                                     __tmp21295))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp21298
                                              __tmp21294)))
                                          (__tmp21292
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx19812_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp21293
                                       __tmp21292))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp21291)))
                            (__tmp21289
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx19812_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp21290 __tmp21289)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E1982419839_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E1982419839_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E1982419839_)))))
                        (let () (declare (not safe)) (_E1982419839_))))))
            (let () (declare (not safe)) (_E1982319886_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx20522_)
        (let* ((_identifier=?20524_ 'free-identifier=?)
               (_unwrap-e20526_ 'syntax-e)
               (_wrap-e20528_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx20522_
           _identifier=?20524_
           _unwrap-e20526_
           _wrap-e20528_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx20530_ _identifier=?20531_)
        (let* ((_unwrap-e20533_ 'syntax-e) (_wrap-e20535_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx20530_
           _identifier=?20531_
           _unwrap-e20533_
           _wrap-e20535_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx20537_ _identifier=?20538_ _unwrap-e20539_)
        (let ((_wrap-e20541_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx20537_
           _identifier=?20538_
           _unwrap-e20539_
           _wrap-e20541_))))
    (define gx#macro-expand-syntax-case
      (lambda _g21308_
        (let ((_g21307_ (let () (declare (not safe)) (##length _g21308_))))
          (cond ((let () (declare (not safe)) (##fx= _g21307_ 1))
                 (apply (lambda (_stx20522_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx20522_)))
                        _g21308_))
                ((let () (declare (not safe)) (##fx= _g21307_ 2))
                 (apply (lambda (_stx20530_ _identifier=?20531_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx20530_
                             _identifier=?20531_)))
                        _g21308_))
                ((let () (declare (not safe)) (##fx= _g21307_ 3))
                 (apply (lambda (_stx20537_
                                 _identifier=?20538_
                                 _unwrap-e20539_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx20537_
                             _identifier=?20538_
                             _unwrap-e20539_)))
                        _g21308_))
                ((let () (declare (not safe)) (##fx= _g21307_ 4))
                 (apply (lambda (_stx20543_
                                 _identifier=?20544_
                                 _unwrap-e20545_
                                 _wrap-e20546_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx20543_
                             _identifier=?20544_
                             _unwrap-e20545_
                             _wrap-e20546_)))
                        _g21308_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g21308_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx19809_)
        (if (let () (declare (not safe)) (gx#identifier? _stx19809_))
            (let ((__tmp21309
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx19809_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp21309 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd19767_ . _rest19768_)
        (let ((_len19770_ (length _hd19767_)))
          (let _lp19772_ ((_rest19774_ _rest19768_))
            (let* ((_rest1977519783_ _rest19774_)
                   (_else1977719791_ (lambda () '#!void))
                   (_K1977919797_
                    (lambda (_rest19794_ _hd19795_)
                      (if (fx= _len19770_ (length _hd19795_))
                          (let () (declare (not safe)) (_lp19772_ _rest19794_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd19795_))))))
              (if (let () (declare (not safe)) (##pair? _rest1977519783_))
                  (let ((_hd1978019800_
                         (let ()
                           (declare (not safe))
                           (##car _rest1977519783_)))
                        (_tl1978119802_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest1977519783_))))
                    (let* ((_hd19805_ _hd1978019800_)
                           (_rest19807_ _tl1978119802_))
                      (declare (not safe))
                      (_K1977919797_ _rest19807_ _hd19805_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx19725_ _n19726_)
        (let _lp19728_ ((_rest19730_ _stx19725_) (_r19731_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest19730_))
              (let* ((_g1973219739_
                      (let () (declare (not safe)) (gx#syntax-e _rest19730_)))
                     (_E1973419743_
                      (lambda () (error '"No clause matching" _g1973219739_)))
                     (_K1973519749_
                      (lambda (_rest19746_ _hd19747_)
                        (let ((__tmp21314
                               (let ()
                                 (declare (not safe))
                                 (cons _hd19747_ _r19731_))))
                          (declare (not safe))
                          (_lp19728_ _rest19746_ __tmp21314)))))
                (if (let () (declare (not safe)) (##pair? _g1973219739_))
                    (let ((_hd1973619752_
                           (let () (declare (not safe)) (##car _g1973219739_)))
                          (_tl1973719754_
                           (let ()
                             (declare (not safe))
                             (##cdr _g1973219739_))))
                      (let* ((_hd19757_ _hd1973619752_)
                             (_rest19759_ _tl1973719754_))
                        (declare (not safe))
                        (_K1973519749_ _rest19759_ _hd19757_)))
                    (let () (declare (not safe)) (_E1973419743_))))
              (let _lp19761_ ((_n19763_ _n19726_)
                              (_l19764_ _r19731_)
                              (_r19765_ _rest19730_))
                (if (let () (declare (not safe)) (null? _l19764_))
                    (values _l19764_ _r19765_)
                    (if (fxpositive? _n19763_)
                        (let ((__tmp21313
                               (let () (declare (not safe)) (fx- _n19763_ '1)))
                              (__tmp21312 (cdr _l19764_))
                              (__tmp21310
                               (let ((__tmp21311 (car _l19764_)))
                                 (declare (not safe))
                                 (cons __tmp21311 _r19765_))))
                          (declare (not safe))
                          (_lp19761_ __tmp21313 __tmp21312 __tmp21310))
                        (values (reverse _l19764_) _r19765_))))))))))
