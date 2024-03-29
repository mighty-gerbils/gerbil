(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1711709197)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp95189 (list gx#expander::t))
            (__tmp95188 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp95189
         '(id depth)
         __tmp95188
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args95185_
        (apply make-instance gx#syntax-pattern::t _$args95185_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_self95182_ _stx95183_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx95183_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx94664_)
        (letrec ((_generate94666_
                  (lambda (_e94893_)
                    (letrec ((_BUG94895_
                              (lambda (_q95057_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx94664_
                                         _e94893_
                                         _q95057_))))
                             (_local-pattern-e94896_
                              (lambda (_pat95055_)
                                (let ((__tmp95190
                                       (##structure-ref
                                        _pat95055_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp95190))))
                             (_getvar94897_
                              (lambda (_q95052_ _vars95053_)
                                (let ()
                                  (declare (not safe))
                                  (__agetq _q95052_ _vars95053_ _BUG94895_))))
                             (_getarg94898_
                              (lambda (_arg95018_ _vars95019_)
                                (let* ((_arg9502095027_ _arg95018_)
                                       (_E9502295031_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9502095027_))))
                                       (_K9502395040_
                                        (lambda (_e95034_ _tag95035_)
                                          (let ((_$e95037_ _tag95035_))
                                            (if (eq? 'ref _$e95037_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar94897_
                                                   _e95034_
                                                   _vars95019_))
                                                (if (eq? 'pattern _$e95037_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e94896_
                                                       _e95034_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG94895_
                                                       _arg95018_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9502095027_))
                                      (let ((_hd9502495043_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9502095027_)))
                                            (_tl9502595045_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9502095027_))))
                                        (let* ((_tag95048_ _hd9502495043_)
                                               (_e95050_ _tl9502595045_))
                                          (declare (not safe))
                                          (_K9502395040_ _e95050_ _tag95048_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9502295031_)))))))
                      (let _recur94900_ ((_e94902_ _e94893_) (_vars94903_ '()))
                        (let* ((_e9490494911_ _e94902_)
                               (_E9490694915_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9490494911_))))
                               (_K9490795006_
                                (lambda (_body94918_ _tag94919_)
                                  (let ((_$e94921_ _tag94919_))
                                    (if (eq? 'datum _$e94921_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body94918_))
                                        (if (eq? 'term _$e94921_)
                                            (let ((_id94924_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body94918_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id94924_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks94926_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id94924_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks94926_))
                                                        (let ((__tmp95191
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body94918_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp95191))
                (let ((__tmp95193
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body94918_)))
                      (__tmp95192
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body94918_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp95193
                   __tmp95192
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id94924_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body94918_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG94895_
                                                         _e94902_)))))
                                            (if (eq? 'pattern _$e94921_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e94896_
                                                   _body94918_))
                                                (if (eq? 'ref _$e94921_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar94897_
                                                       _body94918_
                                                       _vars94903_))
                                                    (if (eq? 'cons _$e94921_)
                                                        (let ((__tmp95196
                                                               (let ((__tmp95197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body94918_)))
                         (declare (not safe))
                         (_recur94900_ __tmp95197 _vars94903_)))
                      (__tmp95194
                       (let ((__tmp95195 (cdr _body94918_)))
                         (declare (not safe))
                         (_recur94900_ __tmp95195 _vars94903_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp95196 __tmp95194))
                (if (eq? 'vector _$e94921_)
                    (let ((__tmp95198
                           (let ()
                             (declare (not safe))
                             (_recur94900_ _body94918_ _vars94903_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp95198))
                    (if (eq? 'box _$e94921_)
                        (let ((__tmp95199
                               (let ()
                                 (declare (not safe))
                                 (_recur94900_ _body94918_ _vars94903_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp95199))
                        (if (eq? 'splice _$e94921_)
                            (let* ((_body9492794938_ _body94918_)
                                   (_E9492994942_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9492794938_))))
                                   (_K9493094980_
                                    (lambda (_args94945_
                                             _iv94946_
                                             _hd94947_
                                             _depth94948_)
                                      (let* ((_targets94954_
                                              (map (lambda (_g9494994951_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg94898_
                                                        _g9494994951_
                                                        _vars94903_)))
                                                   _args94945_))
                                             (_fold-in94956_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args94945_)))
                                             (_fold-out94958_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args94960_
                                              (let ((__tmp95200
                                                     (cons _fold-out94958_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp95200
                                                 _fold-in94956_)))
                                             (_lambda-body94977_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _depth94948_ '1))
                                                  (let ((_r-args94968_
                                                         (map (lambda (_arg94962_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _arg94962_)))
                      _args94945_))
                (_r-vars94969_
                 (let ((__tmp95201
                        (lambda (_arg94964_ _var94965_ _r94966_)
                          (cons (cons (cdr _arg94964_) _var94965_) _r94966_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp95201
                    _vars94903_
                    _args94945_
                    _fold-in94956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp95202
                                                           (let ((__tmp95203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp95207
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _depth94948_ '1)))
                                (__tmp95204
                                 (let ((__tmp95205
                                        (let ((__tmp95206
                                               (cons 'var _fold-out94958_)))
                                          (declare (not safe))
                                          (cons __tmp95206 _r-args94968_))))
                                   (declare (not safe))
                                   (cons _hd94947_ __tmp95205))))
                            (declare (not safe))
                            (cons __tmp95207 __tmp95204))))
                     (declare (not safe))
                     (cons 'splice __tmp95203))))
              (declare (not safe))
              (_recur94900_ __tmp95202 _r-vars94969_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars94975_
                                                          (let ((__tmp95208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg94971_ _var94972_ _r94973_)
                           (cons (cons (cdr _arg94971_) _var94972_)
                                 _r94973_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp95208
                     _vars94903_
                     _args94945_
                     _fold-in94956_)))
                 (__tmp95209
                  (let ()
                    (declare (not safe))
                    (_recur94900_ _hd94947_ _hd-vars94975_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp95209
                                                     _fold-out94958_)))))
                                        (let ((__tmp95213
                                               (if (let ((__tmp95214
                                                          (length _targets94954_)))
                                                     (declare (not safe))
                                                     (##fx> __tmp95214 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets94954_))
                                                   '#!void))
                                              (__tmp95210
                                               (let ((__tmp95212
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args94960_
                                                         _lambda-body94977_)))
                                                     (__tmp95211
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur94900_
                                                         _iv94946_
                                                         _vars94903_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp95212
                                                  __tmp95211
                                                  _targets94954_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp95213
                                           __tmp95210))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9492794938_))
                                  (let ((_hd9493194983_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9492794938_)))
                                        (_tl9493294985_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9492794938_))))
                                    (let ((_depth94988_ _hd9493194983_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9493294985_))
                                          (let ((_hd9493394990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9493294985_)))
                                                (_tl9493494992_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9493294985_))))
                                            (let ((_hd94995_ _hd9493394990_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9493494992_))
                                                  (let ((_hd9493594997_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9493494992_)))
                                                        (_tl9493694999_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9493494992_))))
                                                    (let* ((_iv95002_
                                                            _hd9493594997_)
                                                           (_args95004_
                                                            _tl9493694999_))
                                                      (declare (not safe))
                                                      (_K9493094980_
                                                       _args95004_
                                                       _iv95002_
                                                       _hd94995_
                                                       _depth94988_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9492994942_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9492994942_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9492994942_))))
                            (if (eq? 'var _$e94921_)
                                _body94918_
                                (let ()
                                  (declare (not safe))
                                  (_BUG94895_ _e94902_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9490494911_))
                              (let ((_hd9490895009_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9490494911_)))
                                    (_tl9490995011_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9490494911_))))
                                (let* ((_tag95014_ _hd9490895009_)
                                       (_body95016_ _tl9490995011_))
                                  (declare (not safe))
                                  (_K9490795006_ _body95016_ _tag95014_)))
                              (let ()
                                (declare (not safe))
                                (_E9490694915_))))))))
                 (_parse94667_
                  (lambda (_e94708_)
                    (letrec ((_make-cons94710_
                              (lambda (_hd94885_ _tl94886_)
                                (let ((_g95215_ _hd94885_)
                                      (_g95217_ _tl94886_))
                                  (begin
                                    (let ((_g95216_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g95215_)
                                                 (##vector-length _g95215_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g95216_ 2)))
                                          (error "Context expects 2 values"
                                                 _g95216_)))
                                    (let ((_g95218_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g95217_)
                                                 (##vector-length _g95217_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g95218_ 2)))
                                          (error "Context expects 2 values"
                                                 _g95218_)))
                                    (let ((_hd-e94888_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95215_ 0)))
                                          (_hd-vars94889_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95215_ 1))))
                                      (let ((_tl-e94890_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g95217_ 0)))
                                            (_tl-vars94891_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g95217_ 1))))
                                        (values (let ((__tmp95219
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e94888_
                                                               _tl-e94890_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp95219))
                                                (append _hd-vars94889_
                                                        _tl-vars94891_))))))))
                             (_make-splice94711_
                              (lambda (_where94824_
                                       _depth94825_
                                       _hd94826_
                                       _tl94827_)
                                (let ((_g95220_ _hd94826_)
                                      (_g95222_ _tl94827_))
                                  (begin
                                    (let ((_g95221_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g95220_)
                                                 (##vector-length _g95220_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g95221_ 2)))
                                          (error "Context expects 2 values"
                                                 _g95221_)))
                                    (let ((_g95223_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g95222_)
                                                 (##vector-length _g95222_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g95223_ 2)))
                                          (error "Context expects 2 values"
                                                 _g95223_)))
                                    (let ((_hd-e94829_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95220_ 0)))
                                          (_hd-vars94830_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95220_ 1))))
                                      (let ((_tl-e94831_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g95222_ 0)))
                                            (_tl-vars94832_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g95222_ 1))))
                                        (let _lp94834_ ((_rest94836_
                                                         _hd-vars94830_)
                                                        (_targets94837_ '())
                                                        (_vars94838_
                                                         _tl-vars94832_))
                                          (let* ((_rest9483994849_ _rest94836_)
                                                 (_else9484194857_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets94837_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx94664_
                                                           _where94824_))
                                                        (values (let ((__tmp95224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp95225
                                      (let ((__tmp95226
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e94831_
                                                     _targets94837_))))
                                        (declare (not safe))
                                        (cons _hd-e94829_ __tmp95226))))
                                 (declare (not safe))
                                 (cons _depth94825_ __tmp95225))))
                          (declare (not safe))
                          (cons 'splice __tmp95224))
                        _vars94838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9484394866_
                                                  (lambda (_rest94860_
                                                           _hd-pat94861_
                                                           _hd-depth*94862_)
                                                    (let ((_hd-depth94864_
                                                           (fx- _hd-depth*94862_
                                                                _depth94825_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _hd-depth94864_))
                                                          (let ((__tmp95228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'ref _hd-pat94861_) _targets94837_))
                        (__tmp95227
                         (cons (cons _hd-depth94864_ _hd-pat94861_)
                               _vars94838_)))
                    (declare (not safe))
                    (_lp94834_ _rest94860_ __tmp95228 __tmp95227))
                  (if (let () (declare (not safe)) (##fxzero? _hd-depth94864_))
                      (let ((__tmp95229
                             (cons (cons 'pattern _hd-pat94861_)
                                   _targets94837_)))
                        (declare (not safe))
                        (_lp94834_ _rest94860_ __tmp95229 _vars94838_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx94664_
                         _where94824_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9483994849_))
                                                (let ((_hd9484494869_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9483994849_)))
                                                      (_tl9484594871_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9483994849_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9484494869_))
                                                      (let ((_hd9484694874_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9484494869_)))
                    (_tl9484794876_
                     (let () (declare (not safe)) (##cdr _hd9484494869_))))
                (let* ((_hd-depth*94879_ _hd9484694874_)
                       (_hd-pat94881_ _tl9484794876_)
                       (_rest94883_ _tl9484594871_))
                  (declare (not safe))
                  (_K9484394866_ _rest94883_ _hd-pat94881_ _hd-depth*94879_)))
              (let () (declare (not safe)) (_else9484194857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9484194857_)))))))))))
                             (_recur94712_
                              (lambda (_e94717_ _is-e?94718_)
                                (if (_is-e?94718_ _e94717_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx94664_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e94717_))
                                        (let* ((_pat94720_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e94717_)))
                                               (_depth94722_
                                                (##structure-ref
                                                 _pat94720_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth94722_)
                                              (values (cons 'ref _pat94720_)
                                                      (cons (cons _depth94722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pat94720_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _pat94720_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e94717_))
                                            (values (cons 'term _e94717_) '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e94717_))
                                                (let* ((_e9472494731_ _e94717_)
                                                       (_E9472694735_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9472494731_))))
                                                       (_E9472594814_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9472494731_))
                      (let ((_e9472794739_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9472494731_))))
                        (let ((_hd9472894742_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9472794739_)))
                              (_tl9472994744_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9472794739_))))
                          (let* ((_hd94747_ _hd9472894742_)
                                 (_rest94749_ _tl9472994744_))
                            (if '#t
                                (if (_is-e?94718_ _hd94747_)
                                    (let* ((_e9475094757_ _rest94749_)
                                           (_E9475294761_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx94664_
                                                 _e94717_))))
                                           (_E9475194775_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9475094757_))
                                                  (let ((_e9475394765_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9475094757_))))
                                                    (let ((_hd9475494768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9475394765_)))
                                                          (_tl9475594770_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9475394765_))))
                                                      (let ((_rest94773_
                                                             _hd9475494768_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9475594770_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur94712_ _rest94773_ false))
                        (let () (declare (not safe)) (_E9475294761_)))
                    (let () (declare (not safe)) (_E9475294761_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9475294761_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9475194775_)))
                                    (let _lp94779_ ((_rest94781_ _rest94749_)
                                                    (_depth94782_ '0))
                                      (let* ((_e9478394790_ _rest94781_)
                                             (_E9478594794_
                                              (lambda ()
                                                (if (fxpositive? _depth94782_)
                                                    (let ((__tmp95231
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur94712_
                                                              _hd94747_
                                                              _is-e?94718_)))
                                                          (__tmp95230
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur94712_
                                                              _rest94781_
                                                              _is-e?94718_))))
                                                      (declare (not safe))
                                                      (_make-splice94711_
                                                       _e94717_
                                                       _depth94782_
                                                       __tmp95231
                                                       __tmp95230))
                                                    (let ((__tmp95233
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur94712_
                                                              _hd94747_
                                                              _is-e?94718_)))
                                                          (__tmp95232
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur94712_
                                                              _rest94781_
                                                              _is-e?94718_))))
                                                      (declare (not safe))
                                                      (_make-cons94710_
                                                       __tmp95233
                                                       __tmp95232)))))
                                             (_E9478494810_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9478394790_))
                                                    (let ((_e9478694798_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9478394790_))))
                                                      (let ((_hd9478794801_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9478694798_)))
                    (_tl9478894803_
                     (let () (declare (not safe)) (##cdr _e9478694798_))))
                (let* ((_rest-hd94806_ _hd9478794801_)
                       (_rest-tl94808_ _tl9478894803_))
                  (if '#t
                      (if (_is-e?94718_ _rest-hd94806_)
                          (let ((__tmp95234
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _depth94782_ '1))))
                            (declare (not safe))
                            (_lp94779_ _rest-tl94808_ __tmp95234))
                          (if (fxpositive? _depth94782_)
                              (let ((__tmp95236
                                     (let ()
                                       (declare (not safe))
                                       (_recur94712_ _hd94747_ _is-e?94718_)))
                                    (__tmp95235
                                     (let ()
                                       (declare (not safe))
                                       (_recur94712_
                                        _rest94781_
                                        _is-e?94718_))))
                                (declare (not safe))
                                (_make-splice94711_
                                 _e94717_
                                 _depth94782_
                                 __tmp95236
                                 __tmp95235))
                              (let ((__tmp95238
                                     (let ()
                                       (declare (not safe))
                                       (_recur94712_ _hd94747_ _is-e?94718_)))
                                    (__tmp95237
                                     (let ()
                                       (declare (not safe))
                                       (_recur94712_
                                        _rest94781_
                                        _is-e?94718_))))
                                (declare (not safe))
                                (_make-cons94710_ __tmp95238 __tmp95237))))
                      (let () (declare (not safe)) (_E9478594794_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9478594794_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9478494810_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9472694735_))))))
                      (let () (declare (not safe)) (_E9472694735_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9472594814_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e94717_))
                                                    (let ((_g95239_
                                                           (let ((__tmp95241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e94717_)))))
                     (declare (not safe))
                     (_recur94712_ __tmp95241 _is-e?94718_))))
              (begin
                (let ((_g95240_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g95239_)
                             (##vector-length _g95239_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g95240_ 2)))
                      (error "Context expects 2 values" _g95240_)))
                (let ((_e94818_
                       (let () (declare (not safe)) (##vector-ref _g95239_ 0)))
                      (_vars94819_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g95239_ 1))))
                  (values (cons 'vector _e94818_) _vars94819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e94717_))
                                                        (let ((_g95242_
                                                               (let ((__tmp95244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e94717_)))))
                         (declare (not safe))
                         (_recur94712_ __tmp95244 _is-e?94718_))))
                  (begin
                    (let ((_g95243_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g95242_)
                                 (##vector-length _g95242_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g95243_ 2)))
                          (error "Context expects 2 values" _g95243_)))
                    (let ((_e94821_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g95242_ 0)))
                          (_vars94822_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g95242_ 1))))
                      (values (cons 'box _e94821_) _vars94822_))))
                (values (cons 'datum _e94717_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g95245_
                             (let ()
                               (declare (not safe))
                               (_recur94712_ _e94708_ gx#ellipsis?))))
                        (begin
                          (let ((_g95246_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g95245_)
                                       (##vector-length _g95245_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g95246_ 2)))
                                (error "Context expects 2 values" _g95246_)))
                          (let ((_tree94714_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g95245_ 0)))
                                (_vars94715_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g95245_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars94715_))
                                _tree94714_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx94664_
                                   _vars94715_))))))))))
          (let* ((_e9466894678_ _stx94664_)
                 (_E9467094682_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx94664_))))
                 (_E9466994704_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9466894678_))
                        (let ((_e9467194686_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9466894678_))))
                          (let ((_hd9467294689_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9467194686_)))
                                (_tl9467394691_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9467194686_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9467394691_))
                                (let ((_e9467494694_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9467394691_))))
                                  (let ((_hd9467594697_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9467494694_)))
                                        (_tl9467694699_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9467494694_))))
                                    (let ((_form94702_ _hd9467594697_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9467694699_))
                                          (if '#t
                                              (let ((__tmp95248
                                                     (let ((__tmp95249
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse94667_
                                                               _form94702_))))
                                                       (declare (not safe))
                                                       (_generate94666_
                                                        __tmp95249)))
                                                    (__tmp95247
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx94664_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp95248
                                                 __tmp95247))
                                              (let ()
                                                (declare (not safe))
                                                (_E9467094682_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9467094682_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9467094682_)))))
                        (let () (declare (not safe)) (_E9467094682_))))))
            (let () (declare (not safe)) (_E9466994704_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx93928_ _identifier=?93929_ _unwrap-e93930_ _wrap-e93931_)
        (letrec ((_generate-bindings93933_
                  (lambda (_target94528_
                           _ids94529_
                           _clauses94530_
                           _clause-ids94531_
                           _E94532_)
                    (letrec ((_generate194534_
                              (lambda (_clause94631_ _clause-id94632_ _E94633_)
                                (cons (cons _clause-id94632_ '())
                                      (cons (let ((__tmp95251
                                                   (cons _target94528_ '()))
                                                  (__tmp95250
                                                   (let ()
                                                     (declare (not safe))
                                                     (_generate-clause93935_
                                                      _target94528_
                                                      _ids94529_
                                                      _clause94631_
                                                      _E94633_))))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp95251
                                               __tmp95250))
                                            '())))))
                      (let _lp94536_ ((_rest94538_ _clauses94530_)
                                      (_rest-ids94539_ _clause-ids94531_)
                                      (_bindings94540_ '()))
                        (let* ((_rest9454194549_ _rest94538_)
                               (_else9454394557_ (lambda () _bindings94540_))
                               (_K9454594619_
                                (lambda (_rest94560_ _clause94561_)
                                  (let* ((_rest-ids9456294569_ _rest-ids94539_)
                                         (_E9456494573_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9456294569_))))
                                         (_K9456594607_
                                          (lambda (_rest-ids94576_
                                                   _clause-id94577_)
                                            (let* ((_rest-ids9457894586_
                                                    _rest-ids94576_)
                                                   (_else9458094594_
                                                    (lambda ()
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate194534_
                                                               _clause94561_
                                                               _clause-id94577_
                                                               _E94532_))
                                                            _bindings94540_)))
                                                   (_K9458294599_
                                                    (lambda (_next-clause-id94597_)
                                                      (let ((__tmp95252
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (_generate194534_
                              _clause94561_
                              _clause-id94577_
                              _next-clause-id94597_))
                           _bindings94540_)))
                (declare (not safe))
                (_lp94536_ _rest94560_ _rest-ids94576_ __tmp95252)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9457894586_))
                                                  (let* ((_hd9458394602_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9457894586_)))
                                                         (_next-clause-id94605_
                                                          _hd9458394602_))
                                                    (declare (not safe))
                                                    (_K9458294599_
                                                     _next-clause-id94605_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9458094594_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9456294569_))
                                        (let ((_hd9456694610_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9456294569_)))
                                              (_tl9456794612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9456294569_))))
                                          (let* ((_clause-id94615_
                                                  _hd9456694610_)
                                                 (_rest-ids94617_
                                                  _tl9456794612_))
                                            (declare (not safe))
                                            (_K9456594607_
                                             _rest-ids94617_
                                             _clause-id94615_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9456494573_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9454194549_))
                              (let ((_hd9454694622_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9454194549_)))
                                    (_tl9454794624_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9454194549_))))
                                (let* ((_clause94627_ _hd9454694622_)
                                       (_rest94629_ _tl9454794624_))
                                  (declare (not safe))
                                  (_K9454594619_ _rest94629_ _clause94627_)))
                              (let ()
                                (declare (not safe))
                                (_else9454394557_))))))))
                 (_generate-body93934_
                  (lambda (_bindings94488_ _body94489_)
                    (let _recur94491_ ((_rest94493_ _bindings94488_))
                      (let* ((_rest9449494502_ _rest94493_)
                             (_else9449694510_ (lambda () _body94489_))
                             (_K9449894516_
                              (lambda (_rest94513_ _hd94514_)
                                (let ((__tmp95254 (cons _hd94514_ '()))
                                      (__tmp95253
                                       (let ()
                                         (declare (not safe))
                                         (_recur94491_ _rest94513_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp95254
                                   __tmp95253)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9449494502_))
                            (let ((_hd9449994519_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9449494502_)))
                                  (_tl9450094521_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9449494502_))))
                              (let* ((_hd94524_ _hd9449994519_)
                                     (_rest94526_ _tl9450094521_))
                                (declare (not safe))
                                (_K9449894516_ _rest94526_ _hd94524_)))
                            (let ()
                              (declare (not safe))
                              (_else9449694510_)))))))
                 (_generate-clause93935_
                  (lambda (_target94351_ _ids94352_ _clause94353_ _E94354_)
                    (letrec ((_generate194356_
                              (lambda (_hd94443_ _fender94444_ _body94445_)
                                (let ((_g95255_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause93937_
                                          _hd94443_
                                          _ids94352_))))
                                  (begin
                                    (let ((_g95256_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g95255_)
                                                 (##vector-length _g95255_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g95256_ 2)))
                                          (error "Context expects 2 values"
                                                 _g95256_)))
                                    (let ((_e94447_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95255_ 0)))
                                          (_mvars94448_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95255_ 1))))
                                      (let* ((_pvars94450_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars94448_))))
                                             (_E94452_
                                              (cons _E94354_
                                                    (cons _target94351_ '())))
                                             (_K94485_
                                              (let ((__tmp95257
                                                     (let ((__tmp95259
                                                            (map (lambda (_mvar94454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar94455_)
                           (let* ((_mvar9445694463_ _mvar94454_)
                                  (_E9445894467_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9445694463_))))
                                  (_K9445994473_
                                   (lambda (_depth94470_ _id94471_)
                                     (cons _id94471_
                                           (cons (let ((__tmp95261
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _id94471_)))
                                                       (__tmp95260
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _pvar94455_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp95261
                                                    __tmp95260
                                                    _depth94470_))
                                                 '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9445694463_))
                                 (let ((_hd9446094476_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9445694463_)))
                                       (_tl9446194478_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9445694463_))))
                                   (let* ((_id94481_ _hd9446094476_)
                                          (_depth94483_ _tl9446194478_))
                                     (declare (not safe))
                                     (_K9445994473_ _depth94483_ _id94481_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9445894467_)))))
                         _mvars94448_
                         _pvars94450_))
                   (__tmp95258
                    (if (let () (declare (not safe)) (eq? _fender94444_ '#t))
                        _body94445_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender94444_
                           _body94445_
                           _E94452_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp95259 __tmp95258))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars94450_
                                                 __tmp95257))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match93936_
                                           _hd94443_
                                           _target94351_
                                           _e94447_
                                           _mvars94448_
                                           _K94485_
                                           _E94452_)))))))))
                      (let* ((_e9435794377_ _clause94353_)
                             (_E9436694381_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9435794377_))))
                             (_E9435994415_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9435794377_))
                                    (let ((_e9436794385_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9435794377_))))
                                      (let ((_hd9436894388_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9436794385_)))
                                            (_tl9436994390_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9436794385_))))
                                        (let ((_hd94393_ _hd9436894388_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9436994390_))
                                              (let ((_e9437094395_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9436994390_))))
                                                (let ((_hd9437194398_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9437094395_)))
                                                      (_tl9437294400_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9437094395_))))
                                                  (let ((_fender94403_
                                                         _hd9437194398_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9437294400_))
                                                        (let ((_e9437394405_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9437294400_))))
                  (let ((_hd9437494408_
                         (let () (declare (not safe)) (##car _e9437394405_)))
                        (_tl9437594410_
                         (let () (declare (not safe)) (##cdr _e9437394405_))))
                    (let ((_body94413_ _hd9437494408_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9437594410_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate194356_
                                 _hd94393_
                                 _fender94403_
                                 _body94413_))
                              (let () (declare (not safe)) (_E9436694381_)))
                          (let () (declare (not safe)) (_E9436694381_))))))
                (let () (declare (not safe)) (_E9436694381_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9436694381_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9436694381_)))))
                             (_E9435894439_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9435794377_))
                                    (let ((_e9436094419_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9435794377_))))
                                      (let ((_hd9436194422_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9436094419_)))
                                            (_tl9436294424_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9436094419_))))
                                        (let ((_hd94427_ _hd9436194422_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9436294424_))
                                              (let ((_e9436394429_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9436294424_))))
                                                (let ((_hd9436494432_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9436394429_)))
                                                      (_tl9436594434_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9436394429_))))
                                                  (let ((_body94437_
                                                         _hd9436494432_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9436594434_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate194356_
                                                               _hd94427_
                                                               '#t
                                                               _body94437_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9435994415_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9435994415_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9435994415_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9435994415_))))))
                        (let () (declare (not safe)) (_E9435894439_))))))
                 (_generate-match93936_
                  (lambda (_where94100_
                           _target94101_
                           _hd94102_
                           _mvars94103_
                           _K94104_
                           _E94105_)
                    (letrec ((_BUG94107_
                              (lambda (_q94349_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx93928_
                                         _hd94102_
                                         _q94349_))))
                             (_recur94108_
                              (lambda (_e94199_
                                       _vars94200_
                                       _target94201_
                                       _E94202_
                                       _k94203_)
                                (let* ((_e9420494211_ _e94199_)
                                       (_E9420694215_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9420494211_))))
                                       (_K9420794337_
                                        (lambda (_body94218_ _tag94219_)
                                          (let ((_$e94221_ _tag94219_))
                                            (if (eq? 'any _$e94221_)
                                                (_k94203_ _vars94200_)
                                                (if (eq? 'id _$e94221_)
                                                    (let ((__tmp95266
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target94201_)))
                                                          (__tmp95262
                                                           (let ((__tmp95264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp95265
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e93931_ _body94218_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?93929_
                             __tmp95265
                             _target94201_)))
                         (__tmp95263 (_k94203_ _vars94200_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp95264 __tmp95263 _E94202_))))
              (declare (not safe))
              (gx#core-list 'if __tmp95266 __tmp95262 _E94202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _$e94221_)
                                                        (_k94203_
                                                         (cons (cons _body94218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target94201_)
                       _vars94200_))
                (if (eq? 'cons _$e94221_)
                    (let ((_$e94224_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd94225_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl94226_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp95273
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target94201_)))
                            (__tmp95267
                             (let ((__tmp95272
                                    (cons (cons (cons _$e94224_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _unwrap-e93930_
                                                         _target94201_))
                                                      '()))
                                          '()))
                                   (__tmp95268
                                    (let ((__tmp95271
                                           (cons (cons (cons _$hd94225_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _$e94224_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _$tl94226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _$e94224_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp95269
                                           (let* ((_body9422794234_
                                                   _body94218_)
                                                  (_E9422994238_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9422794234_))))
                                                  (_K9423094246_
                                                   (lambda (_tl94241_
                                                            _hd94242_)
                                                     (let ((__tmp95270
                                                            (lambda (_vars94244_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur94108_
                         _tl94241_
                         _vars94244_
                         _$tl94226_
                         _E94202_
                         _k94203_)))))
               (declare (not safe))
               (_recur94108_
                _hd94242_
                _vars94200_
                _$hd94225_
                _E94202_
                __tmp95270)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9422794234_))
                                                 (let ((_hd9423194249_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9422794234_)))
                                                       (_tl9423294251_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9422794234_))))
                                                   (let* ((_hd94254_
                                                           _hd9423194249_)
                                                          (_tl94256_
                                                           _tl9423294251_))
                                                     (declare (not safe))
                                                     (_K9423094246_
                                                      _tl94256_
                                                      _hd94254_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9422994238_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp95271
                                       __tmp95269))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp95272
                                __tmp95268))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp95273 __tmp95267 _E94202_)))
                    (if (eq? 'splice _$e94221_)
                        (let* ((_body9425794264_ _body94218_)
                               (_E9425994268_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9425794264_))))
                               (_K9426094319_
                                (lambda (_tl94271_ _hd94272_)
                                  (let* ((_rlen94274_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen94109_ _tl94271_)))
                                         (_$target94276_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd94278_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl94280_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp94282_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e94284_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd94286_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl94288_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars94290_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars94110_ _hd94272_)))
                                         (_lvars94292_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars94290_)))
                                         (_tlvars94294_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars94290_)))
                                         (_linit94298_
                                          (map (lambda (_var94296_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars94292_)))
                                    (letrec ((_make-loop94301_
                                              (lambda (_vars94305_)
                                                (let ((__tmp95276
                                                       (cons (cons (cons _$lp94282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp95292
                                        (cons _$hd94278_ _lvars94292_))
                                       (__tmp95277
                                        (let ((__tmp95291
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _$hd94278_)))
                                              (__tmp95282
                                               (let ((__tmp95290
                                                      (cons (cons (cons _$lp-e94284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list _unwrap-e93930_ _$hd94278_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp95283
                                                      (let ((__tmp95289
                                                             (cons (cons (cons _$lp-hd94286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _$lp-e94284_))
                                       '()))
                           (cons (cons (cons _$lp-tl94288_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _$lp-e94284_))
                                             '()))
                                 '())))
                    (__tmp95284
                     (let ((__tmp95285
                            (lambda (_hdvars94307_)
                              (let ((__tmp95286
                                     (let ((__tmp95287
                                            (map (lambda (_svar94309_
                                                          _lvar94310_)
                                                   (let ((__tmp95288
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__agetq _svar94309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hdvars94307_
                             _BUG94107_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'cons
                                                      __tmp95288
                                                      _lvar94310_)))
                                                 _svars94290_
                                                 _lvars94292_)))
                                       (declare (not safe))
                                       (cons _$lp-tl94288_ __tmp95287))))
                                (declare (not safe))
                                (cons _$lp94282_ __tmp95286)))))
                       (declare (not safe))
                       (_recur94108_
                        _hd94272_
                        '()
                        _$lp-hd94286_
                        _E94202_
                        __tmp95285))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp95289 __tmp95284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp95290
                                                  __tmp95283)))
                                              (__tmp95278
                                               (let ((__tmp95281
                                                      (map (lambda (_lvar94312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tlvar94313_)
                     (cons (cons _tlvar94313_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _lvar94312_))
                                 '())))
                   _lvars94292_
                   _tlvars94294_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp95279
                                                      (_k94203_
                                                       (let ((__tmp95280
                                                              (lambda (_svar94315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar94316_
                               _r94317_)
                        (cons (cons _svar94315_ _tlvar94316_) _r94317_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp95280
                  _vars94305_
                  _svars94290_
                  _tlvars94294_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp95281
                                                  __tmp95279))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp95291
                                           __tmp95282
                                           __tmp95278))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp95292
                                    __tmp95277))
                                 '()))
                     '()))
              (__tmp95274
               (let ((__tmp95275
                      (let ()
                        (declare (not safe))
                        (cons _$target94276_ _linit94298_))))
                 (declare (not safe))
                 (cons _$lp94282_ __tmp95275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp95276
                                                   __tmp95274)))))
                                      (let ((_body94303_
                                             (let ((__tmp95294
                                                    (cons (cons (cons _$target94276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _$tl94280_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _target94201_
                                 _rlen94274_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp95293
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur94108_
                                                       _tl94271_
                                                       _vars94200_
                                                       _$tl94280_
                                                       _E94202_
                                                       _make-loop94301_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp95294
                                                __tmp95293))))
                                        (let ((__tmp95298
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target94201_)))
                                              (__tmp95295
                                               (if (zero? _rlen94274_)
                                                   _body94303_
                                                   (let ((__tmp95296
                                                          (let ((__tmp95297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target94201_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp95297 _rlen94274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp95296
                                                      _body94303_
                                                      _E94202_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp95298
                                           __tmp95295
                                           _E94202_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9425794264_))
                              (let ((_hd9426194322_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9425794264_)))
                                    (_tl9426294324_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9425794264_))))
                                (let* ((_hd94327_ _hd9426194322_)
                                       (_tl94329_ _tl9426294324_))
                                  (declare (not safe))
                                  (_K9426094319_ _tl94329_ _hd94327_)))
                              (let () (declare (not safe)) (_E9425994268_))))
                        (if (eq? 'null _$e94221_)
                            (let ((__tmp95300
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target94201_)))
                                  (__tmp95299 (_k94203_ _vars94200_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp95300
                               __tmp95299
                               _E94202_))
                            (if (eq? 'vector _$e94221_)
                                (let ((_$e94331_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp95305
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target94201_)))
                                        (__tmp95301
                                         (let ((__tmp95303
                                                (cons (cons (cons _$e94331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp95304
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _unwrap-e93930_
                                    _target94201_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp95304))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp95302
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur94108_
                                                   _body94218_
                                                   _vars94200_
                                                   _$e94331_
                                                   _E94202_
                                                   _k94203_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp95303
                                            __tmp95302))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp95305
                                     __tmp95301
                                     _E94202_)))
                                (if (eq? 'box _$e94221_)
                                    (let ((_$e94333_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp95310
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target94201_)))
                                            (__tmp95306
                                             (let ((__tmp95308
                                                    (cons (cons (cons _$e94333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp95309
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _unwrap-e93930_
                                        _target94201_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp95309))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp95307
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur94108_
                                                       _body94218_
                                                       _vars94200_
                                                       _$e94333_
                                                       _E94202_
                                                       _k94203_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp95308
                                                __tmp95307))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp95310
                                         __tmp95306
                                         _E94202_)))
                                    (if (eq? 'datum _$e94221_)
                                        (let ((_$e94335_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp95316
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target94201_)))
                                                (__tmp95311
                                                 (let ((__tmp95315
                                                        (cons (cons (cons _$e94335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _target94201_))
                                  '()))
                      '()))
               (__tmp95312
                (let ((__tmp95314
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e94335_ _body94218_)))
                      (__tmp95313 (_k94203_ _vars94200_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp95314 __tmp95313 _E94202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp95315
                                                    __tmp95312))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp95316
                                             __tmp95311
                                             _E94202_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG94107_ _e94199_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9420494211_))
                                      (let ((_hd9420894340_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9420494211_)))
                                            (_tl9420994342_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9420494211_))))
                                        (let* ((_tag94345_ _hd9420894340_)
                                               (_body94347_ _tl9420994342_))
                                          (declare (not safe))
                                          (_K9420794337_
                                           _body94347_
                                           _tag94345_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9420694215_))))))
                             (_splice-rlen94109_
                              (lambda (_e94161_)
                                (let _lp94163_ ((_e94165_ _e94161_)
                                                (_n94166_ '0))
                                  (let* ((_e9416794174_ _e94165_)
                                         (_E9416994178_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9416794174_))))
                                         (_K9417094187_
                                          (lambda (_body94181_ _tag94182_)
                                            (let ((_$e94184_ _tag94182_))
                                              (if (eq? 'splice _$e94184_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx93928_
                                                     _where94100_))
                                                  (if (eq? 'cons _$e94184_)
                                                      (let ((__tmp95318
                                                             (cdr _body94181_))
                                                            (__tmp95317
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx+ _n94166_ '1))))
                (declare (not safe))
                (_lp94163_ __tmp95318 __tmp95317))
              _n94166_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9416794174_))
                                        (let ((_hd9417194190_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9416794174_)))
                                              (_tl9417294192_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9416794174_))))
                                          (let* ((_tag94195_ _hd9417194190_)
                                                 (_body94197_ _tl9417294192_))
                                            (declare (not safe))
                                            (_K9417094187_
                                             _body94197_
                                             _tag94195_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9416994178_)))))))
                             (_splice-vars94110_
                              (lambda (_e94117_)
                                (let _recur94119_ ((_e94121_ _e94117_)
                                                   (_vars94122_ '()))
                                  (let* ((_e9412394130_ _e94121_)
                                         (_E9412594134_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9412394130_))))
                                         (_K9412694149_
                                          (lambda (_body94137_ _tag94138_)
                                            (let ((_$e94140_ _tag94138_))
                                              (if (eq? 'var _$e94140_)
                                                  (cons _body94137_
                                                        _vars94122_)
                                                  (if (or (eq? 'cons _$e94140_)
                                                          (eq? 'splice
                                                               _$e94140_))
                                                      (let ((__tmp95321
                                                             (cdr _body94137_))
                                                            (__tmp95319
                                                             (let ((__tmp95320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (car _body94137_)))
                       (declare (not safe))
                       (_recur94119_ __tmp95320 _vars94122_))))
                (declare (not safe))
                (_recur94119_ __tmp95321 __tmp95319))
              (if (or (eq? 'vector _$e94140_) (eq? 'box _$e94140_))
                  (let ()
                    (declare (not safe))
                    (_recur94119_ _body94137_ _vars94122_))
                  _vars94122_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9412394130_))
                                        (let ((_hd9412794152_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9412394130_)))
                                              (_tl9412894154_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9412394130_))))
                                          (let* ((_tag94157_ _hd9412794152_)
                                                 (_body94159_ _tl9412894154_))
                                            (declare (not safe))
                                            (_K9412694149_
                                             _body94159_
                                             _tag94157_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9412594134_)))))))
                             (_make-body94111_
                              (lambda (_vars94113_)
                                (cons _K94104_
                                      (map (lambda (_mvar94115_)
                                             (let ((__tmp95322
                                                    (car _mvar94115_)))
                                               (declare (not safe))
                                               (__agetq __tmp95322
                                                        _vars94113_
                                                        _BUG94107_)))
                                           _mvars94103_)))))
                      (let ()
                        (declare (not safe))
                        (_recur94108_
                         _hd94102_
                         '()
                         _target94101_
                         _E94105_
                         _make-body94111_)))))
                 (_parse-clause93937_
                  (lambda (_hd94006_ _ids94007_)
                    (let _recur94009_ ((_e94011_ _hd94006_)
                                       (_vars94012_ '())
                                       (_depth94013_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e94011_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e94011_))
                              (values '(any) _vars94012_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e94011_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx93928_
                                     _hd94006_))
                                  (if (let ((__tmp95323
                                             (lambda (_id94015_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e94011_
                                                  _id94015_)))))
                                        (declare (not safe))
                                        (__find __tmp95323 _ids94007_))
                                      (values (cons 'id _e94011_) _vars94012_)
                                      (if (let ((__tmp95324
                                                 (lambda (_var94017_)
                                                   (let ((__tmp95325
                                                          (car _var94017_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e94011_
                                                      __tmp95325)))))
                                            (declare (not safe))
                                            (__find __tmp95324 _vars94012_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx93928_
                                             _e94011_))
                                          (values (cons 'var _e94011_)
                                                  (cons (cons _e94011_
                                                              _depth94013_)
                                                        _vars94012_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e94011_))
                              (let* ((_e9401894025_ _e94011_)
                                     (_E9402094029_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9401894025_))))
                                     (_E9401994090_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9401894025_))
                                            (let ((_e9402194033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9401894025_))))
                                              (let ((_hd9402294036_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9402194033_)))
                                                    (_tl9402394038_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9402194033_))))
                                                (let* ((_hd94041_
                                                        _hd9402294036_)
                                                       (_rest94043_
                                                        _tl9402394038_))
                                                  (if '#t
                                                      (let* ((_make-pair94058_
                                                              (lambda (_tag94045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd94046_
                               _tl94047_)
                        (let* ((_hd-depth94049_
                                (if (eq? _tag94045_ 'splice)
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _depth94013_ '1))
                                    _depth94013_))
                               (_g95326_
                                (let ()
                                  (declare (not safe))
                                  (_recur94009_
                                   _hd94046_
                                   _vars94012_
                                   _hd-depth94049_))))
                          (begin
                            (let ((_g95327_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g95326_)
                                         (##vector-length _g95326_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g95327_ 2)))
                                  (error "Context expects 2 values" _g95327_)))
                            (let ((_hd94051_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g95326_ 0)))
                                  (_vars94052_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g95326_ 1))))
                              (let ((_g95328_
                                     (let ()
                                       (declare (not safe))
                                       (_recur94009_
                                        _tl94047_
                                        _vars94052_
                                        _depth94013_))))
                                (begin
                                  (let ((_g95329_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g95328_)
                                               (##vector-length _g95328_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g95329_ 2)))
                                        (error "Context expects 2 values"
                                               _g95329_)))
                                  (let ((_tl94054_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g95328_ 0)))
                                        (_vars94055_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g95328_ 1))))
                                    (let ()
                                      (values (let ((__tmp95330
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd94051_
                                                             _tl94054_))))
                                                (declare (not safe))
                                                (cons _tag94045_ __tmp95330))
                                              _vars94055_))))))))))
                     (_e9405994066_ _rest94043_)
                     (_E9406194070_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair94058_ 'cons _hd94041_ _rest94043_))))
                     (_E9406094086_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9405994066_))
                            (let ((_e9406294074_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9405994066_))))
                              (let ((_hd9406394077_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9406294074_)))
                                    (_tl9406494079_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9406294074_))))
                                (let* ((_rest-hd94082_ _hd9406394077_)
                                       (_rest-tl94084_ _tl9406494079_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd94082_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair94058_
                                             'splice
                                             _hd94041_
                                             _rest-tl94084_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair94058_
                                             'cons
                                             _hd94041_
                                             _rest94043_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9406194070_))))))
                            (let () (declare (not safe)) (_E9406194070_))))))
                (let () (declare (not safe)) (_E9406094086_)))
              (let () (declare (not safe)) (_E9402094029_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9402094029_))))))
                                (let () (declare (not safe)) (_E9401994090_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e94011_))
                                  (values '(null) _vars94012_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e94011_))
                                      (let ((_g95331_
                                             (let ((__tmp95333
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e94011_)))))
                                               (declare (not safe))
                                               (_recur94009_
                                                __tmp95333
                                                _vars94012_
                                                _depth94013_))))
                                        (begin
                                          (let ((_g95332_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g95331_)
                                                       (##vector-length
                                                        _g95331_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g95332_ 2)))
                                                (error "Context expects 2 values"
                                                       _g95332_)))
                                          (let ((_e94094_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g95331_ 0)))
                                                (_vars94095_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g95331_ 1))))
                                            (values (cons 'vector _e94094_)
                                                    _vars94095_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e94011_))
                                          (let ((_g95334_
                                                 (let ((__tmp95336
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e94011_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur94009_
                                                    __tmp95336
                                                    _vars94012_
                                                    _depth94013_))))
                                            (begin
                                              (let ((_g95335_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g95334_)
                                                           (##vector-length
                                                            _g95334_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g95335_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g95335_)))
                                              (let ((_e94097_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g95334_
                                                        0)))
                                                    (_vars94098_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g95334_
                                                        1))))
                                                (values (cons 'box _e94097_)
                                                        _vars94098_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e94011_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _e94011_)))
                                                      _vars94012_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx93928_
                                                 _e94011_))))))))))))
          (let* ((_e9393893951_ _stx93928_)
                 (_E9394093955_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9393893951_))))
                 (_E9393994002_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9393893951_))
                        (let ((_e9394193959_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9393893951_))))
                          (let ((_hd9394293962_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9394193959_)))
                                (_tl9394393964_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9394193959_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9394393964_))
                                (let ((_e9394493967_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9394393964_))))
                                  (let ((_hd9394593970_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9394493967_)))
                                        (_tl9394693972_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9394493967_))))
                                    (let ((_expr93975_ _hd9394593970_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9394693972_))
                                          (let ((_e9394793977_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9394693972_))))
                                            (let ((_hd9394893980_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9394793977_)))
                                                  (_tl9394993982_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9394793977_))))
                                              (let* ((_ids93985_
                                                      _hd9394893980_)
                                                     (_clauses93987_
                                                      _tl9394993982_))
                                                (if '#t
                                                    (if (let ((__tmp95337
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids93985_))))
                  (declare (not safe))
                  (not __tmp95337))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx93928_
                   _ids93985_))
                (if (let ((__tmp95338
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses93987_))))
                      (declare (not safe))
                      (not __tmp95338))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx93928_))
                    (let* ((_ids93989_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids93985_)))
                           (_clauses93991_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses93987_)))
                           (_clause-ids93993_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses93991_)))
                           (_E93995_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target93997_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first93999_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses93991_))
                                _E93995_
                                (car _clause-ids93993_))))
                      (let ((__tmp95340
                             (let ((__tmp95341
                                    (let ((__tmp95343
                                           (let ((__tmp95347
                                                  (cons (cons (cons _E93995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp95349 (cons _target93997_ '()))
                                  (__tmp95348
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _target93997_))))
                              (declare (not safe))
                              (gx#core-list 'lambda% __tmp95349 __tmp95348))
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp95344
                                                  (let ((__tmp95346
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings93933_
                                                            _target93997_
                                                            _ids93989_
                                                            _clauses93991_
                                                            _clause-ids93993_
                                                            _E93995_)))
                                                        (__tmp95345
                                                         (cons _first93999_
                                                               (cons _expr93975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body93934_
                                                     __tmp95346
                                                     __tmp95345))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp95347
                                              __tmp95344)))
                                          (__tmp95342
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx93928_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp95343
                                       __tmp95342))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp95341)))
                            (__tmp95339
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx93928_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp95340 __tmp95339)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9394093955_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9394093955_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9394093955_)))))
                        (let () (declare (not safe)) (_E9394093955_))))))
            (let () (declare (not safe)) (_E9393994002_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx94638_)
        (let* ((_identifier=?94640_ 'free-identifier=?)
               (_unwrap-e94642_ 'syntax-e)
               (_wrap-e94644_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx94638_
           _identifier=?94640_
           _unwrap-e94642_
           _wrap-e94644_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx94646_ _identifier=?94647_)
        (let* ((_unwrap-e94649_ 'syntax-e) (_wrap-e94651_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx94646_
           _identifier=?94647_
           _unwrap-e94649_
           _wrap-e94651_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx94653_ _identifier=?94654_ _unwrap-e94655_)
        (let ((_wrap-e94657_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx94653_
           _identifier=?94654_
           _unwrap-e94655_
           _wrap-e94657_))))
    (define gx#macro-expand-syntax-case
      (lambda _g95351_
        (let ((_g95350_ (let () (declare (not safe)) (##length _g95351_))))
          (cond ((let () (declare (not safe)) (##fx= _g95350_ 1))
                 (apply (lambda (_stx94638_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx94638_)))
                        _g95351_))
                ((let () (declare (not safe)) (##fx= _g95350_ 2))
                 (apply (lambda (_stx94646_ _identifier=?94647_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx94646_
                             _identifier=?94647_)))
                        _g95351_))
                ((let () (declare (not safe)) (##fx= _g95350_ 3))
                 (apply (lambda (_stx94653_
                                 _identifier=?94654_
                                 _unwrap-e94655_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx94653_
                             _identifier=?94654_
                             _unwrap-e94655_)))
                        _g95351_))
                ((let () (declare (not safe)) (##fx= _g95350_ 4))
                 (apply (lambda (_stx94659_
                                 _identifier=?94660_
                                 _unwrap-e94661_
                                 _wrap-e94662_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx94659_
                             _identifier=?94660_
                             _unwrap-e94661_
                             _wrap-e94662_)))
                        _g95351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g95351_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx93925_)
        (if (let () (declare (not safe)) (gx#identifier? _stx93925_))
            (let ((__tmp95352
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx93925_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp95352 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd93883_ . _rest93884_)
        (let ((_len93886_ (length _hd93883_)))
          (let _lp93888_ ((_rest93890_ _rest93884_))
            (let* ((_rest9389193899_ _rest93890_)
                   (_else9389393907_ (lambda () '#!void))
                   (_K9389593913_
                    (lambda (_rest93910_ _hd93911_)
                      (if (let ((__tmp95353 (length _hd93911_)))
                            (declare (not safe))
                            (##fx= _len93886_ __tmp95353))
                          (let () (declare (not safe)) (_lp93888_ _rest93910_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd93911_))))))
              (if (let () (declare (not safe)) (##pair? _rest9389193899_))
                  (let ((_hd9389693916_
                         (let ()
                           (declare (not safe))
                           (##car _rest9389193899_)))
                        (_tl9389793918_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9389193899_))))
                    (let* ((_hd93921_ _hd9389693916_)
                           (_rest93923_ _tl9389793918_))
                      (declare (not safe))
                      (_K9389593913_ _rest93923_ _hd93921_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx93841_ _n93842_)
        (let _lp93844_ ((_rest93846_ _stx93841_) (_r93847_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest93846_))
              (let* ((_g9384893855_
                      (let () (declare (not safe)) (gx#syntax-e _rest93846_)))
                     (_E9385093859_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9384893855_))))
                     (_K9385193865_
                      (lambda (_rest93862_ _hd93863_)
                        (let ((__tmp95354 (cons _hd93863_ _r93847_)))
                          (declare (not safe))
                          (_lp93844_ _rest93862_ __tmp95354)))))
                (if (let () (declare (not safe)) (##pair? _g9384893855_))
                    (let ((_hd9385293868_
                           (let () (declare (not safe)) (##car _g9384893855_)))
                          (_tl9385393870_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9384893855_))))
                      (let* ((_hd93873_ _hd9385293868_)
                             (_rest93875_ _tl9385393870_))
                        (declare (not safe))
                        (_K9385193865_ _rest93875_ _hd93873_)))
                    (let () (declare (not safe)) (_E9385093859_))))
              (let _lp93877_ ((_n93879_ _n93842_)
                              (_l93880_ _r93847_)
                              (_r93881_ _rest93846_))
                (if (let () (declare (not safe)) (null? _l93880_))
                    (values _l93880_ _r93881_)
                    (if (fxpositive? _n93879_)
                        (let ((__tmp95357
                               (let ()
                                 (declare (not safe))
                                 (##fx- _n93879_ '1)))
                              (__tmp95356 (cdr _l93880_))
                              (__tmp95355 (cons (car _l93880_) _r93881_)))
                          (declare (not safe))
                          (_lp93877_ __tmp95357 __tmp95356 __tmp95355))
                        (values (reverse _l93880_) _r93881_))))))))))
