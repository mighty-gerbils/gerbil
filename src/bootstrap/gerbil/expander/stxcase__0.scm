(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708202848)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp180929 (list gx#expander::t))
            (__tmp180927
             (let ((__tmp180928
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp180928 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp180929
         '(id depth)
         __tmp180927
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args176857_
        (apply make-instance gx#syntax-pattern::t _$args176857_)))
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
      (lambda (_self176854_ _stx176855_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx176855_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx176336_)
        (letrec ((_generate176338_
                  (lambda (_e176565_)
                    (letrec ((_BUG176567_
                              (lambda (_q176729_)
                                (error '"BUG: syntax; generate"
                                       _stx176336_
                                       _e176565_
                                       _q176729_)))
                             (_local-pattern-e176568_
                              (lambda (_pat176727_)
                                (let ((__tmp180930
                                       (##structure-ref
                                        _pat176727_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp180930))))
                             (_getvar176569_
                              (lambda (_q176724_ _vars176725_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q176724_
                                           _vars176725_
                                           _BUG176567_))))
                             (_getarg176570_
                              (lambda (_arg176690_ _vars176691_)
                                (let* ((_arg176692176699_ _arg176690_)
                                       (_E176694176703_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg176692176699_)))
                                       (_K176695176712_
                                        (lambda (_e176706_ _tag176707_)
                                          (let ((_$e176709_ _tag176707_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e176709_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar176569_
                                                   _e176706_
                                                   _vars176691_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e176709_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e176568_
                                                       _e176706_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG176567_
                                                       _arg176690_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg176692176699_))
                                      (let ((_hd176696176715_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg176692176699_)))
                                            (_tl176697176717_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg176692176699_))))
                                        (let* ((_tag176720_ _hd176696176715_)
                                               (_e176722_ _tl176697176717_))
                                          (declare (not safe))
                                          (_K176695176712_
                                           _e176722_
                                           _tag176720_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E176694176703_)))))))
                      (let _recur176572_ ((_e176574_ _e176565_)
                                          (_vars176575_ '()))
                        (let* ((_e176576176583_ _e176574_)
                               (_E176578176587_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e176576176583_)))
                               (_K176579176678_
                                (lambda (_body176590_ _tag176591_)
                                  (let ((_$e176593_ _tag176591_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e176593_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body176590_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e176593_))
                                            (let ((_id176596_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body176590_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id176596_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks176598_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id176596_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks176598_))
                                                        (let ((__tmp180958
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body176590_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp180958))
                (let ((__tmp180957
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body176590_)))
                      (__tmp180956
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body176590_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp180957
                   __tmp180956
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id176596_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body176590_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG176567_
                                                         _e176574_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e176593_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e176568_
                                                   _body176590_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e176593_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar176569_
                                                       _body176590_
                                                       _vars176575_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e176593_))
                                                        (let ((__tmp180954
                                                               (let ((__tmp180955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body176590_)))
                         (declare (not safe))
                         (_recur176572_ __tmp180955 _vars176575_)))
                      (__tmp180952
                       (let ((__tmp180953 (cdr _body176590_)))
                         (declare (not safe))
                         (_recur176572_ __tmp180953 _vars176575_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp180954 __tmp180952))
                (if (let () (declare (not safe)) (eq? 'vector _$e176593_))
                    (let ((__tmp180951
                           (let ()
                             (declare (not safe))
                             (_recur176572_ _body176590_ _vars176575_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp180951))
                    (if (let () (declare (not safe)) (eq? 'box _$e176593_))
                        (let ((__tmp180950
                               (let ()
                                 (declare (not safe))
                                 (_recur176572_ _body176590_ _vars176575_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp180950))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e176593_))
                            (let* ((_body176599176610_ _body176590_)
                                   (_E176601176614_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body176599176610_)))
                                   (_K176602176652_
                                    (lambda (_args176617_
                                             _iv176618_
                                             _hd176619_
                                             _depth176620_)
                                      (let* ((_targets176626_
                                              (map (lambda (_g176621176623_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg176570_
                                                        _g176621176623_
                                                        _vars176575_)))
                                                   _args176617_))
                                             (_fold-in176628_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args176617_)))
                                             (_fold-out176630_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args176632_
                                              (let ((__tmp180931
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out176630_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp180931
                                                        _fold-in176628_)))
                                             (_lambda-body176649_
                                              (if (fx> _depth176620_ '1)
                                                  (let ((_r-args176640_
                                                         (map (lambda (_arg176634_)
                                                                (let ((__tmp180936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg176634_)))
                          (declare (not safe))
                          (cons 'ref __tmp180936)))
                      _args176617_))
                (_r-vars176641_
                 (let ((__tmp180937
                        (lambda (_arg176636_ _var176637_ _r176638_)
                          (let ((__tmp180938
                                 (let ((__tmp180939 (cdr _arg176636_)))
                                   (declare (not safe))
                                   (cons __tmp180939 _var176637_))))
                            (declare (not safe))
                            (cons __tmp180938 _r176638_)))))
                   (declare (not safe))
                   (foldr2 __tmp180937
                           _vars176575_
                           _args176617_
                           _fold-in176628_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp180940
                                                           (let ((__tmp180941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp180945
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth176620_ '1)))
                                (__tmp180942
                                 (let ((__tmp180943
                                        (let ((__tmp180944
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out176630_))))
                                          (declare (not safe))
                                          (cons __tmp180944 _r-args176640_))))
                                   (declare (not safe))
                                   (cons _hd176619_ __tmp180943))))
                            (declare (not safe))
                            (cons __tmp180945 __tmp180942))))
                     (declare (not safe))
                     (cons 'splice __tmp180941))))
              (declare (not safe))
              (_recur176572_ __tmp180940 _r-vars176641_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars176647_
                                                          (let ((__tmp180932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg176643_ _var176644_ _r176645_)
                           (let ((__tmp180933
                                  (let ((__tmp180934 (cdr _arg176643_)))
                                    (declare (not safe))
                                    (cons __tmp180934 _var176644_))))
                             (declare (not safe))
                             (cons __tmp180933 _r176645_)))))
                    (declare (not safe))
                    (foldr2 __tmp180932
                            _vars176575_
                            _args176617_
                            _fold-in176628_)))
                 (__tmp180935
                  (let ()
                    (declare (not safe))
                    (_recur176572_ _hd176619_ _hd-vars176647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp180935
                                                     _fold-out176630_)))))
                                        (let ((__tmp180949
                                               (if (fx> (length _targets176626_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets176626_))
                                                   '#!void))
                                              (__tmp180946
                                               (let ((__tmp180948
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args176632_
                                                         _lambda-body176649_)))
                                                     (__tmp180947
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur176572_
                                                         _iv176618_
                                                         _vars176575_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp180948
                                                  __tmp180947
                                                  _targets176626_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp180949
                                           __tmp180946))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body176599176610_))
                                  (let ((_hd176603176655_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body176599176610_)))
                                        (_tl176604176657_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body176599176610_))))
                                    (let ((_depth176660_ _hd176603176655_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl176604176657_))
                                          (let ((_hd176605176662_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl176604176657_)))
                                                (_tl176606176664_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl176604176657_))))
                                            (let ((_hd176667_
                                                   _hd176605176662_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl176606176664_))
                                                  (let ((_hd176607176669_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl176606176664_)))
                                                        (_tl176608176671_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl176606176664_))))
                                                    (let* ((_iv176674_
                                                            _hd176607176669_)
                                                           (_args176676_
                                                            _tl176608176671_))
                                                      (declare (not safe))
                                                      (_K176602176652_
                                                       _args176676_
                                                       _iv176674_
                                                       _hd176667_
                                                       _depth176660_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E176601176614_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E176601176614_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E176601176614_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e176593_))
                                _body176590_
                                (let ()
                                  (declare (not safe))
                                  (_BUG176567_ _e176574_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e176576176583_))
                              (let ((_hd176580176681_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e176576176583_)))
                                    (_tl176581176683_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e176576176583_))))
                                (let* ((_tag176686_ _hd176580176681_)
                                       (_body176688_ _tl176581176683_))
                                  (declare (not safe))
                                  (_K176579176678_ _body176688_ _tag176686_)))
                              (let ()
                                (declare (not safe))
                                (_E176578176587_))))))))
                 (_parse176339_
                  (lambda (_e176380_)
                    (letrec ((_make-cons176382_
                              (lambda (_hd176557_ _tl176558_)
                                (let ((_g180959_ _hd176557_)
                                      (_g180961_ _tl176558_))
                                  (begin
                                    (let ((_g180960_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g180959_)
                                                 (##vector-length _g180959_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g180960_ 2)))
                                          (error "Context expects 2 values"
                                                 _g180960_)))
                                    (let ((_g180962_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g180961_)
                                                 (##vector-length _g180961_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g180962_ 2)))
                                          (error "Context expects 2 values"
                                                 _g180962_)))
                                    (let ((_hd-e176560_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g180959_ 0)))
                                          (_hd-vars176561_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g180959_ 1))))
                                      (let ((_tl-e176562_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g180961_ 0)))
                                            (_tl-vars176563_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g180961_ 1))))
                                        (values (let ((__tmp180963
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e176560_
                                                               _tl-e176562_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp180963))
                                                (append _hd-vars176561_
                                                        _tl-vars176563_))))))))
                             (_make-splice176383_
                              (lambda (_where176496_
                                       _depth176497_
                                       _hd176498_
                                       _tl176499_)
                                (let ((_g180964_ _hd176498_)
                                      (_g180966_ _tl176499_))
                                  (begin
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
                                    (let ((_g180967_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g180966_)
                                                 (##vector-length _g180966_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g180967_ 2)))
                                          (error "Context expects 2 values"
                                                 _g180967_)))
                                    (let ((_hd-e176501_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g180964_ 0)))
                                          (_hd-vars176502_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g180964_ 1))))
                                      (let ((_tl-e176503_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g180966_ 0)))
                                            (_tl-vars176504_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g180966_ 1))))
                                        (let _lp176506_ ((_rest176508_
                                                          _hd-vars176502_)
                                                         (_targets176509_ '())
                                                         (_vars176510_
                                                          _tl-vars176504_))
                                          (let* ((_rest176511176521_
                                                  _rest176508_)
                                                 (_else176513176529_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets176509_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx176336_
                                                           _where176496_))
                                                        (values (let ((__tmp180968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp180969
                                      (let ((__tmp180970
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e176503_
                                                     _targets176509_))))
                                        (declare (not safe))
                                        (cons _hd-e176501_ __tmp180970))))
                                 (declare (not safe))
                                 (cons _depth176497_ __tmp180969))))
                          (declare (not safe))
                          (cons 'splice __tmp180968))
                        _vars176510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K176515176538_
                                                  (lambda (_rest176532_
                                                           _hd-pat176533_
                                                           _hd-depth*176534_)
                                                    (let ((_hd-depth176536_
                                                           (fx- _hd-depth*176534_
                                                                _depth176497_)))
                                                      (if (fxpositive?
                                                           _hd-depth176536_)
                                                          (let ((__tmp180975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp180976
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat176533_))))
                           (declare (not safe))
                           (cons __tmp180976 _targets176509_)))
                        (__tmp180973
                         (let ((__tmp180974
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth176536_ _hd-pat176533_))))
                           (declare (not safe))
                           (cons __tmp180974 _vars176510_))))
                    (declare (not safe))
                    (_lp176506_ _rest176532_ __tmp180975 __tmp180973))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth176536_))
                      (let ((__tmp180971
                             (let ((__tmp180972
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat176533_))))
                               (declare (not safe))
                               (cons __tmp180972 _targets176509_))))
                        (declare (not safe))
                        (_lp176506_ _rest176532_ __tmp180971 _vars176510_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx176336_
                         _where176496_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest176511176521_))
                                                (let ((_hd176516176541_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest176511176521_)))
                                                      (_tl176517176543_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest176511176521_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd176516176541_))
                                                      (let ((_hd176518176546_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd176516176541_)))
                    (_tl176519176548_
                     (let () (declare (not safe)) (##cdr _hd176516176541_))))
                (let* ((_hd-depth*176551_ _hd176518176546_)
                       (_hd-pat176553_ _tl176519176548_)
                       (_rest176555_ _tl176517176543_))
                  (declare (not safe))
                  (_K176515176538_
                   _rest176555_
                   _hd-pat176553_
                   _hd-depth*176551_)))
              (let () (declare (not safe)) (_else176513176529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else176513176529_)))))))))))
                             (_recur176384_
                              (lambda (_e176389_ _is-e?176390_)
                                (if (_is-e?176390_ _e176389_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx176336_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e176389_))
                                        (let* ((_pat176392_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e176389_)))
                                               (_depth176394_
                                                (##structure-ref
                                                 _pat176392_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth176394_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat176392_))
                                                      (let ((__tmp180992
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth176394_ _pat176392_))))
                (declare (not safe))
                (cons __tmp180992 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat176392_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e176389_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e176389_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e176389_))
                                                (let* ((_e176396176403_
                                                        _e176389_)
                                                       (_E176398176407_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e176396176403_))))
                                                       (_E176397176486_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e176396176403_))
                      (let ((_e176399176411_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e176396176403_))))
                        (let ((_hd176400176414_
                               (let ()
                                 (declare (not safe))
                                 (##car _e176399176411_)))
                              (_tl176401176416_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e176399176411_))))
                          (let* ((_hd176419_ _hd176400176414_)
                                 (_rest176421_ _tl176401176416_))
                            (if '#t
                                (if (_is-e?176390_ _hd176419_)
                                    (let* ((_e176422176429_ _rest176421_)
                                           (_E176424176433_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx176336_
                                                 _e176389_))))
                                           (_E176423176447_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e176422176429_))
                                                  (let ((_e176425176437_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e176422176429_))))
                                                    (let ((_hd176426176440_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e176425176437_)))
                                                          (_tl176427176442_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e176425176437_))))
                                                      (let ((_rest176445_
                                                             _hd176426176440_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl176427176442_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur176384_ _rest176445_ false))
                        (let () (declare (not safe)) (_E176424176433_)))
                    (let () (declare (not safe)) (_E176424176433_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E176424176433_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E176423176447_)))
                                    (let _lp176451_ ((_rest176453_
                                                      _rest176421_)
                                                     (_depth176454_ '0))
                                      (let* ((_e176455176462_ _rest176453_)
                                             (_E176457176466_
                                              (lambda ()
                                                (if (fxpositive? _depth176454_)
                                                    (let ((__tmp180986
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur176384_
                                                              _hd176419_
                                                              _is-e?176390_)))
                                                          (__tmp180985
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur176384_
                                                              _rest176453_
                                                              _is-e?176390_))))
                                                      (declare (not safe))
                                                      (_make-splice176383_
                                                       _e176389_
                                                       _depth176454_
                                                       __tmp180986
                                                       __tmp180985))
                                                    (let ((__tmp180984
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur176384_
                                                              _hd176419_
                                                              _is-e?176390_)))
                                                          (__tmp180983
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur176384_
                                                              _rest176453_
                                                              _is-e?176390_))))
                                                      (declare (not safe))
                                                      (_make-cons176382_
                                                       __tmp180984
                                                       __tmp180983)))))
                                             (_E176456176482_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e176455176462_))
                                                    (let ((_e176458176470_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e176455176462_))))
                                                      (let ((_hd176459176473_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e176458176470_)))
                    (_tl176460176475_
                     (let () (declare (not safe)) (##cdr _e176458176470_))))
                (let* ((_rest-hd176478_ _hd176459176473_)
                       (_rest-tl176480_ _tl176460176475_))
                  (if '#t
                      (if (_is-e?176390_ _rest-hd176478_)
                          (let ((__tmp180991
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth176454_ '1))))
                            (declare (not safe))
                            (_lp176451_ _rest-tl176480_ __tmp180991))
                          (if (fxpositive? _depth176454_)
                              (let ((__tmp180990
                                     (let ()
                                       (declare (not safe))
                                       (_recur176384_
                                        _hd176419_
                                        _is-e?176390_)))
                                    (__tmp180989
                                     (let ()
                                       (declare (not safe))
                                       (_recur176384_
                                        _rest176453_
                                        _is-e?176390_))))
                                (declare (not safe))
                                (_make-splice176383_
                                 _e176389_
                                 _depth176454_
                                 __tmp180990
                                 __tmp180989))
                              (let ((__tmp180988
                                     (let ()
                                       (declare (not safe))
                                       (_recur176384_
                                        _hd176419_
                                        _is-e?176390_)))
                                    (__tmp180987
                                     (let ()
                                       (declare (not safe))
                                       (_recur176384_
                                        _rest176453_
                                        _is-e?176390_))))
                                (declare (not safe))
                                (_make-cons176382_ __tmp180988 __tmp180987))))
                      (let () (declare (not safe)) (_E176457176466_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E176457176466_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E176456176482_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E176398176407_))))))
                      (let () (declare (not safe)) (_E176398176407_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E176397176486_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e176389_))
                                                    (let ((_g180980_
                                                           (let ((__tmp180982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e176389_)))))
                     (declare (not safe))
                     (_recur176384_ __tmp180982 _is-e?176390_))))
              (begin
                (let ((_g180981_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g180980_)
                             (##vector-length _g180980_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g180981_ 2)))
                      (error "Context expects 2 values" _g180981_)))
                (let ((_e176490_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g180980_ 0)))
                      (_vars176491_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g180980_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e176490_))
                          _vars176491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e176389_))
                                                        (let ((_g180977_
                                                               (let ((__tmp180979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e176389_)))))
                         (declare (not safe))
                         (_recur176384_ __tmp180979 _is-e?176390_))))
                  (begin
                    (let ((_g180978_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g180977_)
                                 (##vector-length _g180977_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g180978_ 2)))
                          (error "Context expects 2 values" _g180978_)))
                    (let ((_e176493_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g180977_ 0)))
                          (_vars176494_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g180977_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e176493_))
                              _vars176494_))))
                (values (let () (declare (not safe)) (cons 'datum _e176389_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g180993_
                             (let ()
                               (declare (not safe))
                               (_recur176384_ _e176380_ gx#ellipsis?))))
                        (begin
                          (let ((_g180994_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g180993_)
                                       (##vector-length _g180993_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g180994_ 2)))
                                (error "Context expects 2 values" _g180994_)))
                          (let ((_tree176386_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g180993_ 0)))
                                (_vars176387_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g180993_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars176387_))
                                _tree176386_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx176336_
                                   _vars176387_))))))))))
          (let* ((_e176340176350_ _stx176336_)
                 (_E176342176354_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx176336_))))
                 (_E176341176376_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e176340176350_))
                        (let ((_e176343176358_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e176340176350_))))
                          (let ((_hd176344176361_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e176343176358_)))
                                (_tl176345176363_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e176343176358_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl176345176363_))
                                (let ((_e176346176366_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl176345176363_))))
                                  (let ((_hd176347176369_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e176346176366_)))
                                        (_tl176348176371_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e176346176366_))))
                                    (let ((_form176374_ _hd176347176369_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl176348176371_))
                                          (if '#t
                                              (let ((__tmp180996
                                                     (let ((__tmp180997
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse176339_
                                                               _form176374_))))
                                                       (declare (not safe))
                                                       (_generate176338_
                                                        __tmp180997)))
                                                    (__tmp180995
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx176336_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp180996
                                                 __tmp180995))
                                              (let ()
                                                (declare (not safe))
                                                (_E176342176354_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E176342176354_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E176342176354_)))))
                        (let () (declare (not safe)) (_E176342176354_))))))
            (let () (declare (not safe)) (_E176341176376_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx175600_
               _identifier=?175601_
               _unwrap-e175602_
               _wrap-e175603_)
        (letrec ((_generate-bindings175605_
                  (lambda (_target176200_
                           _ids176201_
                           _clauses176202_
                           _clause-ids176203_
                           _E176204_)
                    (letrec ((_generate1176206_
                              (lambda (_clause176303_
                                       _clause-id176304_
                                       _E176305_)
                                (let ((__tmp181002
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id176304_ '())))
                                      (__tmp180998
                                       (let ((__tmp180999
                                              (let ((__tmp181001
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target176200_
                                                             '())))
                                                    (__tmp181000
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause175607_
                                                        _target176200_
                                                        _ids176201_
                                                        _clause176303_
                                                        _E176305_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp181001
                                                 __tmp181000))))
                                         (declare (not safe))
                                         (cons __tmp180999 '()))))
                                  (declare (not safe))
                                  (cons __tmp181002 __tmp180998)))))
                      (let _lp176208_ ((_rest176210_ _clauses176202_)
                                       (_rest-ids176211_ _clause-ids176203_)
                                       (_bindings176212_ '()))
                        (let* ((_rest176213176221_ _rest176210_)
                               (_else176215176229_
                                (lambda () _bindings176212_))
                               (_K176217176291_
                                (lambda (_rest176232_ _clause176233_)
                                  (let* ((_rest-ids176234176241_
                                          _rest-ids176211_)
                                         (_E176236176245_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids176234176241_)))
                                         (_K176237176279_
                                          (lambda (_rest-ids176248_
                                                   _clause-id176249_)
                                            (let* ((_rest-ids176250176258_
                                                    _rest-ids176248_)
                                                   (_else176252176266_
                                                    (lambda ()
                                                      (let ((__tmp181003
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1176206_
                        _clause176233_
                        _clause-id176249_
                        _E176204_))))
                (declare (not safe))
                (cons __tmp181003 _bindings176212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K176254176271_
                                                    (lambda (_next-clause-id176269_)
                                                      (let ((__tmp181004
                                                             (let ((__tmp181005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1176206_
                               _clause176233_
                               _clause-id176249_
                               _next-clause-id176269_))))
                       (declare (not safe))
                       (cons __tmp181005 _bindings176212_))))
                (declare (not safe))
                (_lp176208_ _rest176232_ _rest-ids176248_ __tmp181004)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids176250176258_))
                                                  (let* ((_hd176255176274_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids176250176258_)))
                                                         (_next-clause-id176277_
                                                          _hd176255176274_))
                                                    (declare (not safe))
                                                    (_K176254176271_
                                                     _next-clause-id176277_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else176252176266_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids176234176241_))
                                        (let ((_hd176238176282_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids176234176241_)))
                                              (_tl176239176284_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids176234176241_))))
                                          (let* ((_clause-id176287_
                                                  _hd176238176282_)
                                                 (_rest-ids176289_
                                                  _tl176239176284_))
                                            (declare (not safe))
                                            (_K176237176279_
                                             _rest-ids176289_
                                             _clause-id176287_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E176236176245_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest176213176221_))
                              (let ((_hd176218176294_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest176213176221_)))
                                    (_tl176219176296_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest176213176221_))))
                                (let* ((_clause176299_ _hd176218176294_)
                                       (_rest176301_ _tl176219176296_))
                                  (declare (not safe))
                                  (_K176217176291_
                                   _rest176301_
                                   _clause176299_)))
                              (let ()
                                (declare (not safe))
                                (_else176215176229_))))))))
                 (_generate-body175606_
                  (lambda (_bindings176160_ _body176161_)
                    (let _recur176163_ ((_rest176165_ _bindings176160_))
                      (let* ((_rest176166176174_ _rest176165_)
                             (_else176168176182_ (lambda () _body176161_))
                             (_K176170176188_
                              (lambda (_rest176185_ _hd176186_)
                                (let ((__tmp181007
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd176186_ '())))
                                      (__tmp181006
                                       (let ()
                                         (declare (not safe))
                                         (_recur176163_ _rest176185_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp181007
                                   __tmp181006)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest176166176174_))
                            (let ((_hd176171176191_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest176166176174_)))
                                  (_tl176172176193_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest176166176174_))))
                              (let* ((_hd176196_ _hd176171176191_)
                                     (_rest176198_ _tl176172176193_))
                                (declare (not safe))
                                (_K176170176188_ _rest176198_ _hd176196_)))
                            (let ()
                              (declare (not safe))
                              (_else176168176182_)))))))
                 (_generate-clause175607_
                  (lambda (_target176023_ _ids176024_ _clause176025_ _E176026_)
                    (letrec ((_generate1176028_
                              (lambda (_hd176115_ _fender176116_ _body176117_)
                                (let ((_g181008_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause175609_
                                          _hd176115_
                                          _ids176024_))))
                                  (begin
                                    (let ((_g181009_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g181008_)
                                                 (##vector-length _g181008_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g181009_ 2)))
                                          (error "Context expects 2 values"
                                                 _g181009_)))
                                    (let ((_e176119_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g181008_ 0)))
                                          (_mvars176120_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g181008_ 1))))
                                      (let* ((_pvars176122_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars176120_))))
                                             (_E176124_
                                              (let ((__tmp181010
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target176023_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E176026_ __tmp181010)))
                                             (_K176157_
                                              (let ((__tmp181011
                                                     (let ((__tmp181013
                                                            (map (lambda (_mvar176126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar176127_)
                           (let* ((_mvar176128176135_ _mvar176126_)
                                  (_E176130176139_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar176128176135_)))
                                  (_K176131176145_
                                   (lambda (_depth176142_ _id176143_)
                                     (let ((__tmp181014
                                            (let ((__tmp181015
                                                   (let ((__tmp181017
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id176143_)))
                                                         (__tmp181016
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar176127_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp181017
                                                      __tmp181016
                                                      _depth176142_))))
                                              (declare (not safe))
                                              (cons __tmp181015 '()))))
                                       (declare (not safe))
                                       (cons _id176143_ __tmp181014)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar176128176135_))
                                 (let ((_hd176132176148_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar176128176135_)))
                                       (_tl176133176150_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar176128176135_))))
                                   (let* ((_id176153_ _hd176132176148_)
                                          (_depth176155_ _tl176133176150_))
                                     (declare (not safe))
                                     (_K176131176145_
                                      _depth176155_
                                      _id176153_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E176130176139_)))))
                         _mvars176120_
                         _pvars176122_))
                   (__tmp181012
                    (if (let () (declare (not safe)) (eq? _fender176116_ '#t))
                        _body176117_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender176116_
                           _body176117_
                           _E176124_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp181013 __tmp181012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars176122_
                                                 __tmp181011))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match175608_
                                           _hd176115_
                                           _target176023_
                                           _e176119_
                                           _mvars176120_
                                           _K176157_
                                           _E176124_)))))))))
                      (let* ((_e176029176049_ _clause176025_)
                             (_E176038176053_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e176029176049_))))
                             (_E176031176087_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e176029176049_))
                                    (let ((_e176039176057_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e176029176049_))))
                                      (let ((_hd176040176060_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e176039176057_)))
                                            (_tl176041176062_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e176039176057_))))
                                        (let ((_hd176065_ _hd176040176060_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl176041176062_))
                                              (let ((_e176042176067_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl176041176062_))))
                                                (let ((_hd176043176070_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e176042176067_)))
                                                      (_tl176044176072_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e176042176067_))))
                                                  (let ((_fender176075_
                                                         _hd176043176070_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl176044176072_))
                                                        (let ((_e176045176077_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl176044176072_))))
                  (let ((_hd176046176080_
                         (let () (declare (not safe)) (##car _e176045176077_)))
                        (_tl176047176082_
                         (let ()
                           (declare (not safe))
                           (##cdr _e176045176077_))))
                    (let ((_body176085_ _hd176046176080_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl176047176082_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1176028_
                                 _hd176065_
                                 _fender176075_
                                 _body176085_))
                              (let () (declare (not safe)) (_E176038176053_)))
                          (let () (declare (not safe)) (_E176038176053_))))))
                (let () (declare (not safe)) (_E176038176053_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E176038176053_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E176038176053_)))))
                             (_E176030176111_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e176029176049_))
                                    (let ((_e176032176091_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e176029176049_))))
                                      (let ((_hd176033176094_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e176032176091_)))
                                            (_tl176034176096_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e176032176091_))))
                                        (let ((_hd176099_ _hd176033176094_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl176034176096_))
                                              (let ((_e176035176101_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl176034176096_))))
                                                (let ((_hd176036176104_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e176035176101_)))
                                                      (_tl176037176106_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e176035176101_))))
                                                  (let ((_body176109_
                                                         _hd176036176104_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl176037176106_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1176028_
                                                               _hd176099_
                                                               '#t
                                                               _body176109_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E176031176087_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E176031176087_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E176031176087_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E176031176087_))))))
                        (let () (declare (not safe)) (_E176030176111_))))))
                 (_generate-match175608_
                  (lambda (_where175772_
                           _target175773_
                           _hd175774_
                           _mvars175775_
                           _K175776_
                           _E175777_)
                    (letrec ((_BUG175779_
                              (lambda (_q176021_)
                                (error '"BUG: syntax-case; generate"
                                       _stx175600_
                                       _hd175774_
                                       _q176021_)))
                             (_recur175780_
                              (lambda (_e175871_
                                       _vars175872_
                                       _target175873_
                                       _E175874_
                                       _k175875_)
                                (let* ((_e175876175883_ _e175871_)
                                       (_E175878175887_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e175876175883_)))
                                       (_K175879176009_
                                        (lambda (_body175890_ _tag175891_)
                                          (let ((_$e175893_ _tag175891_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e175893_))
                                                (_k175875_ _vars175872_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e175893_))
                                                    (let ((__tmp181124
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target175873_)))
                                                          (__tmp181120
                                                           (let ((__tmp181122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp181123
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e175603_
                                    _body175890_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?175601_
                             __tmp181123
                             _target175873_)))
                         (__tmp181121 (_k175875_ _vars175872_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp181122 __tmp181121 _E175874_))))
              (declare (not safe))
              (gx#core-list 'if __tmp181124 __tmp181120 _E175874_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e175893_))
                                                        (_k175875_
                                                         (let ((__tmp181119
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body175890_ _target175873_))))
                   (declare (not safe))
                   (cons __tmp181119 _vars175872_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e175893_))
                    (let ((_$e175896_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd175897_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl175898_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp181118
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target175873_)))
                            (__tmp181099
                             (let ((__tmp181113
                                    (let ((__tmp181114
                                           (let ((__tmp181117
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e175896_ '())))
                                                 (__tmp181115
                                                  (let ((__tmp181116
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e175602_
                                                            _target175873_))))
                                                    (declare (not safe))
                                                    (cons __tmp181116 '()))))
                                             (declare (not safe))
                                             (cons __tmp181117 __tmp181115))))
                                      (declare (not safe))
                                      (cons __tmp181114 '())))
                                   (__tmp181100
                                    (let ((__tmp181103
                                           (let ((__tmp181109
                                                  (let ((__tmp181112
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd175897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp181110
                 (let ((__tmp181111
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e175896_))))
                   (declare (not safe))
                   (cons __tmp181111 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp181112
                                                          __tmp181110)))
                                                 (__tmp181104
                                                  (let ((__tmp181105
                                                         (let ((__tmp181108
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl175898_ '())))
                       (__tmp181106
                        (let ((__tmp181107
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e175896_))))
                          (declare (not safe))
                          (cons __tmp181107 '()))))
                   (declare (not safe))
                   (cons __tmp181108 __tmp181106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp181105 '()))))
                                             (declare (not safe))
                                             (cons __tmp181109 __tmp181104)))
                                          (__tmp181101
                                           (let* ((_body175899175906_
                                                   _body175890_)
                                                  (_E175901175910_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body175899175906_)))
                                                  (_K175902175918_
                                                   (lambda (_tl175913_
                                                            _hd175914_)
                                                     (let ((__tmp181102
                                                            (lambda (_vars175916_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur175780_
                         _tl175913_
                         _vars175916_
                         _$tl175898_
                         _E175874_
                         _k175875_)))))
               (declare (not safe))
               (_recur175780_
                _hd175914_
                _vars175872_
                _$hd175897_
                _E175874_
                __tmp181102)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body175899175906_))
                                                 (let ((_hd175903175921_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body175899175906_)))
                                                       (_tl175904175923_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body175899175906_))))
                                                   (let* ((_hd175926_
                                                           _hd175903175921_)
                                                          (_tl175928_
                                                           _tl175904175923_))
                                                     (declare (not safe))
                                                     (_K175902175918_
                                                      _tl175928_
                                                      _hd175926_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E175901175910_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp181103
                                       __tmp181101))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp181113
                                __tmp181100))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp181118 __tmp181099 _E175874_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e175893_))
                        (let* ((_body175929175936_ _body175890_)
                               (_E175931175940_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body175929175936_)))
                               (_K175932175991_
                                (lambda (_tl175943_ _hd175944_)
                                  (let* ((_rlen175946_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen175781_ _tl175943_)))
                                         (_$target175948_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd175950_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl175952_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp175954_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e175956_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd175958_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl175960_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars175962_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars175782_ _hd175944_)))
                                         (_lvars175964_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars175962_)))
                                         (_tlvars175966_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars175962_)))
                                         (_linit175970_
                                          (map (lambda (_var175968_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars175964_)))
                                    (letrec ((_make-loop175973_
                                              (lambda (_vars175977_)
                                                (let ((__tmp181050
                                                       (let ((__tmp181051
                                                              (let ((__tmp181087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp175954_ '())))
                            (__tmp181052
                             (let ((__tmp181053
                                    (let ((__tmp181086
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd175950_ _lvars175964_)))
                                          (__tmp181054
                                           (let ((__tmp181085
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd175950_)))
                                                 (__tmp181063
                                                  (let ((__tmp181080
                                                         (let ((__tmp181081
                                                                (let ((__tmp181084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e175956_ '())))
                              (__tmp181082
                               (let ((__tmp181083
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e175602_
                                         _$hd175950_))))
                                 (declare (not safe))
                                 (cons __tmp181083 '()))))
                          (declare (not safe))
                          (cons __tmp181084 __tmp181082))))
                   (declare (not safe))
                   (cons __tmp181081 '())))
                (__tmp181064
                 (let ((__tmp181070
                        (let ((__tmp181076
                               (let ((__tmp181079
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd175958_ '())))
                                     (__tmp181077
                                      (let ((__tmp181078
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e175956_))))
                                        (declare (not safe))
                                        (cons __tmp181078 '()))))
                                 (declare (not safe))
                                 (cons __tmp181079 __tmp181077)))
                              (__tmp181071
                               (let ((__tmp181072
                                      (let ((__tmp181075
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl175960_ '())))
                                            (__tmp181073
                                             (let ((__tmp181074
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e175956_))))
                                               (declare (not safe))
                                               (cons __tmp181074 '()))))
                                        (declare (not safe))
                                        (cons __tmp181075 __tmp181073))))
                                 (declare (not safe))
                                 (cons __tmp181072 '()))))
                          (declare (not safe))
                          (cons __tmp181076 __tmp181071)))
                       (__tmp181065
                        (let ((__tmp181066
                               (lambda (_hdvars175979_)
                                 (let ((__tmp181067
                                        (let ((__tmp181068
                                               (map (lambda (_svar175981_
                                                             _lvar175982_)
                                                      (let ((__tmp181069
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar175981_ _hdvars175979_ _BUG175779_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp181069 _lvar175982_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars175962_
                                                    _lvars175964_)))
                                          (declare (not safe))
                                          (cons _$lp-tl175960_ __tmp181068))))
                                   (declare (not safe))
                                   (cons _$lp175954_ __tmp181067)))))
                          (declare (not safe))
                          (_recur175780_
                           _hd175944_
                           '()
                           _$lp-hd175958_
                           _E175874_
                           __tmp181066))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp181070 __tmp181065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp181080
                                                     __tmp181064)))
                                                 (__tmp181055
                                                  (let ((__tmp181059
                                                         (map (lambda (_lvar175984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar175985_)
                        (let ((__tmp181062
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar175985_ '())))
                              (__tmp181060
                               (let ((__tmp181061
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar175984_))))
                                 (declare (not safe))
                                 (cons __tmp181061 '()))))
                          (declare (not safe))
                          (cons __tmp181062 __tmp181060)))
                      _lvars175964_
                      _tlvars175966_))
                (__tmp181056
                 (_k175875_
                  (let ((__tmp181057
                         (lambda (_svar175987_ _tlvar175988_ _r175989_)
                           (let ((__tmp181058
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar175987_ _tlvar175988_))))
                             (declare (not safe))
                             (cons __tmp181058 _r175989_)))))
                    (declare (not safe))
                    (foldl2 __tmp181057
                            _vars175977_
                            _svars175962_
                            _tlvars175966_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp181059
                                                     __tmp181056))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp181085
                                              __tmp181063
                                              __tmp181055))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp181086
                                       __tmp181054))))
                               (declare (not safe))
                               (cons __tmp181053 '()))))
                        (declare (not safe))
                        (cons __tmp181087 __tmp181052))))
                 (declare (not safe))
                 (cons __tmp181051 '())))
              (__tmp181048
               (let ((__tmp181049
                      (let ()
                        (declare (not safe))
                        (cons _$target175948_ _linit175970_))))
                 (declare (not safe))
                 (cons _$lp175954_ __tmp181049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp181050
                                                   __tmp181048)))))
                                      (let ((_body175975_
                                             (let ((__tmp181089
                                                    (let ((__tmp181090
                                                           (let ((__tmp181093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp181094
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl175952_ '()))))
                            (declare (not safe))
                            (cons _$target175948_ __tmp181094)))
                         (__tmp181091
                          (let ((__tmp181092
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target175873_
                                    _rlen175946_))))
                            (declare (not safe))
                            (cons __tmp181092 '()))))
                     (declare (not safe))
                     (cons __tmp181093 __tmp181091))))
              (declare (not safe))
              (cons __tmp181090 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp181088
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur175780_
                                                       _tl175943_
                                                       _vars175872_
                                                       _$tl175952_
                                                       _E175874_
                                                       _make-loop175973_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp181089
                                                __tmp181088))))
                                        (let ((__tmp181098
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target175873_)))
                                              (__tmp181095
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen175946_))
                                                   _body175975_
                                                   (let ((__tmp181096
                                                          (let ((__tmp181097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target175873_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp181097 _rlen175946_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp181096
                                                      _body175975_
                                                      _E175874_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp181098
                                           __tmp181095
                                           _E175874_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body175929175936_))
                              (let ((_hd175933175994_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body175929175936_)))
                                    (_tl175934175996_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body175929175936_))))
                                (let* ((_hd175999_ _hd175933175994_)
                                       (_tl176001_ _tl175934175996_))
                                  (declare (not safe))
                                  (_K175932175991_ _tl176001_ _hd175999_)))
                              (let () (declare (not safe)) (_E175931175940_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e175893_))
                            (let ((__tmp181047
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target175873_)))
                                  (__tmp181046 (_k175875_ _vars175872_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp181047
                               __tmp181046
                               _E175874_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e175893_))
                                (let ((_$e176003_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp181045
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target175873_)))
                                        (__tmp181037
                                         (let ((__tmp181039
                                                (let ((__tmp181040
                                                       (let ((__tmp181044
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e176003_ '())))
                     (__tmp181041
                      (let ((__tmp181042
                             (let ((__tmp181043
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e175602_
                                       _target175873_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp181043))))
                        (declare (not safe))
                        (cons __tmp181042 '()))))
                 (declare (not safe))
                 (cons __tmp181044 __tmp181041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp181040 '())))
                                               (__tmp181038
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur175780_
                                                   _body175890_
                                                   _vars175872_
                                                   _$e176003_
                                                   _E175874_
                                                   _k175875_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp181039
                                            __tmp181038))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp181045
                                     __tmp181037
                                     _E175874_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e175893_))
                                    (let ((_$e176005_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp181036
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target175873_)))
                                            (__tmp181028
                                             (let ((__tmp181030
                                                    (let ((__tmp181031
                                                           (let ((__tmp181035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e176005_ '())))
                         (__tmp181032
                          (let ((__tmp181033
                                 (let ((__tmp181034
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e175602_
                                           _target175873_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp181034))))
                            (declare (not safe))
                            (cons __tmp181033 '()))))
                     (declare (not safe))
                     (cons __tmp181035 __tmp181032))))
              (declare (not safe))
              (cons __tmp181031 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp181029
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur175780_
                                                       _body175890_
                                                       _vars175872_
                                                       _$e176005_
                                                       _E175874_
                                                       _k175875_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp181030
                                                __tmp181029))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp181036
                                         __tmp181028
                                         _E175874_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e175893_))
                                        (let ((_$e176007_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp181027
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target175873_)))
                                                (__tmp181018
                                                 (let ((__tmp181022
                                                        (let ((__tmp181023
                                                               (let ((__tmp181026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e176007_ '())))
                             (__tmp181024
                              (let ((__tmp181025
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target175873_))))
                                (declare (not safe))
                                (cons __tmp181025 '()))))
                         (declare (not safe))
                         (cons __tmp181026 __tmp181024))))
                  (declare (not safe))
                  (cons __tmp181023 '())))
               (__tmp181019
                (let ((__tmp181021
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e176007_ _body175890_)))
                      (__tmp181020 (_k175875_ _vars175872_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp181021 __tmp181020 _E175874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp181022
                                                    __tmp181019))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp181027
                                             __tmp181018
                                             _E175874_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG175779_ _e175871_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e175876175883_))
                                      (let ((_hd175880176012_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e175876175883_)))
                                            (_tl175881176014_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e175876175883_))))
                                        (let* ((_tag176017_ _hd175880176012_)
                                               (_body176019_ _tl175881176014_))
                                          (declare (not safe))
                                          (_K175879176009_
                                           _body176019_
                                           _tag176017_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E175878175887_))))))
                             (_splice-rlen175781_
                              (lambda (_e175833_)
                                (let _lp175835_ ((_e175837_ _e175833_)
                                                 (_n175838_ '0))
                                  (let* ((_e175839175846_ _e175837_)
                                         (_E175841175850_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e175839175846_)))
                                         (_K175842175859_
                                          (lambda (_body175853_ _tag175854_)
                                            (let ((_$e175856_ _tag175854_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e175856_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx175600_
                                                     _where175772_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e175856_))
                                                      (let ((__tmp181126
                                                             (cdr _body175853_))
                                                            (__tmp181125
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n175838_ '1))))
                (declare (not safe))
                (_lp175835_ __tmp181126 __tmp181125))
              _n175838_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e175839175846_))
                                        (let ((_hd175843175862_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e175839175846_)))
                                              (_tl175844175864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e175839175846_))))
                                          (let* ((_tag175867_ _hd175843175862_)
                                                 (_body175869_
                                                  _tl175844175864_))
                                            (declare (not safe))
                                            (_K175842175859_
                                             _body175869_
                                             _tag175867_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E175841175850_)))))))
                             (_splice-vars175782_
                              (lambda (_e175789_)
                                (let _recur175791_ ((_e175793_ _e175789_)
                                                    (_vars175794_ '()))
                                  (let* ((_e175795175802_ _e175793_)
                                         (_E175797175806_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e175795175802_)))
                                         (_K175798175821_
                                          (lambda (_body175809_ _tag175810_)
                                            (let ((_$e175812_ _tag175810_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e175812_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body175809_
                                                          _vars175794_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e175812_))
                  (let () (declare (not safe)) (eq? 'splice _$e175812_)))
              (let ((__tmp181129 (cdr _body175809_))
                    (__tmp181127
                     (let ((__tmp181128 (car _body175809_)))
                       (declare (not safe))
                       (_recur175791_ __tmp181128 _vars175794_))))
                (declare (not safe))
                (_recur175791_ __tmp181129 __tmp181127))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e175812_))
                      (let () (declare (not safe)) (eq? 'box _$e175812_)))
                  (let ()
                    (declare (not safe))
                    (_recur175791_ _body175809_ _vars175794_))
                  _vars175794_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e175795175802_))
                                        (let ((_hd175799175824_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e175795175802_)))
                                              (_tl175800175826_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e175795175802_))))
                                          (let* ((_tag175829_ _hd175799175824_)
                                                 (_body175831_
                                                  _tl175800175826_))
                                            (declare (not safe))
                                            (_K175798175821_
                                             _body175831_
                                             _tag175829_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E175797175806_)))))))
                             (_make-body175783_
                              (lambda (_vars175785_)
                                (let ((__tmp181130
                                       (map (lambda (_mvar175787_)
                                              (let ((__tmp181131
                                                     (car _mvar175787_)))
                                                (declare (not safe))
                                                (assgetq __tmp181131
                                                         _vars175785_
                                                         _BUG175779_)))
                                            _mvars175775_)))
                                  (declare (not safe))
                                  (cons _K175776_ __tmp181130)))))
                      (let ()
                        (declare (not safe))
                        (_recur175780_
                         _hd175774_
                         '()
                         _target175773_
                         _E175777_
                         _make-body175783_)))))
                 (_parse-clause175609_
                  (lambda (_hd175678_ _ids175679_)
                    (let _recur175681_ ((_e175683_ _hd175678_)
                                        (_vars175684_ '())
                                        (_depth175685_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e175683_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e175683_))
                              (values '(any) _vars175684_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e175683_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx175600_
                                     _hd175678_))
                                  (if (let ((__tmp181147
                                             (lambda (_id175687_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e175683_
                                                  _id175687_)))))
                                        (declare (not safe))
                                        (find __tmp181147 _ids175679_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e175683_))
                                              _vars175684_)
                                      (if (let ((__tmp181145
                                                 (lambda (_var175689_)
                                                   (let ((__tmp181146
                                                          (car _var175689_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e175683_
                                                      __tmp181146)))))
                                            (declare (not safe))
                                            (find __tmp181145 _vars175684_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx175600_
                                             _e175683_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e175683_))
                                                  (let ((__tmp181144
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e175683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth175685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp181144
                                                          _vars175684_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e175683_))
                              (let* ((_e175690175697_ _e175683_)
                                     (_E175692175701_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e175690175697_))))
                                     (_E175691175762_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e175690175697_))
                                            (let ((_e175693175705_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e175690175697_))))
                                              (let ((_hd175694175708_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e175693175705_)))
                                                    (_tl175695175710_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e175693175705_))))
                                                (let* ((_hd175713_
                                                        _hd175694175708_)
                                                       (_rest175715_
                                                        _tl175695175710_))
                                                  (if '#t
                                                      (let* ((_make-pair175730_
                                                              (lambda (_tag175717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd175718_
                               _tl175719_)
                        (let* ((_hd-depth175721_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag175717_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth175685_ '1))
                                    _depth175685_))
                               (_g181139_
                                (let ()
                                  (declare (not safe))
                                  (_recur175681_
                                   _hd175718_
                                   _vars175684_
                                   _hd-depth175721_))))
                          (begin
                            (let ((_g181140_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g181139_)
                                         (##vector-length _g181139_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g181140_ 2)))
                                  (error "Context expects 2 values"
                                         _g181140_)))
                            (let ((_hd175723_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g181139_ 0)))
                                  (_vars175724_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g181139_ 1))))
                              (let ((_g181141_
                                     (let ()
                                       (declare (not safe))
                                       (_recur175681_
                                        _tl175719_
                                        _vars175724_
                                        _depth175685_))))
                                (begin
                                  (let ((_g181142_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g181141_)
                                               (##vector-length _g181141_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g181142_ 2)))
                                        (error "Context expects 2 values"
                                               _g181142_)))
                                  (let ((_tl175726_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g181141_ 0)))
                                        (_vars175727_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g181141_ 1))))
                                    (let ()
                                      (values (let ((__tmp181143
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd175723_
                                                             _tl175726_))))
                                                (declare (not safe))
                                                (cons _tag175717_ __tmp181143))
                                              _vars175727_))))))))))
                     (_e175731175738_ _rest175715_)
                     (_E175733175742_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair175730_ 'cons _hd175713_ _rest175715_))))
                     (_E175732175758_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e175731175738_))
                            (let ((_e175734175746_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e175731175738_))))
                              (let ((_hd175735175749_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e175734175746_)))
                                    (_tl175736175751_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e175734175746_))))
                                (let* ((_rest-hd175754_ _hd175735175749_)
                                       (_rest-tl175756_ _tl175736175751_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd175754_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair175730_
                                             'splice
                                             _hd175713_
                                             _rest-tl175756_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair175730_
                                             'cons
                                             _hd175713_
                                             _rest175715_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E175733175742_))))))
                            (let () (declare (not safe)) (_E175733175742_))))))
                (let () (declare (not safe)) (_E175732175758_)))
              (let () (declare (not safe)) (_E175692175701_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E175692175701_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E175691175762_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e175683_))
                                  (values '(null) _vars175684_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e175683_))
                                      (let ((_g181136_
                                             (let ((__tmp181138
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e175683_)))))
                                               (declare (not safe))
                                               (_recur175681_
                                                __tmp181138
                                                _vars175684_
                                                _depth175685_))))
                                        (begin
                                          (let ((_g181137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g181136_)
                                                       (##vector-length
                                                        _g181136_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g181137_ 2)))
                                                (error "Context expects 2 values"
                                                       _g181137_)))
                                          (let ((_e175766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g181136_ 0)))
                                                (_vars175767_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g181136_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e175766_))
                                                    _vars175767_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e175683_))
                                          (let ((_g181133_
                                                 (let ((__tmp181135
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e175683_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur175681_
                                                    __tmp181135
                                                    _vars175684_
                                                    _depth175685_))))
                                            (begin
                                              (let ((_g181134_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g181133_)
                                                           (##vector-length
                                                            _g181133_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g181134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g181134_)))
                                              (let ((_e175769_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g181133_
                                                        0)))
                                                    (_vars175770_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g181133_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e175769_))
                                                        _vars175770_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e175683_))
                                              (values (let ((__tmp181132
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e175683_))))
                (declare (not safe))
                (cons 'datum __tmp181132))
              _vars175684_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx175600_
                                                 _e175683_))))))))))))
          (let* ((_e175610175623_ _stx175600_)
                 (_E175612175627_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e175610175623_))))
                 (_E175611175674_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e175610175623_))
                        (let ((_e175613175631_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e175610175623_))))
                          (let ((_hd175614175634_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e175613175631_)))
                                (_tl175615175636_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e175613175631_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl175615175636_))
                                (let ((_e175616175639_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl175615175636_))))
                                  (let ((_hd175617175642_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e175616175639_)))
                                        (_tl175618175644_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e175616175639_))))
                                    (let ((_expr175647_ _hd175617175642_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl175618175644_))
                                          (let ((_e175619175649_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl175618175644_))))
                                            (let ((_hd175620175652_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e175619175649_)))
                                                  (_tl175621175654_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e175619175649_))))
                                              (let* ((_ids175657_
                                                      _hd175620175652_)
                                                     (_clauses175659_
                                                      _tl175621175654_))
                                                (if '#t
                                                    (if (let ((__tmp181165
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids175657_))))
                  (declare (not safe))
                  (not __tmp181165))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx175600_
                   _ids175657_))
                (if (let ((__tmp181164
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses175659_))))
                      (declare (not safe))
                      (not __tmp181164))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx175600_))
                    (let* ((_ids175661_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids175657_)))
                           (_clauses175663_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses175659_)))
                           (_clause-ids175665_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses175663_)))
                           (_E175667_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target175669_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first175671_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses175663_))
                                _E175667_
                                (car _clause-ids175665_))))
                      (let ((__tmp181149
                             (let ((__tmp181150
                                    (let ((__tmp181152
                                           (let ((__tmp181157
                                                  (let ((__tmp181158
                                                         (let ((__tmp181163
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E175667_ '())))
                       (__tmp181159
                        (let ((__tmp181160
                               (let ((__tmp181162
                                      (let ()
                                        (declare (not safe))
                                        (cons _target175669_ '())))
                                     (__tmp181161
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target175669_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp181162
                                  __tmp181161))))
                          (declare (not safe))
                          (cons __tmp181160 '()))))
                   (declare (not safe))
                   (cons __tmp181163 __tmp181159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp181158 '())))
                                                 (__tmp181153
                                                  (let ((__tmp181156
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings175605_
                                                            _target175669_
                                                            _ids175661_
                                                            _clauses175663_
                                                            _clause-ids175665_
                                                            _E175667_)))
                                                        (__tmp181154
                                                         (let ((__tmp181155
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr175647_ '()))))
                   (declare (not safe))
                   (cons _first175671_ __tmp181155))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body175606_
                                                     __tmp181156
                                                     __tmp181154))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp181157
                                              __tmp181153)))
                                          (__tmp181151
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx175600_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp181152
                                       __tmp181151))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp181150)))
                            (__tmp181148
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx175600_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp181149 __tmp181148)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E175612175627_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E175612175627_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E175612175627_)))))
                        (let () (declare (not safe)) (_E175612175627_))))))
            (let () (declare (not safe)) (_E175611175674_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx176310_)
        (let* ((_identifier=?176312_ 'free-identifier=?)
               (_unwrap-e176314_ 'syntax-e)
               (_wrap-e176316_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx176310_
           _identifier=?176312_
           _unwrap-e176314_
           _wrap-e176316_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx176318_ _identifier=?176319_)
        (let* ((_unwrap-e176321_ 'syntax-e) (_wrap-e176323_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx176318_
           _identifier=?176319_
           _unwrap-e176321_
           _wrap-e176323_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx176325_ _identifier=?176326_ _unwrap-e176327_)
        (let ((_wrap-e176329_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx176325_
           _identifier=?176326_
           _unwrap-e176327_
           _wrap-e176329_))))
    (define gx#macro-expand-syntax-case
      (lambda _g181167_
        (let ((_g181166_ (let () (declare (not safe)) (##length _g181167_))))
          (cond ((let () (declare (not safe)) (##fx= _g181166_ 1))
                 (apply (lambda (_stx176310_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx176310_)))
                        _g181167_))
                ((let () (declare (not safe)) (##fx= _g181166_ 2))
                 (apply (lambda (_stx176318_ _identifier=?176319_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx176318_
                             _identifier=?176319_)))
                        _g181167_))
                ((let () (declare (not safe)) (##fx= _g181166_ 3))
                 (apply (lambda (_stx176325_
                                 _identifier=?176326_
                                 _unwrap-e176327_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx176325_
                             _identifier=?176326_
                             _unwrap-e176327_)))
                        _g181167_))
                ((let () (declare (not safe)) (##fx= _g181166_ 4))
                 (apply (lambda (_stx176331_
                                 _identifier=?176332_
                                 _unwrap-e176333_
                                 _wrap-e176334_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx176331_
                             _identifier=?176332_
                             _unwrap-e176333_
                             _wrap-e176334_)))
                        _g181167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g181167_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx175597_)
        (if (let () (declare (not safe)) (gx#identifier? _stx175597_))
            (let ((__tmp181168
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx175597_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp181168 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd175555_ . _rest175556_)
        (let ((_len175558_ (length _hd175555_)))
          (let _lp175560_ ((_rest175562_ _rest175556_))
            (let* ((_rest175563175571_ _rest175562_)
                   (_else175565175579_ (lambda () '#!void))
                   (_K175567175585_
                    (lambda (_rest175582_ _hd175583_)
                      (if (fx= _len175558_ (length _hd175583_))
                          (let ()
                            (declare (not safe))
                            (_lp175560_ _rest175582_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd175583_))))))
              (if (let () (declare (not safe)) (##pair? _rest175563175571_))
                  (let ((_hd175568175588_
                         (let ()
                           (declare (not safe))
                           (##car _rest175563175571_)))
                        (_tl175569175590_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest175563175571_))))
                    (let* ((_hd175593_ _hd175568175588_)
                           (_rest175595_ _tl175569175590_))
                      (declare (not safe))
                      (_K175567175585_ _rest175595_ _hd175593_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx175513_ _n175514_)
        (let _lp175516_ ((_rest175518_ _stx175513_) (_r175519_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest175518_))
              (let* ((_g175520175527_
                      (let () (declare (not safe)) (gx#syntax-e _rest175518_)))
                     (_E175522175531_
                      (lambda ()
                        (error '"No clause matching" _g175520175527_)))
                     (_K175523175537_
                      (lambda (_rest175534_ _hd175535_)
                        (let ((__tmp181173
                               (let ()
                                 (declare (not safe))
                                 (cons _hd175535_ _r175519_))))
                          (declare (not safe))
                          (_lp175516_ _rest175534_ __tmp181173)))))
                (if (let () (declare (not safe)) (##pair? _g175520175527_))
                    (let ((_hd175524175540_
                           (let ()
                             (declare (not safe))
                             (##car _g175520175527_)))
                          (_tl175525175542_
                           (let ()
                             (declare (not safe))
                             (##cdr _g175520175527_))))
                      (let* ((_hd175545_ _hd175524175540_)
                             (_rest175547_ _tl175525175542_))
                        (declare (not safe))
                        (_K175523175537_ _rest175547_ _hd175545_)))
                    (let () (declare (not safe)) (_E175522175531_))))
              (let _lp175549_ ((_n175551_ _n175514_)
                               (_l175552_ _r175519_)
                               (_r175553_ _rest175518_))
                (if (let () (declare (not safe)) (null? _l175552_))
                    (values _l175552_ _r175553_)
                    (if (fxpositive? _n175551_)
                        (let ((__tmp181172
                               (let ()
                                 (declare (not safe))
                                 (fx- _n175551_ '1)))
                              (__tmp181171 (cdr _l175552_))
                              (__tmp181169
                               (let ((__tmp181170 (car _l175552_)))
                                 (declare (not safe))
                                 (cons __tmp181170 _r175553_))))
                          (declare (not safe))
                          (_lp175549_ __tmp181172 __tmp181171 __tmp181169))
                        (values (reverse _l175552_) _r175553_))))))))))
