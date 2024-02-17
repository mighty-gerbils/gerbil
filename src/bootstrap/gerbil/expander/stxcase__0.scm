(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708210942)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp180932 (list gx#expander::t))
            (__tmp180930
             (let ((__tmp180931
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp180931 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp180932
         '(id depth)
         __tmp180930
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args176860_
        (apply make-instance gx#syntax-pattern::t _$args176860_)))
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
      (lambda (_self176857_ _stx176858_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx176858_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx176339_)
        (letrec ((_generate176341_
                  (lambda (_e176568_)
                    (letrec ((_BUG176570_
                              (lambda (_q176732_)
                                (error '"BUG: syntax; generate"
                                       _stx176339_
                                       _e176568_
                                       _q176732_)))
                             (_local-pattern-e176571_
                              (lambda (_pat176730_)
                                (let ((__tmp180933
                                       (##structure-ref
                                        _pat176730_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp180933))))
                             (_getvar176572_
                              (lambda (_q176727_ _vars176728_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q176727_
                                           _vars176728_
                                           _BUG176570_))))
                             (_getarg176573_
                              (lambda (_arg176693_ _vars176694_)
                                (let* ((_arg176695176702_ _arg176693_)
                                       (_E176697176706_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg176695176702_)))
                                       (_K176698176715_
                                        (lambda (_e176709_ _tag176710_)
                                          (let ((_$e176712_ _tag176710_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e176712_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar176572_
                                                   _e176709_
                                                   _vars176694_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e176712_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e176571_
                                                       _e176709_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG176570_
                                                       _arg176693_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg176695176702_))
                                      (let ((_hd176699176718_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg176695176702_)))
                                            (_tl176700176720_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg176695176702_))))
                                        (let* ((_tag176723_ _hd176699176718_)
                                               (_e176725_ _tl176700176720_))
                                          (declare (not safe))
                                          (_K176698176715_
                                           _e176725_
                                           _tag176723_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E176697176706_)))))))
                      (let _recur176575_ ((_e176577_ _e176568_)
                                          (_vars176578_ '()))
                        (let* ((_e176579176586_ _e176577_)
                               (_E176581176590_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e176579176586_)))
                               (_K176582176681_
                                (lambda (_body176593_ _tag176594_)
                                  (let ((_$e176596_ _tag176594_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e176596_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body176593_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e176596_))
                                            (let ((_id176599_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body176593_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id176599_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks176601_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id176599_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks176601_))
                                                        (let ((__tmp180961
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body176593_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp180961))
                (let ((__tmp180960
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body176593_)))
                      (__tmp180959
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body176593_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp180960
                   __tmp180959
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id176599_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body176593_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG176570_
                                                         _e176577_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e176596_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e176571_
                                                   _body176593_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e176596_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar176572_
                                                       _body176593_
                                                       _vars176578_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e176596_))
                                                        (let ((__tmp180957
                                                               (let ((__tmp180958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body176593_)))
                         (declare (not safe))
                         (_recur176575_ __tmp180958 _vars176578_)))
                      (__tmp180955
                       (let ((__tmp180956 (cdr _body176593_)))
                         (declare (not safe))
                         (_recur176575_ __tmp180956 _vars176578_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp180957 __tmp180955))
                (if (let () (declare (not safe)) (eq? 'vector _$e176596_))
                    (let ((__tmp180954
                           (let ()
                             (declare (not safe))
                             (_recur176575_ _body176593_ _vars176578_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp180954))
                    (if (let () (declare (not safe)) (eq? 'box _$e176596_))
                        (let ((__tmp180953
                               (let ()
                                 (declare (not safe))
                                 (_recur176575_ _body176593_ _vars176578_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp180953))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e176596_))
                            (let* ((_body176602176613_ _body176593_)
                                   (_E176604176617_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body176602176613_)))
                                   (_K176605176655_
                                    (lambda (_args176620_
                                             _iv176621_
                                             _hd176622_
                                             _depth176623_)
                                      (let* ((_targets176629_
                                              (map (lambda (_g176624176626_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg176573_
                                                        _g176624176626_
                                                        _vars176578_)))
                                                   _args176620_))
                                             (_fold-in176631_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args176620_)))
                                             (_fold-out176633_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args176635_
                                              (let ((__tmp180934
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out176633_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp180934
                                                        _fold-in176631_)))
                                             (_lambda-body176652_
                                              (if (fx> _depth176623_ '1)
                                                  (let ((_r-args176643_
                                                         (map (lambda (_arg176637_)
                                                                (let ((__tmp180939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg176637_)))
                          (declare (not safe))
                          (cons 'ref __tmp180939)))
                      _args176620_))
                (_r-vars176644_
                 (let ((__tmp180940
                        (lambda (_arg176639_ _var176640_ _r176641_)
                          (let ((__tmp180941
                                 (let ((__tmp180942 (cdr _arg176639_)))
                                   (declare (not safe))
                                   (cons __tmp180942 _var176640_))))
                            (declare (not safe))
                            (cons __tmp180941 _r176641_)))))
                   (declare (not safe))
                   (foldr2 __tmp180940
                           _vars176578_
                           _args176620_
                           _fold-in176631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp180943
                                                           (let ((__tmp180944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp180948
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth176623_ '1)))
                                (__tmp180945
                                 (let ((__tmp180946
                                        (let ((__tmp180947
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out176633_))))
                                          (declare (not safe))
                                          (cons __tmp180947 _r-args176643_))))
                                   (declare (not safe))
                                   (cons _hd176622_ __tmp180946))))
                            (declare (not safe))
                            (cons __tmp180948 __tmp180945))))
                     (declare (not safe))
                     (cons 'splice __tmp180944))))
              (declare (not safe))
              (_recur176575_ __tmp180943 _r-vars176644_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars176650_
                                                          (let ((__tmp180935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg176646_ _var176647_ _r176648_)
                           (let ((__tmp180936
                                  (let ((__tmp180937 (cdr _arg176646_)))
                                    (declare (not safe))
                                    (cons __tmp180937 _var176647_))))
                             (declare (not safe))
                             (cons __tmp180936 _r176648_)))))
                    (declare (not safe))
                    (foldr2 __tmp180935
                            _vars176578_
                            _args176620_
                            _fold-in176631_)))
                 (__tmp180938
                  (let ()
                    (declare (not safe))
                    (_recur176575_ _hd176622_ _hd-vars176650_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp180938
                                                     _fold-out176633_)))))
                                        (let ((__tmp180952
                                               (if (fx> (length _targets176629_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets176629_))
                                                   '#!void))
                                              (__tmp180949
                                               (let ((__tmp180951
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args176635_
                                                         _lambda-body176652_)))
                                                     (__tmp180950
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur176575_
                                                         _iv176621_
                                                         _vars176578_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp180951
                                                  __tmp180950
                                                  _targets176629_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp180952
                                           __tmp180949))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body176602176613_))
                                  (let ((_hd176606176658_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body176602176613_)))
                                        (_tl176607176660_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body176602176613_))))
                                    (let ((_depth176663_ _hd176606176658_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl176607176660_))
                                          (let ((_hd176608176665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl176607176660_)))
                                                (_tl176609176667_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl176607176660_))))
                                            (let ((_hd176670_
                                                   _hd176608176665_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl176609176667_))
                                                  (let ((_hd176610176672_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl176609176667_)))
                                                        (_tl176611176674_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl176609176667_))))
                                                    (let* ((_iv176677_
                                                            _hd176610176672_)
                                                           (_args176679_
                                                            _tl176611176674_))
                                                      (declare (not safe))
                                                      (_K176605176655_
                                                       _args176679_
                                                       _iv176677_
                                                       _hd176670_
                                                       _depth176663_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E176604176617_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E176604176617_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E176604176617_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e176596_))
                                _body176593_
                                (let ()
                                  (declare (not safe))
                                  (_BUG176570_ _e176577_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e176579176586_))
                              (let ((_hd176583176684_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e176579176586_)))
                                    (_tl176584176686_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e176579176586_))))
                                (let* ((_tag176689_ _hd176583176684_)
                                       (_body176691_ _tl176584176686_))
                                  (declare (not safe))
                                  (_K176582176681_ _body176691_ _tag176689_)))
                              (let ()
                                (declare (not safe))
                                (_E176581176590_))))))))
                 (_parse176342_
                  (lambda (_e176383_)
                    (letrec ((_make-cons176385_
                              (lambda (_hd176560_ _tl176561_)
                                (let ((_g180962_ _hd176560_)
                                      (_g180964_ _tl176561_))
                                  (begin
                                    (let ((_g180963_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g180962_)
                                                 (##vector-length _g180962_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g180963_ 2)))
                                          (error "Context expects 2 values"
                                                 _g180963_)))
                                    (let ((_g180965_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g180964_)
                                                 (##vector-length _g180964_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g180965_ 2)))
                                          (error "Context expects 2 values"
                                                 _g180965_)))
                                    (let ((_hd-e176563_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g180962_ 0)))
                                          (_hd-vars176564_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g180962_ 1))))
                                      (let ((_tl-e176565_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g180964_ 0)))
                                            (_tl-vars176566_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g180964_ 1))))
                                        (values (let ((__tmp180966
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e176563_
                                                               _tl-e176565_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp180966))
                                                (append _hd-vars176564_
                                                        _tl-vars176566_))))))))
                             (_make-splice176386_
                              (lambda (_where176499_
                                       _depth176500_
                                       _hd176501_
                                       _tl176502_)
                                (let ((_g180967_ _hd176501_)
                                      (_g180969_ _tl176502_))
                                  (begin
                                    (let ((_g180968_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g180967_)
                                                 (##vector-length _g180967_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g180968_ 2)))
                                          (error "Context expects 2 values"
                                                 _g180968_)))
                                    (let ((_g180970_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g180969_)
                                                 (##vector-length _g180969_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g180970_ 2)))
                                          (error "Context expects 2 values"
                                                 _g180970_)))
                                    (let ((_hd-e176504_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g180967_ 0)))
                                          (_hd-vars176505_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g180967_ 1))))
                                      (let ((_tl-e176506_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g180969_ 0)))
                                            (_tl-vars176507_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g180969_ 1))))
                                        (let _lp176509_ ((_rest176511_
                                                          _hd-vars176505_)
                                                         (_targets176512_ '())
                                                         (_vars176513_
                                                          _tl-vars176507_))
                                          (let* ((_rest176514176524_
                                                  _rest176511_)
                                                 (_else176516176532_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets176512_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx176339_
                                                           _where176499_))
                                                        (values (let ((__tmp180971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp180972
                                      (let ((__tmp180973
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e176506_
                                                     _targets176512_))))
                                        (declare (not safe))
                                        (cons _hd-e176504_ __tmp180973))))
                                 (declare (not safe))
                                 (cons _depth176500_ __tmp180972))))
                          (declare (not safe))
                          (cons 'splice __tmp180971))
                        _vars176513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K176518176541_
                                                  (lambda (_rest176535_
                                                           _hd-pat176536_
                                                           _hd-depth*176537_)
                                                    (let ((_hd-depth176539_
                                                           (fx- _hd-depth*176537_
                                                                _depth176500_)))
                                                      (if (fxpositive?
                                                           _hd-depth176539_)
                                                          (let ((__tmp180978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp180979
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat176536_))))
                           (declare (not safe))
                           (cons __tmp180979 _targets176512_)))
                        (__tmp180976
                         (let ((__tmp180977
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth176539_ _hd-pat176536_))))
                           (declare (not safe))
                           (cons __tmp180977 _vars176513_))))
                    (declare (not safe))
                    (_lp176509_ _rest176535_ __tmp180978 __tmp180976))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth176539_))
                      (let ((__tmp180974
                             (let ((__tmp180975
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat176536_))))
                               (declare (not safe))
                               (cons __tmp180975 _targets176512_))))
                        (declare (not safe))
                        (_lp176509_ _rest176535_ __tmp180974 _vars176513_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx176339_
                         _where176499_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest176514176524_))
                                                (let ((_hd176519176544_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest176514176524_)))
                                                      (_tl176520176546_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest176514176524_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd176519176544_))
                                                      (let ((_hd176521176549_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd176519176544_)))
                    (_tl176522176551_
                     (let () (declare (not safe)) (##cdr _hd176519176544_))))
                (let* ((_hd-depth*176554_ _hd176521176549_)
                       (_hd-pat176556_ _tl176522176551_)
                       (_rest176558_ _tl176520176546_))
                  (declare (not safe))
                  (_K176518176541_
                   _rest176558_
                   _hd-pat176556_
                   _hd-depth*176554_)))
              (let () (declare (not safe)) (_else176516176532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else176516176532_)))))))))))
                             (_recur176387_
                              (lambda (_e176392_ _is-e?176393_)
                                (if (_is-e?176393_ _e176392_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx176339_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e176392_))
                                        (let* ((_pat176395_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e176392_)))
                                               (_depth176397_
                                                (##structure-ref
                                                 _pat176395_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth176397_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat176395_))
                                                      (let ((__tmp180995
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth176397_ _pat176395_))))
                (declare (not safe))
                (cons __tmp180995 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat176395_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e176392_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e176392_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e176392_))
                                                (let* ((_e176399176406_
                                                        _e176392_)
                                                       (_E176401176410_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e176399176406_))))
                                                       (_E176400176489_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e176399176406_))
                      (let ((_e176402176414_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e176399176406_))))
                        (let ((_hd176403176417_
                               (let ()
                                 (declare (not safe))
                                 (##car _e176402176414_)))
                              (_tl176404176419_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e176402176414_))))
                          (let* ((_hd176422_ _hd176403176417_)
                                 (_rest176424_ _tl176404176419_))
                            (if '#t
                                (if (_is-e?176393_ _hd176422_)
                                    (let* ((_e176425176432_ _rest176424_)
                                           (_E176427176436_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx176339_
                                                 _e176392_))))
                                           (_E176426176450_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e176425176432_))
                                                  (let ((_e176428176440_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e176425176432_))))
                                                    (let ((_hd176429176443_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e176428176440_)))
                                                          (_tl176430176445_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e176428176440_))))
                                                      (let ((_rest176448_
                                                             _hd176429176443_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl176430176445_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur176387_ _rest176448_ false))
                        (let () (declare (not safe)) (_E176427176436_)))
                    (let () (declare (not safe)) (_E176427176436_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E176427176436_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E176426176450_)))
                                    (let _lp176454_ ((_rest176456_
                                                      _rest176424_)
                                                     (_depth176457_ '0))
                                      (let* ((_e176458176465_ _rest176456_)
                                             (_E176460176469_
                                              (lambda ()
                                                (if (fxpositive? _depth176457_)
                                                    (let ((__tmp180989
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur176387_
                                                              _hd176422_
                                                              _is-e?176393_)))
                                                          (__tmp180988
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur176387_
                                                              _rest176456_
                                                              _is-e?176393_))))
                                                      (declare (not safe))
                                                      (_make-splice176386_
                                                       _e176392_
                                                       _depth176457_
                                                       __tmp180989
                                                       __tmp180988))
                                                    (let ((__tmp180987
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur176387_
                                                              _hd176422_
                                                              _is-e?176393_)))
                                                          (__tmp180986
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur176387_
                                                              _rest176456_
                                                              _is-e?176393_))))
                                                      (declare (not safe))
                                                      (_make-cons176385_
                                                       __tmp180987
                                                       __tmp180986)))))
                                             (_E176459176485_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e176458176465_))
                                                    (let ((_e176461176473_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e176458176465_))))
                                                      (let ((_hd176462176476_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e176461176473_)))
                    (_tl176463176478_
                     (let () (declare (not safe)) (##cdr _e176461176473_))))
                (let* ((_rest-hd176481_ _hd176462176476_)
                       (_rest-tl176483_ _tl176463176478_))
                  (if '#t
                      (if (_is-e?176393_ _rest-hd176481_)
                          (let ((__tmp180994
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth176457_ '1))))
                            (declare (not safe))
                            (_lp176454_ _rest-tl176483_ __tmp180994))
                          (if (fxpositive? _depth176457_)
                              (let ((__tmp180993
                                     (let ()
                                       (declare (not safe))
                                       (_recur176387_
                                        _hd176422_
                                        _is-e?176393_)))
                                    (__tmp180992
                                     (let ()
                                       (declare (not safe))
                                       (_recur176387_
                                        _rest176456_
                                        _is-e?176393_))))
                                (declare (not safe))
                                (_make-splice176386_
                                 _e176392_
                                 _depth176457_
                                 __tmp180993
                                 __tmp180992))
                              (let ((__tmp180991
                                     (let ()
                                       (declare (not safe))
                                       (_recur176387_
                                        _hd176422_
                                        _is-e?176393_)))
                                    (__tmp180990
                                     (let ()
                                       (declare (not safe))
                                       (_recur176387_
                                        _rest176456_
                                        _is-e?176393_))))
                                (declare (not safe))
                                (_make-cons176385_ __tmp180991 __tmp180990))))
                      (let () (declare (not safe)) (_E176460176469_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E176460176469_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E176459176485_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E176401176410_))))))
                      (let () (declare (not safe)) (_E176401176410_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E176400176489_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e176392_))
                                                    (let ((_g180983_
                                                           (let ((__tmp180985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e176392_)))))
                     (declare (not safe))
                     (_recur176387_ __tmp180985 _is-e?176393_))))
              (begin
                (let ((_g180984_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g180983_)
                             (##vector-length _g180983_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g180984_ 2)))
                      (error "Context expects 2 values" _g180984_)))
                (let ((_e176493_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g180983_ 0)))
                      (_vars176494_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g180983_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e176493_))
                          _vars176494_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e176392_))
                                                        (let ((_g180980_
                                                               (let ((__tmp180982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e176392_)))))
                         (declare (not safe))
                         (_recur176387_ __tmp180982 _is-e?176393_))))
                  (begin
                    (let ((_g180981_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g180980_)
                                 (##vector-length _g180980_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g180981_ 2)))
                          (error "Context expects 2 values" _g180981_)))
                    (let ((_e176496_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g180980_ 0)))
                          (_vars176497_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g180980_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e176496_))
                              _vars176497_))))
                (values (let () (declare (not safe)) (cons 'datum _e176392_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g180996_
                             (let ()
                               (declare (not safe))
                               (_recur176387_ _e176383_ gx#ellipsis?))))
                        (begin
                          (let ((_g180997_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g180996_)
                                       (##vector-length _g180996_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g180997_ 2)))
                                (error "Context expects 2 values" _g180997_)))
                          (let ((_tree176389_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g180996_ 0)))
                                (_vars176390_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g180996_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars176390_))
                                _tree176389_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx176339_
                                   _vars176390_))))))))))
          (let* ((_e176343176353_ _stx176339_)
                 (_E176345176357_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx176339_))))
                 (_E176344176379_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e176343176353_))
                        (let ((_e176346176361_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e176343176353_))))
                          (let ((_hd176347176364_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e176346176361_)))
                                (_tl176348176366_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e176346176361_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl176348176366_))
                                (let ((_e176349176369_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl176348176366_))))
                                  (let ((_hd176350176372_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e176349176369_)))
                                        (_tl176351176374_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e176349176369_))))
                                    (let ((_form176377_ _hd176350176372_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl176351176374_))
                                          (if '#t
                                              (let ((__tmp180999
                                                     (let ((__tmp181000
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse176342_
                                                               _form176377_))))
                                                       (declare (not safe))
                                                       (_generate176341_
                                                        __tmp181000)))
                                                    (__tmp180998
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx176339_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp180999
                                                 __tmp180998))
                                              (let ()
                                                (declare (not safe))
                                                (_E176345176357_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E176345176357_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E176345176357_)))))
                        (let () (declare (not safe)) (_E176345176357_))))))
            (let () (declare (not safe)) (_E176344176379_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx175603_
               _identifier=?175604_
               _unwrap-e175605_
               _wrap-e175606_)
        (letrec ((_generate-bindings175608_
                  (lambda (_target176203_
                           _ids176204_
                           _clauses176205_
                           _clause-ids176206_
                           _E176207_)
                    (letrec ((_generate1176209_
                              (lambda (_clause176306_
                                       _clause-id176307_
                                       _E176308_)
                                (let ((__tmp181005
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id176307_ '())))
                                      (__tmp181001
                                       (let ((__tmp181002
                                              (let ((__tmp181004
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target176203_
                                                             '())))
                                                    (__tmp181003
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause175610_
                                                        _target176203_
                                                        _ids176204_
                                                        _clause176306_
                                                        _E176308_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp181004
                                                 __tmp181003))))
                                         (declare (not safe))
                                         (cons __tmp181002 '()))))
                                  (declare (not safe))
                                  (cons __tmp181005 __tmp181001)))))
                      (let _lp176211_ ((_rest176213_ _clauses176205_)
                                       (_rest-ids176214_ _clause-ids176206_)
                                       (_bindings176215_ '()))
                        (let* ((_rest176216176224_ _rest176213_)
                               (_else176218176232_
                                (lambda () _bindings176215_))
                               (_K176220176294_
                                (lambda (_rest176235_ _clause176236_)
                                  (let* ((_rest-ids176237176244_
                                          _rest-ids176214_)
                                         (_E176239176248_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids176237176244_)))
                                         (_K176240176282_
                                          (lambda (_rest-ids176251_
                                                   _clause-id176252_)
                                            (let* ((_rest-ids176253176261_
                                                    _rest-ids176251_)
                                                   (_else176255176269_
                                                    (lambda ()
                                                      (let ((__tmp181006
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1176209_
                        _clause176236_
                        _clause-id176252_
                        _E176207_))))
                (declare (not safe))
                (cons __tmp181006 _bindings176215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K176257176274_
                                                    (lambda (_next-clause-id176272_)
                                                      (let ((__tmp181007
                                                             (let ((__tmp181008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1176209_
                               _clause176236_
                               _clause-id176252_
                               _next-clause-id176272_))))
                       (declare (not safe))
                       (cons __tmp181008 _bindings176215_))))
                (declare (not safe))
                (_lp176211_ _rest176235_ _rest-ids176251_ __tmp181007)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids176253176261_))
                                                  (let* ((_hd176258176277_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids176253176261_)))
                                                         (_next-clause-id176280_
                                                          _hd176258176277_))
                                                    (declare (not safe))
                                                    (_K176257176274_
                                                     _next-clause-id176280_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else176255176269_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids176237176244_))
                                        (let ((_hd176241176285_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids176237176244_)))
                                              (_tl176242176287_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids176237176244_))))
                                          (let* ((_clause-id176290_
                                                  _hd176241176285_)
                                                 (_rest-ids176292_
                                                  _tl176242176287_))
                                            (declare (not safe))
                                            (_K176240176282_
                                             _rest-ids176292_
                                             _clause-id176290_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E176239176248_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest176216176224_))
                              (let ((_hd176221176297_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest176216176224_)))
                                    (_tl176222176299_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest176216176224_))))
                                (let* ((_clause176302_ _hd176221176297_)
                                       (_rest176304_ _tl176222176299_))
                                  (declare (not safe))
                                  (_K176220176294_
                                   _rest176304_
                                   _clause176302_)))
                              (let ()
                                (declare (not safe))
                                (_else176218176232_))))))))
                 (_generate-body175609_
                  (lambda (_bindings176163_ _body176164_)
                    (let _recur176166_ ((_rest176168_ _bindings176163_))
                      (let* ((_rest176169176177_ _rest176168_)
                             (_else176171176185_ (lambda () _body176164_))
                             (_K176173176191_
                              (lambda (_rest176188_ _hd176189_)
                                (let ((__tmp181010
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd176189_ '())))
                                      (__tmp181009
                                       (let ()
                                         (declare (not safe))
                                         (_recur176166_ _rest176188_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp181010
                                   __tmp181009)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest176169176177_))
                            (let ((_hd176174176194_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest176169176177_)))
                                  (_tl176175176196_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest176169176177_))))
                              (let* ((_hd176199_ _hd176174176194_)
                                     (_rest176201_ _tl176175176196_))
                                (declare (not safe))
                                (_K176173176191_ _rest176201_ _hd176199_)))
                            (let ()
                              (declare (not safe))
                              (_else176171176185_)))))))
                 (_generate-clause175610_
                  (lambda (_target176026_ _ids176027_ _clause176028_ _E176029_)
                    (letrec ((_generate1176031_
                              (lambda (_hd176118_ _fender176119_ _body176120_)
                                (let ((_g181011_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause175612_
                                          _hd176118_
                                          _ids176027_))))
                                  (begin
                                    (let ((_g181012_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g181011_)
                                                 (##vector-length _g181011_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g181012_ 2)))
                                          (error "Context expects 2 values"
                                                 _g181012_)))
                                    (let ((_e176122_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g181011_ 0)))
                                          (_mvars176123_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g181011_ 1))))
                                      (let* ((_pvars176125_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars176123_))))
                                             (_E176127_
                                              (let ((__tmp181013
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target176026_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E176029_ __tmp181013)))
                                             (_K176160_
                                              (let ((__tmp181014
                                                     (let ((__tmp181016
                                                            (map (lambda (_mvar176129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar176130_)
                           (let* ((_mvar176131176138_ _mvar176129_)
                                  (_E176133176142_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar176131176138_)))
                                  (_K176134176148_
                                   (lambda (_depth176145_ _id176146_)
                                     (let ((__tmp181017
                                            (let ((__tmp181018
                                                   (let ((__tmp181020
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id176146_)))
                                                         (__tmp181019
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar176130_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp181020
                                                      __tmp181019
                                                      _depth176145_))))
                                              (declare (not safe))
                                              (cons __tmp181018 '()))))
                                       (declare (not safe))
                                       (cons _id176146_ __tmp181017)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar176131176138_))
                                 (let ((_hd176135176151_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar176131176138_)))
                                       (_tl176136176153_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar176131176138_))))
                                   (let* ((_id176156_ _hd176135176151_)
                                          (_depth176158_ _tl176136176153_))
                                     (declare (not safe))
                                     (_K176134176148_
                                      _depth176158_
                                      _id176156_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E176133176142_)))))
                         _mvars176123_
                         _pvars176125_))
                   (__tmp181015
                    (if (let () (declare (not safe)) (eq? _fender176119_ '#t))
                        _body176120_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender176119_
                           _body176120_
                           _E176127_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp181016 __tmp181015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars176125_
                                                 __tmp181014))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match175611_
                                           _hd176118_
                                           _target176026_
                                           _e176122_
                                           _mvars176123_
                                           _K176160_
                                           _E176127_)))))))))
                      (let* ((_e176032176052_ _clause176028_)
                             (_E176041176056_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e176032176052_))))
                             (_E176034176090_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e176032176052_))
                                    (let ((_e176042176060_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e176032176052_))))
                                      (let ((_hd176043176063_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e176042176060_)))
                                            (_tl176044176065_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e176042176060_))))
                                        (let ((_hd176068_ _hd176043176063_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl176044176065_))
                                              (let ((_e176045176070_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl176044176065_))))
                                                (let ((_hd176046176073_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e176045176070_)))
                                                      (_tl176047176075_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e176045176070_))))
                                                  (let ((_fender176078_
                                                         _hd176046176073_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl176047176075_))
                                                        (let ((_e176048176080_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl176047176075_))))
                  (let ((_hd176049176083_
                         (let () (declare (not safe)) (##car _e176048176080_)))
                        (_tl176050176085_
                         (let ()
                           (declare (not safe))
                           (##cdr _e176048176080_))))
                    (let ((_body176088_ _hd176049176083_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl176050176085_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1176031_
                                 _hd176068_
                                 _fender176078_
                                 _body176088_))
                              (let () (declare (not safe)) (_E176041176056_)))
                          (let () (declare (not safe)) (_E176041176056_))))))
                (let () (declare (not safe)) (_E176041176056_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E176041176056_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E176041176056_)))))
                             (_E176033176114_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e176032176052_))
                                    (let ((_e176035176094_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e176032176052_))))
                                      (let ((_hd176036176097_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e176035176094_)))
                                            (_tl176037176099_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e176035176094_))))
                                        (let ((_hd176102_ _hd176036176097_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl176037176099_))
                                              (let ((_e176038176104_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl176037176099_))))
                                                (let ((_hd176039176107_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e176038176104_)))
                                                      (_tl176040176109_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e176038176104_))))
                                                  (let ((_body176112_
                                                         _hd176039176107_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl176040176109_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1176031_
                                                               _hd176102_
                                                               '#t
                                                               _body176112_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E176034176090_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E176034176090_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E176034176090_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E176034176090_))))))
                        (let () (declare (not safe)) (_E176033176114_))))))
                 (_generate-match175611_
                  (lambda (_where175775_
                           _target175776_
                           _hd175777_
                           _mvars175778_
                           _K175779_
                           _E175780_)
                    (letrec ((_BUG175782_
                              (lambda (_q176024_)
                                (error '"BUG: syntax-case; generate"
                                       _stx175603_
                                       _hd175777_
                                       _q176024_)))
                             (_recur175783_
                              (lambda (_e175874_
                                       _vars175875_
                                       _target175876_
                                       _E175877_
                                       _k175878_)
                                (let* ((_e175879175886_ _e175874_)
                                       (_E175881175890_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e175879175886_)))
                                       (_K175882176012_
                                        (lambda (_body175893_ _tag175894_)
                                          (let ((_$e175896_ _tag175894_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e175896_))
                                                (_k175878_ _vars175875_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e175896_))
                                                    (let ((__tmp181127
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target175876_)))
                                                          (__tmp181123
                                                           (let ((__tmp181125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp181126
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e175606_
                                    _body175893_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?175604_
                             __tmp181126
                             _target175876_)))
                         (__tmp181124 (_k175878_ _vars175875_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp181125 __tmp181124 _E175877_))))
              (declare (not safe))
              (gx#core-list 'if __tmp181127 __tmp181123 _E175877_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e175896_))
                                                        (_k175878_
                                                         (let ((__tmp181122
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body175893_ _target175876_))))
                   (declare (not safe))
                   (cons __tmp181122 _vars175875_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e175896_))
                    (let ((_$e175899_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd175900_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl175901_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp181121
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target175876_)))
                            (__tmp181102
                             (let ((__tmp181116
                                    (let ((__tmp181117
                                           (let ((__tmp181120
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e175899_ '())))
                                                 (__tmp181118
                                                  (let ((__tmp181119
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e175605_
                                                            _target175876_))))
                                                    (declare (not safe))
                                                    (cons __tmp181119 '()))))
                                             (declare (not safe))
                                             (cons __tmp181120 __tmp181118))))
                                      (declare (not safe))
                                      (cons __tmp181117 '())))
                                   (__tmp181103
                                    (let ((__tmp181106
                                           (let ((__tmp181112
                                                  (let ((__tmp181115
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd175900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp181113
                 (let ((__tmp181114
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e175899_))))
                   (declare (not safe))
                   (cons __tmp181114 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp181115
                                                          __tmp181113)))
                                                 (__tmp181107
                                                  (let ((__tmp181108
                                                         (let ((__tmp181111
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl175901_ '())))
                       (__tmp181109
                        (let ((__tmp181110
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e175899_))))
                          (declare (not safe))
                          (cons __tmp181110 '()))))
                   (declare (not safe))
                   (cons __tmp181111 __tmp181109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp181108 '()))))
                                             (declare (not safe))
                                             (cons __tmp181112 __tmp181107)))
                                          (__tmp181104
                                           (let* ((_body175902175909_
                                                   _body175893_)
                                                  (_E175904175913_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body175902175909_)))
                                                  (_K175905175921_
                                                   (lambda (_tl175916_
                                                            _hd175917_)
                                                     (let ((__tmp181105
                                                            (lambda (_vars175919_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur175783_
                         _tl175916_
                         _vars175919_
                         _$tl175901_
                         _E175877_
                         _k175878_)))))
               (declare (not safe))
               (_recur175783_
                _hd175917_
                _vars175875_
                _$hd175900_
                _E175877_
                __tmp181105)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body175902175909_))
                                                 (let ((_hd175906175924_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body175902175909_)))
                                                       (_tl175907175926_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body175902175909_))))
                                                   (let* ((_hd175929_
                                                           _hd175906175924_)
                                                          (_tl175931_
                                                           _tl175907175926_))
                                                     (declare (not safe))
                                                     (_K175905175921_
                                                      _tl175931_
                                                      _hd175929_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E175904175913_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp181106
                                       __tmp181104))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp181116
                                __tmp181103))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp181121 __tmp181102 _E175877_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e175896_))
                        (let* ((_body175932175939_ _body175893_)
                               (_E175934175943_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body175932175939_)))
                               (_K175935175994_
                                (lambda (_tl175946_ _hd175947_)
                                  (let* ((_rlen175949_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen175784_ _tl175946_)))
                                         (_$target175951_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd175953_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl175955_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp175957_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e175959_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd175961_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl175963_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars175965_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars175785_ _hd175947_)))
                                         (_lvars175967_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars175965_)))
                                         (_tlvars175969_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars175965_)))
                                         (_linit175973_
                                          (map (lambda (_var175971_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars175967_)))
                                    (letrec ((_make-loop175976_
                                              (lambda (_vars175980_)
                                                (let ((__tmp181053
                                                       (let ((__tmp181054
                                                              (let ((__tmp181090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp175957_ '())))
                            (__tmp181055
                             (let ((__tmp181056
                                    (let ((__tmp181089
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd175953_ _lvars175967_)))
                                          (__tmp181057
                                           (let ((__tmp181088
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd175953_)))
                                                 (__tmp181066
                                                  (let ((__tmp181083
                                                         (let ((__tmp181084
                                                                (let ((__tmp181087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e175959_ '())))
                              (__tmp181085
                               (let ((__tmp181086
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e175605_
                                         _$hd175953_))))
                                 (declare (not safe))
                                 (cons __tmp181086 '()))))
                          (declare (not safe))
                          (cons __tmp181087 __tmp181085))))
                   (declare (not safe))
                   (cons __tmp181084 '())))
                (__tmp181067
                 (let ((__tmp181073
                        (let ((__tmp181079
                               (let ((__tmp181082
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd175961_ '())))
                                     (__tmp181080
                                      (let ((__tmp181081
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e175959_))))
                                        (declare (not safe))
                                        (cons __tmp181081 '()))))
                                 (declare (not safe))
                                 (cons __tmp181082 __tmp181080)))
                              (__tmp181074
                               (let ((__tmp181075
                                      (let ((__tmp181078
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl175963_ '())))
                                            (__tmp181076
                                             (let ((__tmp181077
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e175959_))))
                                               (declare (not safe))
                                               (cons __tmp181077 '()))))
                                        (declare (not safe))
                                        (cons __tmp181078 __tmp181076))))
                                 (declare (not safe))
                                 (cons __tmp181075 '()))))
                          (declare (not safe))
                          (cons __tmp181079 __tmp181074)))
                       (__tmp181068
                        (let ((__tmp181069
                               (lambda (_hdvars175982_)
                                 (let ((__tmp181070
                                        (let ((__tmp181071
                                               (map (lambda (_svar175984_
                                                             _lvar175985_)
                                                      (let ((__tmp181072
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar175984_ _hdvars175982_ _BUG175782_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp181072 _lvar175985_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars175965_
                                                    _lvars175967_)))
                                          (declare (not safe))
                                          (cons _$lp-tl175963_ __tmp181071))))
                                   (declare (not safe))
                                   (cons _$lp175957_ __tmp181070)))))
                          (declare (not safe))
                          (_recur175783_
                           _hd175947_
                           '()
                           _$lp-hd175961_
                           _E175877_
                           __tmp181069))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp181073 __tmp181068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp181083
                                                     __tmp181067)))
                                                 (__tmp181058
                                                  (let ((__tmp181062
                                                         (map (lambda (_lvar175987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar175988_)
                        (let ((__tmp181065
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar175988_ '())))
                              (__tmp181063
                               (let ((__tmp181064
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar175987_))))
                                 (declare (not safe))
                                 (cons __tmp181064 '()))))
                          (declare (not safe))
                          (cons __tmp181065 __tmp181063)))
                      _lvars175967_
                      _tlvars175969_))
                (__tmp181059
                 (_k175878_
                  (let ((__tmp181060
                         (lambda (_svar175990_ _tlvar175991_ _r175992_)
                           (let ((__tmp181061
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar175990_ _tlvar175991_))))
                             (declare (not safe))
                             (cons __tmp181061 _r175992_)))))
                    (declare (not safe))
                    (foldl2 __tmp181060
                            _vars175980_
                            _svars175965_
                            _tlvars175969_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp181062
                                                     __tmp181059))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp181088
                                              __tmp181066
                                              __tmp181058))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp181089
                                       __tmp181057))))
                               (declare (not safe))
                               (cons __tmp181056 '()))))
                        (declare (not safe))
                        (cons __tmp181090 __tmp181055))))
                 (declare (not safe))
                 (cons __tmp181054 '())))
              (__tmp181051
               (let ((__tmp181052
                      (let ()
                        (declare (not safe))
                        (cons _$target175951_ _linit175973_))))
                 (declare (not safe))
                 (cons _$lp175957_ __tmp181052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp181053
                                                   __tmp181051)))))
                                      (let ((_body175978_
                                             (let ((__tmp181092
                                                    (let ((__tmp181093
                                                           (let ((__tmp181096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp181097
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl175955_ '()))))
                            (declare (not safe))
                            (cons _$target175951_ __tmp181097)))
                         (__tmp181094
                          (let ((__tmp181095
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target175876_
                                    _rlen175949_))))
                            (declare (not safe))
                            (cons __tmp181095 '()))))
                     (declare (not safe))
                     (cons __tmp181096 __tmp181094))))
              (declare (not safe))
              (cons __tmp181093 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp181091
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur175783_
                                                       _tl175946_
                                                       _vars175875_
                                                       _$tl175955_
                                                       _E175877_
                                                       _make-loop175976_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp181092
                                                __tmp181091))))
                                        (let ((__tmp181101
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target175876_)))
                                              (__tmp181098
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen175949_))
                                                   _body175978_
                                                   (let ((__tmp181099
                                                          (let ((__tmp181100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target175876_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp181100 _rlen175949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp181099
                                                      _body175978_
                                                      _E175877_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp181101
                                           __tmp181098
                                           _E175877_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body175932175939_))
                              (let ((_hd175936175997_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body175932175939_)))
                                    (_tl175937175999_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body175932175939_))))
                                (let* ((_hd176002_ _hd175936175997_)
                                       (_tl176004_ _tl175937175999_))
                                  (declare (not safe))
                                  (_K175935175994_ _tl176004_ _hd176002_)))
                              (let () (declare (not safe)) (_E175934175943_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e175896_))
                            (let ((__tmp181050
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target175876_)))
                                  (__tmp181049 (_k175878_ _vars175875_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp181050
                               __tmp181049
                               _E175877_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e175896_))
                                (let ((_$e176006_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp181048
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target175876_)))
                                        (__tmp181040
                                         (let ((__tmp181042
                                                (let ((__tmp181043
                                                       (let ((__tmp181047
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e176006_ '())))
                     (__tmp181044
                      (let ((__tmp181045
                             (let ((__tmp181046
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e175605_
                                       _target175876_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp181046))))
                        (declare (not safe))
                        (cons __tmp181045 '()))))
                 (declare (not safe))
                 (cons __tmp181047 __tmp181044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp181043 '())))
                                               (__tmp181041
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur175783_
                                                   _body175893_
                                                   _vars175875_
                                                   _$e176006_
                                                   _E175877_
                                                   _k175878_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp181042
                                            __tmp181041))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp181048
                                     __tmp181040
                                     _E175877_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e175896_))
                                    (let ((_$e176008_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp181039
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target175876_)))
                                            (__tmp181031
                                             (let ((__tmp181033
                                                    (let ((__tmp181034
                                                           (let ((__tmp181038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e176008_ '())))
                         (__tmp181035
                          (let ((__tmp181036
                                 (let ((__tmp181037
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e175605_
                                           _target175876_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp181037))))
                            (declare (not safe))
                            (cons __tmp181036 '()))))
                     (declare (not safe))
                     (cons __tmp181038 __tmp181035))))
              (declare (not safe))
              (cons __tmp181034 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp181032
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur175783_
                                                       _body175893_
                                                       _vars175875_
                                                       _$e176008_
                                                       _E175877_
                                                       _k175878_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp181033
                                                __tmp181032))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp181039
                                         __tmp181031
                                         _E175877_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e175896_))
                                        (let ((_$e176010_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp181030
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target175876_)))
                                                (__tmp181021
                                                 (let ((__tmp181025
                                                        (let ((__tmp181026
                                                               (let ((__tmp181029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e176010_ '())))
                             (__tmp181027
                              (let ((__tmp181028
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target175876_))))
                                (declare (not safe))
                                (cons __tmp181028 '()))))
                         (declare (not safe))
                         (cons __tmp181029 __tmp181027))))
                  (declare (not safe))
                  (cons __tmp181026 '())))
               (__tmp181022
                (let ((__tmp181024
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e176010_ _body175893_)))
                      (__tmp181023 (_k175878_ _vars175875_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp181024 __tmp181023 _E175877_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp181025
                                                    __tmp181022))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp181030
                                             __tmp181021
                                             _E175877_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG175782_ _e175874_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e175879175886_))
                                      (let ((_hd175883176015_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e175879175886_)))
                                            (_tl175884176017_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e175879175886_))))
                                        (let* ((_tag176020_ _hd175883176015_)
                                               (_body176022_ _tl175884176017_))
                                          (declare (not safe))
                                          (_K175882176012_
                                           _body176022_
                                           _tag176020_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E175881175890_))))))
                             (_splice-rlen175784_
                              (lambda (_e175836_)
                                (let _lp175838_ ((_e175840_ _e175836_)
                                                 (_n175841_ '0))
                                  (let* ((_e175842175849_ _e175840_)
                                         (_E175844175853_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e175842175849_)))
                                         (_K175845175862_
                                          (lambda (_body175856_ _tag175857_)
                                            (let ((_$e175859_ _tag175857_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e175859_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx175603_
                                                     _where175775_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e175859_))
                                                      (let ((__tmp181129
                                                             (cdr _body175856_))
                                                            (__tmp181128
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n175841_ '1))))
                (declare (not safe))
                (_lp175838_ __tmp181129 __tmp181128))
              _n175841_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e175842175849_))
                                        (let ((_hd175846175865_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e175842175849_)))
                                              (_tl175847175867_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e175842175849_))))
                                          (let* ((_tag175870_ _hd175846175865_)
                                                 (_body175872_
                                                  _tl175847175867_))
                                            (declare (not safe))
                                            (_K175845175862_
                                             _body175872_
                                             _tag175870_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E175844175853_)))))))
                             (_splice-vars175785_
                              (lambda (_e175792_)
                                (let _recur175794_ ((_e175796_ _e175792_)
                                                    (_vars175797_ '()))
                                  (let* ((_e175798175805_ _e175796_)
                                         (_E175800175809_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e175798175805_)))
                                         (_K175801175824_
                                          (lambda (_body175812_ _tag175813_)
                                            (let ((_$e175815_ _tag175813_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e175815_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body175812_
                                                          _vars175797_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e175815_))
                  (let () (declare (not safe)) (eq? 'splice _$e175815_)))
              (let ((__tmp181132 (cdr _body175812_))
                    (__tmp181130
                     (let ((__tmp181131 (car _body175812_)))
                       (declare (not safe))
                       (_recur175794_ __tmp181131 _vars175797_))))
                (declare (not safe))
                (_recur175794_ __tmp181132 __tmp181130))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e175815_))
                      (let () (declare (not safe)) (eq? 'box _$e175815_)))
                  (let ()
                    (declare (not safe))
                    (_recur175794_ _body175812_ _vars175797_))
                  _vars175797_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e175798175805_))
                                        (let ((_hd175802175827_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e175798175805_)))
                                              (_tl175803175829_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e175798175805_))))
                                          (let* ((_tag175832_ _hd175802175827_)
                                                 (_body175834_
                                                  _tl175803175829_))
                                            (declare (not safe))
                                            (_K175801175824_
                                             _body175834_
                                             _tag175832_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E175800175809_)))))))
                             (_make-body175786_
                              (lambda (_vars175788_)
                                (let ((__tmp181133
                                       (map (lambda (_mvar175790_)
                                              (let ((__tmp181134
                                                     (car _mvar175790_)))
                                                (declare (not safe))
                                                (assgetq __tmp181134
                                                         _vars175788_
                                                         _BUG175782_)))
                                            _mvars175778_)))
                                  (declare (not safe))
                                  (cons _K175779_ __tmp181133)))))
                      (let ()
                        (declare (not safe))
                        (_recur175783_
                         _hd175777_
                         '()
                         _target175776_
                         _E175780_
                         _make-body175786_)))))
                 (_parse-clause175612_
                  (lambda (_hd175681_ _ids175682_)
                    (let _recur175684_ ((_e175686_ _hd175681_)
                                        (_vars175687_ '())
                                        (_depth175688_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e175686_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e175686_))
                              (values '(any) _vars175687_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e175686_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx175603_
                                     _hd175681_))
                                  (if (let ((__tmp181150
                                             (lambda (_id175690_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e175686_
                                                  _id175690_)))))
                                        (declare (not safe))
                                        (find __tmp181150 _ids175682_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e175686_))
                                              _vars175687_)
                                      (if (let ((__tmp181148
                                                 (lambda (_var175692_)
                                                   (let ((__tmp181149
                                                          (car _var175692_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e175686_
                                                      __tmp181149)))))
                                            (declare (not safe))
                                            (find __tmp181148 _vars175687_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx175603_
                                             _e175686_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e175686_))
                                                  (let ((__tmp181147
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e175686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth175688_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp181147
                                                          _vars175687_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e175686_))
                              (let* ((_e175693175700_ _e175686_)
                                     (_E175695175704_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e175693175700_))))
                                     (_E175694175765_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e175693175700_))
                                            (let ((_e175696175708_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e175693175700_))))
                                              (let ((_hd175697175711_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e175696175708_)))
                                                    (_tl175698175713_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e175696175708_))))
                                                (let* ((_hd175716_
                                                        _hd175697175711_)
                                                       (_rest175718_
                                                        _tl175698175713_))
                                                  (if '#t
                                                      (let* ((_make-pair175733_
                                                              (lambda (_tag175720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd175721_
                               _tl175722_)
                        (let* ((_hd-depth175724_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag175720_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth175688_ '1))
                                    _depth175688_))
                               (_g181142_
                                (let ()
                                  (declare (not safe))
                                  (_recur175684_
                                   _hd175721_
                                   _vars175687_
                                   _hd-depth175724_))))
                          (begin
                            (let ((_g181143_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g181142_)
                                         (##vector-length _g181142_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g181143_ 2)))
                                  (error "Context expects 2 values"
                                         _g181143_)))
                            (let ((_hd175726_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g181142_ 0)))
                                  (_vars175727_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g181142_ 1))))
                              (let ((_g181144_
                                     (let ()
                                       (declare (not safe))
                                       (_recur175684_
                                        _tl175722_
                                        _vars175727_
                                        _depth175688_))))
                                (begin
                                  (let ((_g181145_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g181144_)
                                               (##vector-length _g181144_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g181145_ 2)))
                                        (error "Context expects 2 values"
                                               _g181145_)))
                                  (let ((_tl175729_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g181144_ 0)))
                                        (_vars175730_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g181144_ 1))))
                                    (let ()
                                      (values (let ((__tmp181146
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd175726_
                                                             _tl175729_))))
                                                (declare (not safe))
                                                (cons _tag175720_ __tmp181146))
                                              _vars175730_))))))))))
                     (_e175734175741_ _rest175718_)
                     (_E175736175745_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair175733_ 'cons _hd175716_ _rest175718_))))
                     (_E175735175761_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e175734175741_))
                            (let ((_e175737175749_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e175734175741_))))
                              (let ((_hd175738175752_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e175737175749_)))
                                    (_tl175739175754_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e175737175749_))))
                                (let* ((_rest-hd175757_ _hd175738175752_)
                                       (_rest-tl175759_ _tl175739175754_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd175757_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair175733_
                                             'splice
                                             _hd175716_
                                             _rest-tl175759_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair175733_
                                             'cons
                                             _hd175716_
                                             _rest175718_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E175736175745_))))))
                            (let () (declare (not safe)) (_E175736175745_))))))
                (let () (declare (not safe)) (_E175735175761_)))
              (let () (declare (not safe)) (_E175695175704_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E175695175704_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E175694175765_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e175686_))
                                  (values '(null) _vars175687_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e175686_))
                                      (let ((_g181139_
                                             (let ((__tmp181141
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e175686_)))))
                                               (declare (not safe))
                                               (_recur175684_
                                                __tmp181141
                                                _vars175687_
                                                _depth175688_))))
                                        (begin
                                          (let ((_g181140_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g181139_)
                                                       (##vector-length
                                                        _g181139_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g181140_ 2)))
                                                (error "Context expects 2 values"
                                                       _g181140_)))
                                          (let ((_e175769_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g181139_ 0)))
                                                (_vars175770_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g181139_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e175769_))
                                                    _vars175770_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e175686_))
                                          (let ((_g181136_
                                                 (let ((__tmp181138
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e175686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur175684_
                                                    __tmp181138
                                                    _vars175687_
                                                    _depth175688_))))
                                            (begin
                                              (let ((_g181137_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g181136_)
                                                           (##vector-length
                                                            _g181136_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g181137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g181137_)))
                                              (let ((_e175772_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g181136_
                                                        0)))
                                                    (_vars175773_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g181136_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e175772_))
                                                        _vars175773_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e175686_))
                                              (values (let ((__tmp181135
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e175686_))))
                (declare (not safe))
                (cons 'datum __tmp181135))
              _vars175687_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx175603_
                                                 _e175686_))))))))))))
          (let* ((_e175613175626_ _stx175603_)
                 (_E175615175630_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e175613175626_))))
                 (_E175614175677_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e175613175626_))
                        (let ((_e175616175634_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e175613175626_))))
                          (let ((_hd175617175637_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e175616175634_)))
                                (_tl175618175639_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e175616175634_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl175618175639_))
                                (let ((_e175619175642_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl175618175639_))))
                                  (let ((_hd175620175645_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e175619175642_)))
                                        (_tl175621175647_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e175619175642_))))
                                    (let ((_expr175650_ _hd175620175645_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl175621175647_))
                                          (let ((_e175622175652_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl175621175647_))))
                                            (let ((_hd175623175655_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e175622175652_)))
                                                  (_tl175624175657_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e175622175652_))))
                                              (let* ((_ids175660_
                                                      _hd175623175655_)
                                                     (_clauses175662_
                                                      _tl175624175657_))
                                                (if '#t
                                                    (if (let ((__tmp181168
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids175660_))))
                  (declare (not safe))
                  (not __tmp181168))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx175603_
                   _ids175660_))
                (if (let ((__tmp181167
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses175662_))))
                      (declare (not safe))
                      (not __tmp181167))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx175603_))
                    (let* ((_ids175664_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids175660_)))
                           (_clauses175666_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses175662_)))
                           (_clause-ids175668_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses175666_)))
                           (_E175670_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target175672_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first175674_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses175666_))
                                _E175670_
                                (car _clause-ids175668_))))
                      (let ((__tmp181152
                             (let ((__tmp181153
                                    (let ((__tmp181155
                                           (let ((__tmp181160
                                                  (let ((__tmp181161
                                                         (let ((__tmp181166
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E175670_ '())))
                       (__tmp181162
                        (let ((__tmp181163
                               (let ((__tmp181165
                                      (let ()
                                        (declare (not safe))
                                        (cons _target175672_ '())))
                                     (__tmp181164
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target175672_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp181165
                                  __tmp181164))))
                          (declare (not safe))
                          (cons __tmp181163 '()))))
                   (declare (not safe))
                   (cons __tmp181166 __tmp181162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp181161 '())))
                                                 (__tmp181156
                                                  (let ((__tmp181159
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings175608_
                                                            _target175672_
                                                            _ids175664_
                                                            _clauses175666_
                                                            _clause-ids175668_
                                                            _E175670_)))
                                                        (__tmp181157
                                                         (let ((__tmp181158
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr175650_ '()))))
                   (declare (not safe))
                   (cons _first175674_ __tmp181158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body175609_
                                                     __tmp181159
                                                     __tmp181157))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp181160
                                              __tmp181156)))
                                          (__tmp181154
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx175603_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp181155
                                       __tmp181154))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp181153)))
                            (__tmp181151
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx175603_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp181152 __tmp181151)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E175615175630_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E175615175630_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E175615175630_)))))
                        (let () (declare (not safe)) (_E175615175630_))))))
            (let () (declare (not safe)) (_E175614175677_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx176313_)
        (let* ((_identifier=?176315_ 'free-identifier=?)
               (_unwrap-e176317_ 'syntax-e)
               (_wrap-e176319_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx176313_
           _identifier=?176315_
           _unwrap-e176317_
           _wrap-e176319_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx176321_ _identifier=?176322_)
        (let* ((_unwrap-e176324_ 'syntax-e) (_wrap-e176326_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx176321_
           _identifier=?176322_
           _unwrap-e176324_
           _wrap-e176326_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx176328_ _identifier=?176329_ _unwrap-e176330_)
        (let ((_wrap-e176332_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx176328_
           _identifier=?176329_
           _unwrap-e176330_
           _wrap-e176332_))))
    (define gx#macro-expand-syntax-case
      (lambda _g181170_
        (let ((_g181169_ (let () (declare (not safe)) (##length _g181170_))))
          (cond ((let () (declare (not safe)) (##fx= _g181169_ 1))
                 (apply (lambda (_stx176313_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx176313_)))
                        _g181170_))
                ((let () (declare (not safe)) (##fx= _g181169_ 2))
                 (apply (lambda (_stx176321_ _identifier=?176322_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx176321_
                             _identifier=?176322_)))
                        _g181170_))
                ((let () (declare (not safe)) (##fx= _g181169_ 3))
                 (apply (lambda (_stx176328_
                                 _identifier=?176329_
                                 _unwrap-e176330_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx176328_
                             _identifier=?176329_
                             _unwrap-e176330_)))
                        _g181170_))
                ((let () (declare (not safe)) (##fx= _g181169_ 4))
                 (apply (lambda (_stx176334_
                                 _identifier=?176335_
                                 _unwrap-e176336_
                                 _wrap-e176337_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx176334_
                             _identifier=?176335_
                             _unwrap-e176336_
                             _wrap-e176337_)))
                        _g181170_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g181170_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx175600_)
        (if (let () (declare (not safe)) (gx#identifier? _stx175600_))
            (let ((__tmp181171
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx175600_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp181171 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd175558_ . _rest175559_)
        (let ((_len175561_ (length _hd175558_)))
          (let _lp175563_ ((_rest175565_ _rest175559_))
            (let* ((_rest175566175574_ _rest175565_)
                   (_else175568175582_ (lambda () '#!void))
                   (_K175570175588_
                    (lambda (_rest175585_ _hd175586_)
                      (if (fx= _len175561_ (length _hd175586_))
                          (let ()
                            (declare (not safe))
                            (_lp175563_ _rest175585_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd175586_))))))
              (if (let () (declare (not safe)) (##pair? _rest175566175574_))
                  (let ((_hd175571175591_
                         (let ()
                           (declare (not safe))
                           (##car _rest175566175574_)))
                        (_tl175572175593_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest175566175574_))))
                    (let* ((_hd175596_ _hd175571175591_)
                           (_rest175598_ _tl175572175593_))
                      (declare (not safe))
                      (_K175570175588_ _rest175598_ _hd175596_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx175516_ _n175517_)
        (let _lp175519_ ((_rest175521_ _stx175516_) (_r175522_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest175521_))
              (let* ((_g175523175530_
                      (let () (declare (not safe)) (gx#syntax-e _rest175521_)))
                     (_E175525175534_
                      (lambda ()
                        (error '"No clause matching" _g175523175530_)))
                     (_K175526175540_
                      (lambda (_rest175537_ _hd175538_)
                        (let ((__tmp181176
                               (let ()
                                 (declare (not safe))
                                 (cons _hd175538_ _r175522_))))
                          (declare (not safe))
                          (_lp175519_ _rest175537_ __tmp181176)))))
                (if (let () (declare (not safe)) (##pair? _g175523175530_))
                    (let ((_hd175527175543_
                           (let ()
                             (declare (not safe))
                             (##car _g175523175530_)))
                          (_tl175528175545_
                           (let ()
                             (declare (not safe))
                             (##cdr _g175523175530_))))
                      (let* ((_hd175548_ _hd175527175543_)
                             (_rest175550_ _tl175528175545_))
                        (declare (not safe))
                        (_K175526175540_ _rest175550_ _hd175548_)))
                    (let () (declare (not safe)) (_E175525175534_))))
              (let _lp175552_ ((_n175554_ _n175517_)
                               (_l175555_ _r175522_)
                               (_r175556_ _rest175521_))
                (if (let () (declare (not safe)) (null? _l175555_))
                    (values _l175555_ _r175556_)
                    (if (fxpositive? _n175554_)
                        (let ((__tmp181175
                               (let ()
                                 (declare (not safe))
                                 (fx- _n175554_ '1)))
                              (__tmp181174 (cdr _l175555_))
                              (__tmp181172
                               (let ((__tmp181173 (car _l175555_)))
                                 (declare (not safe))
                                 (cons __tmp181173 _r175556_))))
                          (declare (not safe))
                          (_lp175552_ __tmp181175 __tmp181174 __tmp181172))
                        (values (reverse _l175555_) _r175556_))))))))))
