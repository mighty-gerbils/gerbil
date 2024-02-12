(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707772766)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp185023 (list gx#expander::t))
            (__tmp185021
             (let ((__tmp185022
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp185022 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp185023
         '(id depth)
         __tmp185021
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args180450_
        (apply make-instance gx#syntax-pattern::t _$args180450_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_self180447_ _stx180448_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx180448_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx179929_)
        (letrec ((_generate179931_
                  (lambda (_e180158_)
                    (letrec ((_BUG180160_
                              (lambda (_q180322_)
                                (error '"BUG: syntax; generate"
                                       _stx179929_
                                       _e180158_
                                       _q180322_)))
                             (_local-pattern-e180161_
                              (lambda (_pat180320_)
                                (let ((__tmp185024
                                       (##structure-ref
                                        _pat180320_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp185024))))
                             (_getvar180162_
                              (lambda (_q180317_ _vars180318_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q180317_
                                           _vars180318_
                                           _BUG180160_))))
                             (_getarg180163_
                              (lambda (_arg180283_ _vars180284_)
                                (let* ((_arg180285180292_ _arg180283_)
                                       (_E180287180296_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg180285180292_)))
                                       (_K180288180305_
                                        (lambda (_e180299_ _tag180300_)
                                          (let ((_$e180302_ _tag180300_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e180302_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar180162_
                                                   _e180299_
                                                   _vars180284_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e180302_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e180161_
                                                       _e180299_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG180160_
                                                       _arg180283_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg180285180292_))
                                      (let ((_hd180289180308_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg180285180292_)))
                                            (_tl180290180310_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg180285180292_))))
                                        (let* ((_tag180313_ _hd180289180308_)
                                               (_e180315_ _tl180290180310_))
                                          (declare (not safe))
                                          (_K180288180305_
                                           _e180315_
                                           _tag180313_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E180287180296_)))))))
                      (let _recur180165_ ((_e180167_ _e180158_)
                                          (_vars180168_ '()))
                        (let* ((_e180169180176_ _e180167_)
                               (_E180171180180_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e180169180176_)))
                               (_K180172180271_
                                (lambda (_body180183_ _tag180184_)
                                  (let ((_$e180186_ _tag180184_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e180186_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body180183_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e180186_))
                                            (let ((_id180189_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body180183_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id180189_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks180191_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id180189_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks180191_))
                                                        (let ((__tmp185052
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body180183_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp185052))
                (let ((__tmp185051
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body180183_)))
                      (__tmp185050
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body180183_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp185051
                   __tmp185050
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id180189_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body180183_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG180160_
                                                         _e180167_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e180186_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e180161_
                                                   _body180183_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e180186_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar180162_
                                                       _body180183_
                                                       _vars180168_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e180186_))
                                                        (let ((__tmp185048
                                                               (let ((__tmp185049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body180183_)))
                         (declare (not safe))
                         (_recur180165_ __tmp185049 _vars180168_)))
                      (__tmp185046
                       (let ((__tmp185047 (cdr _body180183_)))
                         (declare (not safe))
                         (_recur180165_ __tmp185047 _vars180168_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp185048 __tmp185046))
                (if (let () (declare (not safe)) (eq? 'vector _$e180186_))
                    (let ((__tmp185045
                           (let ()
                             (declare (not safe))
                             (_recur180165_ _body180183_ _vars180168_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp185045))
                    (if (let () (declare (not safe)) (eq? 'box _$e180186_))
                        (let ((__tmp185044
                               (let ()
                                 (declare (not safe))
                                 (_recur180165_ _body180183_ _vars180168_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp185044))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e180186_))
                            (let* ((_body180192180203_ _body180183_)
                                   (_E180194180207_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body180192180203_)))
                                   (_K180195180245_
                                    (lambda (_args180210_
                                             _iv180211_
                                             _hd180212_
                                             _depth180213_)
                                      (let* ((_targets180219_
                                              (map (lambda (_g180214180216_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg180163_
                                                        _g180214180216_
                                                        _vars180168_)))
                                                   _args180210_))
                                             (_fold-in180221_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args180210_)))
                                             (_fold-out180223_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args180225_
                                              (let ((__tmp185025
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out180223_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp185025
                                                        _fold-in180221_)))
                                             (_lambda-body180242_
                                              (if (fx> _depth180213_ '1)
                                                  (let ((_r-args180233_
                                                         (map (lambda (_arg180227_)
                                                                (let ((__tmp185030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg180227_)))
                          (declare (not safe))
                          (cons 'ref __tmp185030)))
                      _args180210_))
                (_r-vars180234_
                 (let ((__tmp185031
                        (lambda (_arg180229_ _var180230_ _r180231_)
                          (let ((__tmp185032
                                 (let ((__tmp185033 (cdr _arg180229_)))
                                   (declare (not safe))
                                   (cons __tmp185033 _var180230_))))
                            (declare (not safe))
                            (cons __tmp185032 _r180231_)))))
                   (declare (not safe))
                   (foldr2 __tmp185031
                           _vars180168_
                           _args180210_
                           _fold-in180221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp185034
                                                           (let ((__tmp185035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp185039
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth180213_ '1)))
                                (__tmp185036
                                 (let ((__tmp185037
                                        (let ((__tmp185038
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out180223_))))
                                          (declare (not safe))
                                          (cons __tmp185038 _r-args180233_))))
                                   (declare (not safe))
                                   (cons _hd180212_ __tmp185037))))
                            (declare (not safe))
                            (cons __tmp185039 __tmp185036))))
                     (declare (not safe))
                     (cons 'splice __tmp185035))))
              (declare (not safe))
              (_recur180165_ __tmp185034 _r-vars180234_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars180240_
                                                          (let ((__tmp185026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg180236_ _var180237_ _r180238_)
                           (let ((__tmp185027
                                  (let ((__tmp185028 (cdr _arg180236_)))
                                    (declare (not safe))
                                    (cons __tmp185028 _var180237_))))
                             (declare (not safe))
                             (cons __tmp185027 _r180238_)))))
                    (declare (not safe))
                    (foldr2 __tmp185026
                            _vars180168_
                            _args180210_
                            _fold-in180221_)))
                 (__tmp185029
                  (let ()
                    (declare (not safe))
                    (_recur180165_ _hd180212_ _hd-vars180240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp185029
                                                     _fold-out180223_)))))
                                        (let ((__tmp185043
                                               (if (fx> (length _targets180219_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets180219_))
                                                   '#!void))
                                              (__tmp185040
                                               (let ((__tmp185042
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args180225_
                                                         _lambda-body180242_)))
                                                     (__tmp185041
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur180165_
                                                         _iv180211_
                                                         _vars180168_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp185042
                                                  __tmp185041
                                                  _targets180219_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp185043
                                           __tmp185040))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body180192180203_))
                                  (let ((_hd180196180248_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body180192180203_)))
                                        (_tl180197180250_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body180192180203_))))
                                    (let ((_depth180253_ _hd180196180248_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl180197180250_))
                                          (let ((_hd180198180255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl180197180250_)))
                                                (_tl180199180257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl180197180250_))))
                                            (let ((_hd180260_
                                                   _hd180198180255_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl180199180257_))
                                                  (let ((_hd180200180262_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl180199180257_)))
                                                        (_tl180201180264_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl180199180257_))))
                                                    (let* ((_iv180267_
                                                            _hd180200180262_)
                                                           (_args180269_
                                                            _tl180201180264_))
                                                      (declare (not safe))
                                                      (_K180195180245_
                                                       _args180269_
                                                       _iv180267_
                                                       _hd180260_
                                                       _depth180253_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E180194180207_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E180194180207_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E180194180207_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e180186_))
                                _body180183_
                                (let ()
                                  (declare (not safe))
                                  (_BUG180160_ _e180167_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e180169180176_))
                              (let ((_hd180173180274_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e180169180176_)))
                                    (_tl180174180276_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e180169180176_))))
                                (let* ((_tag180279_ _hd180173180274_)
                                       (_body180281_ _tl180174180276_))
                                  (declare (not safe))
                                  (_K180172180271_ _body180281_ _tag180279_)))
                              (let ()
                                (declare (not safe))
                                (_E180171180180_))))))))
                 (_parse179932_
                  (lambda (_e179973_)
                    (letrec ((_make-cons179975_
                              (lambda (_hd180150_ _tl180151_)
                                (let ((_g185053_ _hd180150_)
                                      (_g185055_ _tl180151_))
                                  (begin
                                    (let ((_g185054_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g185053_)
                                                 (##vector-length _g185053_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g185054_ 2)))
                                          (error "Context expects 2 values"
                                                 _g185054_)))
                                    (let ((_g185056_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g185055_)
                                                 (##vector-length _g185055_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g185056_ 2)))
                                          (error "Context expects 2 values"
                                                 _g185056_)))
                                    (let ((_hd-e180153_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g185053_ 0)))
                                          (_hd-vars180154_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g185053_ 1))))
                                      (let ((_tl-e180155_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g185055_ 0)))
                                            (_tl-vars180156_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g185055_ 1))))
                                        (values (let ((__tmp185057
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e180153_
                                                               _tl-e180155_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp185057))
                                                (append _hd-vars180154_
                                                        _tl-vars180156_))))))))
                             (_make-splice179976_
                              (lambda (_where180089_
                                       _depth180090_
                                       _hd180091_
                                       _tl180092_)
                                (let ((_g185058_ _hd180091_)
                                      (_g185060_ _tl180092_))
                                  (begin
                                    (let ((_g185059_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g185058_)
                                                 (##vector-length _g185058_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g185059_ 2)))
                                          (error "Context expects 2 values"
                                                 _g185059_)))
                                    (let ((_g185061_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g185060_)
                                                 (##vector-length _g185060_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g185061_ 2)))
                                          (error "Context expects 2 values"
                                                 _g185061_)))
                                    (let ((_hd-e180094_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g185058_ 0)))
                                          (_hd-vars180095_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g185058_ 1))))
                                      (let ((_tl-e180096_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g185060_ 0)))
                                            (_tl-vars180097_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g185060_ 1))))
                                        (let _lp180099_ ((_rest180101_
                                                          _hd-vars180095_)
                                                         (_targets180102_ '())
                                                         (_vars180103_
                                                          _tl-vars180097_))
                                          (let* ((_rest180104180114_
                                                  _rest180101_)
                                                 (_else180106180122_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets180102_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx179929_
                                                           _where180089_))
                                                        (values (let ((__tmp185062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp185063
                                      (let ((__tmp185064
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e180096_
                                                     _targets180102_))))
                                        (declare (not safe))
                                        (cons _hd-e180094_ __tmp185064))))
                                 (declare (not safe))
                                 (cons _depth180090_ __tmp185063))))
                          (declare (not safe))
                          (cons 'splice __tmp185062))
                        _vars180103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K180108180131_
                                                  (lambda (_rest180125_
                                                           _hd-pat180126_
                                                           _hd-depth*180127_)
                                                    (let ((_hd-depth180129_
                                                           (fx- _hd-depth*180127_
                                                                _depth180090_)))
                                                      (if (fxpositive?
                                                           _hd-depth180129_)
                                                          (let ((__tmp185069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp185070
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat180126_))))
                           (declare (not safe))
                           (cons __tmp185070 _targets180102_)))
                        (__tmp185067
                         (let ((__tmp185068
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth180129_ _hd-pat180126_))))
                           (declare (not safe))
                           (cons __tmp185068 _vars180103_))))
                    (declare (not safe))
                    (_lp180099_ _rest180125_ __tmp185069 __tmp185067))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth180129_))
                      (let ((__tmp185065
                             (let ((__tmp185066
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat180126_))))
                               (declare (not safe))
                               (cons __tmp185066 _targets180102_))))
                        (declare (not safe))
                        (_lp180099_ _rest180125_ __tmp185065 _vars180103_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx179929_
                         _where180089_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest180104180114_))
                                                (let ((_hd180109180134_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest180104180114_)))
                                                      (_tl180110180136_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest180104180114_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd180109180134_))
                                                      (let ((_hd180111180139_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd180109180134_)))
                    (_tl180112180141_
                     (let () (declare (not safe)) (##cdr _hd180109180134_))))
                (let* ((_hd-depth*180144_ _hd180111180139_)
                       (_hd-pat180146_ _tl180112180141_)
                       (_rest180148_ _tl180110180136_))
                  (declare (not safe))
                  (_K180108180131_
                   _rest180148_
                   _hd-pat180146_
                   _hd-depth*180144_)))
              (let () (declare (not safe)) (_else180106180122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else180106180122_)))))))))))
                             (_recur179977_
                              (lambda (_e179982_ _is-e?179983_)
                                (if (_is-e?179983_ _e179982_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx179929_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e179982_))
                                        (let* ((_pat179985_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e179982_)))
                                               (_depth179987_
                                                (##structure-ref
                                                 _pat179985_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth179987_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat179985_))
                                                      (let ((__tmp185086
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth179987_ _pat179985_))))
                (declare (not safe))
                (cons __tmp185086 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat179985_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e179982_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e179982_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e179982_))
                                                (let* ((_e179989179996_
                                                        _e179982_)
                                                       (_E179991180000_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e179989179996_))))
                                                       (_E179990180079_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e179989179996_))
                      (let ((_e179992180004_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e179989179996_))))
                        (let ((_hd179993180007_
                               (let ()
                                 (declare (not safe))
                                 (##car _e179992180004_)))
                              (_tl179994180009_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e179992180004_))))
                          (let* ((_hd180012_ _hd179993180007_)
                                 (_rest180014_ _tl179994180009_))
                            (if '#t
                                (if (_is-e?179983_ _hd180012_)
                                    (let* ((_e180015180022_ _rest180014_)
                                           (_E180017180026_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx179929_
                                                 _e179982_))))
                                           (_E180016180040_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e180015180022_))
                                                  (let ((_e180018180030_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e180015180022_))))
                                                    (let ((_hd180019180033_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e180018180030_)))
                                                          (_tl180020180035_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e180018180030_))))
                                                      (let ((_rest180038_
                                                             _hd180019180033_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl180020180035_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur179977_ _rest180038_ false))
                        (let () (declare (not safe)) (_E180017180026_)))
                    (let () (declare (not safe)) (_E180017180026_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E180017180026_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E180016180040_)))
                                    (let _lp180044_ ((_rest180046_
                                                      _rest180014_)
                                                     (_depth180047_ '0))
                                      (let* ((_e180048180055_ _rest180046_)
                                             (_E180050180059_
                                              (lambda ()
                                                (if (fxpositive? _depth180047_)
                                                    (let ((__tmp185080
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179977_
                                                              _hd180012_
                                                              _is-e?179983_)))
                                                          (__tmp185079
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179977_
                                                              _rest180046_
                                                              _is-e?179983_))))
                                                      (declare (not safe))
                                                      (_make-splice179976_
                                                       _e179982_
                                                       _depth180047_
                                                       __tmp185080
                                                       __tmp185079))
                                                    (let ((__tmp185078
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179977_
                                                              _hd180012_
                                                              _is-e?179983_)))
                                                          (__tmp185077
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179977_
                                                              _rest180046_
                                                              _is-e?179983_))))
                                                      (declare (not safe))
                                                      (_make-cons179975_
                                                       __tmp185078
                                                       __tmp185077)))))
                                             (_E180049180075_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e180048180055_))
                                                    (let ((_e180051180063_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e180048180055_))))
                                                      (let ((_hd180052180066_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e180051180063_)))
                    (_tl180053180068_
                     (let () (declare (not safe)) (##cdr _e180051180063_))))
                (let* ((_rest-hd180071_ _hd180052180066_)
                       (_rest-tl180073_ _tl180053180068_))
                  (if '#t
                      (if (_is-e?179983_ _rest-hd180071_)
                          (let ((__tmp185085
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth180047_ '1))))
                            (declare (not safe))
                            (_lp180044_ _rest-tl180073_ __tmp185085))
                          (if (fxpositive? _depth180047_)
                              (let ((__tmp185084
                                     (let ()
                                       (declare (not safe))
                                       (_recur179977_
                                        _hd180012_
                                        _is-e?179983_)))
                                    (__tmp185083
                                     (let ()
                                       (declare (not safe))
                                       (_recur179977_
                                        _rest180046_
                                        _is-e?179983_))))
                                (declare (not safe))
                                (_make-splice179976_
                                 _e179982_
                                 _depth180047_
                                 __tmp185084
                                 __tmp185083))
                              (let ((__tmp185082
                                     (let ()
                                       (declare (not safe))
                                       (_recur179977_
                                        _hd180012_
                                        _is-e?179983_)))
                                    (__tmp185081
                                     (let ()
                                       (declare (not safe))
                                       (_recur179977_
                                        _rest180046_
                                        _is-e?179983_))))
                                (declare (not safe))
                                (_make-cons179975_ __tmp185082 __tmp185081))))
                      (let () (declare (not safe)) (_E180050180059_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E180050180059_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E180049180075_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E179991180000_))))))
                      (let () (declare (not safe)) (_E179991180000_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179990180079_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e179982_))
                                                    (let ((_g185074_
                                                           (let ((__tmp185076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e179982_)))))
                     (declare (not safe))
                     (_recur179977_ __tmp185076 _is-e?179983_))))
              (begin
                (let ((_g185075_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g185074_)
                             (##vector-length _g185074_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g185075_ 2)))
                      (error "Context expects 2 values" _g185075_)))
                (let ((_e180083_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g185074_ 0)))
                      (_vars180084_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g185074_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e180083_))
                          _vars180084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e179982_))
                                                        (let ((_g185071_
                                                               (let ((__tmp185073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e179982_)))))
                         (declare (not safe))
                         (_recur179977_ __tmp185073 _is-e?179983_))))
                  (begin
                    (let ((_g185072_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g185071_)
                                 (##vector-length _g185071_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g185072_ 2)))
                          (error "Context expects 2 values" _g185072_)))
                    (let ((_e180086_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g185071_ 0)))
                          (_vars180087_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g185071_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e180086_))
                              _vars180087_))))
                (values (let () (declare (not safe)) (cons 'datum _e179982_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g185087_
                             (let ()
                               (declare (not safe))
                               (_recur179977_ _e179973_ gx#ellipsis?))))
                        (begin
                          (let ((_g185088_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g185087_)
                                       (##vector-length _g185087_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g185088_ 2)))
                                (error "Context expects 2 values" _g185088_)))
                          (let ((_tree179979_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g185087_ 0)))
                                (_vars179980_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g185087_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars179980_))
                                _tree179979_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx179929_
                                   _vars179980_))))))))))
          (let* ((_e179933179943_ _stx179929_)
                 (_E179935179947_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx179929_))))
                 (_E179934179969_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e179933179943_))
                        (let ((_e179936179951_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e179933179943_))))
                          (let ((_hd179937179954_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e179936179951_)))
                                (_tl179938179956_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e179936179951_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl179938179956_))
                                (let ((_e179939179959_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl179938179956_))))
                                  (let ((_hd179940179962_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e179939179959_)))
                                        (_tl179941179964_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e179939179959_))))
                                    (let ((_form179967_ _hd179940179962_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl179941179964_))
                                          (if '#t
                                              (let ((__tmp185090
                                                     (let ((__tmp185091
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse179932_
                                                               _form179967_))))
                                                       (declare (not safe))
                                                       (_generate179931_
                                                        __tmp185091)))
                                                    (__tmp185089
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx179929_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp185090
                                                 __tmp185089))
                                              (let ()
                                                (declare (not safe))
                                                (_E179935179947_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E179935179947_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179935179947_)))))
                        (let () (declare (not safe)) (_E179935179947_))))))
            (let () (declare (not safe)) (_E179934179969_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx179193_
               _identifier=?179194_
               _unwrap-e179195_
               _wrap-e179196_)
        (letrec ((_generate-bindings179198_
                  (lambda (_target179793_
                           _ids179794_
                           _clauses179795_
                           _clause-ids179796_
                           _E179797_)
                    (letrec ((_generate1179799_
                              (lambda (_clause179896_
                                       _clause-id179897_
                                       _E179898_)
                                (let ((__tmp185096
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id179897_ '())))
                                      (__tmp185092
                                       (let ((__tmp185093
                                              (let ((__tmp185095
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target179793_
                                                             '())))
                                                    (__tmp185094
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause179200_
                                                        _target179793_
                                                        _ids179794_
                                                        _clause179896_
                                                        _E179898_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp185095
                                                 __tmp185094))))
                                         (declare (not safe))
                                         (cons __tmp185093 '()))))
                                  (declare (not safe))
                                  (cons __tmp185096 __tmp185092)))))
                      (let _lp179801_ ((_rest179803_ _clauses179795_)
                                       (_rest-ids179804_ _clause-ids179796_)
                                       (_bindings179805_ '()))
                        (let* ((_rest179806179814_ _rest179803_)
                               (_else179808179822_
                                (lambda () _bindings179805_))
                               (_K179810179884_
                                (lambda (_rest179825_ _clause179826_)
                                  (let* ((_rest-ids179827179834_
                                          _rest-ids179804_)
                                         (_E179829179838_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids179827179834_)))
                                         (_K179830179872_
                                          (lambda (_rest-ids179841_
                                                   _clause-id179842_)
                                            (let* ((_rest-ids179843179851_
                                                    _rest-ids179841_)
                                                   (_else179845179859_
                                                    (lambda ()
                                                      (let ((__tmp185097
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1179799_
                        _clause179826_
                        _clause-id179842_
                        _E179797_))))
                (declare (not safe))
                (cons __tmp185097 _bindings179805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K179847179864_
                                                    (lambda (_next-clause-id179862_)
                                                      (let ((__tmp185098
                                                             (let ((__tmp185099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1179799_
                               _clause179826_
                               _clause-id179842_
                               _next-clause-id179862_))))
                       (declare (not safe))
                       (cons __tmp185099 _bindings179805_))))
                (declare (not safe))
                (_lp179801_ _rest179825_ _rest-ids179841_ __tmp185098)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids179843179851_))
                                                  (let* ((_hd179848179867_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids179843179851_)))
                                                         (_next-clause-id179870_
                                                          _hd179848179867_))
                                                    (declare (not safe))
                                                    (_K179847179864_
                                                     _next-clause-id179870_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else179845179859_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids179827179834_))
                                        (let ((_hd179831179875_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids179827179834_)))
                                              (_tl179832179877_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids179827179834_))))
                                          (let* ((_clause-id179880_
                                                  _hd179831179875_)
                                                 (_rest-ids179882_
                                                  _tl179832179877_))
                                            (declare (not safe))
                                            (_K179830179872_
                                             _rest-ids179882_
                                             _clause-id179880_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179829179838_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest179806179814_))
                              (let ((_hd179811179887_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest179806179814_)))
                                    (_tl179812179889_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest179806179814_))))
                                (let* ((_clause179892_ _hd179811179887_)
                                       (_rest179894_ _tl179812179889_))
                                  (declare (not safe))
                                  (_K179810179884_
                                   _rest179894_
                                   _clause179892_)))
                              (let ()
                                (declare (not safe))
                                (_else179808179822_))))))))
                 (_generate-body179199_
                  (lambda (_bindings179753_ _body179754_)
                    (let _recur179756_ ((_rest179758_ _bindings179753_))
                      (let* ((_rest179759179767_ _rest179758_)
                             (_else179761179775_ (lambda () _body179754_))
                             (_K179763179781_
                              (lambda (_rest179778_ _hd179779_)
                                (let ((__tmp185101
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd179779_ '())))
                                      (__tmp185100
                                       (let ()
                                         (declare (not safe))
                                         (_recur179756_ _rest179778_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp185101
                                   __tmp185100)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest179759179767_))
                            (let ((_hd179764179784_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest179759179767_)))
                                  (_tl179765179786_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest179759179767_))))
                              (let* ((_hd179789_ _hd179764179784_)
                                     (_rest179791_ _tl179765179786_))
                                (declare (not safe))
                                (_K179763179781_ _rest179791_ _hd179789_)))
                            (let ()
                              (declare (not safe))
                              (_else179761179775_)))))))
                 (_generate-clause179200_
                  (lambda (_target179616_ _ids179617_ _clause179618_ _E179619_)
                    (letrec ((_generate1179621_
                              (lambda (_hd179708_ _fender179709_ _body179710_)
                                (let ((_g185102_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause179202_
                                          _hd179708_
                                          _ids179617_))))
                                  (begin
                                    (let ((_g185103_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g185102_)
                                                 (##vector-length _g185102_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g185103_ 2)))
                                          (error "Context expects 2 values"
                                                 _g185103_)))
                                    (let ((_e179712_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g185102_ 0)))
                                          (_mvars179713_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g185102_ 1))))
                                      (let* ((_pvars179715_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars179713_))))
                                             (_E179717_
                                              (let ((__tmp185104
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target179616_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E179619_ __tmp185104)))
                                             (_K179750_
                                              (let ((__tmp185105
                                                     (let ((__tmp185107
                                                            (map (lambda (_mvar179719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar179720_)
                           (let* ((_mvar179721179728_ _mvar179719_)
                                  (_E179723179732_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar179721179728_)))
                                  (_K179724179738_
                                   (lambda (_depth179735_ _id179736_)
                                     (let ((__tmp185108
                                            (let ((__tmp185109
                                                   (let ((__tmp185111
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id179736_)))
                                                         (__tmp185110
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar179720_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp185111
                                                      __tmp185110
                                                      _depth179735_))))
                                              (declare (not safe))
                                              (cons __tmp185109 '()))))
                                       (declare (not safe))
                                       (cons _id179736_ __tmp185108)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar179721179728_))
                                 (let ((_hd179725179741_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar179721179728_)))
                                       (_tl179726179743_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar179721179728_))))
                                   (let* ((_id179746_ _hd179725179741_)
                                          (_depth179748_ _tl179726179743_))
                                     (declare (not safe))
                                     (_K179724179738_
                                      _depth179748_
                                      _id179746_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E179723179732_)))))
                         _mvars179713_
                         _pvars179715_))
                   (__tmp185106
                    (if (let () (declare (not safe)) (eq? _fender179709_ '#t))
                        _body179710_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender179709_
                           _body179710_
                           _E179717_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp185107 __tmp185106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars179715_
                                                 __tmp185105))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match179201_
                                           _hd179708_
                                           _target179616_
                                           _e179712_
                                           _mvars179713_
                                           _K179750_
                                           _E179717_)))))))))
                      (let* ((_e179622179642_ _clause179618_)
                             (_E179631179646_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e179622179642_))))
                             (_E179624179680_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e179622179642_))
                                    (let ((_e179632179650_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e179622179642_))))
                                      (let ((_hd179633179653_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179632179650_)))
                                            (_tl179634179655_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179632179650_))))
                                        (let ((_hd179658_ _hd179633179653_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl179634179655_))
                                              (let ((_e179635179660_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl179634179655_))))
                                                (let ((_hd179636179663_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e179635179660_)))
                                                      (_tl179637179665_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e179635179660_))))
                                                  (let ((_fender179668_
                                                         _hd179636179663_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl179637179665_))
                                                        (let ((_e179638179670_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl179637179665_))))
                  (let ((_hd179639179673_
                         (let () (declare (not safe)) (##car _e179638179670_)))
                        (_tl179640179675_
                         (let ()
                           (declare (not safe))
                           (##cdr _e179638179670_))))
                    (let ((_body179678_ _hd179639179673_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl179640179675_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1179621_
                                 _hd179658_
                                 _fender179668_
                                 _body179678_))
                              (let () (declare (not safe)) (_E179631179646_)))
                          (let () (declare (not safe)) (_E179631179646_))))))
                (let () (declare (not safe)) (_E179631179646_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E179631179646_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E179631179646_)))))
                             (_E179623179704_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e179622179642_))
                                    (let ((_e179625179684_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e179622179642_))))
                                      (let ((_hd179626179687_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179625179684_)))
                                            (_tl179627179689_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179625179684_))))
                                        (let ((_hd179692_ _hd179626179687_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl179627179689_))
                                              (let ((_e179628179694_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl179627179689_))))
                                                (let ((_hd179629179697_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e179628179694_)))
                                                      (_tl179630179699_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e179628179694_))))
                                                  (let ((_body179702_
                                                         _hd179629179697_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl179630179699_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1179621_
                                                               _hd179692_
                                                               '#t
                                                               _body179702_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E179624179680_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E179624179680_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E179624179680_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E179624179680_))))))
                        (let () (declare (not safe)) (_E179623179704_))))))
                 (_generate-match179201_
                  (lambda (_where179365_
                           _target179366_
                           _hd179367_
                           _mvars179368_
                           _K179369_
                           _E179370_)
                    (letrec ((_BUG179372_
                              (lambda (_q179614_)
                                (error '"BUG: syntax-case; generate"
                                       _stx179193_
                                       _hd179367_
                                       _q179614_)))
                             (_recur179373_
                              (lambda (_e179464_
                                       _vars179465_
                                       _target179466_
                                       _E179467_
                                       _k179468_)
                                (let* ((_e179469179476_ _e179464_)
                                       (_E179471179480_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e179469179476_)))
                                       (_K179472179602_
                                        (lambda (_body179483_ _tag179484_)
                                          (let ((_$e179486_ _tag179484_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e179486_))
                                                (_k179468_ _vars179465_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e179486_))
                                                    (let ((__tmp185218
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target179466_)))
                                                          (__tmp185214
                                                           (let ((__tmp185216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp185217
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e179196_
                                    _body179483_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?179194_
                             __tmp185217
                             _target179466_)))
                         (__tmp185215 (_k179468_ _vars179465_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp185216 __tmp185215 _E179467_))))
              (declare (not safe))
              (gx#core-list 'if __tmp185218 __tmp185214 _E179467_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e179486_))
                                                        (_k179468_
                                                         (let ((__tmp185213
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body179483_ _target179466_))))
                   (declare (not safe))
                   (cons __tmp185213 _vars179465_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e179486_))
                    (let ((_$e179489_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd179490_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl179491_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp185212
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target179466_)))
                            (__tmp185193
                             (let ((__tmp185207
                                    (let ((__tmp185208
                                           (let ((__tmp185211
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e179489_ '())))
                                                 (__tmp185209
                                                  (let ((__tmp185210
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e179195_
                                                            _target179466_))))
                                                    (declare (not safe))
                                                    (cons __tmp185210 '()))))
                                             (declare (not safe))
                                             (cons __tmp185211 __tmp185209))))
                                      (declare (not safe))
                                      (cons __tmp185208 '())))
                                   (__tmp185194
                                    (let ((__tmp185197
                                           (let ((__tmp185203
                                                  (let ((__tmp185206
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd179490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp185204
                 (let ((__tmp185205
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e179489_))))
                   (declare (not safe))
                   (cons __tmp185205 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185206
                                                          __tmp185204)))
                                                 (__tmp185198
                                                  (let ((__tmp185199
                                                         (let ((__tmp185202
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl179491_ '())))
                       (__tmp185200
                        (let ((__tmp185201
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e179489_))))
                          (declare (not safe))
                          (cons __tmp185201 '()))))
                   (declare (not safe))
                   (cons __tmp185202 __tmp185200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185199 '()))))
                                             (declare (not safe))
                                             (cons __tmp185203 __tmp185198)))
                                          (__tmp185195
                                           (let* ((_body179492179499_
                                                   _body179483_)
                                                  (_E179494179503_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body179492179499_)))
                                                  (_K179495179511_
                                                   (lambda (_tl179506_
                                                            _hd179507_)
                                                     (let ((__tmp185196
                                                            (lambda (_vars179509_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur179373_
                         _tl179506_
                         _vars179509_
                         _$tl179491_
                         _E179467_
                         _k179468_)))))
               (declare (not safe))
               (_recur179373_
                _hd179507_
                _vars179465_
                _$hd179490_
                _E179467_
                __tmp185196)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body179492179499_))
                                                 (let ((_hd179496179514_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body179492179499_)))
                                                       (_tl179497179516_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body179492179499_))))
                                                   (let* ((_hd179519_
                                                           _hd179496179514_)
                                                          (_tl179521_
                                                           _tl179497179516_))
                                                     (declare (not safe))
                                                     (_K179495179511_
                                                      _tl179521_
                                                      _hd179519_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E179494179503_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp185197
                                       __tmp185195))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp185207
                                __tmp185194))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp185212 __tmp185193 _E179467_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e179486_))
                        (let* ((_body179522179529_ _body179483_)
                               (_E179524179533_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body179522179529_)))
                               (_K179525179584_
                                (lambda (_tl179536_ _hd179537_)
                                  (let* ((_rlen179539_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen179374_ _tl179536_)))
                                         (_$target179541_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd179543_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl179545_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp179547_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e179549_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd179551_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl179553_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars179555_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars179375_ _hd179537_)))
                                         (_lvars179557_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars179555_)))
                                         (_tlvars179559_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars179555_)))
                                         (_linit179563_
                                          (map (lambda (_var179561_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars179557_)))
                                    (letrec ((_make-loop179566_
                                              (lambda (_vars179570_)
                                                (let ((__tmp185144
                                                       (let ((__tmp185145
                                                              (let ((__tmp185181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp179547_ '())))
                            (__tmp185146
                             (let ((__tmp185147
                                    (let ((__tmp185180
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd179543_ _lvars179557_)))
                                          (__tmp185148
                                           (let ((__tmp185179
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd179543_)))
                                                 (__tmp185157
                                                  (let ((__tmp185174
                                                         (let ((__tmp185175
                                                                (let ((__tmp185178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e179549_ '())))
                              (__tmp185176
                               (let ((__tmp185177
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e179195_
                                         _$hd179543_))))
                                 (declare (not safe))
                                 (cons __tmp185177 '()))))
                          (declare (not safe))
                          (cons __tmp185178 __tmp185176))))
                   (declare (not safe))
                   (cons __tmp185175 '())))
                (__tmp185158
                 (let ((__tmp185164
                        (let ((__tmp185170
                               (let ((__tmp185173
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd179551_ '())))
                                     (__tmp185171
                                      (let ((__tmp185172
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e179549_))))
                                        (declare (not safe))
                                        (cons __tmp185172 '()))))
                                 (declare (not safe))
                                 (cons __tmp185173 __tmp185171)))
                              (__tmp185165
                               (let ((__tmp185166
                                      (let ((__tmp185169
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl179553_ '())))
                                            (__tmp185167
                                             (let ((__tmp185168
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e179549_))))
                                               (declare (not safe))
                                               (cons __tmp185168 '()))))
                                        (declare (not safe))
                                        (cons __tmp185169 __tmp185167))))
                                 (declare (not safe))
                                 (cons __tmp185166 '()))))
                          (declare (not safe))
                          (cons __tmp185170 __tmp185165)))
                       (__tmp185159
                        (let ((__tmp185160
                               (lambda (_hdvars179572_)
                                 (let ((__tmp185161
                                        (let ((__tmp185162
                                               (map (lambda (_svar179574_
                                                             _lvar179575_)
                                                      (let ((__tmp185163
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar179574_ _hdvars179572_ _BUG179372_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp185163 _lvar179575_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars179555_
                                                    _lvars179557_)))
                                          (declare (not safe))
                                          (cons _$lp-tl179553_ __tmp185162))))
                                   (declare (not safe))
                                   (cons _$lp179547_ __tmp185161)))))
                          (declare (not safe))
                          (_recur179373_
                           _hd179537_
                           '()
                           _$lp-hd179551_
                           _E179467_
                           __tmp185160))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp185164 __tmp185159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp185174
                                                     __tmp185158)))
                                                 (__tmp185149
                                                  (let ((__tmp185153
                                                         (map (lambda (_lvar179577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar179578_)
                        (let ((__tmp185156
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar179578_ '())))
                              (__tmp185154
                               (let ((__tmp185155
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar179577_))))
                                 (declare (not safe))
                                 (cons __tmp185155 '()))))
                          (declare (not safe))
                          (cons __tmp185156 __tmp185154)))
                      _lvars179557_
                      _tlvars179559_))
                (__tmp185150
                 (_k179468_
                  (let ((__tmp185151
                         (lambda (_svar179580_ _tlvar179581_ _r179582_)
                           (let ((__tmp185152
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar179580_ _tlvar179581_))))
                             (declare (not safe))
                             (cons __tmp185152 _r179582_)))))
                    (declare (not safe))
                    (foldl2 __tmp185151
                            _vars179570_
                            _svars179555_
                            _tlvars179559_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp185153
                                                     __tmp185150))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp185179
                                              __tmp185157
                                              __tmp185149))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp185180
                                       __tmp185148))))
                               (declare (not safe))
                               (cons __tmp185147 '()))))
                        (declare (not safe))
                        (cons __tmp185181 __tmp185146))))
                 (declare (not safe))
                 (cons __tmp185145 '())))
              (__tmp185142
               (let ((__tmp185143
                      (let ()
                        (declare (not safe))
                        (cons _$target179541_ _linit179563_))))
                 (declare (not safe))
                 (cons _$lp179547_ __tmp185143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp185144
                                                   __tmp185142)))))
                                      (let ((_body179568_
                                             (let ((__tmp185183
                                                    (let ((__tmp185184
                                                           (let ((__tmp185187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp185188
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl179545_ '()))))
                            (declare (not safe))
                            (cons _$target179541_ __tmp185188)))
                         (__tmp185185
                          (let ((__tmp185186
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target179466_
                                    _rlen179539_))))
                            (declare (not safe))
                            (cons __tmp185186 '()))))
                     (declare (not safe))
                     (cons __tmp185187 __tmp185185))))
              (declare (not safe))
              (cons __tmp185184 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp185182
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur179373_
                                                       _tl179536_
                                                       _vars179465_
                                                       _$tl179545_
                                                       _E179467_
                                                       _make-loop179566_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp185183
                                                __tmp185182))))
                                        (let ((__tmp185192
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target179466_)))
                                              (__tmp185189
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen179539_))
                                                   _body179568_
                                                   (let ((__tmp185190
                                                          (let ((__tmp185191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target179466_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp185191 _rlen179539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp185190
                                                      _body179568_
                                                      _E179467_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp185192
                                           __tmp185189
                                           _E179467_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body179522179529_))
                              (let ((_hd179526179587_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body179522179529_)))
                                    (_tl179527179589_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body179522179529_))))
                                (let* ((_hd179592_ _hd179526179587_)
                                       (_tl179594_ _tl179527179589_))
                                  (declare (not safe))
                                  (_K179525179584_ _tl179594_ _hd179592_)))
                              (let () (declare (not safe)) (_E179524179533_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e179486_))
                            (let ((__tmp185141
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target179466_)))
                                  (__tmp185140 (_k179468_ _vars179465_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp185141
                               __tmp185140
                               _E179467_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e179486_))
                                (let ((_$e179596_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp185139
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target179466_)))
                                        (__tmp185131
                                         (let ((__tmp185133
                                                (let ((__tmp185134
                                                       (let ((__tmp185138
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e179596_ '())))
                     (__tmp185135
                      (let ((__tmp185136
                             (let ((__tmp185137
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e179195_
                                       _target179466_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp185137))))
                        (declare (not safe))
                        (cons __tmp185136 '()))))
                 (declare (not safe))
                 (cons __tmp185138 __tmp185135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp185134 '())))
                                               (__tmp185132
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur179373_
                                                   _body179483_
                                                   _vars179465_
                                                   _$e179596_
                                                   _E179467_
                                                   _k179468_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp185133
                                            __tmp185132))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp185139
                                     __tmp185131
                                     _E179467_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e179486_))
                                    (let ((_$e179598_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp185130
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target179466_)))
                                            (__tmp185122
                                             (let ((__tmp185124
                                                    (let ((__tmp185125
                                                           (let ((__tmp185129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e179598_ '())))
                         (__tmp185126
                          (let ((__tmp185127
                                 (let ((__tmp185128
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e179195_
                                           _target179466_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp185128))))
                            (declare (not safe))
                            (cons __tmp185127 '()))))
                     (declare (not safe))
                     (cons __tmp185129 __tmp185126))))
              (declare (not safe))
              (cons __tmp185125 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp185123
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur179373_
                                                       _body179483_
                                                       _vars179465_
                                                       _$e179598_
                                                       _E179467_
                                                       _k179468_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp185124
                                                __tmp185123))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp185130
                                         __tmp185122
                                         _E179467_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e179486_))
                                        (let ((_$e179600_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp185121
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target179466_)))
                                                (__tmp185112
                                                 (let ((__tmp185116
                                                        (let ((__tmp185117
                                                               (let ((__tmp185120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e179600_ '())))
                             (__tmp185118
                              (let ((__tmp185119
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target179466_))))
                                (declare (not safe))
                                (cons __tmp185119 '()))))
                         (declare (not safe))
                         (cons __tmp185120 __tmp185118))))
                  (declare (not safe))
                  (cons __tmp185117 '())))
               (__tmp185113
                (let ((__tmp185115
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e179600_ _body179483_)))
                      (__tmp185114 (_k179468_ _vars179465_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp185115 __tmp185114 _E179467_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp185116
                                                    __tmp185113))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp185121
                                             __tmp185112
                                             _E179467_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG179372_ _e179464_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e179469179476_))
                                      (let ((_hd179473179605_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179469179476_)))
                                            (_tl179474179607_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179469179476_))))
                                        (let* ((_tag179610_ _hd179473179605_)
                                               (_body179612_ _tl179474179607_))
                                          (declare (not safe))
                                          (_K179472179602_
                                           _body179612_
                                           _tag179610_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E179471179480_))))))
                             (_splice-rlen179374_
                              (lambda (_e179426_)
                                (let _lp179428_ ((_e179430_ _e179426_)
                                                 (_n179431_ '0))
                                  (let* ((_e179432179439_ _e179430_)
                                         (_E179434179443_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e179432179439_)))
                                         (_K179435179452_
                                          (lambda (_body179446_ _tag179447_)
                                            (let ((_$e179449_ _tag179447_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e179449_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx179193_
                                                     _where179365_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e179449_))
                                                      (let ((__tmp185220
                                                             (cdr _body179446_))
                                                            (__tmp185219
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n179431_ '1))))
                (declare (not safe))
                (_lp179428_ __tmp185220 __tmp185219))
              _n179431_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e179432179439_))
                                        (let ((_hd179436179455_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e179432179439_)))
                                              (_tl179437179457_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e179432179439_))))
                                          (let* ((_tag179460_ _hd179436179455_)
                                                 (_body179462_
                                                  _tl179437179457_))
                                            (declare (not safe))
                                            (_K179435179452_
                                             _body179462_
                                             _tag179460_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179434179443_)))))))
                             (_splice-vars179375_
                              (lambda (_e179382_)
                                (let _recur179384_ ((_e179386_ _e179382_)
                                                    (_vars179387_ '()))
                                  (let* ((_e179388179395_ _e179386_)
                                         (_E179390179399_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e179388179395_)))
                                         (_K179391179414_
                                          (lambda (_body179402_ _tag179403_)
                                            (let ((_$e179405_ _tag179403_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e179405_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body179402_
                                                          _vars179387_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e179405_))
                  (let () (declare (not safe)) (eq? 'splice _$e179405_)))
              (let ((__tmp185223 (cdr _body179402_))
                    (__tmp185221
                     (let ((__tmp185222 (car _body179402_)))
                       (declare (not safe))
                       (_recur179384_ __tmp185222 _vars179387_))))
                (declare (not safe))
                (_recur179384_ __tmp185223 __tmp185221))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e179405_))
                      (let () (declare (not safe)) (eq? 'box _$e179405_)))
                  (let ()
                    (declare (not safe))
                    (_recur179384_ _body179402_ _vars179387_))
                  _vars179387_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e179388179395_))
                                        (let ((_hd179392179417_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e179388179395_)))
                                              (_tl179393179419_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e179388179395_))))
                                          (let* ((_tag179422_ _hd179392179417_)
                                                 (_body179424_
                                                  _tl179393179419_))
                                            (declare (not safe))
                                            (_K179391179414_
                                             _body179424_
                                             _tag179422_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179390179399_)))))))
                             (_make-body179376_
                              (lambda (_vars179378_)
                                (let ((__tmp185224
                                       (map (lambda (_mvar179380_)
                                              (let ((__tmp185225
                                                     (car _mvar179380_)))
                                                (declare (not safe))
                                                (assgetq __tmp185225
                                                         _vars179378_
                                                         _BUG179372_)))
                                            _mvars179368_)))
                                  (declare (not safe))
                                  (cons _K179369_ __tmp185224)))))
                      (let ()
                        (declare (not safe))
                        (_recur179373_
                         _hd179367_
                         '()
                         _target179366_
                         _E179370_
                         _make-body179376_)))))
                 (_parse-clause179202_
                  (lambda (_hd179271_ _ids179272_)
                    (let _recur179274_ ((_e179276_ _hd179271_)
                                        (_vars179277_ '())
                                        (_depth179278_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e179276_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e179276_))
                              (values '(any) _vars179277_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e179276_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx179193_
                                     _hd179271_))
                                  (if (let ((__tmp185241
                                             (lambda (_id179280_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e179276_
                                                  _id179280_)))))
                                        (declare (not safe))
                                        (find __tmp185241 _ids179272_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e179276_))
                                              _vars179277_)
                                      (if (let ((__tmp185239
                                                 (lambda (_var179282_)
                                                   (let ((__tmp185240
                                                          (car _var179282_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e179276_
                                                      __tmp185240)))))
                                            (declare (not safe))
                                            (find __tmp185239 _vars179277_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx179193_
                                             _e179276_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e179276_))
                                                  (let ((__tmp185238
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e179276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth179278_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185238
                                                          _vars179277_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e179276_))
                              (let* ((_e179283179290_ _e179276_)
                                     (_E179285179294_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e179283179290_))))
                                     (_E179284179355_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e179283179290_))
                                            (let ((_e179286179298_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e179283179290_))))
                                              (let ((_hd179287179301_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e179286179298_)))
                                                    (_tl179288179303_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e179286179298_))))
                                                (let* ((_hd179306_
                                                        _hd179287179301_)
                                                       (_rest179308_
                                                        _tl179288179303_))
                                                  (if '#t
                                                      (let* ((_make-pair179323_
                                                              (lambda (_tag179310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd179311_
                               _tl179312_)
                        (let* ((_hd-depth179314_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag179310_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth179278_ '1))
                                    _depth179278_))
                               (_g185233_
                                (let ()
                                  (declare (not safe))
                                  (_recur179274_
                                   _hd179311_
                                   _vars179277_
                                   _hd-depth179314_))))
                          (begin
                            (let ((_g185234_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g185233_)
                                         (##vector-length _g185233_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g185234_ 2)))
                                  (error "Context expects 2 values"
                                         _g185234_)))
                            (let ((_hd179316_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g185233_ 0)))
                                  (_vars179317_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g185233_ 1))))
                              (let ((_g185235_
                                     (let ()
                                       (declare (not safe))
                                       (_recur179274_
                                        _tl179312_
                                        _vars179317_
                                        _depth179278_))))
                                (begin
                                  (let ((_g185236_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g185235_)
                                               (##vector-length _g185235_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g185236_ 2)))
                                        (error "Context expects 2 values"
                                               _g185236_)))
                                  (let ((_tl179319_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g185235_ 0)))
                                        (_vars179320_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g185235_ 1))))
                                    (let ()
                                      (values (let ((__tmp185237
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd179316_
                                                             _tl179319_))))
                                                (declare (not safe))
                                                (cons _tag179310_ __tmp185237))
                                              _vars179320_))))))))))
                     (_e179324179331_ _rest179308_)
                     (_E179326179335_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair179323_ 'cons _hd179306_ _rest179308_))))
                     (_E179325179351_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e179324179331_))
                            (let ((_e179327179339_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e179324179331_))))
                              (let ((_hd179328179342_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e179327179339_)))
                                    (_tl179329179344_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e179327179339_))))
                                (let* ((_rest-hd179347_ _hd179328179342_)
                                       (_rest-tl179349_ _tl179329179344_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd179347_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair179323_
                                             'splice
                                             _hd179306_
                                             _rest-tl179349_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair179323_
                                             'cons
                                             _hd179306_
                                             _rest179308_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E179326179335_))))))
                            (let () (declare (not safe)) (_E179326179335_))))))
                (let () (declare (not safe)) (_E179325179351_)))
              (let () (declare (not safe)) (_E179285179294_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E179285179294_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179284179355_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e179276_))
                                  (values '(null) _vars179277_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e179276_))
                                      (let ((_g185230_
                                             (let ((__tmp185232
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e179276_)))))
                                               (declare (not safe))
                                               (_recur179274_
                                                __tmp185232
                                                _vars179277_
                                                _depth179278_))))
                                        (begin
                                          (let ((_g185231_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g185230_)
                                                       (##vector-length
                                                        _g185230_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g185231_ 2)))
                                                (error "Context expects 2 values"
                                                       _g185231_)))
                                          (let ((_e179359_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g185230_ 0)))
                                                (_vars179360_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g185230_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e179359_))
                                                    _vars179360_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e179276_))
                                          (let ((_g185227_
                                                 (let ((__tmp185229
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e179276_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur179274_
                                                    __tmp185229
                                                    _vars179277_
                                                    _depth179278_))))
                                            (begin
                                              (let ((_g185228_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g185227_)
                                                           (##vector-length
                                                            _g185227_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g185228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g185228_)))
                                              (let ((_e179362_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g185227_
                                                        0)))
                                                    (_vars179363_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g185227_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e179362_))
                                                        _vars179363_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e179276_))
                                              (values (let ((__tmp185226
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e179276_))))
                (declare (not safe))
                (cons 'datum __tmp185226))
              _vars179277_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx179193_
                                                 _e179276_))))))))))))
          (let* ((_e179203179216_ _stx179193_)
                 (_E179205179220_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e179203179216_))))
                 (_E179204179267_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e179203179216_))
                        (let ((_e179206179224_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e179203179216_))))
                          (let ((_hd179207179227_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e179206179224_)))
                                (_tl179208179229_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e179206179224_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl179208179229_))
                                (let ((_e179209179232_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl179208179229_))))
                                  (let ((_hd179210179235_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e179209179232_)))
                                        (_tl179211179237_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e179209179232_))))
                                    (let ((_expr179240_ _hd179210179235_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl179211179237_))
                                          (let ((_e179212179242_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl179211179237_))))
                                            (let ((_hd179213179245_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e179212179242_)))
                                                  (_tl179214179247_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e179212179242_))))
                                              (let* ((_ids179250_
                                                      _hd179213179245_)
                                                     (_clauses179252_
                                                      _tl179214179247_))
                                                (if '#t
                                                    (if (let ((__tmp185259
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids179250_))))
                  (declare (not safe))
                  (not __tmp185259))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx179193_
                   _ids179250_))
                (if (let ((__tmp185258
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses179252_))))
                      (declare (not safe))
                      (not __tmp185258))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx179193_))
                    (let* ((_ids179254_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids179250_)))
                           (_clauses179256_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses179252_)))
                           (_clause-ids179258_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses179256_)))
                           (_E179260_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target179262_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first179264_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses179256_))
                                _E179260_
                                (car _clause-ids179258_))))
                      (let ((__tmp185243
                             (let ((__tmp185244
                                    (let ((__tmp185246
                                           (let ((__tmp185251
                                                  (let ((__tmp185252
                                                         (let ((__tmp185257
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E179260_ '())))
                       (__tmp185253
                        (let ((__tmp185254
                               (let ((__tmp185256
                                      (let ()
                                        (declare (not safe))
                                        (cons _target179262_ '())))
                                     (__tmp185255
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target179262_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp185256
                                  __tmp185255))))
                          (declare (not safe))
                          (cons __tmp185254 '()))))
                   (declare (not safe))
                   (cons __tmp185257 __tmp185253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185252 '())))
                                                 (__tmp185247
                                                  (let ((__tmp185250
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings179198_
                                                            _target179262_
                                                            _ids179254_
                                                            _clauses179256_
                                                            _clause-ids179258_
                                                            _E179260_)))
                                                        (__tmp185248
                                                         (let ((__tmp185249
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr179240_ '()))))
                   (declare (not safe))
                   (cons _first179264_ __tmp185249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body179199_
                                                     __tmp185250
                                                     __tmp185248))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp185251
                                              __tmp185247)))
                                          (__tmp185245
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx179193_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp185246
                                       __tmp185245))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp185244)))
                            (__tmp185242
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx179193_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp185243 __tmp185242)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E179205179220_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E179205179220_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179205179220_)))))
                        (let () (declare (not safe)) (_E179205179220_))))))
            (let () (declare (not safe)) (_E179204179267_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx179903_)
        (let* ((_identifier=?179905_ 'free-identifier=?)
               (_unwrap-e179907_ 'syntax-e)
               (_wrap-e179909_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179903_
           _identifier=?179905_
           _unwrap-e179907_
           _wrap-e179909_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx179911_ _identifier=?179912_)
        (let* ((_unwrap-e179914_ 'syntax-e) (_wrap-e179916_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179911_
           _identifier=?179912_
           _unwrap-e179914_
           _wrap-e179916_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx179918_ _identifier=?179919_ _unwrap-e179920_)
        (let ((_wrap-e179922_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179918_
           _identifier=?179919_
           _unwrap-e179920_
           _wrap-e179922_))))
    (define gx#macro-expand-syntax-case
      (lambda _g185261_
        (let ((_g185260_ (let () (declare (not safe)) (##length _g185261_))))
          (cond ((let () (declare (not safe)) (##fx= _g185260_ 1))
                 (apply (lambda (_stx179903_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx179903_)))
                        _g185261_))
                ((let () (declare (not safe)) (##fx= _g185260_ 2))
                 (apply (lambda (_stx179911_ _identifier=?179912_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx179911_
                             _identifier=?179912_)))
                        _g185261_))
                ((let () (declare (not safe)) (##fx= _g185260_ 3))
                 (apply (lambda (_stx179918_
                                 _identifier=?179919_
                                 _unwrap-e179920_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx179918_
                             _identifier=?179919_
                             _unwrap-e179920_)))
                        _g185261_))
                ((let () (declare (not safe)) (##fx= _g185260_ 4))
                 (apply (lambda (_stx179924_
                                 _identifier=?179925_
                                 _unwrap-e179926_
                                 _wrap-e179927_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx179924_
                             _identifier=?179925_
                             _unwrap-e179926_
                             _wrap-e179927_)))
                        _g185261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g185261_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx179190_)
        (if (let () (declare (not safe)) (gx#identifier? _stx179190_))
            (let ((__tmp185262
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx179190_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp185262 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd179148_ . _rest179149_)
        (let ((_len179151_ (length _hd179148_)))
          (let _lp179153_ ((_rest179155_ _rest179149_))
            (let* ((_rest179156179164_ _rest179155_)
                   (_else179158179172_ (lambda () '#!void))
                   (_K179160179178_
                    (lambda (_rest179175_ _hd179176_)
                      (if (fx= _len179151_ (length _hd179176_))
                          (let ()
                            (declare (not safe))
                            (_lp179153_ _rest179175_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd179176_))))))
              (if (let () (declare (not safe)) (##pair? _rest179156179164_))
                  (let ((_hd179161179181_
                         (let ()
                           (declare (not safe))
                           (##car _rest179156179164_)))
                        (_tl179162179183_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest179156179164_))))
                    (let* ((_hd179186_ _hd179161179181_)
                           (_rest179188_ _tl179162179183_))
                      (declare (not safe))
                      (_K179160179178_ _rest179188_ _hd179186_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx179106_ _n179107_)
        (let _lp179109_ ((_rest179111_ _stx179106_) (_r179112_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest179111_))
              (let* ((_g179113179120_
                      (let () (declare (not safe)) (gx#syntax-e _rest179111_)))
                     (_E179115179124_
                      (lambda ()
                        (error '"No clause matching" _g179113179120_)))
                     (_K179116179130_
                      (lambda (_rest179127_ _hd179128_)
                        (let ((__tmp185267
                               (let ()
                                 (declare (not safe))
                                 (cons _hd179128_ _r179112_))))
                          (declare (not safe))
                          (_lp179109_ _rest179127_ __tmp185267)))))
                (if (let () (declare (not safe)) (##pair? _g179113179120_))
                    (let ((_hd179117179133_
                           (let ()
                             (declare (not safe))
                             (##car _g179113179120_)))
                          (_tl179118179135_
                           (let ()
                             (declare (not safe))
                             (##cdr _g179113179120_))))
                      (let* ((_hd179138_ _hd179117179133_)
                             (_rest179140_ _tl179118179135_))
                        (declare (not safe))
                        (_K179116179130_ _rest179140_ _hd179138_)))
                    (let () (declare (not safe)) (_E179115179124_))))
              (let _lp179142_ ((_n179144_ _n179107_)
                               (_l179145_ _r179112_)
                               (_r179146_ _rest179111_))
                (if (let () (declare (not safe)) (null? _l179145_))
                    (values _l179145_ _r179146_)
                    (if (fxpositive? _n179144_)
                        (let ((__tmp185266
                               (let ()
                                 (declare (not safe))
                                 (fx- _n179144_ '1)))
                              (__tmp185265 (cdr _l179145_))
                              (__tmp185263
                               (let ((__tmp185264 (car _l179145_)))
                                 (declare (not safe))
                                 (cons __tmp185264 _r179146_))))
                          (declare (not safe))
                          (_lp179142_ __tmp185266 __tmp185265 __tmp185263))
                        (values (reverse _l179145_) _r179146_))))))))))
